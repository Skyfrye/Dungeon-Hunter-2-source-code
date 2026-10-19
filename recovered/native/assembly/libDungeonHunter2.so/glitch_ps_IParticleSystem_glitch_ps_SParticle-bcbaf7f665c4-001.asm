; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064bbc8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::SParticle>
; alias: _ZNK6glitch2ps15IParticleSystemINS0_9SParticleEE17getWorldMatrixPtrEv
; demangled: glitch::ps::IParticleSystem<glitch::ps::SParticle>::getWorldMatrixPtr() const
; decoder-mode: arm
0064bbc8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0064bbcc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064bbd0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::SParticle>
; alias: _ZTv0_n40_NK6glitch2ps15IParticleSystemINS0_9SParticleEE17getWorldMatrixPtrEv
; demangled: virtual thunk to glitch::ps::IParticleSystem<glitch::ps::SParticle>::getWorldMatrixPtr() const
; decoder-mode: arm
0064bbd0  00 30 90 e5                                      ldr r3, [r0]
0064bbd4  28 30 13 e5                                      ldr r3, [r3, #-0x28]
0064bbd8  03 00 80 e0                                      add r0, r0, r3
0064bbdc  f9 ff ff ea                                      b #0x64bbc8

; FUNCTION 0x0064bbe0, declared_size=272, range_size=272, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::SParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE4initEv
; demangled: glitch::ps::IParticleSystem<glitch::ps::SParticle>::init()
; decoder-mode: arm
0064bbe0  10 40 2d e9                                      push {r4, lr}
0064bbe4  08 10 90 e5                                      ldr r1, [r0, #8]
0064bbe8  00 20 90 e5                                      ldr r2, [r0]
0064bbec  00 30 a0 e3                                      mov r3, #0
0064bbf0  04 10 80 e5                                      str r1, [r0, #4]
0064bbf4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0064bbf8  00 40 a0 e1                                      mov r4, r0
0064bbfc  02 20 80 e0                                      add r2, r0, r2
0064bc00  4c 30 82 e5                                      str r3, [r2, #0x4c]
0064bc04  00 20 90 e5                                      ldr r2, [r0]
0064bc08  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0064bc0c  02 20 80 e0                                      add r2, r0, r2
0064bc10  48 30 82 e5                                      str r3, [r2, #0x48]
0064bc14  00 30 90 e5                                      ldr r3, [r0]
0064bc18  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064bc1c  03 00 80 e0                                      add r0, r0, r3
0064bc20  03 30 94 e7                                      ldr r3, [r4, r3]
0064bc24  0f e0 a0 e1                                      mov lr, pc
0064bc28  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0064bc2c  00 30 94 e5                                      ldr r3, [r4]
0064bc30  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064bc34  03 00 84 e0                                      add r0, r4, r3
0064bc38  03 30 94 e7                                      ldr r3, [r4, r3]
0064bc3c  0f e0 a0 e1                                      mov lr, pc
0064bc40  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0064bc44  00 30 94 e5                                      ldr r3, [r4]
0064bc48  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064bc4c  03 00 84 e0                                      add r0, r4, r3
0064bc50  03 30 94 e7                                      ldr r3, [r4, r3]
0064bc54  0f e0 a0 e1                                      mov lr, pc
0064bc58  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0064bc5c  00 30 94 e5                                      ldr r3, [r4]
0064bc60  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064bc64  03 00 84 e0                                      add r0, r4, r3
0064bc68  03 30 94 e7                                      ldr r3, [r4, r3]
0064bc6c  0f e0 a0 e1                                      mov lr, pc
0064bc70  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0064bc74  00 30 94 e5                                      ldr r3, [r4]
0064bc78  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064bc7c  03 00 84 e0                                      add r0, r4, r3
0064bc80  03 30 94 e7                                      ldr r3, [r4, r3]
0064bc84  0f e0 a0 e1                                      mov lr, pc
0064bc88  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0064bc8c  00 30 94 e5                                      ldr r3, [r4]
0064bc90  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064bc94  03 00 84 e0                                      add r0, r4, r3
0064bc98  03 30 94 e7                                      ldr r3, [r4, r3]
0064bc9c  0f e0 a0 e1                                      mov lr, pc
0064bca0  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0064bca4  00 30 94 e5                                      ldr r3, [r4]
0064bca8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064bcac  03 00 84 e0                                      add r0, r4, r3
0064bcb0  03 30 94 e7                                      ldr r3, [r4, r3]
0064bcb4  0f e0 a0 e1                                      mov lr, pc
0064bcb8  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0064bcbc  00 30 94 e5                                      ldr r3, [r4]
0064bcc0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064bcc4  03 00 84 e0                                      add r0, r4, r3
0064bcc8  03 30 94 e7                                      ldr r3, [r4, r3]
0064bccc  0f e0 a0 e1                                      mov lr, pc
0064bcd0  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
0064bcd4  00 30 94 e5                                      ldr r3, [r4]
0064bcd8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064bcdc  03 00 84 e0                                      add r0, r4, r3
0064bce0  03 30 94 e7                                      ldr r3, [r4, r3]
0064bce4  0f e0 a0 e1                                      mov lr, pc
0064bce8  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0064bcec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0064bcf0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::SParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE8getPRandEv
; demangled: glitch::ps::IParticleSystem<glitch::ps::SParticle>::getPRand()
; decoder-mode: arm
0064bcf0  04 00 80 e2                                      add r0, r0, #4
0064bcf4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064bcf8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::SParticle>
; alias: _ZTv0_n32_N6glitch2ps15IParticleSystemINS0_9SParticleEE8getPRandEv
; demangled: virtual thunk to glitch::ps::IParticleSystem<glitch::ps::SParticle>::getPRand()
; decoder-mode: arm
0064bcf8  00 30 90 e5                                      ldr r3, [r0]
0064bcfc  20 30 13 e5                                      ldr r3, [r3, #-0x20]
0064bd00  03 00 80 e0                                      add r0, r0, r3
0064bd04  f9 ff ff ea                                      b #0x64bcf0

; FUNCTION 0x0064d570, declared_size=60, range_size=60, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::SParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_9SParticleEED1Ev
; demangled: glitch::ps::IParticleSystem<glitch::ps::SParticle>::~IParticleSystem()
; decoder-mode: arm
0064d570  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0064d574  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0064d578  10 40 2d e9                                      push {r4, lr}
0064d57c  02 20 8f e0                                      add r2, pc, r2
0064d580  03 30 92 e7                                      ldr r3, [r2, r3]
0064d584  00 40 a0 e1                                      mov r4, r0
0064d588  0c 20 83 e2                                      add r2, r3, #0xc
0064d58c  bc 30 83 e2                                      add r3, r3, #0xbc
0064d590  10 20 80 e4                                      str r2, [r0], #0x10
0064d594  10 30 84 e5                                      str r3, [r4, #0x10]
0064d598  3e ff ff eb                                      bl #0x64d298
0064d59c  04 00 a0 e1                                      mov r0, r4
0064d5a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064d5a4  14 75 34 00 18 33 00 00                          .byte 0x14, 0x75, 0x34, 0x00, 0x18, 0x33, 0x00, 0x00

; FUNCTION 0x0064d5ac, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps15IParticleSystemINS0_9SParticleEED1Ev
; demangled: virtual thunk to glitch::ps::IParticleSystem<glitch::ps::SParticle>::~IParticleSystem()
; decoder-mode: arm
0064d5ac  00 30 90 e5                                      ldr r3, [r0]
0064d5b0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064d5b4  03 00 80 e0                                      add r0, r0, r3
0064d5b8  ec ff ff ea                                      b #0x64d570

; FUNCTION 0x0064ef44, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::SParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_9SParticleEED0Ev
; demangled: glitch::ps::IParticleSystem<glitch::ps::SParticle>::~IParticleSystem()
; decoder-mode: arm
0064ef44  34 20 9f e5                                      ldr r2, [pc, #0x34]
0064ef48  34 30 9f e5                                      ldr r3, [pc, #0x34]
0064ef4c  10 40 2d e9                                      push {r4, lr}
0064ef50  02 20 8f e0                                      add r2, pc, r2
0064ef54  03 30 92 e7                                      ldr r3, [r2, r3]
0064ef58  00 40 a0 e1                                      mov r4, r0
0064ef5c  0c 20 83 e2                                      add r2, r3, #0xc
0064ef60  bc 30 83 e2                                      add r3, r3, #0xbc
0064ef64  10 20 80 e4                                      str r2, [r0], #0x10
0064ef68  10 30 84 e5                                      str r3, [r4, #0x10]
0064ef6c  c9 f8 ff eb                                      bl #0x64d298
0064ef70  04 00 a0 e1                                      mov r0, r4
0064ef74  cd fc f2 eb                                      bl #0x30e2b0
0064ef78  04 00 a0 e1                                      mov r0, r4
0064ef7c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064ef80  40 5b 34 00 18 33 00 00                          .byte 0x40, 0x5b, 0x34, 0x00, 0x18, 0x33, 0x00, 0x00

; FUNCTION 0x0064ef88, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps15IParticleSystemINS0_9SParticleEED0Ev
; demangled: virtual thunk to glitch::ps::IParticleSystem<glitch::ps::SParticle>::~IParticleSystem()
; decoder-mode: arm
0064ef88  00 30 90 e5                                      ldr r3, [r0]
0064ef8c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064ef90  03 00 80 e0                                      add r0, r0, r3
0064ef94  ea ff ff ea                                      b #0x64ef44

; FUNCTION 0x006532cc, declared_size=1008, range_size=1008, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::SParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE6updateEfRNS_5video6SColorE
; demangled: glitch::ps::IParticleSystem<glitch::ps::SParticle>::update(float, glitch::video::SColor&)
; decoder-mode: arm
006532cc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006532d0  00 60 90 e5                                      ldr r6, [r0]
006532d4  00 40 a0 e1                                      mov r4, r0
006532d8  6c d0 4d e2                                      sub sp, sp, #0x6c
006532dc  0c 80 16 e5                                      ldr r8, [r6, #-0xc]
006532e0  01 00 a0 e1                                      mov r0, r1
006532e4  01 50 a0 e1                                      mov r5, r1
006532e8  08 80 84 e0                                      add r8, r4, r8
006532ec  48 a0 98 e5                                      ldr sl, [r8, #0x48]
006532f0  02 70 a0 e1                                      mov r7, r2
006532f4  0a 10 a0 e1                                      mov r1, sl
006532f8  2b ec f2 eb                                      bl #0x30e3ac
006532fc  00 10 a0 e3                                      mov r1, #0
00653300  01 ed f2 eb                                      bl #0x30e70c
00653304  00 00 50 e3                                      cmp r0, #0
00653308  e3 00 00 1a                                      bne #0x65369c
0065330c  4c a0 88 e5                                      str sl, [r8, #0x4c]
00653310  00 30 94 e5                                      ldr r3, [r4]
00653314  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653318  03 30 84 e0                                      add r3, r4, r3
0065331c  48 50 83 e5                                      str r5, [r3, #0x48]
00653320  00 30 94 e5                                      ldr r3, [r4]
00653324  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00653328  05 50 84 e0                                      add r5, r4, r5
0065332c  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
00653330  48 00 95 e5                                      ldr r0, [r5, #0x48]
00653334  1c ec f2 eb                                      bl #0x30e3ac
00653338  50 00 85 e5                                      str r0, [r5, #0x50]
0065333c  00 30 94 e5                                      ldr r3, [r4]
00653340  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653344  03 00 84 e0                                      add r0, r4, r3
00653348  03 30 94 e7                                      ldr r3, [r4, r3]
0065334c  0f e0 a0 e1                                      mov lr, pc
00653350  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00653354  00 30 94 e5                                      ldr r3, [r4]
00653358  00 60 a0 e1                                      mov r6, r0
0065335c  00 10 a0 e1                                      mov r1, r0
00653360  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653364  03 c0 84 e0                                      add ip, r4, r3
00653368  28 50 9c e5                                      ldr r5, [ip, #0x28]
0065336c  0c 00 a0 e1                                      mov r0, ip
00653370  03 30 94 e7                                      ldr r3, [r4, r3]
00653374  05 20 a0 e1                                      mov r2, r5
00653378  24 80 9c e5                                      ldr r8, [ip, #0x24]
0065337c  0f e0 a0 e1                                      mov lr, pc
00653380  80 f0 93 e5                                      ldr pc, [r3, #0x80]
00653384  00 30 94 e5                                      ldr r3, [r4]
00653388  05 20 a0 e1                                      mov r2, r5
0065338c  06 10 a0 e1                                      mov r1, r6
00653390  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653394  03 00 84 e0                                      add r0, r4, r3
00653398  03 30 94 e7                                      ldr r3, [r4, r3]
0065339c  0f e0 a0 e1                                      mov lr, pc
006533a0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
006533a4  00 30 94 e5                                      ldr r3, [r4]
006533a8  05 20 a0 e1                                      mov r2, r5
006533ac  06 10 a0 e1                                      mov r1, r6
006533b0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006533b4  03 00 84 e0                                      add r0, r4, r3
006533b8  03 30 94 e7                                      ldr r3, [r4, r3]
006533bc  0f e0 a0 e1                                      mov lr, pc
006533c0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006533c4  00 30 94 e5                                      ldr r3, [r4]
006533c8  05 20 a0 e1                                      mov r2, r5
006533cc  06 10 a0 e1                                      mov r1, r6
006533d0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006533d4  03 00 84 e0                                      add r0, r4, r3
006533d8  03 30 94 e7                                      ldr r3, [r4, r3]
006533dc  0f e0 a0 e1                                      mov lr, pc
006533e0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006533e4  00 30 94 e5                                      ldr r3, [r4]
006533e8  05 20 a0 e1                                      mov r2, r5
006533ec  06 10 a0 e1                                      mov r1, r6
006533f0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006533f4  03 00 84 e0                                      add r0, r4, r3
006533f8  03 30 94 e7                                      ldr r3, [r4, r3]
006533fc  0f e0 a0 e1                                      mov lr, pc
00653400  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00653404  00 30 94 e5                                      ldr r3, [r4]
00653408  05 20 a0 e1                                      mov r2, r5
0065340c  06 10 a0 e1                                      mov r1, r6
00653410  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653414  03 00 84 e0                                      add r0, r4, r3
00653418  03 30 94 e7                                      ldr r3, [r4, r3]
0065341c  0f e0 a0 e1                                      mov lr, pc
00653420  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00653424  00 30 94 e5                                      ldr r3, [r4]
00653428  05 20 a0 e1                                      mov r2, r5
0065342c  06 10 a0 e1                                      mov r1, r6
00653430  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653434  03 00 84 e0                                      add r0, r4, r3
00653438  03 30 94 e7                                      ldr r3, [r4, r3]
0065343c  0f e0 a0 e1                                      mov lr, pc
00653440  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00653444  00 30 94 e5                                      ldr r3, [r4]
00653448  05 20 a0 e1                                      mov r2, r5
0065344c  06 10 a0 e1                                      mov r1, r6
00653450  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653454  03 00 84 e0                                      add r0, r4, r3
00653458  03 30 94 e7                                      ldr r3, [r4, r3]
0065345c  0f e0 a0 e1                                      mov lr, pc
00653460  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
00653464  00 30 94 e5                                      ldr r3, [r4]
00653468  08 10 a0 e1                                      mov r1, r8
0065346c  05 20 a0 e1                                      mov r2, r5
00653470  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653474  03 00 84 e0                                      add r0, r4, r3
00653478  03 30 94 e7                                      ldr r3, [r4, r3]
0065347c  0f e0 a0 e1                                      mov lr, pc
00653480  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00653484  00 20 94 e5                                      ldr r2, [r4]
00653488  29 3c 05 e3                                      movw r3, #0x5c29
0065348c  8f 32 4c e3                                      movt r3, #0xc28f
00653490  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
00653494  01 10 84 e0                                      add r1, r4, r1
00653498  24 a0 91 e5                                      ldr sl, [r1, #0x24]
0065349c  28 50 91 e5                                      ldr r5, [r1, #0x28]
006534a0  05 80 6a e0                                      rsb r8, sl, r5
006534a4  48 81 a0 e1                                      asr r8, r8, #2
006534a8  0a 00 55 e1                                      cmp r5, sl
006534ac  93 08 08 e0                                      mul r8, r3, r8
006534b0  08 00 00 1a                                      bne #0x6534d8
006534b4  25 00 00 ea                                      b #0x653550
006534b8  06 00 a0 e1                                      mov r0, r6
006534bc  00 10 a0 e3                                      mov r1, #0
006534c0  91 ec f2 eb                                      bl #0x30e70c
006534c4  00 00 50 e3                                      cmp r0, #0
006534c8  08 00 00 1a                                      bne #0x6534f0
006534cc  64 a0 8a e2                                      add sl, sl, #0x64
006534d0  0a 00 55 e1                                      cmp r5, sl
006534d4  1c 00 00 0a                                      beq #0x65354c
006534d8  3c 60 9a e5                                      ldr r6, [sl, #0x3c]
006534dc  40 10 9a e5                                      ldr r1, [sl, #0x40]
006534e0  06 00 a0 e1                                      mov r0, r6
006534e4  f2 eb f2 eb                                      bl #0x30e4b4
006534e8  00 00 50 e3                                      cmp r0, #0
006534ec  f1 ff ff 0a                                      beq #0x6534b8
006534f0  64 50 45 e2                                      sub r5, r5, #0x64
006534f4  0a 00 55 e1                                      cmp r5, sl
006534f8  01 80 48 e2                                      sub r8, r8, #1
006534fc  0a 00 00 9a                                      bls #0x65352c
00653500  3c 60 95 e5                                      ldr r6, [r5, #0x3c]
00653504  40 10 95 e5                                      ldr r1, [r5, #0x40]
00653508  06 00 a0 e1                                      mov r0, r6
0065350c  7e ec f2 eb                                      bl #0x30e70c
00653510  00 00 50 e3                                      cmp r0, #0
00653514  00 10 a0 e3                                      mov r1, #0
00653518  06 00 a0 e1                                      mov r0, r6
0065351c  f3 ff ff 0a                                      beq #0x6534f0
00653520  e3 eb f2 eb                                      bl #0x30e4b4
00653524  00 00 50 e3                                      cmp r0, #0
00653528  f0 ff ff 0a                                      beq #0x6534f0
0065352c  05 00 5a e1                                      cmp sl, r5
00653530  05 00 00 0a                                      beq #0x65354c
00653534  0a 00 a0 e1                                      mov r0, sl
00653538  05 10 a0 e1                                      mov r1, r5
0065353c  64 a0 8a e2                                      add sl, sl, #0x64
00653540  aa f6 ff eb                                      bl #0x650ff0
00653544  0a 00 55 e1                                      cmp r5, sl
00653548  e2 ff ff 1a                                      bne #0x6534d8
0065354c  00 20 94 e5                                      ldr r2, [r4]
00653550  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00653554  00 30 a0 e3                                      mov r3, #0
00653558  fe e5 a0 e3                                      mov lr, #0x3f800000
0065355c  00 00 84 e0                                      add r0, r4, r0
00653560  00 c0 e0 e3                                      mvn ip, #0
00653564  08 10 a0 e1                                      mov r1, r8
00653568  04 20 8d e2                                      add r2, sp, #4
0065356c  24 00 80 e2                                      add r0, r0, #0x24
00653570  30 e0 8d e5                                      str lr, [sp, #0x30]
00653574  20 e0 8d e5                                      str lr, [sp, #0x20]
00653578  1f c0 cd e5                                      strb ip, [sp, #0x1f]
0065357c  60 30 8d e5                                      str r3, [sp, #0x60]
00653580  04 30 8d e5                                      str r3, [sp, #4]
00653584  08 30 8d e5                                      str r3, [sp, #8]
00653588  0c 30 8d e5                                      str r3, [sp, #0xc]
0065358c  10 30 8d e5                                      str r3, [sp, #0x10]
00653590  14 30 8d e5                                      str r3, [sp, #0x14]
00653594  18 30 8d e5                                      str r3, [sp, #0x18]
00653598  1c c0 cd e5                                      strb ip, [sp, #0x1c]
0065359c  1d c0 cd e5                                      strb ip, [sp, #0x1d]
006535a0  1e c0 cd e5                                      strb ip, [sp, #0x1e]
006535a4  24 30 8d e5                                      str r3, [sp, #0x24]
006535a8  28 30 8d e5                                      str r3, [sp, #0x28]
006535ac  2c 30 8d e5                                      str r3, [sp, #0x2c]
006535b0  34 30 8d e5                                      str r3, [sp, #0x34]
006535b4  38 30 8d e5                                      str r3, [sp, #0x38]
006535b8  3c 30 8d e5                                      str r3, [sp, #0x3c]
006535bc  58 30 8d e5                                      str r3, [sp, #0x58]
006535c0  5c 30 8d e5                                      str r3, [sp, #0x5c]
006535c4  d4 fe ff eb                                      bl #0x65311c
006535c8  00 20 94 e5                                      ldr r2, [r4]
006535cc  07 30 a0 e1                                      mov r3, r7
006535d0  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006535d4  02 00 84 e0                                      add r0, r4, r2
006535d8  24 60 90 e5                                      ldr r6, [r0, #0x24]
006535dc  28 50 90 e5                                      ldr r5, [r0, #0x28]
006535e0  02 c0 94 e7                                      ldr ip, [r4, r2]
006535e4  06 10 a0 e1                                      mov r1, r6
006535e8  05 20 a0 e1                                      mov r2, r5
006535ec  0f e0 a0 e1                                      mov lr, pc
006535f0  40 f0 9c e5                                      ldr pc, [ip, #0x40]
006535f4  00 30 94 e5                                      ldr r3, [r4]
006535f8  06 10 a0 e1                                      mov r1, r6
006535fc  05 20 a0 e1                                      mov r2, r5
00653600  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653604  03 00 84 e0                                      add r0, r4, r3
00653608  03 30 94 e7                                      ldr r3, [r4, r3]
0065360c  0f e0 a0 e1                                      mov lr, pc
00653610  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00653614  00 30 94 e5                                      ldr r3, [r4]
00653618  06 10 a0 e1                                      mov r1, r6
0065361c  05 20 a0 e1                                      mov r2, r5
00653620  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653624  03 00 84 e0                                      add r0, r4, r3
00653628  03 30 94 e7                                      ldr r3, [r4, r3]
0065362c  0f e0 a0 e1                                      mov lr, pc
00653630  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00653634  00 30 94 e5                                      ldr r3, [r4]
00653638  06 10 a0 e1                                      mov r1, r6
0065363c  05 20 a0 e1                                      mov r2, r5
00653640  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653644  03 00 84 e0                                      add r0, r4, r3
00653648  03 30 94 e7                                      ldr r3, [r4, r3]
0065364c  0f e0 a0 e1                                      mov lr, pc
00653650  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00653654  00 30 94 e5                                      ldr r3, [r4]
00653658  06 10 a0 e1                                      mov r1, r6
0065365c  05 20 a0 e1                                      mov r2, r5
00653660  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653664  03 00 84 e0                                      add r0, r4, r3
00653668  03 30 94 e7                                      ldr r3, [r4, r3]
0065366c  0f e0 a0 e1                                      mov lr, pc
00653670  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00653674  00 30 94 e5                                      ldr r3, [r4]
00653678  06 10 a0 e1                                      mov r1, r6
0065367c  05 20 a0 e1                                      mov r2, r5
00653680  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653684  03 00 84 e0                                      add r0, r4, r3
00653688  03 30 94 e7                                      ldr r3, [r4, r3]
0065368c  0f e0 a0 e1                                      mov lr, pc
00653690  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00653694  6c d0 8d e2                                      add sp, sp, #0x6c
00653698  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0065369c  04 00 a0 e1                                      mov r0, r4
006536a0  0f e0 a0 e1                                      mov lr, pc
006536a4  0c f0 96 e5                                      ldr pc, [r6, #0xc]
006536a8  00 30 94 e5                                      ldr r3, [r4]
006536ac  0c 80 13 e5                                      ldr r8, [r3, #-0xc]
006536b0  08 80 84 e0                                      add r8, r4, r8
006536b4  48 a0 98 e5                                      ldr sl, [r8, #0x48]
006536b8  13 ff ff ea                                      b #0x65330c
