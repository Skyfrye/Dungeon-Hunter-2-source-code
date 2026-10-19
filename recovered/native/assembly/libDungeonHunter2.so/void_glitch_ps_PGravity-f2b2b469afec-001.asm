; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00633368, declared_size=692, range_size=692, mode=arm
; class-group: void glitch::ps::PGravity
; alias: _ZN6glitch2ps8PGravity5applyINS0_12GNPSParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
; demangled: void glitch::ps::PGravity::apply<glitch::ps::GNPSParticle>(glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::ParticleItt, glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::ParticleItt, glitch::ps::IParticleContext<glitch::ps::GNPSParticle>*)
; decoder-mode: arm
00633368  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0063336c  00 c0 a0 e3                                      mov ip, #0
00633370  24 d0 4d e2                                      sub sp, sp, #0x24
00633374  1c c0 8d e5                                      str ip, [sp, #0x1c]
00633378  14 c0 8d e5                                      str ip, [sp, #0x14]
0063337c  18 c0 8d e5                                      str ip, [sp, #0x18]
00633380  00 50 90 e5                                      ldr r5, [r0]
00633384  01 70 a0 e1                                      mov r7, r1
00633388  11 13 a0 e3                                      mov r1, #0x44000000
0063338c  04 00 95 e5                                      ldr r0, [r5, #4]
00633390  7a 18 81 e2                                      add r1, r1, #0x7a0000
00633394  02 40 a0 e1                                      mov r4, r2
00633398  03 60 a0 e1                                      mov r6, r3
0063339c  72 6e f3 eb                                      bl #0x30ed6c
006333a0  04 00 8d e5                                      str r0, [sp, #4]
006333a4  50 60 96 e5                                      ldr r6, [r6, #0x50]
006333a8  0c 90 95 e5                                      ldr sb, [r5, #0xc]
006333ac  04 00 57 e1                                      cmp r7, r4
006333b0  00 60 8d e5                                      str r6, [sp]
006333b4  00 60 95 e5                                      ldr r6, [r5]
006333b8  08 b0 95 e5                                      ldr fp, [r5, #8]
006333bc  35 00 00 0a                                      beq #0x633498
006333c0  02 31 8b e2                                      add r3, fp, #0x80000000
006333c4  0c 30 8d e5                                      str r3, [sp, #0xc]
006333c8  14 30 8d e2                                      add r3, sp, #0x14
006333cc  07 50 a0 e1                                      mov r5, r7
006333d0  08 30 8d e5                                      str r3, [sp, #8]
006333d4  00 00 59 e3                                      cmp sb, #0
006333d8  4f 00 00 1a                                      bne #0x63351c
006333dc  20 30 96 e5                                      ldr r3, [r6, #0x20]
006333e0  08 00 9d e5                                      ldr r0, [sp, #8]
006333e4  14 30 8d e5                                      str r3, [sp, #0x14]
006333e8  24 30 96 e5                                      ldr r3, [r6, #0x24]
006333ec  18 30 8d e5                                      str r3, [sp, #0x18]
006333f0  28 30 96 e5                                      ldr r3, [r6, #0x28]
006333f4  40 90 c6 e5                                      strb sb, [r6, #0x40]
006333f8  1c 30 8d e5                                      str r3, [sp, #0x1c]
006333fc  37 ad f4 eb                                      bl #0x35e8e0
00633400  0b 00 a0 e1                                      mov r0, fp
00633404  00 10 a0 e3                                      mov r1, #0
00633408  ba 6b f3 eb                                      bl #0x30e2f8
0063340c  00 00 50 e3                                      cmp r0, #0
00633410  22 00 00 1a                                      bne #0x6334a0
00633414  04 00 9d e5                                      ldr r0, [sp, #4]
00633418  00 10 9d e5                                      ldr r1, [sp]
0063341c  52 6e f3 eb                                      bl #0x30ed6c
00633420  14 10 9d e5                                      ldr r1, [sp, #0x14]
00633424  00 70 a0 e1                                      mov r7, r0
00633428  4f 6e f3 eb                                      bl #0x30ed6c
0063342c  07 10 a0 e1                                      mov r1, r7
00633430  00 a0 a0 e1                                      mov sl, r0
00633434  18 00 9d e5                                      ldr r0, [sp, #0x18]
00633438  14 a0 8d e5                                      str sl, [sp, #0x14]
0063343c  4a 6e f3 eb                                      bl #0x30ed6c
00633440  07 10 a0 e1                                      mov r1, r7
00633444  00 80 a0 e1                                      mov r8, r0
00633448  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0063344c  18 80 8d e5                                      str r8, [sp, #0x18]
00633450  45 6e f3 eb                                      bl #0x30ed6c
00633454  0a 10 a0 e1                                      mov r1, sl
00633458  00 70 a0 e1                                      mov r7, r0
0063345c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00633460  1c 70 8d e5                                      str r7, [sp, #0x1c]
00633464  ce 6d f3 eb                                      bl #0x30eba4
00633468  08 10 a0 e1                                      mov r1, r8
0063346c  0c 00 85 e5                                      str r0, [r5, #0xc]
00633470  10 00 95 e5                                      ldr r0, [r5, #0x10]
00633474  ca 6d f3 eb                                      bl #0x30eba4
00633478  07 10 a0 e1                                      mov r1, r7
0063347c  10 00 85 e5                                      str r0, [r5, #0x10]
00633480  14 00 95 e5                                      ldr r0, [r5, #0x14]
00633484  c6 6d f3 eb                                      bl #0x30eba4
00633488  14 00 85 e5                                      str r0, [r5, #0x14]
0063348c  9c 50 85 e2                                      add r5, r5, #0x9c
00633490  05 00 54 e1                                      cmp r4, r5
00633494  ce ff ff 1a                                      bne #0x6333d4
00633498  24 d0 8d e2                                      add sp, sp, #0x24
0063349c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006334a0  30 10 96 e5                                      ldr r1, [r6, #0x30]
006334a4  00 00 95 e5                                      ldr r0, [r5]
006334a8  bf 6b f3 eb                                      bl #0x30e3ac
006334ac  14 10 9d e5                                      ldr r1, [sp, #0x14]
006334b0  2d 6e f3 eb                                      bl #0x30ed6c
006334b4  34 10 96 e5                                      ldr r1, [r6, #0x34]
006334b8  00 70 a0 e1                                      mov r7, r0
006334bc  04 00 95 e5                                      ldr r0, [r5, #4]
006334c0  b9 6b f3 eb                                      bl #0x30e3ac
006334c4  18 10 9d e5                                      ldr r1, [sp, #0x18]
006334c8  27 6e f3 eb                                      bl #0x30ed6c
006334cc  00 10 a0 e1                                      mov r1, r0
006334d0  07 00 a0 e1                                      mov r0, r7
006334d4  b2 6d f3 eb                                      bl #0x30eba4
006334d8  38 10 96 e5                                      ldr r1, [r6, #0x38]
006334dc  00 70 a0 e1                                      mov r7, r0
006334e0  08 00 95 e5                                      ldr r0, [r5, #8]
006334e4  b0 6b f3 eb                                      bl #0x30e3ac
006334e8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006334ec  1e 6e f3 eb                                      bl #0x30ed6c
006334f0  00 10 a0 e1                                      mov r1, r0
006334f4  07 00 a0 e1                                      mov r0, r7
006334f8  a9 6d f3 eb                                      bl #0x30eba4
006334fc  02 11 c0 e3                                      bic r1, r0, #0x80000000
00633500  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00633504  18 6e f3 eb                                      bl #0x30ed6c
00633508  d5 6d f3 eb                                      bl #0x30ec64
0063350c  00 10 a0 e1                                      mov r1, r0
00633510  04 00 9d e5                                      ldr r0, [sp, #4]
00633514  14 6e f3 eb                                      bl #0x30ed6c
00633518  be ff ff ea                                      b #0x633418
0063351c  00 10 95 e5                                      ldr r1, [r5]
00633520  30 00 96 e5                                      ldr r0, [r6, #0x30]
00633524  a0 6b f3 eb                                      bl #0x30e3ac
00633528  04 10 95 e5                                      ldr r1, [r5, #4]
0063352c  00 a0 a0 e1                                      mov sl, r0
00633530  34 00 96 e5                                      ldr r0, [r6, #0x34]
00633534  9c 6b f3 eb                                      bl #0x30e3ac
00633538  08 10 95 e5                                      ldr r1, [r5, #8]
0063353c  00 80 a0 e1                                      mov r8, r0
00633540  38 00 96 e5                                      ldr r0, [r6, #0x38]
00633544  98 6b f3 eb                                      bl #0x30e3ac
00633548  0a 10 a0 e1                                      mov r1, sl
0063354c  00 70 a0 e1                                      mov r7, r0
00633550  0a 00 a0 e1                                      mov r0, sl
00633554  14 a0 8d e5                                      str sl, [sp, #0x14]
00633558  18 80 8d e5                                      str r8, [sp, #0x18]
0063355c  1c 70 8d e5                                      str r7, [sp, #0x1c]
00633560  01 6e f3 eb                                      bl #0x30ed6c
00633564  08 10 a0 e1                                      mov r1, r8
00633568  00 a0 a0 e1                                      mov sl, r0
0063356c  08 00 a0 e1                                      mov r0, r8
00633570  fd 6d f3 eb                                      bl #0x30ed6c
00633574  00 10 a0 e1                                      mov r1, r0
00633578  0a 00 a0 e1                                      mov r0, sl
0063357c  88 6d f3 eb                                      bl #0x30eba4
00633580  07 10 a0 e1                                      mov r1, r7
00633584  00 80 a0 e1                                      mov r8, r0
00633588  07 00 a0 e1                                      mov r0, r7
0063358c  f6 6d f3 eb                                      bl #0x30ed6c
00633590  00 10 a0 e1                                      mov r1, r0
00633594  08 00 a0 e1                                      mov r0, r8
00633598  81 6d f3 eb                                      bl #0x30eba4
0063359c  c0 6c f3 eb                                      bl #0x30e8a4
006335a0  06 6b f3 eb                                      bl #0x30e1c0
006335a4  3d 6c f3 eb                                      bl #0x30e6a0
006335a8  00 10 a0 e3                                      mov r1, #0
006335ac  00 80 a0 e1                                      mov r8, r0
006335b0  75 6a f3 eb                                      bl #0x30df8c
006335b4  00 00 50 e3                                      cmp r0, #0
006335b8  0f 00 00 1a                                      bne #0x6335fc
006335bc  08 10 a0 e1                                      mov r1, r8
006335c0  fe 05 a0 e3                                      mov r0, #0x3f800000
006335c4  b2 6d f3 eb                                      bl #0x30ec94
006335c8  00 70 a0 e1                                      mov r7, r0
006335cc  00 10 a0 e1                                      mov r1, r0
006335d0  14 00 9d e5                                      ldr r0, [sp, #0x14]
006335d4  e4 6d f3 eb                                      bl #0x30ed6c
006335d8  07 10 a0 e1                                      mov r1, r7
006335dc  14 00 8d e5                                      str r0, [sp, #0x14]
006335e0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006335e4  e0 6d f3 eb                                      bl #0x30ed6c
006335e8  07 10 a0 e1                                      mov r1, r7
006335ec  18 00 8d e5                                      str r0, [sp, #0x18]
006335f0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006335f4  dc 6d f3 eb                                      bl #0x30ed6c
006335f8  1c 00 8d e5                                      str r0, [sp, #0x1c]
006335fc  0b 00 a0 e1                                      mov r0, fp
00633600  00 10 a0 e3                                      mov r1, #0
00633604  3b 6b f3 eb                                      bl #0x30e2f8
00633608  00 00 50 e3                                      cmp r0, #0
0063360c  80 ff ff 0a                                      beq #0x633414
00633610  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00633614  08 10 a0 e1                                      mov r1, r8
00633618  b9 ff ff ea                                      b #0x633504

; FUNCTION 0x00633624, declared_size=692, range_size=692, mode=arm
; class-group: void glitch::ps::PGravity
; alias: _ZN6glitch2ps8PGravity5applyINS0_9SParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
; demangled: void glitch::ps::PGravity::apply<glitch::ps::SParticle>(glitch::ps::IParticleContext<glitch::ps::SParticle>::ParticleItt, glitch::ps::IParticleContext<glitch::ps::SParticle>::ParticleItt, glitch::ps::IParticleContext<glitch::ps::SParticle>*)
; decoder-mode: arm
00633624  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00633628  00 c0 a0 e3                                      mov ip, #0
0063362c  24 d0 4d e2                                      sub sp, sp, #0x24
00633630  1c c0 8d e5                                      str ip, [sp, #0x1c]
00633634  14 c0 8d e5                                      str ip, [sp, #0x14]
00633638  18 c0 8d e5                                      str ip, [sp, #0x18]
0063363c  00 50 90 e5                                      ldr r5, [r0]
00633640  01 70 a0 e1                                      mov r7, r1
00633644  11 13 a0 e3                                      mov r1, #0x44000000
00633648  04 00 95 e5                                      ldr r0, [r5, #4]
0063364c  7a 18 81 e2                                      add r1, r1, #0x7a0000
00633650  02 40 a0 e1                                      mov r4, r2
00633654  03 60 a0 e1                                      mov r6, r3
00633658  c3 6d f3 eb                                      bl #0x30ed6c
0063365c  04 00 8d e5                                      str r0, [sp, #4]
00633660  50 60 96 e5                                      ldr r6, [r6, #0x50]
00633664  0c 90 95 e5                                      ldr sb, [r5, #0xc]
00633668  04 00 57 e1                                      cmp r7, r4
0063366c  00 60 8d e5                                      str r6, [sp]
00633670  00 60 95 e5                                      ldr r6, [r5]
00633674  08 b0 95 e5                                      ldr fp, [r5, #8]
00633678  35 00 00 0a                                      beq #0x633754
0063367c  02 31 8b e2                                      add r3, fp, #0x80000000
00633680  0c 30 8d e5                                      str r3, [sp, #0xc]
00633684  14 30 8d e2                                      add r3, sp, #0x14
00633688  07 50 a0 e1                                      mov r5, r7
0063368c  08 30 8d e5                                      str r3, [sp, #8]
00633690  00 00 59 e3                                      cmp sb, #0
00633694  4f 00 00 1a                                      bne #0x6337d8
00633698  20 30 96 e5                                      ldr r3, [r6, #0x20]
0063369c  08 00 9d e5                                      ldr r0, [sp, #8]
006336a0  14 30 8d e5                                      str r3, [sp, #0x14]
006336a4  24 30 96 e5                                      ldr r3, [r6, #0x24]
006336a8  18 30 8d e5                                      str r3, [sp, #0x18]
006336ac  28 30 96 e5                                      ldr r3, [r6, #0x28]
006336b0  40 90 c6 e5                                      strb sb, [r6, #0x40]
006336b4  1c 30 8d e5                                      str r3, [sp, #0x1c]
006336b8  88 ac f4 eb                                      bl #0x35e8e0
006336bc  0b 00 a0 e1                                      mov r0, fp
006336c0  00 10 a0 e3                                      mov r1, #0
006336c4  0b 6b f3 eb                                      bl #0x30e2f8
006336c8  00 00 50 e3                                      cmp r0, #0
006336cc  22 00 00 1a                                      bne #0x63375c
006336d0  04 00 9d e5                                      ldr r0, [sp, #4]
006336d4  00 10 9d e5                                      ldr r1, [sp]
006336d8  a3 6d f3 eb                                      bl #0x30ed6c
006336dc  14 10 9d e5                                      ldr r1, [sp, #0x14]
006336e0  00 70 a0 e1                                      mov r7, r0
006336e4  a0 6d f3 eb                                      bl #0x30ed6c
006336e8  07 10 a0 e1                                      mov r1, r7
006336ec  00 a0 a0 e1                                      mov sl, r0
006336f0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006336f4  14 a0 8d e5                                      str sl, [sp, #0x14]
006336f8  9b 6d f3 eb                                      bl #0x30ed6c
006336fc  07 10 a0 e1                                      mov r1, r7
00633700  00 80 a0 e1                                      mov r8, r0
00633704  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00633708  18 80 8d e5                                      str r8, [sp, #0x18]
0063370c  96 6d f3 eb                                      bl #0x30ed6c
00633710  0a 10 a0 e1                                      mov r1, sl
00633714  00 70 a0 e1                                      mov r7, r0
00633718  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0063371c  1c 70 8d e5                                      str r7, [sp, #0x1c]
00633720  1f 6d f3 eb                                      bl #0x30eba4
00633724  08 10 a0 e1                                      mov r1, r8
00633728  0c 00 85 e5                                      str r0, [r5, #0xc]
0063372c  10 00 95 e5                                      ldr r0, [r5, #0x10]
00633730  1b 6d f3 eb                                      bl #0x30eba4
00633734  07 10 a0 e1                                      mov r1, r7
00633738  10 00 85 e5                                      str r0, [r5, #0x10]
0063373c  14 00 95 e5                                      ldr r0, [r5, #0x14]
00633740  17 6d f3 eb                                      bl #0x30eba4
00633744  14 00 85 e5                                      str r0, [r5, #0x14]
00633748  64 50 85 e2                                      add r5, r5, #0x64
0063374c  05 00 54 e1                                      cmp r4, r5
00633750  ce ff ff 1a                                      bne #0x633690
00633754  24 d0 8d e2                                      add sp, sp, #0x24
00633758  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0063375c  30 10 96 e5                                      ldr r1, [r6, #0x30]
00633760  00 00 95 e5                                      ldr r0, [r5]
00633764  10 6b f3 eb                                      bl #0x30e3ac
00633768  14 10 9d e5                                      ldr r1, [sp, #0x14]
0063376c  7e 6d f3 eb                                      bl #0x30ed6c
00633770  34 10 96 e5                                      ldr r1, [r6, #0x34]
00633774  00 70 a0 e1                                      mov r7, r0
00633778  04 00 95 e5                                      ldr r0, [r5, #4]
0063377c  0a 6b f3 eb                                      bl #0x30e3ac
00633780  18 10 9d e5                                      ldr r1, [sp, #0x18]
00633784  78 6d f3 eb                                      bl #0x30ed6c
00633788  00 10 a0 e1                                      mov r1, r0
0063378c  07 00 a0 e1                                      mov r0, r7
00633790  03 6d f3 eb                                      bl #0x30eba4
00633794  38 10 96 e5                                      ldr r1, [r6, #0x38]
00633798  00 70 a0 e1                                      mov r7, r0
0063379c  08 00 95 e5                                      ldr r0, [r5, #8]
006337a0  01 6b f3 eb                                      bl #0x30e3ac
006337a4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006337a8  6f 6d f3 eb                                      bl #0x30ed6c
006337ac  00 10 a0 e1                                      mov r1, r0
006337b0  07 00 a0 e1                                      mov r0, r7
006337b4  fa 6c f3 eb                                      bl #0x30eba4
006337b8  02 11 c0 e3                                      bic r1, r0, #0x80000000
006337bc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006337c0  69 6d f3 eb                                      bl #0x30ed6c
006337c4  26 6d f3 eb                                      bl #0x30ec64
006337c8  00 10 a0 e1                                      mov r1, r0
006337cc  04 00 9d e5                                      ldr r0, [sp, #4]
006337d0  65 6d f3 eb                                      bl #0x30ed6c
006337d4  be ff ff ea                                      b #0x6336d4
006337d8  00 10 95 e5                                      ldr r1, [r5]
006337dc  30 00 96 e5                                      ldr r0, [r6, #0x30]
006337e0  f1 6a f3 eb                                      bl #0x30e3ac
006337e4  04 10 95 e5                                      ldr r1, [r5, #4]
006337e8  00 a0 a0 e1                                      mov sl, r0
006337ec  34 00 96 e5                                      ldr r0, [r6, #0x34]
006337f0  ed 6a f3 eb                                      bl #0x30e3ac
006337f4  08 10 95 e5                                      ldr r1, [r5, #8]
006337f8  00 80 a0 e1                                      mov r8, r0
006337fc  38 00 96 e5                                      ldr r0, [r6, #0x38]
00633800  e9 6a f3 eb                                      bl #0x30e3ac
00633804  0a 10 a0 e1                                      mov r1, sl
00633808  00 70 a0 e1                                      mov r7, r0
0063380c  0a 00 a0 e1                                      mov r0, sl
00633810  14 a0 8d e5                                      str sl, [sp, #0x14]
00633814  18 80 8d e5                                      str r8, [sp, #0x18]
00633818  1c 70 8d e5                                      str r7, [sp, #0x1c]
0063381c  52 6d f3 eb                                      bl #0x30ed6c
00633820  08 10 a0 e1                                      mov r1, r8
00633824  00 a0 a0 e1                                      mov sl, r0
00633828  08 00 a0 e1                                      mov r0, r8
0063382c  4e 6d f3 eb                                      bl #0x30ed6c
00633830  00 10 a0 e1                                      mov r1, r0
00633834  0a 00 a0 e1                                      mov r0, sl
00633838  d9 6c f3 eb                                      bl #0x30eba4
0063383c  07 10 a0 e1                                      mov r1, r7
00633840  00 80 a0 e1                                      mov r8, r0
00633844  07 00 a0 e1                                      mov r0, r7
00633848  47 6d f3 eb                                      bl #0x30ed6c
0063384c  00 10 a0 e1                                      mov r1, r0
00633850  08 00 a0 e1                                      mov r0, r8
00633854  d2 6c f3 eb                                      bl #0x30eba4
00633858  11 6c f3 eb                                      bl #0x30e8a4
0063385c  57 6a f3 eb                                      bl #0x30e1c0
00633860  8e 6b f3 eb                                      bl #0x30e6a0
00633864  00 10 a0 e3                                      mov r1, #0
00633868  00 80 a0 e1                                      mov r8, r0
0063386c  c6 69 f3 eb                                      bl #0x30df8c
00633870  00 00 50 e3                                      cmp r0, #0
00633874  0f 00 00 1a                                      bne #0x6338b8
00633878  08 10 a0 e1                                      mov r1, r8
0063387c  fe 05 a0 e3                                      mov r0, #0x3f800000
00633880  03 6d f3 eb                                      bl #0x30ec94
00633884  00 70 a0 e1                                      mov r7, r0
00633888  00 10 a0 e1                                      mov r1, r0
0063388c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00633890  35 6d f3 eb                                      bl #0x30ed6c
00633894  07 10 a0 e1                                      mov r1, r7
00633898  14 00 8d e5                                      str r0, [sp, #0x14]
0063389c  18 00 9d e5                                      ldr r0, [sp, #0x18]
006338a0  31 6d f3 eb                                      bl #0x30ed6c
006338a4  07 10 a0 e1                                      mov r1, r7
006338a8  18 00 8d e5                                      str r0, [sp, #0x18]
006338ac  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006338b0  2d 6d f3 eb                                      bl #0x30ed6c
006338b4  1c 00 8d e5                                      str r0, [sp, #0x1c]
006338b8  0b 00 a0 e1                                      mov r0, fp
006338bc  00 10 a0 e3                                      mov r1, #0
006338c0  8c 6a f3 eb                                      bl #0x30e2f8
006338c4  00 00 50 e3                                      cmp r0, #0
006338c8  80 ff ff 0a                                      beq #0x6336d0
006338cc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006338d0  08 10 a0 e1                                      mov r1, r8
006338d4  b9 ff ff ea                                      b #0x6337c0
