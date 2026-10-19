; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064beec, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PColorModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps11PColorModelINS0_9SParticleEE15initPColorModelEv
; demangled: glitch::ps::PColorModel<glitch::ps::SParticle>::initPColorModel()
; decoder-mode: arm
0064beec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064bef0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PColorModel<glitch::ps::SParticle>
; alias: _ZTv0_n64_N6glitch2ps11PColorModelINS0_9SParticleEE15initPColorModelEv
; demangled: virtual thunk to glitch::ps::PColorModel<glitch::ps::SParticle>::initPColorModel()
; decoder-mode: arm
0064bef0  00 30 90 e5                                      ldr r3, [r0]
0064bef4  40 30 13 e5                                      ldr r3, [r3, #-0x40]
0064bef8  03 00 80 e0                                      add r0, r0, r3
0064befc  fa ff ff ea                                      b #0x64beec

; FUNCTION 0x0064bf00, declared_size=348, range_size=348, mode=arm
; class-group: glitch::ps::PColorModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps11PColorModelINS0_9SParticleEE10initPColorEPS2_S4_
; demangled: glitch::ps::PColorModel<glitch::ps::SParticle>::initPColor(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064bf00  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064bf04  04 30 90 e5                                      ldr r3, [r0, #4]
0064bf08  00 40 a0 e1                                      mov r4, r0
0064bf0c  01 50 a0 e1                                      mov r5, r1
0064bf10  00 00 53 e3                                      cmp r3, #0
0064bf14  02 a0 a0 e1                                      mov sl, r2
0064bf18  4b 00 00 0a                                      beq #0x64c04c
0064bf1c  00 30 94 e5                                      ldr r3, [r4]
0064bf20  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064bf24  03 00 84 e0                                      add r0, r4, r3
0064bf28  03 30 94 e7                                      ldr r3, [r4, r3]
0064bf2c  0f e0 a0 e1                                      mov lr, pc
0064bf30  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064bf34  14 10 94 e5                                      ldr r1, [r4, #0x14]
0064bf38  00 90 a0 e1                                      mov sb, r0
0064bf3c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0064bf40  89 0b f3 eb                                      bl #0x30ed6c
0064bf44  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0064bf48  00 80 a0 e1                                      mov r8, r0
0064bf4c  18 00 94 e5                                      ldr r0, [r4, #0x18]
0064bf50  85 0b f3 eb                                      bl #0x30ed6c
0064bf54  0a 00 55 e1                                      cmp r5, sl
0064bf58  00 70 a0 e1                                      mov r7, r0
0064bf5c  11 00 00 1a                                      bne #0x64bfa8
0064bf60  3c 00 00 ea                                      b #0x64c058
0064bf64  00 10 a0 e3                                      mov r1, #0
0064bf68  07 00 a0 e1                                      mov r0, r7
0064bf6c  06 08 f3 eb                                      bl #0x30df8c
0064bf70  00 00 50 e3                                      cmp r0, #0
0064bf74  00 60 a0 13                                      movne r6, #0
0064bf78  24 00 00 0a                                      beq #0x64c010
0064bf7c  10 10 94 e5                                      ldr r1, [r4, #0x10]
0064bf80  0b 00 a0 e1                                      mov r0, fp
0064bf84  06 0b f3 eb                                      bl #0x30eba4
0064bf88  34 00 85 e5                                      str r0, [r5, #0x34]
0064bf8c  18 10 94 e5                                      ldr r1, [r4, #0x18]
0064bf90  06 00 a0 e1                                      mov r0, r6
0064bf94  02 0b f3 eb                                      bl #0x30eba4
0064bf98  38 00 85 e5                                      str r0, [r5, #0x38]
0064bf9c  64 50 85 e2                                      add r5, r5, #0x64
0064bfa0  05 00 5a e1                                      cmp sl, r5
0064bfa4  2b 00 00 0a                                      beq #0x64c058
0064bfa8  08 00 a0 e1                                      mov r0, r8
0064bfac  00 10 a0 e3                                      mov r1, #0
0064bfb0  f5 07 f3 eb                                      bl #0x30df8c
0064bfb4  00 00 50 e3                                      cmp r0, #0
0064bfb8  00 b0 a0 13                                      movne fp, #0
0064bfbc  e8 ff ff 1a                                      bne #0x64bf64
0064bfc0  09 00 a0 e1                                      mov r0, sb
0064bfc4  ab 8f ff eb                                      bl #0x62fe78
0064bfc8  b4 09 f3 eb                                      bl #0x30e6a0
0064bfcc  00 10 a0 e1                                      mov r1, r0
0064bfd0  08 00 a0 e1                                      mov r0, r8
0064bfd4  64 0b f3 eb                                      bl #0x30ed6c
0064bfd8  bf 14 a0 e3                                      mov r1, #0xbf000000
0064bfdc  00 60 a0 e1                                      mov r6, r0
0064bfe0  08 00 a0 e1                                      mov r0, r8
0064bfe4  60 0b f3 eb                                      bl #0x30ed6c
0064bfe8  00 10 a0 e1                                      mov r1, r0
0064bfec  06 00 a0 e1                                      mov r0, r6
0064bff0  eb 0a f3 eb                                      bl #0x30eba4
0064bff4  00 10 a0 e3                                      mov r1, #0
0064bff8  00 b0 a0 e1                                      mov fp, r0
0064bffc  07 00 a0 e1                                      mov r0, r7
0064c000  e1 07 f3 eb                                      bl #0x30df8c
0064c004  00 00 50 e3                                      cmp r0, #0
0064c008  00 60 a0 13                                      movne r6, #0
0064c00c  da ff ff 1a                                      bne #0x64bf7c
0064c010  09 00 a0 e1                                      mov r0, sb
0064c014  97 8f ff eb                                      bl #0x62fe78
0064c018  a0 09 f3 eb                                      bl #0x30e6a0
0064c01c  00 10 a0 e1                                      mov r1, r0
0064c020  07 00 a0 e1                                      mov r0, r7
0064c024  50 0b f3 eb                                      bl #0x30ed6c
0064c028  bf 14 a0 e3                                      mov r1, #0xbf000000
0064c02c  00 60 a0 e1                                      mov r6, r0
0064c030  07 00 a0 e1                                      mov r0, r7
0064c034  4c 0b f3 eb                                      bl #0x30ed6c
0064c038  00 10 a0 e1                                      mov r1, r0
0064c03c  06 00 a0 e1                                      mov r0, r6
0064c040  d7 0a f3 eb                                      bl #0x30eba4
0064c044  00 60 a0 e1                                      mov r6, r0
0064c048  cb ff ff ea                                      b #0x64bf7c
0064c04c  08 30 90 e5                                      ldr r3, [r0, #8]
0064c050  00 00 53 e3                                      cmp r3, #0
0064c054  b0 ff ff 1a                                      bne #0x64bf1c
0064c058  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0064c05c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PColorModel<glitch::ps::SParticle>
; alias: _ZTv0_n68_N6glitch2ps11PColorModelINS0_9SParticleEE10initPColorEPS2_S4_
; demangled: virtual thunk to glitch::ps::PColorModel<glitch::ps::SParticle>::initPColor(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c05c  00 30 90 e5                                      ldr r3, [r0]
0064c060  44 30 13 e5                                      ldr r3, [r3, #-0x44]
0064c064  03 00 80 e0                                      add r0, r0, r3
0064c068  a4 ff ff ea                                      b #0x64bf00

; FUNCTION 0x0064c06c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PColorModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps11PColorModelINS0_9SParticleEE22hasColorAnimationTrackEv
; demangled: glitch::ps::PColorModel<glitch::ps::SParticle>::hasColorAnimationTrack()
; decoder-mode: arm
0064c06c  08 00 90 e5                                      ldr r0, [r0, #8]
0064c070  00 00 50 e2                                      subs r0, r0, #0
0064c074  01 00 a0 13                                      movne r0, #1
0064c078  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064c07c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PColorModel<glitch::ps::SParticle>
; alias: _ZTv0_n36_N6glitch2ps11PColorModelINS0_9SParticleEE22hasColorAnimationTrackEv
; demangled: virtual thunk to glitch::ps::PColorModel<glitch::ps::SParticle>::hasColorAnimationTrack()
; decoder-mode: arm
0064c07c  00 30 90 e5                                      ldr r3, [r0]
0064c080  24 30 13 e5                                      ldr r3, [r3, #-0x24]
0064c084  03 00 80 e0                                      add r0, r0, r3
0064c088  f7 ff ff ea                                      b #0x64c06c

; FUNCTION 0x0064d48c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::ps::PColorModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps11PColorModelINS0_9SParticleEED1Ev
; demangled: glitch::ps::PColorModel<glitch::ps::SParticle>::~PColorModel()
; decoder-mode: arm
0064d48c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0064d490  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0064d494  10 40 2d e9                                      push {r4, lr}
0064d498  02 20 8f e0                                      add r2, pc, r2
0064d49c  03 30 92 e7                                      ldr r3, [r2, r3]
0064d4a0  00 40 a0 e1                                      mov r4, r0
0064d4a4  0c 20 83 e2                                      add r2, r3, #0xc
0064d4a8  bc 30 83 e2                                      add r3, r3, #0xbc
0064d4ac  28 20 80 e4                                      str r2, [r0], #0x28
0064d4b0  28 30 84 e5                                      str r3, [r4, #0x28]
0064d4b4  77 ff ff eb                                      bl #0x64d298
0064d4b8  04 00 a0 e1                                      mov r0, r4
0064d4bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064d4c0  f8 75 34 00 6c 3e 00 00                          .byte 0xf8, 0x75, 0x34, 0x00, 0x6c, 0x3e, 0x00, 0x00

; FUNCTION 0x0064d4c8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PColorModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps11PColorModelINS0_9SParticleEED1Ev
; demangled: virtual thunk to glitch::ps::PColorModel<glitch::ps::SParticle>::~PColorModel()
; decoder-mode: arm
0064d4c8  00 30 90 e5                                      ldr r3, [r0]
0064d4cc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064d4d0  03 00 80 e0                                      add r0, r0, r3
0064d4d4  ec ff ff ea                                      b #0x64d48c

; FUNCTION 0x0064e830, declared_size=580, range_size=580, mode=arm
; class-group: glitch::ps::PColorModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps11PColorModelINS0_9SParticleEE11applyPColorEPS2_S4_RNS_5video6SColorE
; demangled: glitch::ps::PColorModel<glitch::ps::SParticle>::applyPColor(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::video::SColor&)
; decoder-mode: arm
0064e830  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064e834  00 50 a0 e1                                      mov r5, r0
0064e838  08 00 90 e5                                      ldr r0, [r0, #8]
0064e83c  5c d0 4d e2                                      sub sp, sp, #0x5c
0064e840  10 20 8d e5                                      str r2, [sp, #0x10]
0064e844  00 00 50 e3                                      cmp r0, #0
0064e848  03 60 a0 e1                                      mov r6, r3
0064e84c  78 00 00 0a                                      beq #0x64ea34
0064e850  10 20 9d e5                                      ldr r2, [sp, #0x10]
0064e854  02 00 51 e1                                      cmp r1, r2
0064e858  83 00 00 0a                                      beq #0x64ea6c
0064e85c  00 30 a0 e3                                      mov r3, #0
0064e860  54 30 8d e5                                      str r3, [sp, #0x54]
0064e864  41 30 cd e5                                      strb r3, [sp, #0x41]
0064e868  44 30 8d e2                                      add r3, sp, #0x44
0064e86c  0c 30 8d e5                                      str r3, [sp, #0xc]
0064e870  20 c0 8d e2                                      add ip, sp, #0x20
0064e874  54 20 8d e2                                      add r2, sp, #0x54
0064e878  50 30 8d e2                                      add r3, sp, #0x50
0064e87c  00 80 a0 e3                                      mov r8, #0
0064e880  fe a5 a0 e3                                      mov sl, #0x3f800000
0064e884  01 40 a0 e1                                      mov r4, r1
0064e888  34 90 8d e2                                      add sb, sp, #0x34
0064e88c  14 c0 8d e5                                      str ip, [sp, #0x14]
0064e890  18 20 8d e5                                      str r2, [sp, #0x18]
0064e894  1c 30 8d e5                                      str r3, [sp, #0x1c]
0064e898  59 00 00 ea                                      b #0x64ea04
0064e89c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
0064e8a0  34 00 94 e5                                      ldr r0, [r4, #0x34]
0064e8a4  be 00 f3 eb                                      bl #0x30eba4
0064e8a8  11 13 a0 e3                                      mov r1, #0x44000000
0064e8ac  7a 18 81 e2                                      add r1, r1, #0x7a0000
0064e8b0  2d 01 f3 eb                                      bl #0x30ed6c
0064e8b4  04 30 95 e5                                      ldr r3, [r5, #4]
0064e8b8  00 60 a0 e1                                      mov r6, r0
0064e8bc  00 00 53 e3                                      cmp r3, #0
0064e8c0  2f 00 00 0a                                      beq #0x64e984
0064e8c4  00 20 95 e5                                      ldr r2, [r5]
0064e8c8  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0064e8cc  02 20 85 e0                                      add r2, r5, r2
0064e8d0  58 20 92 e5                                      ldr r2, [r2, #0x58]
0064e8d4  44 30 8d e5                                      str r3, [sp, #0x44]
0064e8d8  4c 90 8d e5                                      str sb, [sp, #0x4c]
0064e8dc  48 20 8d e5                                      str r2, [sp, #0x48]
0064e8e0  20 80 8d e5                                      str r8, [sp, #0x20]
0064e8e4  24 80 8d e5                                      str r8, [sp, #0x24]
0064e8e8  28 80 8d e5                                      str r8, [sp, #0x28]
0064e8ec  2c a0 8d e5                                      str sl, [sp, #0x2c]
0064e8f0  30 a0 8d e5                                      str sl, [sp, #0x30]
0064e8f4  f4 fe f2 eb                                      bl #0x30e4cc
0064e8f8  00 c0 a0 e3                                      mov ip, #0
0064e8fc  14 20 9d e5                                      ldr r2, [sp, #0x14]
0064e900  00 10 a0 e1                                      mov r1, r0
0064e904  18 30 9d e5                                      ldr r3, [sp, #0x18]
0064e908  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0064e90c  00 c0 8d e5                                      str ip, [sp]
0064e910  24 6e 00 eb                                      bl #0x66a1a8
0064e914  28 b0 9d e5                                      ldr fp, [sp, #0x28]
0064e918  0b 00 a0 e1                                      mov r0, fp
0064e91c  8c ff f2 eb                                      bl #0x30e754
0064e920  00 70 a0 e1                                      mov r7, r0
0064e924  0b 00 a0 e1                                      mov r0, fp
0064e928  76 00 f3 eb                                      bl #0x30eb08
0064e92c  07 10 a0 e1                                      mov r1, r7
0064e930  00 b0 a0 e1                                      mov fp, r0
0064e934  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0064e938  0b 01 f3 eb                                      bl #0x30ed6c
0064e93c  02 31 8b e2                                      add r3, fp, #0x80000000
0064e940  1c 00 84 e5                                      str r0, [r4, #0x1c]
0064e944  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0064e948  03 00 a0 e1                                      mov r0, r3
0064e94c  06 01 f3 eb                                      bl #0x30ed6c
0064e950  20 30 9d e5                                      ldr r3, [sp, #0x20]
0064e954  20 00 84 e5                                      str r0, [r4, #0x20]
0064e958  0b 10 a0 e1                                      mov r1, fp
0064e95c  24 30 84 e5                                      str r3, [r4, #0x24]
0064e960  30 00 9d e5                                      ldr r0, [sp, #0x30]
0064e964  00 01 f3 eb                                      bl #0x30ed6c
0064e968  28 00 84 e5                                      str r0, [r4, #0x28]
0064e96c  30 00 9d e5                                      ldr r0, [sp, #0x30]
0064e970  07 10 a0 e1                                      mov r1, r7
0064e974  fc 00 f3 eb                                      bl #0x30ed6c
0064e978  24 30 9d e5                                      ldr r3, [sp, #0x24]
0064e97c  2c 00 84 e5                                      str r0, [r4, #0x2c]
0064e980  30 30 84 e5                                      str r3, [r4, #0x30]
0064e984  08 70 95 e5                                      ldr r7, [r5, #8]
0064e988  06 00 a0 e1                                      mov r0, r6
0064e98c  00 00 57 e3                                      cmp r7, #0
0064e990  17 00 00 0a                                      beq #0x64e9f4
0064e994  c2 ff f2 eb                                      bl #0x30e8a4
0064e998  ea 2a 05 e3                                      movw r2, #0x5aea
0064e99c  aa 3a 0a e3                                      movw r3, #0xaaaa
0064e9a0  7b 2f 49 e3                                      movt r2, #0x9f7b
0064e9a4  40 30 44 e3                                      movt r3, #0x4040
0064e9a8  64 fe f2 eb                                      bl #0x30e340
0064e9ac  1c 00 f3 eb                                      bl #0x30ea24
0064e9b0  00 30 95 e5                                      ldr r3, [r5]
0064e9b4  50 00 8d e5                                      str r0, [sp, #0x50]
0064e9b8  06 00 a0 e1                                      mov r0, r6
0064e9bc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064e9c0  03 30 85 e0                                      add r3, r5, r3
0064e9c4  58 30 93 e5                                      ldr r3, [r3, #0x58]
0064e9c8  44 70 8d e5                                      str r7, [sp, #0x44]
0064e9cc  4c 90 8d e5                                      str sb, [sp, #0x4c]
0064e9d0  48 30 8d e5                                      str r3, [sp, #0x48]
0064e9d4  bc fe f2 eb                                      bl #0x30e4cc
0064e9d8  01 c0 a0 e3                                      mov ip, #1
0064e9dc  00 10 a0 e1                                      mov r1, r0
0064e9e0  18 20 84 e2                                      add r2, r4, #0x18
0064e9e4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0064e9e8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0064e9ec  00 c0 8d e5                                      str ip, [sp]
0064e9f0  ec 6d 00 eb                                      bl #0x66a1a8
0064e9f4  10 20 9d e5                                      ldr r2, [sp, #0x10]
0064e9f8  64 40 84 e2                                      add r4, r4, #0x64
0064e9fc  04 00 52 e1                                      cmp r2, r4
0064ea00  19 00 00 0a                                      beq #0x64ea6c
0064ea04  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0064ea08  01 00 53 e3                                      cmp r3, #1
0064ea0c  a2 ff ff 1a                                      bne #0x64e89c
0064ea10  38 10 94 e5                                      ldr r1, [r4, #0x38]
0064ea14  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0064ea18  d3 00 f3 eb                                      bl #0x30ed6c
0064ea1c  40 10 94 e5                                      ldr r1, [r4, #0x40]
0064ea20  9b 00 f3 eb                                      bl #0x30ec94
0064ea24  20 10 95 e5                                      ldr r1, [r5, #0x20]
0064ea28  cf 00 f3 eb                                      bl #0x30ed6c
0064ea2c  34 10 94 e5                                      ldr r1, [r4, #0x34]
0064ea30  9b ff ff ea                                      b #0x64e8a4
0064ea34  04 30 95 e5                                      ldr r3, [r5, #4]
0064ea38  00 00 53 e3                                      cmp r3, #0
0064ea3c  83 ff ff 1a                                      bne #0x64e850
0064ea40  02 00 51 e1                                      cmp r1, r2
0064ea44  08 00 00 0a                                      beq #0x64ea6c
0064ea48  10 50 9d e5                                      ldr r5, [sp, #0x10]
0064ea4c  01 40 a0 e1                                      mov r4, r1
0064ea50  18 00 84 e2                                      add r0, r4, #0x18
0064ea54  06 10 a0 e1                                      mov r1, r6
0064ea58  64 40 84 e2                                      add r4, r4, #0x64
0064ea5c  04 20 a0 e3                                      mov r2, #4
0064ea60  80 ff f2 eb                                      bl #0x30e868
0064ea64  04 00 55 e1                                      cmp r5, r4
0064ea68  f8 ff ff 1a                                      bne #0x64ea50
0064ea6c  5c d0 8d e2                                      add sp, sp, #0x5c
0064ea70  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0064ea74, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PColorModel<glitch::ps::SParticle>
; alias: _ZTv0_n72_N6glitch2ps11PColorModelINS0_9SParticleEE11applyPColorEPS2_S4_RNS_5video6SColorE
; demangled: virtual thunk to glitch::ps::PColorModel<glitch::ps::SParticle>::applyPColor(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::video::SColor&)
; decoder-mode: arm
0064ea74  00 c0 90 e5                                      ldr ip, [r0]
0064ea78  48 c0 1c e5                                      ldr ip, [ip, #-0x48]
0064ea7c  0c 00 80 e0                                      add r0, r0, ip
0064ea80  6a ff ff ea                                      b #0x64e830

; FUNCTION 0x0064f040, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::PColorModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps11PColorModelINS0_9SParticleEED0Ev
; demangled: glitch::ps::PColorModel<glitch::ps::SParticle>::~PColorModel()
; decoder-mode: arm
0064f040  34 20 9f e5                                      ldr r2, [pc, #0x34]
0064f044  34 30 9f e5                                      ldr r3, [pc, #0x34]
0064f048  10 40 2d e9                                      push {r4, lr}
0064f04c  02 20 8f e0                                      add r2, pc, r2
0064f050  03 30 92 e7                                      ldr r3, [r2, r3]
0064f054  00 40 a0 e1                                      mov r4, r0
0064f058  0c 20 83 e2                                      add r2, r3, #0xc
0064f05c  bc 30 83 e2                                      add r3, r3, #0xbc
0064f060  28 20 80 e4                                      str r2, [r0], #0x28
0064f064  28 30 84 e5                                      str r3, [r4, #0x28]
0064f068  8a f8 ff eb                                      bl #0x64d298
0064f06c  04 00 a0 e1                                      mov r0, r4
0064f070  8e fc f2 eb                                      bl #0x30e2b0
0064f074  04 00 a0 e1                                      mov r0, r4
0064f078  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064f07c  44 5a 34 00 6c 3e 00 00                          .byte 0x44, 0x5a, 0x34, 0x00, 0x6c, 0x3e, 0x00, 0x00

; FUNCTION 0x0064f084, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PColorModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps11PColorModelINS0_9SParticleEED0Ev
; demangled: virtual thunk to glitch::ps::PColorModel<glitch::ps::SParticle>::~PColorModel()
; decoder-mode: arm
0064f084  00 30 90 e5                                      ldr r3, [r0]
0064f088  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064f08c  03 00 80 e0                                      add r0, r0, r3
0064f090  ea ff ff ea                                      b #0x64f040

; FUNCTION 0x00654690, declared_size=620, range_size=620, mode=arm
; class-group: glitch::ps::PColorModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps11PColorModelINS0_9SParticleEEC2Ev
; demangled: glitch::ps::PColorModel<glitch::ps::SParticle>::PColorModel()
; decoder-mode: arm
00654690  30 40 2d e9                                      push {r4, r5, lr}
00654694  00 30 91 e5                                      ldr r3, [r1]
00654698  00 40 a0 e1                                      mov r4, r0
0065469c  00 20 a0 e3                                      mov r2, #0
006546a0  00 30 80 e5                                      str r3, [r0]
006546a4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
006546a8  04 10 91 e5                                      ldr r1, [r1, #4]
006546ac  00 30 a0 e3                                      mov r3, #0
006546b0  94 d0 4d e2                                      sub sp, sp, #0x94
006546b4  00 10 84 e7                                      str r1, [r4, r0]
006546b8  00 10 94 e5                                      ldr r1, [r4]
006546bc  0c 30 84 e5                                      str r3, [r4, #0xc]
006546c0  1c 20 84 e5                                      str r2, [r4, #0x1c]
006546c4  04 30 84 e5                                      str r3, [r4, #4]
006546c8  08 30 84 e5                                      str r3, [r4, #8]
006546cc  10 20 84 e5                                      str r2, [r4, #0x10]
006546d0  14 20 84 e5                                      str r2, [r4, #0x14]
006546d4  18 20 84 e5                                      str r2, [r4, #0x18]
006546d8  0c 50 11 e5                                      ldr r5, [r1, #-0xc]
006546dc  f4 11 9f e5                                      ldr r1, [pc, #0x1f4]
006546e0  05 50 84 e0                                      add r5, r4, r5
006546e4  01 10 8f e0                                      add r1, pc, r1
006546e8  05 00 a0 e1                                      mov r0, r5
006546ec  72 e2 ff eb                                      bl #0x64d0bc
006546f0  80 20 8d e2                                      add r2, sp, #0x80
006546f4  04 30 84 e2                                      add r3, r4, #4
006546f8  80 00 8d e5                                      str r0, [sp, #0x80]
006546fc  30 10 85 e2                                      add r1, r5, #0x30
00654700  88 00 8d e2                                      add r0, sp, #0x88
00654704  84 30 8d e5                                      str r3, [sp, #0x84]
00654708  77 98 ff eb                                      bl #0x63a8ec
0065470c  00 30 94 e5                                      ldr r3, [r4]
00654710  c4 11 9f e5                                      ldr r1, [pc, #0x1c4]
00654714  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654718  01 10 8f e0                                      add r1, pc, r1
0065471c  05 50 84 e0                                      add r5, r4, r5
00654720  05 00 a0 e1                                      mov r0, r5
00654724  64 e2 ff eb                                      bl #0x64d0bc
00654728  70 20 8d e2                                      add r2, sp, #0x70
0065472c  08 30 84 e2                                      add r3, r4, #8
00654730  70 00 8d e5                                      str r0, [sp, #0x70]
00654734  30 10 85 e2                                      add r1, r5, #0x30
00654738  78 00 8d e2                                      add r0, sp, #0x78
0065473c  74 30 8d e5                                      str r3, [sp, #0x74]
00654740  69 98 ff eb                                      bl #0x63a8ec
00654744  00 30 94 e5                                      ldr r3, [r4]
00654748  90 11 9f e5                                      ldr r1, [pc, #0x190]
0065474c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654750  01 10 8f e0                                      add r1, pc, r1
00654754  05 50 84 e0                                      add r5, r4, r5
00654758  05 00 a0 e1                                      mov r0, r5
0065475c  56 e2 ff eb                                      bl #0x64d0bc
00654760  60 20 8d e2                                      add r2, sp, #0x60
00654764  0c 30 84 e2                                      add r3, r4, #0xc
00654768  60 00 8d e5                                      str r0, [sp, #0x60]
0065476c  30 10 85 e2                                      add r1, r5, #0x30
00654770  68 00 8d e2                                      add r0, sp, #0x68
00654774  64 30 8d e5                                      str r3, [sp, #0x64]
00654778  5b 98 ff eb                                      bl #0x63a8ec
0065477c  00 30 94 e5                                      ldr r3, [r4]
00654780  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
00654784  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654788  01 10 8f e0                                      add r1, pc, r1
0065478c  05 50 84 e0                                      add r5, r4, r5
00654790  05 00 a0 e1                                      mov r0, r5
00654794  48 e2 ff eb                                      bl #0x64d0bc
00654798  50 20 8d e2                                      add r2, sp, #0x50
0065479c  10 30 84 e2                                      add r3, r4, #0x10
006547a0  50 00 8d e5                                      str r0, [sp, #0x50]
006547a4  30 10 85 e2                                      add r1, r5, #0x30
006547a8  58 00 8d e2                                      add r0, sp, #0x58
006547ac  54 30 8d e5                                      str r3, [sp, #0x54]
006547b0  4d 98 ff eb                                      bl #0x63a8ec
006547b4  00 30 94 e5                                      ldr r3, [r4]
006547b8  28 11 9f e5                                      ldr r1, [pc, #0x128]
006547bc  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006547c0  01 10 8f e0                                      add r1, pc, r1
006547c4  05 50 84 e0                                      add r5, r4, r5
006547c8  05 00 a0 e1                                      mov r0, r5
006547cc  3a e2 ff eb                                      bl #0x64d0bc
006547d0  40 20 8d e2                                      add r2, sp, #0x40
006547d4  14 30 84 e2                                      add r3, r4, #0x14
006547d8  40 00 8d e5                                      str r0, [sp, #0x40]
006547dc  30 10 85 e2                                      add r1, r5, #0x30
006547e0  48 00 8d e2                                      add r0, sp, #0x48
006547e4  44 30 8d e5                                      str r3, [sp, #0x44]
006547e8  3f 98 ff eb                                      bl #0x63a8ec
006547ec  00 30 94 e5                                      ldr r3, [r4]
006547f0  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
006547f4  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006547f8  01 10 8f e0                                      add r1, pc, r1
006547fc  05 50 84 e0                                      add r5, r4, r5
00654800  05 00 a0 e1                                      mov r0, r5
00654804  2c e2 ff eb                                      bl #0x64d0bc
00654808  30 20 8d e2                                      add r2, sp, #0x30
0065480c  18 30 84 e2                                      add r3, r4, #0x18
00654810  30 00 8d e5                                      str r0, [sp, #0x30]
00654814  30 10 85 e2                                      add r1, r5, #0x30
00654818  38 00 8d e2                                      add r0, sp, #0x38
0065481c  34 30 8d e5                                      str r3, [sp, #0x34]
00654820  31 98 ff eb                                      bl #0x63a8ec
00654824  00 30 94 e5                                      ldr r3, [r4]
00654828  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
0065482c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654830  01 10 8f e0                                      add r1, pc, r1
00654834  05 50 84 e0                                      add r5, r4, r5
00654838  05 00 a0 e1                                      mov r0, r5
0065483c  1e e2 ff eb                                      bl #0x64d0bc
00654840  20 20 8d e2                                      add r2, sp, #0x20
00654844  1c 30 84 e2                                      add r3, r4, #0x1c
00654848  20 00 8d e5                                      str r0, [sp, #0x20]
0065484c  30 10 85 e2                                      add r1, r5, #0x30
00654850  28 00 8d e2                                      add r0, sp, #0x28
00654854  24 30 8d e5                                      str r3, [sp, #0x24]
00654858  23 98 ff eb                                      bl #0x63a8ec
0065485c  00 30 94 e5                                      ldr r3, [r4]
00654860  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
00654864  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654868  01 10 8f e0                                      add r1, pc, r1
0065486c  05 50 84 e0                                      add r5, r4, r5
00654870  05 00 a0 e1                                      mov r0, r5
00654874  10 e2 ff eb                                      bl #0x64d0bc
00654878  10 20 8d e2                                      add r2, sp, #0x10
0065487c  20 30 84 e2                                      add r3, r4, #0x20
00654880  10 00 8d e5                                      str r0, [sp, #0x10]
00654884  30 10 85 e2                                      add r1, r5, #0x30
00654888  18 00 8d e2                                      add r0, sp, #0x18
0065488c  14 30 8d e5                                      str r3, [sp, #0x14]
00654890  15 98 ff eb                                      bl #0x63a8ec
00654894  00 30 94 e5                                      ldr r3, [r4]
00654898  58 10 9f e5                                      ldr r1, [pc, #0x58]
0065489c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006548a0  01 10 8f e0                                      add r1, pc, r1
006548a4  05 50 84 e0                                      add r5, r4, r5
006548a8  05 00 a0 e1                                      mov r0, r5
006548ac  02 e2 ff eb                                      bl #0x64d0bc
006548b0  24 30 84 e2                                      add r3, r4, #0x24
006548b4  00 00 8d e5                                      str r0, [sp]
006548b8  30 10 85 e2                                      add r1, r5, #0x30
006548bc  08 00 8d e2                                      add r0, sp, #8
006548c0  0d 20 a0 e1                                      mov r2, sp
006548c4  04 30 8d e5                                      str r3, [sp, #4]
006548c8  07 98 ff eb                                      bl #0x63a8ec
006548cc  04 00 a0 e1                                      mov r0, r4
006548d0  94 d0 8d e2                                      add sp, sp, #0x94
006548d4  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
006548d8  4c 0a 29 00 00 0a 29 00 e0 0c 29 00 c0 0c 29 00  .byte 0x4c, 0x0a, 0x29, 0x00, 0x00, 0x0a, 0x29, 0x00, 0xe0, 0x0c, 0x29, 0x00, 0xc0, 0x0c, 0x29, 0x00
006548e8  98 0c 29 00 78 0c 29 00 50 0c 29 00 30 0c 29 00  .byte 0x98, 0x0c, 0x29, 0x00, 0x78, 0x0c, 0x29, 0x00, 0x50, 0x0c, 0x29, 0x00, 0x30, 0x0c, 0x29, 0x00
006548f8  10 0c 29 00                                      .byte 0x10, 0x0c, 0x29, 0x00
