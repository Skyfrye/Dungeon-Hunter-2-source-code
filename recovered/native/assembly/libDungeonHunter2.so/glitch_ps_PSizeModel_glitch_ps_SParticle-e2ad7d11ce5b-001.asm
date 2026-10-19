; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064bd08, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PSizeModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PSizeModelINS0_9SParticleEE14initPSizeModelEv
; demangled: glitch::ps::PSizeModel<glitch::ps::SParticle>::initPSizeModel()
; decoder-mode: arm
0064bd08  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064bd0c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSizeModel<glitch::ps::SParticle>
; alias: _ZTv0_n52_N6glitch2ps10PSizeModelINS0_9SParticleEE14initPSizeModelEv
; demangled: virtual thunk to glitch::ps::PSizeModel<glitch::ps::SParticle>::initPSizeModel()
; decoder-mode: arm
0064bd0c  00 30 90 e5                                      ldr r3, [r0]
0064bd10  34 30 13 e5                                      ldr r3, [r3, #-0x34]
0064bd14  03 00 80 e0                                      add r0, r0, r3
0064bd18  fa ff ff ea                                      b #0x64bd08

; FUNCTION 0x0064bd1c, declared_size=220, range_size=220, mode=arm
; class-group: glitch::ps::PSizeModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PSizeModelINS0_9SParticleEE9initPSizeEPS2_S4_
; demangled: glitch::ps::PSizeModel<glitch::ps::SParticle>::initPSize(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064bd1c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0064bd20  00 30 90 e5                                      ldr r3, [r0]
0064bd24  00 40 a0 e1                                      mov r4, r0
0064bd28  01 50 a0 e1                                      mov r5, r1
0064bd2c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064bd30  02 80 a0 e1                                      mov r8, r2
0064bd34  03 00 80 e0                                      add r0, r0, r3
0064bd38  03 30 94 e7                                      ldr r3, [r4, r3]
0064bd3c  0f e0 a0 e1                                      mov lr, pc
0064bd40  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064bd44  08 10 94 e5                                      ldr r1, [r4, #8]
0064bd48  00 a0 a0 e1                                      mov sl, r0
0064bd4c  04 00 94 e5                                      ldr r0, [r4, #4]
0064bd50  05 0c f3 eb                                      bl #0x30ed6c
0064bd54  08 00 55 e1                                      cmp r5, r8
0064bd58  00 70 a0 e1                                      mov r7, r0
0064bd5c  24 00 00 0a                                      beq #0x64bdf4
0064bd60  00 90 a0 e3                                      mov sb, #0
0064bd64  06 00 00 ea                                      b #0x64bd84
0064bd68  44 90 85 e5                                      str sb, [r5, #0x44]
0064bd6c  04 00 94 e5                                      ldr r0, [r4, #4]
0064bd70  8b 0b f3 eb                                      bl #0x30eba4
0064bd74  48 00 85 e5                                      str r0, [r5, #0x48]
0064bd78  64 50 85 e2                                      add r5, r5, #0x64
0064bd7c  05 00 58 e1                                      cmp r8, r5
0064bd80  1b 00 00 0a                                      beq #0x64bdf4
0064bd84  0a 00 a0 e1                                      mov r0, sl
0064bd88  3a 90 ff eb                                      bl #0x62fe78
0064bd8c  43 0a f3 eb                                      bl #0x30e6a0
0064bd90  00 10 a0 e1                                      mov r1, r0
0064bd94  07 00 a0 e1                                      mov r0, r7
0064bd98  f3 0b f3 eb                                      bl #0x30ed6c
0064bd9c  bf 14 a0 e3                                      mov r1, #0xbf000000
0064bda0  00 60 a0 e1                                      mov r6, r0
0064bda4  07 00 a0 e1                                      mov r0, r7
0064bda8  ef 0b f3 eb                                      bl #0x30ed6c
0064bdac  00 10 a0 e1                                      mov r1, r0
0064bdb0  06 00 a0 e1                                      mov r0, r6
0064bdb4  7a 0b f3 eb                                      bl #0x30eba4
0064bdb8  00 10 a0 e3                                      mov r1, #0
0064bdbc  00 60 a0 e1                                      mov r6, r0
0064bdc0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0064bdc4  4b 09 f3 eb                                      bl #0x30e2f8
0064bdc8  00 00 50 e3                                      cmp r0, #0
0064bdcc  06 10 a0 e1                                      mov r1, r6
0064bdd0  e4 ff ff 1a                                      bne #0x64bd68
0064bdd4  04 10 94 e5                                      ldr r1, [r4, #4]
0064bdd8  06 00 a0 e1                                      mov r0, r6
0064bddc  70 0b f3 eb                                      bl #0x30eba4
0064bde0  44 00 85 e5                                      str r0, [r5, #0x44]
0064bde4  48 00 85 e5                                      str r0, [r5, #0x48]
0064bde8  64 50 85 e2                                      add r5, r5, #0x64
0064bdec  05 00 58 e1                                      cmp r8, r5
0064bdf0  e3 ff ff 1a                                      bne #0x64bd84
0064bdf4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0064bdf8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSizeModel<glitch::ps::SParticle>
; alias: _ZTv0_n56_N6glitch2ps10PSizeModelINS0_9SParticleEE9initPSizeEPS2_S4_
; demangled: virtual thunk to glitch::ps::PSizeModel<glitch::ps::SParticle>::initPSize(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064bdf8  00 30 90 e5                                      ldr r3, [r0]
0064bdfc  38 30 13 e5                                      ldr r3, [r3, #-0x38]
0064be00  03 00 80 e0                                      add r0, r0, r3
0064be04  c4 ff ff ea                                      b #0x64bd1c

; FUNCTION 0x0064be08, declared_size=212, range_size=212, mode=arm
; class-group: glitch::ps::PSizeModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PSizeModelINS0_9SParticleEE10applyPSizeEPS2_S4_
; demangled: glitch::ps::PSizeModel<glitch::ps::SParticle>::applyPSize(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064be08  02 00 51 e1                                      cmp r1, r2
0064be0c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0064be10  02 a0 a0 e1                                      mov sl, r2
0064be14  00 70 a0 e1                                      mov r7, r0
0064be18  2e 00 00 0a                                      beq #0x64bed8
0064be1c  01 40 a0 e1                                      mov r4, r1
0064be20  48 60 94 e5                                      ldr r6, [r4, #0x48]
0064be24  00 10 a0 e3                                      mov r1, #0
0064be28  44 60 84 e5                                      str r6, [r4, #0x44]
0064be2c  0c 50 97 e5                                      ldr r5, [r7, #0xc]
0064be30  05 00 a0 e1                                      mov r0, r5
0064be34  2f 09 f3 eb                                      bl #0x30e2f8
0064be38  00 00 50 e3                                      cmp r0, #0
0064be3c  05 00 a0 e1                                      mov r0, r5
0064be40  0b 00 00 0a                                      beq #0x64be74
0064be44  3c 80 94 e5                                      ldr r8, [r4, #0x3c]
0064be48  08 10 a0 e1                                      mov r1, r8
0064be4c  29 09 f3 eb                                      bl #0x30e2f8
0064be50  00 00 50 e3                                      cmp r0, #0
0064be54  05 10 a0 e1                                      mov r1, r5
0064be58  08 00 a0 e1                                      mov r0, r8
0064be5c  04 00 00 0a                                      beq #0x64be74
0064be60  8b 0b f3 eb                                      bl #0x30ec94
0064be64  00 10 a0 e1                                      mov r1, r0
0064be68  06 00 a0 e1                                      mov r0, r6
0064be6c  be 0b f3 eb                                      bl #0x30ed6c
0064be70  44 00 84 e5                                      str r0, [r4, #0x44]
0064be74  10 50 97 e5                                      ldr r5, [r7, #0x10]
0064be78  00 10 a0 e3                                      mov r1, #0
0064be7c  05 00 a0 e1                                      mov r0, r5
0064be80  1c 09 f3 eb                                      bl #0x30e2f8
0064be84  00 00 50 e3                                      cmp r0, #0
0064be88  0f 00 00 0a                                      beq #0x64becc
0064be8c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
0064be90  40 00 94 e5                                      ldr r0, [r4, #0x40]
0064be94  44 09 f3 eb                                      bl #0x30e3ac
0064be98  00 60 a0 e1                                      mov r6, r0
0064be9c  06 10 a0 e1                                      mov r1, r6
0064bea0  05 00 a0 e1                                      mov r0, r5
0064bea4  13 09 f3 eb                                      bl #0x30e2f8
0064bea8  00 00 50 e3                                      cmp r0, #0
0064beac  05 10 a0 e1                                      mov r1, r5
0064beb0  06 00 a0 e1                                      mov r0, r6
0064beb4  04 00 00 0a                                      beq #0x64becc
0064beb8  75 0b f3 eb                                      bl #0x30ec94
0064bebc  00 10 a0 e1                                      mov r1, r0
0064bec0  48 00 94 e5                                      ldr r0, [r4, #0x48]
0064bec4  a8 0b f3 eb                                      bl #0x30ed6c
0064bec8  44 00 84 e5                                      str r0, [r4, #0x44]
0064becc  64 40 84 e2                                      add r4, r4, #0x64
0064bed0  04 00 5a e1                                      cmp sl, r4
0064bed4  d1 ff ff 1a                                      bne #0x64be20
0064bed8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0064bedc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSizeModel<glitch::ps::SParticle>
; alias: _ZTv0_n60_N6glitch2ps10PSizeModelINS0_9SParticleEE10applyPSizeEPS2_S4_
; demangled: virtual thunk to glitch::ps::PSizeModel<glitch::ps::SParticle>::applyPSize(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064bedc  00 30 90 e5                                      ldr r3, [r0]
0064bee0  3c 30 13 e5                                      ldr r3, [r3, #-0x3c]
0064bee4  03 00 80 e0                                      add r0, r0, r3
0064bee8  c6 ff ff ea                                      b #0x64be08

; FUNCTION 0x0064d4d8, declared_size=60, range_size=60, mode=arm
; class-group: glitch::ps::PSizeModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PSizeModelINS0_9SParticleEED1Ev
; demangled: glitch::ps::PSizeModel<glitch::ps::SParticle>::~PSizeModel()
; decoder-mode: arm
0064d4d8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0064d4dc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0064d4e0  10 40 2d e9                                      push {r4, lr}
0064d4e4  02 20 8f e0                                      add r2, pc, r2
0064d4e8  03 30 92 e7                                      ldr r3, [r2, r3]
0064d4ec  00 40 a0 e1                                      mov r4, r0
0064d4f0  0c 20 83 e2                                      add r2, r3, #0xc
0064d4f4  b8 30 83 e2                                      add r3, r3, #0xb8
0064d4f8  14 20 80 e4                                      str r2, [r0], #0x14
0064d4fc  14 30 84 e5                                      str r3, [r4, #0x14]
0064d500  64 ff ff eb                                      bl #0x64d298
0064d504  04 00 a0 e1                                      mov r0, r4
0064d508  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064d50c  ac 75 34 00 78 34 00 00                          .byte 0xac, 0x75, 0x34, 0x00, 0x78, 0x34, 0x00, 0x00

; FUNCTION 0x0064d514, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSizeModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps10PSizeModelINS0_9SParticleEED1Ev
; demangled: virtual thunk to glitch::ps::PSizeModel<glitch::ps::SParticle>::~PSizeModel()
; decoder-mode: arm
0064d514  00 30 90 e5                                      ldr r3, [r0]
0064d518  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064d51c  03 00 80 e0                                      add r0, r0, r3
0064d520  ec ff ff ea                                      b #0x64d4d8

; FUNCTION 0x0064efec, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::PSizeModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PSizeModelINS0_9SParticleEED0Ev
; demangled: glitch::ps::PSizeModel<glitch::ps::SParticle>::~PSizeModel()
; decoder-mode: arm
0064efec  34 20 9f e5                                      ldr r2, [pc, #0x34]
0064eff0  34 30 9f e5                                      ldr r3, [pc, #0x34]
0064eff4  10 40 2d e9                                      push {r4, lr}
0064eff8  02 20 8f e0                                      add r2, pc, r2
0064effc  03 30 92 e7                                      ldr r3, [r2, r3]
0064f000  00 40 a0 e1                                      mov r4, r0
0064f004  0c 20 83 e2                                      add r2, r3, #0xc
0064f008  b8 30 83 e2                                      add r3, r3, #0xb8
0064f00c  14 20 80 e4                                      str r2, [r0], #0x14
0064f010  14 30 84 e5                                      str r3, [r4, #0x14]
0064f014  9f f8 ff eb                                      bl #0x64d298
0064f018  04 00 a0 e1                                      mov r0, r4
0064f01c  a3 fc f2 eb                                      bl #0x30e2b0
0064f020  04 00 a0 e1                                      mov r0, r4
0064f024  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064f028  98 5a 34 00 78 34 00 00                          .byte 0x98, 0x5a, 0x34, 0x00, 0x78, 0x34, 0x00, 0x00

; FUNCTION 0x0064f030, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSizeModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps10PSizeModelINS0_9SParticleEED0Ev
; demangled: virtual thunk to glitch::ps::PSizeModel<glitch::ps::SParticle>::~PSizeModel()
; decoder-mode: arm
0064f030  00 30 90 e5                                      ldr r3, [r0]
0064f034  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064f038  03 00 80 e0                                      add r0, r0, r3
0064f03c  ea ff ff ea                                      b #0x64efec

; FUNCTION 0x006543f8, declared_size=308, range_size=308, mode=arm
; class-group: glitch::ps::PSizeModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PSizeModelINS0_9SParticleEEC2Ev
; demangled: glitch::ps::PSizeModel<glitch::ps::SParticle>::PSizeModel()
; decoder-mode: arm
006543f8  30 40 2d e9                                      push {r4, r5, lr}
006543fc  00 30 91 e5                                      ldr r3, [r1]
00654400  00 20 a0 e3                                      mov r2, #0
00654404  44 d0 4d e2                                      sub sp, sp, #0x44
00654408  00 30 80 e5                                      str r3, [r0]
0065440c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00654410  04 10 91 e5                                      ldr r1, [r1, #4]
00654414  00 40 a0 e1                                      mov r4, r0
00654418  03 10 80 e7                                      str r1, [r0, r3]
0065441c  00 30 90 e5                                      ldr r3, [r0]
00654420  fe 15 a0 e3                                      mov r1, #0x3f800000
00654424  04 10 80 e5                                      str r1, [r0, #4]
00654428  10 20 80 e5                                      str r2, [r0, #0x10]
0065442c  08 20 80 e5                                      str r2, [r0, #8]
00654430  0c 20 80 e5                                      str r2, [r0, #0xc]
00654434  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654438  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
0065443c  05 50 80 e0                                      add r5, r0, r5
00654440  01 10 8f e0                                      add r1, pc, r1
00654444  05 00 a0 e1                                      mov r0, r5
00654448  1b e3 ff eb                                      bl #0x64d0bc
0065444c  30 20 8d e2                                      add r2, sp, #0x30
00654450  04 30 84 e2                                      add r3, r4, #4
00654454  30 00 8d e5                                      str r0, [sp, #0x30]
00654458  30 10 85 e2                                      add r1, r5, #0x30
0065445c  38 00 8d e2                                      add r0, sp, #0x38
00654460  34 30 8d e5                                      str r3, [sp, #0x34]
00654464  20 99 ff eb                                      bl #0x63a8ec
00654468  00 30 94 e5                                      ldr r3, [r4]
0065446c  ac 10 9f e5                                      ldr r1, [pc, #0xac]
00654470  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654474  01 10 8f e0                                      add r1, pc, r1
00654478  05 50 84 e0                                      add r5, r4, r5
0065447c  05 00 a0 e1                                      mov r0, r5
00654480  0d e3 ff eb                                      bl #0x64d0bc
00654484  20 20 8d e2                                      add r2, sp, #0x20
00654488  08 30 84 e2                                      add r3, r4, #8
0065448c  20 00 8d e5                                      str r0, [sp, #0x20]
00654490  30 10 85 e2                                      add r1, r5, #0x30
00654494  28 00 8d e2                                      add r0, sp, #0x28
00654498  24 30 8d e5                                      str r3, [sp, #0x24]
0065449c  12 99 ff eb                                      bl #0x63a8ec
006544a0  00 30 94 e5                                      ldr r3, [r4]
006544a4  78 10 9f e5                                      ldr r1, [pc, #0x78]
006544a8  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006544ac  01 10 8f e0                                      add r1, pc, r1
006544b0  05 50 84 e0                                      add r5, r4, r5
006544b4  05 00 a0 e1                                      mov r0, r5
006544b8  ff e2 ff eb                                      bl #0x64d0bc
006544bc  10 20 8d e2                                      add r2, sp, #0x10
006544c0  0c 30 84 e2                                      add r3, r4, #0xc
006544c4  10 00 8d e5                                      str r0, [sp, #0x10]
006544c8  30 10 85 e2                                      add r1, r5, #0x30
006544cc  18 00 8d e2                                      add r0, sp, #0x18
006544d0  14 30 8d e5                                      str r3, [sp, #0x14]
006544d4  04 99 ff eb                                      bl #0x63a8ec
006544d8  00 30 94 e5                                      ldr r3, [r4]
006544dc  44 10 9f e5                                      ldr r1, [pc, #0x44]
006544e0  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006544e4  01 10 8f e0                                      add r1, pc, r1
006544e8  05 50 84 e0                                      add r5, r4, r5
006544ec  05 00 a0 e1                                      mov r0, r5
006544f0  f1 e2 ff eb                                      bl #0x64d0bc
006544f4  10 30 84 e2                                      add r3, r4, #0x10
006544f8  00 00 8d e5                                      str r0, [sp]
006544fc  30 10 85 e2                                      add r1, r5, #0x30
00654500  08 00 8d e2                                      add r0, sp, #8
00654504  0d 20 a0 e1                                      mov r2, sp
00654508  04 30 8d e5                                      str r3, [sp, #4]
0065450c  f6 98 ff eb                                      bl #0x63a8ec
00654510  04 00 a0 e1                                      mov r0, r4
00654514  44 d0 8d e2                                      add sp, sp, #0x44
00654518  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0065451c  b8 0f 29 00 94 0f 29 00 7c 11 29 00 54 11 29 00  .byte 0xb8, 0x0f, 0x29, 0x00, 0x94, 0x0f, 0x29, 0x00, 0x7c, 0x11, 0x29, 0x00, 0x54, 0x11, 0x29, 0x00
