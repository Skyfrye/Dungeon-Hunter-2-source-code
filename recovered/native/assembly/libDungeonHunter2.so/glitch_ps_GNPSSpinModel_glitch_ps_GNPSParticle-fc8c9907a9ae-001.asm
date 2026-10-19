; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0063865c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEE14initPSpinModelEv
; demangled: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::initPSpinModel()
; decoder-mode: arm
0063865c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00638660, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n120_N6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEE14initPSpinModelEv
; demangled: virtual thunk to glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::initPSpinModel()
; decoder-mode: arm
00638660  00 30 90 e5                                      ldr r3, [r0]
00638664  78 30 13 e5                                      ldr r3, [r3, #-0x78]
00638668  03 00 80 e0                                      add r0, r0, r3
0063866c  fa ff ff ea                                      b #0x63865c

; FUNCTION 0x0063a2b8, declared_size=60, range_size=60, mode=arm
; class-group: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEED1Ev
; demangled: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::~GNPSSpinModel()
; decoder-mode: arm
0063a2b8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0063a2bc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0063a2c0  10 40 2d e9                                      push {r4, lr}
0063a2c4  02 20 8f e0                                      add r2, pc, r2
0063a2c8  03 30 92 e7                                      ldr r3, [r2, r3]
0063a2cc  00 40 a0 e1                                      mov r4, r0
0063a2d0  0c 20 83 e2                                      add r2, r3, #0xc
0063a2d4  b8 30 83 e2                                      add r3, r3, #0xb8
0063a2d8  90 20 80 e4                                      str r2, [r0], #0x90
0063a2dc  90 30 84 e5                                      str r3, [r4, #0x90]
0063a2e0  c4 ff ff eb                                      bl #0x63a1f8
0063a2e4  04 00 a0 e1                                      mov r0, r4
0063a2e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063a2ec  cc a7 35 00 44 4b 00 00                          .byte 0xcc, 0xa7, 0x35, 0x00, 0x44, 0x4b, 0x00, 0x00

; FUNCTION 0x0063a2f4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEED1Ev
; demangled: virtual thunk to glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::~GNPSSpinModel()
; decoder-mode: arm
0063a2f4  00 30 90 e5                                      ldr r3, [r0]
0063a2f8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063a2fc  03 00 80 e0                                      add r0, r0, r3
0063a300  ec ff ff ea                                      b #0x63a2b8

; FUNCTION 0x0063cce8, declared_size=1688, range_size=1688, mode=arm
; class-group: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEE9initPSpinEPS2_S4_
; demangled: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::initPSpin(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063cce8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0063ccec  00 30 90 e5                                      ldr r3, [r0]
0063ccf0  ac d0 4d e2                                      sub sp, sp, #0xac
0063ccf4  10 20 8d e5                                      str r2, [sp, #0x10]
0063ccf8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063ccfc  00 40 a0 e1                                      mov r4, r0
0063cd00  01 50 a0 e1                                      mov r5, r1
0063cd04  03 00 80 e0                                      add r0, r0, r3
0063cd08  03 30 94 e7                                      ldr r3, [r4, r3]
0063cd0c  0f e0 a0 e1                                      mov lr, pc
0063cd10  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0063cd14  00 80 a0 e1                                      mov r8, r0
0063cd18  08 00 94 e5                                      ldr r0, [r4, #8]
0063cd1c  00 70 a0 e3                                      mov r7, #0
0063cd20  00 10 a0 e1                                      mov r1, r0
0063cd24  9e 47 f3 eb                                      bl #0x30eba4
0063cd28  00 b0 a0 e1                                      mov fp, r0
0063cd2c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0063cd30  00 10 a0 e1                                      mov r1, r0
0063cd34  9a 47 f3 eb                                      bl #0x30eba4
0063cd38  08 00 8d e5                                      str r0, [sp, #8]
0063cd3c  20 00 94 e5                                      ldr r0, [r4, #0x20]
0063cd40  00 10 a0 e1                                      mov r1, r0
0063cd44  96 47 f3 eb                                      bl #0x30eba4
0063cd48  14 00 8d e5                                      str r0, [sp, #0x14]
0063cd4c  24 00 94 e5                                      ldr r0, [r4, #0x24]
0063cd50  00 10 a0 e1                                      mov r1, r0
0063cd54  92 47 f3 eb                                      bl #0x30eba4
0063cd58  18 00 8d e5                                      str r0, [sp, #0x18]
0063cd5c  28 00 94 e5                                      ldr r0, [r4, #0x28]
0063cd60  00 10 a0 e1                                      mov r1, r0
0063cd64  8e 47 f3 eb                                      bl #0x30eba4
0063cd68  34 10 84 e2                                      add r1, r4, #0x34
0063cd6c  1c 00 8d e5                                      str r0, [sp, #0x1c]
0063cd70  74 70 c4 e5                                      strb r7, [r4, #0x74]
0063cd74  40 00 8d e2                                      add r0, sp, #0x40
0063cd78  d2 ff ff eb                                      bl #0x63ccc8
0063cd7c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0063cd80  03 00 55 e1                                      cmp r5, r3
0063cd84  7a 01 00 0a                                      beq #0x63d374
0063cd88  ec 35 9f e5                                      ldr r3, [pc, #0x5ec]
0063cd8c  00 60 a0 e3                                      mov r6, #0
0063cd90  80 70 cd e5                                      strb r7, [sp, #0x80]
0063cd94  03 30 8f e0                                      add r3, pc, r3
0063cd98  34 30 8d e5                                      str r3, [sp, #0x34]
0063cd9c  84 30 8d e2                                      add r3, sp, #0x84
0063cda0  0c 30 8d e5                                      str r3, [sp, #0xc]
0063cda4  9c 30 8d e2                                      add r3, sp, #0x9c
0063cda8  38 30 8d e5                                      str r3, [sp, #0x38]
0063cdac  90 30 8d e2                                      add r3, sp, #0x90
0063cdb0  70 60 8d e5                                      str r6, [sp, #0x70]
0063cdb4  74 60 8d e5                                      str r6, [sp, #0x74]
0063cdb8  78 60 8d e5                                      str r6, [sp, #0x78]
0063cdbc  3c 30 8d e5                                      str r3, [sp, #0x3c]
0063cdc0  bd 00 00 ea                                      b #0x63d0bc
0063cdc4  04 10 94 e5                                      ldr r1, [r4, #4]
0063cdc8  75 47 f3 eb                                      bl #0x30eba4
0063cdcc  84 00 85 e5                                      str r0, [r5, #0x84]
0063cdd0  88 10 94 e5                                      ldr r1, [r4, #0x88]
0063cdd4  e4 47 f3 eb                                      bl #0x30ed6c
0063cdd8  64 10 95 e5                                      ldr r1, [r5, #0x64]
0063cddc  6c 00 85 e5                                      str r0, [r5, #0x6c]
0063cde0  60 00 95 e5                                      ldr r0, [r5, #0x60]
0063cde4  aa 47 f3 eb                                      bl #0x30ec94
0063cde8  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
0063cdec  00 70 a0 e1                                      mov r7, r0
0063cdf0  dd 47 f3 eb                                      bl #0x30ed6c
0063cdf4  80 10 94 e5                                      ldr r1, [r4, #0x80]
0063cdf8  00 90 a0 e1                                      mov sb, r0
0063cdfc  07 00 a0 e1                                      mov r0, r7
0063ce00  d9 47 f3 eb                                      bl #0x30ed6c
0063ce04  78 10 94 e5                                      ldr r1, [r4, #0x78]
0063ce08  00 a0 a0 e1                                      mov sl, r0
0063ce0c  07 00 a0 e1                                      mov r0, r7
0063ce10  d5 47 f3 eb                                      bl #0x30ed6c
0063ce14  8c 90 85 e5                                      str sb, [r5, #0x8c]
0063ce18  88 00 85 e5                                      str r0, [r5, #0x88]
0063ce1c  90 a0 85 e5                                      str sl, [r5, #0x90]
0063ce20  08 00 9d e5                                      ldr r0, [sp, #8]
0063ce24  00 10 a0 e3                                      mov r1, #0
0063ce28  57 44 f3 eb                                      bl #0x30df8c
0063ce2c  00 00 50 e3                                      cmp r0, #0
0063ce30  00 70 a0 13                                      movne r7, #0
0063ce34  ca 00 00 0a                                      beq #0x63d164
0063ce38  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0063ce3c  02 00 53 e3                                      cmp r3, #2
0063ce40  d8 00 00 0a                                      beq #0x63d1a8
0063ce44  00 00 53 e3                                      cmp r3, #0
0063ce48  2c 01 00 0a                                      beq #0x63d300
0063ce4c  01 00 53 e3                                      cmp r3, #1
0063ce50  3c 01 00 0a                                      beq #0x63d348
0063ce54  30 30 94 e5                                      ldr r3, [r4, #0x30]
0063ce58  00 00 53 e3                                      cmp r3, #0
0063ce5c  42 00 00 da                                      ble #0x63cf6c
0063ce60  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0063ce64  40 10 9d e5                                      ldr r1, [sp, #0x40]
0063ce68  8c 60 8d e5                                      str r6, [sp, #0x8c]
0063ce6c  be 47 f3 eb                                      bl #0x30ed6c
0063ce70  50 10 9d e5                                      ldr r1, [sp, #0x50]
0063ce74  00 70 a0 e1                                      mov r7, r0
0063ce78  10 00 95 e5                                      ldr r0, [r5, #0x10]
0063ce7c  ba 47 f3 eb                                      bl #0x30ed6c
0063ce80  00 10 a0 e1                                      mov r1, r0
0063ce84  07 00 a0 e1                                      mov r0, r7
0063ce88  45 47 f3 eb                                      bl #0x30eba4
0063ce8c  60 10 9d e5                                      ldr r1, [sp, #0x60]
0063ce90  00 70 a0 e1                                      mov r7, r0
0063ce94  14 00 95 e5                                      ldr r0, [r5, #0x14]
0063ce98  b3 47 f3 eb                                      bl #0x30ed6c
0063ce9c  00 10 a0 e1                                      mov r1, r0
0063cea0  07 00 a0 e1                                      mov r0, r7
0063cea4  3e 47 f3 eb                                      bl #0x30eba4
0063cea8  70 10 9d e5                                      ldr r1, [sp, #0x70]
0063ceac  3c 47 f3 eb                                      bl #0x30eba4
0063ceb0  84 00 8d e5                                      str r0, [sp, #0x84]
0063ceb4  44 10 9d e5                                      ldr r1, [sp, #0x44]
0063ceb8  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0063cebc  aa 47 f3 eb                                      bl #0x30ed6c
0063cec0  54 10 9d e5                                      ldr r1, [sp, #0x54]
0063cec4  00 70 a0 e1                                      mov r7, r0
0063cec8  10 00 95 e5                                      ldr r0, [r5, #0x10]
0063cecc  a6 47 f3 eb                                      bl #0x30ed6c
0063ced0  00 10 a0 e1                                      mov r1, r0
0063ced4  07 00 a0 e1                                      mov r0, r7
0063ced8  31 47 f3 eb                                      bl #0x30eba4
0063cedc  64 10 9d e5                                      ldr r1, [sp, #0x64]
0063cee0  00 70 a0 e1                                      mov r7, r0
0063cee4  14 00 95 e5                                      ldr r0, [r5, #0x14]
0063cee8  9f 47 f3 eb                                      bl #0x30ed6c
0063ceec  00 10 a0 e1                                      mov r1, r0
0063cef0  07 00 a0 e1                                      mov r0, r7
0063cef4  2a 47 f3 eb                                      bl #0x30eba4
0063cef8  74 10 9d e5                                      ldr r1, [sp, #0x74]
0063cefc  28 47 f3 eb                                      bl #0x30eba4
0063cf00  88 00 8d e5                                      str r0, [sp, #0x88]
0063cf04  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0063cf08  74 86 f4 eb                                      bl #0x35e8e0
0063cf0c  06 10 a0 e1                                      mov r1, r6
0063cf10  00 70 a0 e1                                      mov r7, r0
0063cf14  00 00 90 e5                                      ldr r0, [r0]
0063cf18  93 47 f3 eb                                      bl #0x30ed6c
0063cf1c  04 10 97 e5                                      ldr r1, [r7, #4]
0063cf20  1f 47 f3 eb                                      bl #0x30eba4
0063cf24  06 10 a0 e1                                      mov r1, r6
0063cf28  00 a0 a0 e1                                      mov sl, r0
0063cf2c  08 00 97 e5                                      ldr r0, [r7, #8]
0063cf30  8d 47 f3 eb                                      bl #0x30ed6c
0063cf34  00 10 a0 e1                                      mov r1, r0
0063cf38  0a 00 a0 e1                                      mov r0, sl
0063cf3c  18 47 f3 eb                                      bl #0x30eba4
0063cf40  25 45 f3 eb                                      bl #0x30e3dc
0063cf44  06 10 a0 e1                                      mov r1, r6
0063cf48  00 70 a0 e1                                      mov r7, r0
0063cf4c  84 00 9d e5                                      ldr r0, [sp, #0x84]
0063cf50  e8 44 f3 eb                                      bl #0x30e2f8
0063cf54  00 00 50 e3                                      cmp r0, #0
0063cf58  02 71 87 12                                      addne r7, r7, #0x80000000
0063cf5c  07 10 a0 e1                                      mov r1, r7
0063cf60  70 00 95 e5                                      ldr r0, [r5, #0x70]
0063cf64  10 45 f3 eb                                      bl #0x30e3ac
0063cf68  80 00 85 e5                                      str r0, [r5, #0x80]
0063cf6c  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
0063cf70  00 00 53 e3                                      cmp r3, #0
0063cf74  64 00 00 0a                                      beq #0x63d10c
0063cf78  02 00 53 e3                                      cmp r3, #2
0063cf7c  e9 00 00 0a                                      beq #0x63d328
0063cf80  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0063cf84  18 20 94 e5                                      ldr r2, [r4, #0x18]
0063cf88  14 10 94 e5                                      ldr r1, [r4, #0x14]
0063cf8c  08 00 a0 e1                                      mov r0, r8
0063cf90  8c 30 8d e5                                      str r3, [sp, #0x8c]
0063cf94  88 20 8d e5                                      str r2, [sp, #0x88]
0063cf98  84 10 8d e5                                      str r1, [sp, #0x84]
0063cf9c  b5 cb ff eb                                      bl #0x62fe78
0063cfa0  00 20 a0 e1                                      mov r2, r0
0063cfa4  08 00 a0 e1                                      mov r0, r8
0063cfa8  06 00 8d e8                                      stm sp, {r1, r2}
0063cfac  b1 cb ff eb                                      bl #0x62fe78
0063cfb0  f8 02 cd e1                                      strd r0, r1, [sp, #0x28]
0063cfb4  08 00 a0 e1                                      mov r0, r8
0063cfb8  ae cb ff eb                                      bl #0x62fe78
0063cfbc  04 20 9d e5                                      ldr r2, [sp, #4]
0063cfc0  00 30 9d e5                                      ldr r3, [sp]
0063cfc4  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
0063cfc8  03 10 a0 e1                                      mov r1, r3
0063cfcc  02 00 a0 e1                                      mov r0, r2
0063cfd0  b2 45 f3 eb                                      bl #0x30e6a0
0063cfd4  00 10 a0 e1                                      mov r1, r0
0063cfd8  14 00 9d e5                                      ldr r0, [sp, #0x14]
0063cfdc  62 47 f3 eb                                      bl #0x30ed6c
0063cfe0  bf 14 a0 e3                                      mov r1, #0xbf000000
0063cfe4  00 70 a0 e1                                      mov r7, r0
0063cfe8  14 00 9d e5                                      ldr r0, [sp, #0x14]
0063cfec  5e 47 f3 eb                                      bl #0x30ed6c
0063cff0  00 10 a0 e1                                      mov r1, r0
0063cff4  07 00 a0 e1                                      mov r0, r7
0063cff8  e9 46 f3 eb                                      bl #0x30eba4
0063cffc  00 10 a0 e1                                      mov r1, r0
0063d000  84 00 9d e5                                      ldr r0, [sp, #0x84]
0063d004  e6 46 f3 eb                                      bl #0x30eba4
0063d008  84 00 8d e5                                      str r0, [sp, #0x84]
0063d00c  d8 02 cd e1                                      ldrd r0, r1, [sp, #0x28]
0063d010  a2 45 f3 eb                                      bl #0x30e6a0
0063d014  00 10 a0 e1                                      mov r1, r0
0063d018  18 00 9d e5                                      ldr r0, [sp, #0x18]
0063d01c  52 47 f3 eb                                      bl #0x30ed6c
0063d020  bf 14 a0 e3                                      mov r1, #0xbf000000
0063d024  00 70 a0 e1                                      mov r7, r0
0063d028  18 00 9d e5                                      ldr r0, [sp, #0x18]
0063d02c  4e 47 f3 eb                                      bl #0x30ed6c
0063d030  00 10 a0 e1                                      mov r1, r0
0063d034  07 00 a0 e1                                      mov r0, r7
0063d038  d9 46 f3 eb                                      bl #0x30eba4
0063d03c  00 10 a0 e1                                      mov r1, r0
0063d040  88 00 9d e5                                      ldr r0, [sp, #0x88]
0063d044  d6 46 f3 eb                                      bl #0x30eba4
0063d048  88 00 8d e5                                      str r0, [sp, #0x88]
0063d04c  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
0063d050  92 45 f3 eb                                      bl #0x30e6a0
0063d054  00 10 a0 e1                                      mov r1, r0
0063d058  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0063d05c  42 47 f3 eb                                      bl #0x30ed6c
0063d060  bf 14 a0 e3                                      mov r1, #0xbf000000
0063d064  00 70 a0 e1                                      mov r7, r0
0063d068  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0063d06c  3e 47 f3 eb                                      bl #0x30ed6c
0063d070  00 10 a0 e1                                      mov r1, r0
0063d074  07 00 a0 e1                                      mov r0, r7
0063d078  c9 46 f3 eb                                      bl #0x30eba4
0063d07c  00 10 a0 e1                                      mov r1, r0
0063d080  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
0063d084  c6 46 f3 eb                                      bl #0x30eba4
0063d088  8c 00 8d e5                                      str r0, [sp, #0x8c]
0063d08c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0063d090  12 86 f4 eb                                      bl #0x35e8e0
0063d094  00 30 90 e5                                      ldr r3, [r0]
0063d098  74 30 85 e5                                      str r3, [r5, #0x74]
0063d09c  04 30 90 e5                                      ldr r3, [r0, #4]
0063d0a0  78 30 85 e5                                      str r3, [r5, #0x78]
0063d0a4  08 30 90 e5                                      ldr r3, [r0, #8]
0063d0a8  7c 30 85 e5                                      str r3, [r5, #0x7c]
0063d0ac  10 30 9d e5                                      ldr r3, [sp, #0x10]
0063d0b0  9c 50 85 e2                                      add r5, r5, #0x9c
0063d0b4  05 00 53 e1                                      cmp r3, r5
0063d0b8  ad 00 00 0a                                      beq #0x63d374
0063d0bc  0b 00 a0 e1                                      mov r0, fp
0063d0c0  00 10 a0 e3                                      mov r1, #0
0063d0c4  b0 43 f3 eb                                      bl #0x30df8c
0063d0c8  00 00 50 e3                                      cmp r0, #0
0063d0cc  00 00 a0 13                                      movne r0, #0
0063d0d0  3b ff ff 1a                                      bne #0x63cdc4
0063d0d4  08 00 a0 e1                                      mov r0, r8
0063d0d8  66 cb ff eb                                      bl #0x62fe78
0063d0dc  6f 45 f3 eb                                      bl #0x30e6a0
0063d0e0  00 10 a0 e1                                      mov r1, r0
0063d0e4  0b 00 a0 e1                                      mov r0, fp
0063d0e8  1f 47 f3 eb                                      bl #0x30ed6c
0063d0ec  bf 14 a0 e3                                      mov r1, #0xbf000000
0063d0f0  00 70 a0 e1                                      mov r7, r0
0063d0f4  0b 00 a0 e1                                      mov r0, fp
0063d0f8  1b 47 f3 eb                                      bl #0x30ed6c
0063d0fc  00 10 a0 e1                                      mov r1, r0
0063d100  07 00 a0 e1                                      mov r0, r7
0063d104  a6 46 f3 eb                                      bl #0x30eba4
0063d108  2d ff ff ea                                      b #0x63cdc4
0063d10c  38 00 9d e5                                      ldr r0, [sp, #0x38]
0063d110  08 10 a0 e1                                      mov r1, r8
0063d114  6a ea ff eb                                      bl #0x637ac4
0063d118  34 30 9d e5                                      ldr r3, [sp, #0x34]
0063d11c  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
0063d120  20 10 93 e5                                      ldr r1, [r3, #0x20]
0063d124  a0 44 f3 eb                                      bl #0x30e3ac
0063d128  34 30 9d e5                                      ldr r3, [sp, #0x34]
0063d12c  00 70 a0 e1                                      mov r7, r0
0063d130  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
0063d134  24 10 93 e5                                      ldr r1, [r3, #0x24]
0063d138  9b 44 f3 eb                                      bl #0x30e3ac
0063d13c  34 30 9d e5                                      ldr r3, [sp, #0x34]
0063d140  00 a0 a0 e1                                      mov sl, r0
0063d144  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
0063d148  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
0063d14c  96 44 f3 eb                                      bl #0x30e3ac
0063d150  94 70 8d e5                                      str r7, [sp, #0x94]
0063d154  90 00 8d e5                                      str r0, [sp, #0x90]
0063d158  98 a0 8d e5                                      str sl, [sp, #0x98]
0063d15c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0063d160  ca ff ff ea                                      b #0x63d090
0063d164  08 00 a0 e1                                      mov r0, r8
0063d168  42 cb ff eb                                      bl #0x62fe78
0063d16c  4b 45 f3 eb                                      bl #0x30e6a0
0063d170  00 10 a0 e1                                      mov r1, r0
0063d174  08 00 9d e5                                      ldr r0, [sp, #8]
0063d178  fb 46 f3 eb                                      bl #0x30ed6c
0063d17c  bf 14 a0 e3                                      mov r1, #0xbf000000
0063d180  00 70 a0 e1                                      mov r7, r0
0063d184  08 00 9d e5                                      ldr r0, [sp, #8]
0063d188  f7 46 f3 eb                                      bl #0x30ed6c
0063d18c  00 10 a0 e1                                      mov r1, r0
0063d190  07 00 a0 e1                                      mov r0, r7
0063d194  82 46 f3 eb                                      bl #0x30eba4
0063d198  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0063d19c  00 70 a0 e1                                      mov r7, r0
0063d1a0  02 00 53 e3                                      cmp r3, #2
0063d1a4  26 ff ff 1a                                      bne #0x63ce44
0063d1a8  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0063d1ac  40 10 9d e5                                      ldr r1, [sp, #0x40]
0063d1b0  8c 60 8d e5                                      str r6, [sp, #0x8c]
0063d1b4  ec 46 f3 eb                                      bl #0x30ed6c
0063d1b8  50 10 9d e5                                      ldr r1, [sp, #0x50]
0063d1bc  00 a0 a0 e1                                      mov sl, r0
0063d1c0  10 00 95 e5                                      ldr r0, [r5, #0x10]
0063d1c4  e8 46 f3 eb                                      bl #0x30ed6c
0063d1c8  00 10 a0 e1                                      mov r1, r0
0063d1cc  0a 00 a0 e1                                      mov r0, sl
0063d1d0  73 46 f3 eb                                      bl #0x30eba4
0063d1d4  60 10 9d e5                                      ldr r1, [sp, #0x60]
0063d1d8  00 a0 a0 e1                                      mov sl, r0
0063d1dc  14 00 95 e5                                      ldr r0, [r5, #0x14]
0063d1e0  e1 46 f3 eb                                      bl #0x30ed6c
0063d1e4  00 10 a0 e1                                      mov r1, r0
0063d1e8  0a 00 a0 e1                                      mov r0, sl
0063d1ec  6c 46 f3 eb                                      bl #0x30eba4
0063d1f0  70 10 9d e5                                      ldr r1, [sp, #0x70]
0063d1f4  6a 46 f3 eb                                      bl #0x30eba4
0063d1f8  84 00 8d e5                                      str r0, [sp, #0x84]
0063d1fc  44 10 9d e5                                      ldr r1, [sp, #0x44]
0063d200  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0063d204  d8 46 f3 eb                                      bl #0x30ed6c
0063d208  54 10 9d e5                                      ldr r1, [sp, #0x54]
0063d20c  00 a0 a0 e1                                      mov sl, r0
0063d210  10 00 95 e5                                      ldr r0, [r5, #0x10]
0063d214  d4 46 f3 eb                                      bl #0x30ed6c
0063d218  00 10 a0 e1                                      mov r1, r0
0063d21c  0a 00 a0 e1                                      mov r0, sl
0063d220  5f 46 f3 eb                                      bl #0x30eba4
0063d224  64 10 9d e5                                      ldr r1, [sp, #0x64]
0063d228  00 a0 a0 e1                                      mov sl, r0
0063d22c  14 00 95 e5                                      ldr r0, [r5, #0x14]
0063d230  cd 46 f3 eb                                      bl #0x30ed6c
0063d234  00 10 a0 e1                                      mov r1, r0
0063d238  0a 00 a0 e1                                      mov r0, sl
0063d23c  58 46 f3 eb                                      bl #0x30eba4
0063d240  74 10 9d e5                                      ldr r1, [sp, #0x74]
0063d244  56 46 f3 eb                                      bl #0x30eba4
0063d248  88 00 8d e5                                      str r0, [sp, #0x88]
0063d24c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0063d250  a2 85 f4 eb                                      bl #0x35e8e0
0063d254  06 10 a0 e1                                      mov r1, r6
0063d258  00 a0 a0 e1                                      mov sl, r0
0063d25c  00 00 90 e5                                      ldr r0, [r0]
0063d260  c1 46 f3 eb                                      bl #0x30ed6c
0063d264  04 10 9a e5                                      ldr r1, [sl, #4]
0063d268  4d 46 f3 eb                                      bl #0x30eba4
0063d26c  06 10 a0 e1                                      mov r1, r6
0063d270  00 90 a0 e1                                      mov sb, r0
0063d274  08 00 9a e5                                      ldr r0, [sl, #8]
0063d278  bb 46 f3 eb                                      bl #0x30ed6c
0063d27c  00 10 a0 e1                                      mov r1, r0
0063d280  09 00 a0 e1                                      mov r0, sb
0063d284  46 46 f3 eb                                      bl #0x30eba4
0063d288  53 44 f3 eb                                      bl #0x30e3dc
0063d28c  06 10 a0 e1                                      mov r1, r6
0063d290  00 a0 a0 e1                                      mov sl, r0
0063d294  84 00 9d e5                                      ldr r0, [sp, #0x84]
0063d298  16 44 f3 eb                                      bl #0x30e2f8
0063d29c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0063d2a0  00 00 50 e3                                      cmp r0, #0
0063d2a4  07 00 a0 e1                                      mov r0, r7
0063d2a8  02 a1 8a 12                                      addne sl, sl, #0x80000000
0063d2ac  3c 46 f3 eb                                      bl #0x30eba4
0063d2b0  43 14 a0 e3                                      mov r1, #0x43000000
0063d2b4  0d 17 81 e2                                      add r1, r1, #0x340000
0063d2b8  75 46 f3 eb                                      bl #0x30ec94
0063d2bc  db 1f 00 e3                                      movw r1, #0xfdb
0063d2c0  49 10 44 e3                                      movt r1, #0x4049
0063d2c4  a8 46 f3 eb                                      bl #0x30ed6c
0063d2c8  0a 10 a0 e1                                      mov r1, sl
0063d2cc  34 46 f3 eb                                      bl #0x30eba4
0063d2d0  70 00 85 e5                                      str r0, [r5, #0x70]
0063d2d4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0063d2d8  07 00 a0 e1                                      mov r0, r7
0063d2dc  30 46 f3 eb                                      bl #0x30eba4
0063d2e0  43 14 a0 e3                                      mov r1, #0x43000000
0063d2e4  0d 17 81 e2                                      add r1, r1, #0x340000
0063d2e8  69 46 f3 eb                                      bl #0x30ec94
0063d2ec  db 1f 00 e3                                      movw r1, #0xfdb
0063d2f0  49 10 44 e3                                      movt r1, #0x4049
0063d2f4  9c 46 f3 eb                                      bl #0x30ed6c
0063d2f8  80 00 85 e5                                      str r0, [r5, #0x80]
0063d2fc  1a ff ff ea                                      b #0x63cf6c
0063d300  08 00 a0 e1                                      mov r0, r8
0063d304  db ca ff eb                                      bl #0x62fe78
0063d308  e4 44 f3 eb                                      bl #0x30e6a0
0063d30c  00 10 a0 e1                                      mov r1, r0
0063d310  23 46 f3 eb                                      bl #0x30eba4
0063d314  db 1f 00 e3                                      movw r1, #0xfdb
0063d318  49 10 44 e3                                      movt r1, #0x4049
0063d31c  92 46 f3 eb                                      bl #0x30ed6c
0063d320  70 00 85 e5                                      str r0, [r5, #0x70]
0063d324  ca fe ff ea                                      b #0x63ce54
0063d328  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0063d32c  10 20 95 e5                                      ldr r2, [r5, #0x10]
0063d330  14 30 95 e5                                      ldr r3, [r5, #0x14]
0063d334  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0063d338  84 10 8d e5                                      str r1, [sp, #0x84]
0063d33c  88 20 8d e5                                      str r2, [sp, #0x88]
0063d340  8c 30 8d e5                                      str r3, [sp, #0x8c]
0063d344  51 ff ff ea                                      b #0x63d090
0063d348  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0063d34c  07 00 a0 e1                                      mov r0, r7
0063d350  13 46 f3 eb                                      bl #0x30eba4
0063d354  43 14 a0 e3                                      mov r1, #0x43000000
0063d358  0d 17 81 e2                                      add r1, r1, #0x340000
0063d35c  4c 46 f3 eb                                      bl #0x30ec94
0063d360  db 1f 00 e3                                      movw r1, #0xfdb
0063d364  49 10 44 e3                                      movt r1, #0x4049
0063d368  7f 46 f3 eb                                      bl #0x30ed6c
0063d36c  70 00 85 e5                                      str r0, [r5, #0x70]
0063d370  b7 fe ff ea                                      b #0x63ce54
0063d374  ac d0 8d e2                                      add sp, sp, #0xac
0063d378  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0063d37c  b4 a1 3b 00                                      .byte 0xb4, 0xa1, 0x3b, 0x00

; FUNCTION 0x0063d380, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n124_N6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEE9initPSpinEPS2_S4_
; demangled: virtual thunk to glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::initPSpin(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063d380  00 30 90 e5                                      ldr r3, [r0]
0063d384  7c 30 13 e5                                      ldr r3, [r3, #-0x7c]
0063d388  03 00 80 e0                                      add r0, r0, r3
0063d38c  55 fe ff ea                                      b #0x63cce8

; FUNCTION 0x0063d390, declared_size=796, range_size=796, mode=arm
; class-group: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEE10applyPSpinEPS2_S4_
; demangled: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::applyPSpin(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063d390  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0063d394  00 50 a0 e1                                      mov r5, r0
0063d398  84 d0 4d e2                                      sub sp, sp, #0x84
0063d39c  00 80 a0 e3                                      mov r8, #0
0063d3a0  74 80 c0 e5                                      strb r8, [r0, #0x74]
0063d3a4  01 40 a0 e1                                      mov r4, r1
0063d3a8  02 70 a0 e1                                      mov r7, r2
0063d3ac  18 00 8d e2                                      add r0, sp, #0x18
0063d3b0  34 10 85 e2                                      add r1, r5, #0x34
0063d3b4  69 80 cd e5                                      strb r8, [sp, #0x69]
0063d3b8  42 fe ff eb                                      bl #0x63ccc8
0063d3bc  07 00 54 e1                                      cmp r4, r7
0063d3c0  b1 00 00 0a                                      beq #0x63d68c
0063d3c4  5c 20 8d e2                                      add r2, sp, #0x5c
0063d3c8  00 60 a0 e3                                      mov r6, #0
0063d3cc  0c 20 8d e5                                      str r2, [sp, #0xc]
0063d3d0  6c 30 8d e2                                      add r3, sp, #0x6c
0063d3d4  7c c0 8d e2                                      add ip, sp, #0x7c
0063d3d8  78 20 8d e2                                      add r2, sp, #0x78
0063d3dc  58 80 cd e5                                      strb r8, [sp, #0x58]
0063d3e0  48 60 8d e5                                      str r6, [sp, #0x48]
0063d3e4  4c 60 8d e5                                      str r6, [sp, #0x4c]
0063d3e8  50 60 8d e5                                      str r6, [sp, #0x50]
0063d3ec  08 30 8d e5                                      str r3, [sp, #8]
0063d3f0  10 c0 8d e5                                      str ip, [sp, #0x10]
0063d3f4  14 20 8d e5                                      str r2, [sp, #0x14]
0063d3f8  44 00 00 ea                                      b #0x63d510
0063d3fc  0c 90 94 e5                                      ldr sb, [r4, #0xc]
0063d400  18 10 9d e5                                      ldr r1, [sp, #0x18]
0063d404  10 a0 94 e5                                      ldr sl, [r4, #0x10]
0063d408  09 00 a0 e1                                      mov r0, sb
0063d40c  56 46 f3 eb                                      bl #0x30ed6c
0063d410  28 10 9d e5                                      ldr r1, [sp, #0x28]
0063d414  00 80 a0 e1                                      mov r8, r0
0063d418  0a 00 a0 e1                                      mov r0, sl
0063d41c  52 46 f3 eb                                      bl #0x30ed6c
0063d420  00 10 a0 e1                                      mov r1, r0
0063d424  08 00 a0 e1                                      mov r0, r8
0063d428  dd 45 f3 eb                                      bl #0x30eba4
0063d42c  14 80 94 e5                                      ldr r8, [r4, #0x14]
0063d430  38 10 9d e5                                      ldr r1, [sp, #0x38]
0063d434  00 b0 a0 e1                                      mov fp, r0
0063d438  08 00 a0 e1                                      mov r0, r8
0063d43c  4a 46 f3 eb                                      bl #0x30ed6c
0063d440  00 10 a0 e1                                      mov r1, r0
0063d444  0b 00 a0 e1                                      mov r0, fp
0063d448  d5 45 f3 eb                                      bl #0x30eba4
0063d44c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0063d450  6c 00 8d e5                                      str r0, [sp, #0x6c]
0063d454  09 00 a0 e1                                      mov r0, sb
0063d458  43 46 f3 eb                                      bl #0x30ed6c
0063d45c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0063d460  00 90 a0 e1                                      mov sb, r0
0063d464  0a 00 a0 e1                                      mov r0, sl
0063d468  3f 46 f3 eb                                      bl #0x30ed6c
0063d46c  00 10 a0 e1                                      mov r1, r0
0063d470  09 00 a0 e1                                      mov r0, sb
0063d474  ca 45 f3 eb                                      bl #0x30eba4
0063d478  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0063d47c  00 a0 a0 e1                                      mov sl, r0
0063d480  08 00 a0 e1                                      mov r0, r8
0063d484  38 46 f3 eb                                      bl #0x30ed6c
0063d488  00 10 a0 e1                                      mov r1, r0
0063d48c  0a 00 a0 e1                                      mov r0, sl
0063d490  c3 45 f3 eb                                      bl #0x30eba4
0063d494  70 00 8d e5                                      str r0, [sp, #0x70]
0063d498  08 00 9d e5                                      ldr r0, [sp, #8]
0063d49c  74 60 8d e5                                      str r6, [sp, #0x74]
0063d4a0  0e 85 f4 eb                                      bl #0x35e8e0
0063d4a4  06 10 a0 e1                                      mov r1, r6
0063d4a8  00 80 a0 e1                                      mov r8, r0
0063d4ac  00 00 90 e5                                      ldr r0, [r0]
0063d4b0  2d 46 f3 eb                                      bl #0x30ed6c
0063d4b4  04 10 98 e5                                      ldr r1, [r8, #4]
0063d4b8  b9 45 f3 eb                                      bl #0x30eba4
0063d4bc  06 10 a0 e1                                      mov r1, r6
0063d4c0  00 a0 a0 e1                                      mov sl, r0
0063d4c4  08 00 98 e5                                      ldr r0, [r8, #8]
0063d4c8  27 46 f3 eb                                      bl #0x30ed6c
0063d4cc  00 10 a0 e1                                      mov r1, r0
0063d4d0  0a 00 a0 e1                                      mov r0, sl
0063d4d4  b2 45 f3 eb                                      bl #0x30eba4
0063d4d8  bf 43 f3 eb                                      bl #0x30e3dc
0063d4dc  06 10 a0 e1                                      mov r1, r6
0063d4e0  00 80 a0 e1                                      mov r8, r0
0063d4e4  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0063d4e8  82 43 f3 eb                                      bl #0x30e2f8
0063d4ec  00 00 50 e3                                      cmp r0, #0
0063d4f0  02 81 88 12                                      addne r8, r8, #0x80000000
0063d4f4  80 00 94 e5                                      ldr r0, [r4, #0x80]
0063d4f8  08 10 a0 e1                                      mov r1, r8
0063d4fc  a8 45 f3 eb                                      bl #0x30eba4
0063d500  70 00 84 e5                                      str r0, [r4, #0x70]
0063d504  9c 40 84 e2                                      add r4, r4, #0x9c
0063d508  04 00 57 e1                                      cmp r7, r4
0063d50c  5e 00 00 0a                                      beq #0x63d68c
0063d510  64 10 94 e5                                      ldr r1, [r4, #0x64]
0063d514  60 00 94 e5                                      ldr r0, [r4, #0x60]
0063d518  dd 45 f3 eb                                      bl #0x30ec94
0063d51c  7c 10 95 e5                                      ldr r1, [r5, #0x7c]
0063d520  00 80 a0 e1                                      mov r8, r0
0063d524  10 46 f3 eb                                      bl #0x30ed6c
0063d528  80 10 95 e5                                      ldr r1, [r5, #0x80]
0063d52c  00 90 a0 e1                                      mov sb, r0
0063d530  08 00 a0 e1                                      mov r0, r8
0063d534  0c 46 f3 eb                                      bl #0x30ed6c
0063d538  78 10 95 e5                                      ldr r1, [r5, #0x78]
0063d53c  00 a0 a0 e1                                      mov sl, r0
0063d540  08 00 a0 e1                                      mov r0, r8
0063d544  08 46 f3 eb                                      bl #0x30ed6c
0063d548  8c 90 84 e5                                      str sb, [r4, #0x8c]
0063d54c  88 00 84 e5                                      str r0, [r4, #0x88]
0063d550  90 a0 84 e5                                      str sl, [r4, #0x90]
0063d554  30 30 95 e5                                      ldr r3, [r5, #0x30]
0063d558  00 00 53 e3                                      cmp r3, #0
0063d55c  a6 ff ff ca                                      bgt #0x63d3fc
0063d560  84 30 95 e5                                      ldr r3, [r5, #0x84]
0063d564  00 00 53 e3                                      cmp r3, #0
0063d568  49 00 00 da                                      ble #0x63d694
0063d56c  88 80 95 e5                                      ldr r8, [r5, #0x88]
0063d570  00 00 58 e3                                      cmp r8, #0
0063d574  46 00 00 0a                                      beq #0x63d694
0063d578  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
0063d57c  58 00 94 e5                                      ldr r0, [r4, #0x58]
0063d580  c3 45 f3 eb                                      bl #0x30ec94
0063d584  11 13 a0 e3                                      mov r1, #0x44000000
0063d588  7a 18 81 e2                                      add r1, r1, #0x7a0000
0063d58c  00 a0 a0 e1                                      mov sl, r0
0063d590  7c 60 8d e5                                      str r6, [sp, #0x7c]
0063d594  f4 45 f3 eb                                      bl #0x30ed6c
0063d598  c1 44 f3 eb                                      bl #0x30e8a4
0063d59c  ea 2a 05 e3                                      movw r2, #0x5aea
0063d5a0  aa 3a 0a e3                                      movw r3, #0xaaaa
0063d5a4  7b 2f 49 e3                                      movt r2, #0x9f7b
0063d5a8  40 30 44 e3                                      movt r3, #0x4040
0063d5ac  63 43 f3 eb                                      bl #0x30e340
0063d5b0  1b 45 f3 eb                                      bl #0x30ea24
0063d5b4  00 30 95 e5                                      ldr r3, [r5]
0063d5b8  78 00 8d e5                                      str r0, [sp, #0x78]
0063d5bc  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0063d5c0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063d5c4  00 10 a0 e3                                      mov r1, #0
0063d5c8  08 00 9d e5                                      ldr r0, [sp, #8]
0063d5cc  03 30 85 e0                                      add r3, r5, r3
0063d5d0  58 30 93 e5                                      ldr r3, [r3, #0x58]
0063d5d4  74 c0 8d e5                                      str ip, [sp, #0x74]
0063d5d8  6c 80 8d e5                                      str r8, [sp, #0x6c]
0063d5dc  70 30 8d e5                                      str r3, [sp, #0x70]
0063d5e0  7d b2 00 eb                                      bl #0x669fdc
0063d5e4  de 44 f3 eb                                      bl #0x30e964
0063d5e8  0a 10 a0 e1                                      mov r1, sl
0063d5ec  de 45 f3 eb                                      bl #0x30ed6c
0063d5f0  b5 43 f3 eb                                      bl #0x30e4cc
0063d5f4  01 c0 a0 e3                                      mov ip, #1
0063d5f8  00 10 a0 e1                                      mov r1, r0
0063d5fc  10 20 9d e5                                      ldr r2, [sp, #0x10]
0063d600  08 00 9d e5                                      ldr r0, [sp, #8]
0063d604  14 30 9d e5                                      ldr r3, [sp, #0x14]
0063d608  00 c0 8d e5                                      str ip, [sp]
0063d60c  e5 b2 00 eb                                      bl #0x66a1a8
0063d610  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
0063d614  84 00 94 e5                                      ldr r0, [r4, #0x84]
0063d618  d3 45 f3 eb                                      bl #0x30ed6c
0063d61c  00 80 a0 e1                                      mov r8, r0
0063d620  6c 00 84 e5                                      str r0, [r4, #0x6c]
0063d624  00 10 a0 e3                                      mov r1, #0
0063d628  08 00 a0 e1                                      mov r0, r8
0063d62c  56 42 f3 eb                                      bl #0x30df8c
0063d630  00 00 50 e3                                      cmp r0, #0
0063d634  70 a0 94 e5                                      ldr sl, [r4, #0x70]
0063d638  00 10 a0 13                                      movne r1, #0
0063d63c  0c 00 00 1a                                      bne #0x63d674
0063d640  43 14 a0 e3                                      mov r1, #0x43000000
0063d644  0d 17 81 e2                                      add r1, r1, #0x340000
0063d648  08 00 a0 e1                                      mov r0, r8
0063d64c  90 45 f3 eb                                      bl #0x30ec94
0063d650  db 1f 00 e3                                      movw r1, #0xfdb
0063d654  49 10 44 e3                                      movt r1, #0x4049
0063d658  c3 45 f3 eb                                      bl #0x30ed6c
0063d65c  00 30 95 e5                                      ldr r3, [r5]
0063d660  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063d664  03 30 85 e0                                      add r3, r5, r3
0063d668  50 10 93 e5                                      ldr r1, [r3, #0x50]
0063d66c  be 45 f3 eb                                      bl #0x30ed6c
0063d670  00 10 a0 e1                                      mov r1, r0
0063d674  0a 00 a0 e1                                      mov r0, sl
0063d678  49 45 f3 eb                                      bl #0x30eba4
0063d67c  70 00 84 e5                                      str r0, [r4, #0x70]
0063d680  9c 40 84 e2                                      add r4, r4, #0x9c
0063d684  04 00 57 e1                                      cmp r7, r4
0063d688  a0 ff ff 1a                                      bne #0x63d510
0063d68c  84 d0 8d e2                                      add sp, sp, #0x84
0063d690  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0063d694  88 10 95 e5                                      ldr r1, [r5, #0x88]
0063d698  84 00 94 e5                                      ldr r0, [r4, #0x84]
0063d69c  b2 45 f3 eb                                      bl #0x30ed6c
0063d6a0  00 80 a0 e1                                      mov r8, r0
0063d6a4  6c 00 84 e5                                      str r0, [r4, #0x6c]
0063d6a8  dd ff ff ea                                      b #0x63d624

; FUNCTION 0x0063d6ac, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n128_N6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEE10applyPSpinEPS2_S4_
; demangled: virtual thunk to glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::applyPSpin(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063d6ac  00 30 90 e5                                      ldr r3, [r0]
0063d6b0  80 30 13 e5                                      ldr r3, [r3, #-0x80]
0063d6b4  03 00 80 e0                                      add r0, r0, r3
0063d6b8  34 ff ff ea                                      b #0x63d390

; FUNCTION 0x0063d8f0, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEED0Ev
; demangled: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::~GNPSSpinModel()
; decoder-mode: arm
0063d8f0  34 20 9f e5                                      ldr r2, [pc, #0x34]
0063d8f4  34 30 9f e5                                      ldr r3, [pc, #0x34]
0063d8f8  10 40 2d e9                                      push {r4, lr}
0063d8fc  02 20 8f e0                                      add r2, pc, r2
0063d900  03 30 92 e7                                      ldr r3, [r2, r3]
0063d904  00 40 a0 e1                                      mov r4, r0
0063d908  0c 20 83 e2                                      add r2, r3, #0xc
0063d90c  b8 30 83 e2                                      add r3, r3, #0xb8
0063d910  90 20 80 e4                                      str r2, [r0], #0x90
0063d914  90 30 84 e5                                      str r3, [r4, #0x90]
0063d918  36 f2 ff eb                                      bl #0x63a1f8
0063d91c  04 00 a0 e1                                      mov r0, r4
0063d920  62 42 f3 eb                                      bl #0x30e2b0
0063d924  04 00 a0 e1                                      mov r0, r4
0063d928  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063d92c  94 71 35 00 44 4b 00 00                          .byte 0x94, 0x71, 0x35, 0x00, 0x44, 0x4b, 0x00, 0x00

; FUNCTION 0x0063d934, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEED0Ev
; demangled: virtual thunk to glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::~GNPSSpinModel()
; decoder-mode: arm
0063d934  00 30 90 e5                                      ldr r3, [r0]
0063d938  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063d93c  03 00 80 e0                                      add r0, r0, r3
0063d940  ea ff ff ea                                      b #0x63d8f0

; FUNCTION 0x006419dc, declared_size=928, range_size=928, mode=arm
; class-group: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEEC2Ev
; demangled: glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::GNPSSpinModel()
; decoder-mode: arm
006419dc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006419e0  00 30 91 e5                                      ldr r3, [r1]
006419e4  00 50 a0 e3                                      mov r5, #0
006419e8  00 60 a0 e3                                      mov r6, #0
006419ec  00 30 80 e5                                      str r3, [r0]
006419f0  04 20 91 e5                                      ldr r2, [r1, #4]
006419f4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006419f8  34 70 80 e2                                      add r7, r0, #0x34
006419fc  d4 d0 4d e2                                      sub sp, sp, #0xd4
00641a00  00 40 a0 e1                                      mov r4, r0
00641a04  03 20 80 e7                                      str r2, [r0, r3]
00641a08  06 10 a0 e1                                      mov r1, r6
00641a0c  14 50 80 e5                                      str r5, [r0, #0x14]
00641a10  18 50 80 e5                                      str r5, [r0, #0x18]
00641a14  1c 50 80 e5                                      str r5, [r0, #0x1c]
00641a18  20 50 80 e5                                      str r5, [r0, #0x20]
00641a1c  24 50 80 e5                                      str r5, [r0, #0x24]
00641a20  28 50 80 e5                                      str r5, [r0, #0x28]
00641a24  74 60 c0 e5                                      strb r6, [r0, #0x74]
00641a28  40 20 a0 e3                                      mov r2, #0x40
00641a2c  07 00 a0 e1                                      mov r0, r7
00641a30  8a 32 f3 eb                                      bl #0x30e460
00641a34  00 20 94 e5                                      ldr r2, [r4]
00641a38  fe 35 a0 e3                                      mov r3, #0x3f800000
00641a3c  01 10 a0 e3                                      mov r1, #1
00641a40  70 30 84 e5                                      str r3, [r4, #0x70]
00641a44  74 10 c4 e5                                      strb r1, [r4, #0x74]
00641a48  34 30 84 e5                                      str r3, [r4, #0x34]
00641a4c  48 30 84 e5                                      str r3, [r4, #0x48]
00641a50  5c 30 84 e5                                      str r3, [r4, #0x5c]
00641a54  88 50 84 e5                                      str r5, [r4, #0x88]
00641a58  30 60 84 e5                                      str r6, [r4, #0x30]
00641a5c  78 50 84 e5                                      str r5, [r4, #0x78]
00641a60  7c 50 84 e5                                      str r5, [r4, #0x7c]
00641a64  80 50 84 e5                                      str r5, [r4, #0x80]
00641a68  84 60 84 e5                                      str r6, [r4, #0x84]
00641a6c  0c 50 12 e5                                      ldr r5, [r2, #-0xc]
00641a70  d0 12 9f e5                                      ldr r1, [pc, #0x2d0]
00641a74  05 50 84 e0                                      add r5, r4, r5
00641a78  01 10 8f e0                                      add r1, pc, r1
00641a7c  05 00 a0 e1                                      mov r0, r5
00641a80  71 e6 ff eb                                      bl #0x63b44c
00641a84  a0 20 8d e2                                      add r2, sp, #0xa0
00641a88  04 30 84 e2                                      add r3, r4, #4
00641a8c  a0 00 8d e5                                      str r0, [sp, #0xa0]
00641a90  30 10 85 e2                                      add r1, r5, #0x30
00641a94  a8 00 8d e2                                      add r0, sp, #0xa8
00641a98  a4 30 8d e5                                      str r3, [sp, #0xa4]
00641a9c  92 e3 ff eb                                      bl #0x63a8ec
00641aa0  00 30 94 e5                                      ldr r3, [r4]
00641aa4  a0 12 9f e5                                      ldr r1, [pc, #0x2a0]
00641aa8  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641aac  01 10 8f e0                                      add r1, pc, r1
00641ab0  05 50 84 e0                                      add r5, r4, r5
00641ab4  05 00 a0 e1                                      mov r0, r5
00641ab8  63 e6 ff eb                                      bl #0x63b44c
00641abc  90 20 8d e2                                      add r2, sp, #0x90
00641ac0  08 30 84 e2                                      add r3, r4, #8
00641ac4  90 00 8d e5                                      str r0, [sp, #0x90]
00641ac8  30 10 85 e2                                      add r1, r5, #0x30
00641acc  98 00 8d e2                                      add r0, sp, #0x98
00641ad0  94 30 8d e5                                      str r3, [sp, #0x94]
00641ad4  84 e3 ff eb                                      bl #0x63a8ec
00641ad8  00 30 94 e5                                      ldr r3, [r4]
00641adc  6c 12 9f e5                                      ldr r1, [pc, #0x26c]
00641ae0  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641ae4  01 10 8f e0                                      add r1, pc, r1
00641ae8  05 50 84 e0                                      add r5, r4, r5
00641aec  05 00 a0 e1                                      mov r0, r5
00641af0  55 e6 ff eb                                      bl #0x63b44c
00641af4  80 20 8d e2                                      add r2, sp, #0x80
00641af8  0c 30 84 e2                                      add r3, r4, #0xc
00641afc  80 00 8d e5                                      str r0, [sp, #0x80]
00641b00  30 10 85 e2                                      add r1, r5, #0x30
00641b04  88 00 8d e2                                      add r0, sp, #0x88
00641b08  84 30 8d e5                                      str r3, [sp, #0x84]
00641b0c  76 e3 ff eb                                      bl #0x63a8ec
00641b10  00 30 94 e5                                      ldr r3, [r4]
00641b14  38 12 9f e5                                      ldr r1, [pc, #0x238]
00641b18  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641b1c  01 10 8f e0                                      add r1, pc, r1
00641b20  05 50 84 e0                                      add r5, r4, r5
00641b24  05 00 a0 e1                                      mov r0, r5
00641b28  47 e6 ff eb                                      bl #0x63b44c
00641b2c  70 20 8d e2                                      add r2, sp, #0x70
00641b30  10 30 84 e2                                      add r3, r4, #0x10
00641b34  70 00 8d e5                                      str r0, [sp, #0x70]
00641b38  30 10 85 e2                                      add r1, r5, #0x30
00641b3c  78 00 8d e2                                      add r0, sp, #0x78
00641b40  74 30 8d e5                                      str r3, [sp, #0x74]
00641b44  68 e3 ff eb                                      bl #0x63a8ec
00641b48  00 30 94 e5                                      ldr r3, [r4]
00641b4c  04 12 9f e5                                      ldr r1, [pc, #0x204]
00641b50  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641b54  01 10 8f e0                                      add r1, pc, r1
00641b58  05 50 84 e0                                      add r5, r4, r5
00641b5c  05 00 a0 e1                                      mov r0, r5
00641b60  39 e6 ff eb                                      bl #0x63b44c
00641b64  60 20 8d e2                                      add r2, sp, #0x60
00641b68  14 30 84 e2                                      add r3, r4, #0x14
00641b6c  60 00 8d e5                                      str r0, [sp, #0x60]
00641b70  30 10 85 e2                                      add r1, r5, #0x30
00641b74  68 00 8d e2                                      add r0, sp, #0x68
00641b78  64 30 8d e5                                      str r3, [sp, #0x64]
00641b7c  5a e3 ff eb                                      bl #0x63a8ec
00641b80  00 30 94 e5                                      ldr r3, [r4]
00641b84  d0 11 9f e5                                      ldr r1, [pc, #0x1d0]
00641b88  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641b8c  01 10 8f e0                                      add r1, pc, r1
00641b90  05 50 84 e0                                      add r5, r4, r5
00641b94  05 00 a0 e1                                      mov r0, r5
00641b98  2b e6 ff eb                                      bl #0x63b44c
00641b9c  50 20 8d e2                                      add r2, sp, #0x50
00641ba0  20 30 84 e2                                      add r3, r4, #0x20
00641ba4  50 00 8d e5                                      str r0, [sp, #0x50]
00641ba8  30 10 85 e2                                      add r1, r5, #0x30
00641bac  58 00 8d e2                                      add r0, sp, #0x58
00641bb0  54 30 8d e5                                      str r3, [sp, #0x54]
00641bb4  4c e3 ff eb                                      bl #0x63a8ec
00641bb8  00 30 94 e5                                      ldr r3, [r4]
00641bbc  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
00641bc0  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641bc4  01 10 8f e0                                      add r1, pc, r1
00641bc8  05 50 84 e0                                      add r5, r4, r5
00641bcc  05 00 a0 e1                                      mov r0, r5
00641bd0  1d e6 ff eb                                      bl #0x63b44c
00641bd4  c0 20 8d e2                                      add r2, sp, #0xc0
00641bd8  8c 30 84 e2                                      add r3, r4, #0x8c
00641bdc  c0 00 8d e5                                      str r0, [sp, #0xc0]
00641be0  30 10 85 e2                                      add r1, r5, #0x30
00641be4  c8 00 8d e2                                      add r0, sp, #0xc8
00641be8  c4 30 8d e5                                      str r3, [sp, #0xc4]
00641bec  3e e3 ff eb                                      bl #0x63a8ec
00641bf0  00 30 94 e5                                      ldr r3, [r4]
00641bf4  68 11 9f e5                                      ldr r1, [pc, #0x168]
00641bf8  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641bfc  01 10 8f e0                                      add r1, pc, r1
00641c00  05 50 84 e0                                      add r5, r4, r5
00641c04  05 00 a0 e1                                      mov r0, r5
00641c08  0f e6 ff eb                                      bl #0x63b44c
00641c0c  b0 20 8d e2                                      add r2, sp, #0xb0
00641c10  2c 30 84 e2                                      add r3, r4, #0x2c
00641c14  b0 00 8d e5                                      str r0, [sp, #0xb0]
00641c18  30 10 85 e2                                      add r1, r5, #0x30
00641c1c  b8 00 8d e2                                      add r0, sp, #0xb8
00641c20  b4 30 8d e5                                      str r3, [sp, #0xb4]
00641c24  30 e3 ff eb                                      bl #0x63a8ec
00641c28  00 30 94 e5                                      ldr r3, [r4]
00641c2c  34 11 9f e5                                      ldr r1, [pc, #0x134]
00641c30  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641c34  01 10 8f e0                                      add r1, pc, r1
00641c38  05 50 84 e0                                      add r5, r4, r5
00641c3c  05 00 a0 e1                                      mov r0, r5
00641c40  01 e6 ff eb                                      bl #0x63b44c
00641c44  40 20 8d e2                                      add r2, sp, #0x40
00641c48  30 30 84 e2                                      add r3, r4, #0x30
00641c4c  40 00 8d e5                                      str r0, [sp, #0x40]
00641c50  30 10 85 e2                                      add r1, r5, #0x30
00641c54  48 00 8d e2                                      add r0, sp, #0x48
00641c58  44 30 8d e5                                      str r3, [sp, #0x44]
00641c5c  22 e3 ff eb                                      bl #0x63a8ec
00641c60  00 30 94 e5                                      ldr r3, [r4]
00641c64  00 11 9f e5                                      ldr r1, [pc, #0x100]
00641c68  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641c6c  01 10 8f e0                                      add r1, pc, r1
00641c70  05 50 84 e0                                      add r5, r4, r5
00641c74  05 00 a0 e1                                      mov r0, r5
00641c78  f3 e5 ff eb                                      bl #0x63b44c
00641c7c  30 20 8d e2                                      add r2, sp, #0x30
00641c80  30 00 8d e5                                      str r0, [sp, #0x30]
00641c84  30 10 85 e2                                      add r1, r5, #0x30
00641c88  38 00 8d e2                                      add r0, sp, #0x38
00641c8c  34 70 8d e5                                      str r7, [sp, #0x34]
00641c90  15 e3 ff eb                                      bl #0x63a8ec
00641c94  00 30 94 e5                                      ldr r3, [r4]
00641c98  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
00641c9c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641ca0  01 10 8f e0                                      add r1, pc, r1
00641ca4  05 50 84 e0                                      add r5, r4, r5
00641ca8  05 00 a0 e1                                      mov r0, r5
00641cac  e6 e5 ff eb                                      bl #0x63b44c
00641cb0  20 20 8d e2                                      add r2, sp, #0x20
00641cb4  78 30 84 e2                                      add r3, r4, #0x78
00641cb8  20 00 8d e5                                      str r0, [sp, #0x20]
00641cbc  30 10 85 e2                                      add r1, r5, #0x30
00641cc0  28 00 8d e2                                      add r0, sp, #0x28
00641cc4  24 30 8d e5                                      str r3, [sp, #0x24]
00641cc8  07 e3 ff eb                                      bl #0x63a8ec
00641ccc  00 30 94 e5                                      ldr r3, [r4]
00641cd0  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
00641cd4  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641cd8  01 10 8f e0                                      add r1, pc, r1
00641cdc  05 50 84 e0                                      add r5, r4, r5
00641ce0  05 00 a0 e1                                      mov r0, r5
00641ce4  d8 e5 ff eb                                      bl #0x63b44c
00641ce8  10 20 8d e2                                      add r2, sp, #0x10
00641cec  88 30 84 e2                                      add r3, r4, #0x88
00641cf0  10 00 8d e5                                      str r0, [sp, #0x10]
00641cf4  30 10 85 e2                                      add r1, r5, #0x30
00641cf8  18 00 8d e2                                      add r0, sp, #0x18
00641cfc  14 30 8d e5                                      str r3, [sp, #0x14]
00641d00  f9 e2 ff eb                                      bl #0x63a8ec
00641d04  00 30 94 e5                                      ldr r3, [r4]
00641d08  68 10 9f e5                                      ldr r1, [pc, #0x68]
00641d0c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641d10  01 10 8f e0                                      add r1, pc, r1
00641d14  05 50 84 e0                                      add r5, r4, r5
00641d18  05 00 a0 e1                                      mov r0, r5
00641d1c  ca e5 ff eb                                      bl #0x63b44c
00641d20  84 30 84 e2                                      add r3, r4, #0x84
00641d24  00 00 8d e5                                      str r0, [sp]
00641d28  30 10 85 e2                                      add r1, r5, #0x30
00641d2c  08 00 8d e2                                      add r0, sp, #8
00641d30  0d 20 a0 e1                                      mov r2, sp
00641d34  04 30 8d e5                                      str r3, [sp, #4]
00641d38  eb e2 ff eb                                      bl #0x63a8ec
00641d3c  04 00 a0 e1                                      mov r0, r4
00641d40  d4 d0 8d e2                                      add sp, sp, #0xd4
00641d44  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00641d48  48 38 2a 00 24 38 2a 00 fc 37 2a 00 d4 37 2a 00  .byte 0x48, 0x38, 0x2a, 0x00, 0x24, 0x38, 0x2a, 0x00, 0xfc, 0x37, 0x2a, 0x00, 0xd4, 0x37, 0x2a, 0x00
00641d58  b4 37 2a 00 8c 37 2a 00 6c 37 2a 00 44 37 2a 00  .byte 0xb4, 0x37, 0x2a, 0x00, 0x8c, 0x37, 0x2a, 0x00, 0x6c, 0x37, 0x2a, 0x00, 0x44, 0x37, 0x2a, 0x00
00641d68  1c 37 2a 00 fc 36 2a 00 d8 36 2a 00 d0 34 2a 00  .byte 0x1c, 0x37, 0x2a, 0x00, 0xfc, 0x36, 0x2a, 0x00, 0xd8, 0x36, 0x2a, 0x00, 0xd0, 0x34, 0x2a, 0x00
00641d78  78 36 2a 00                                      .byte 0x78, 0x36, 0x2a, 0x00
