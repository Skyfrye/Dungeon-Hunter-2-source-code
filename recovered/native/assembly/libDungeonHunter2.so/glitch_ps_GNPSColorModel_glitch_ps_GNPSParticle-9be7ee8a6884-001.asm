; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006380d8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps14GNPSColorModelINS0_12GNPSParticleEE15initPColorModelEv
; demangled: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::initPColorModel()
; decoder-mode: arm
006380d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006380dc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n64_N6glitch2ps14GNPSColorModelINS0_12GNPSParticleEE15initPColorModelEv
; demangled: virtual thunk to glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::initPColorModel()
; decoder-mode: arm
006380dc  00 30 90 e5                                      ldr r3, [r0]
006380e0  40 30 13 e5                                      ldr r3, [r3, #-0x40]
006380e4  03 00 80 e0                                      add r0, r0, r3
006380e8  fa ff ff ea                                      b #0x6380d8

; FUNCTION 0x006380ec, declared_size=1064, range_size=1064, mode=arm
; class-group: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps14GNPSColorModelINS0_12GNPSParticleEE10initPColorEPS2_S4_
; demangled: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::initPColor(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
006380ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006380f0  02 00 51 e1                                      cmp r1, r2
006380f4  0c d0 4d e2                                      sub sp, sp, #0xc
006380f8  01 40 a0 e1                                      mov r4, r1
006380fc  02 50 a0 e1                                      mov r5, r2
00638100  00 60 a0 e1                                      mov r6, r0
00638104  c4 00 00 0a                                      beq #0x63841c
00638108  01 70 a0 e1                                      mov r7, r1
0063810c  87 00 00 ea                                      b #0x638330
00638110  00 30 96 e5                                      ldr r3, [r6]
00638114  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00638118  03 00 86 e0                                      add r0, r6, r3
0063811c  03 30 96 e7                                      ldr r3, [r6, r3]
00638120  0f e0 a0 e1                                      mov lr, pc
00638124  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00638128  52 df ff eb                                      bl #0x62fe78
0063812c  38 80 96 e5                                      ldr r8, [r6, #0x38]
00638130  3c b0 96 e5                                      ldr fp, [r6, #0x3c]
00638134  00 20 a0 e1                                      mov r2, r0
00638138  04 20 8d e5                                      str r2, [sp, #4]
0063813c  98 0b 00 e0                                      mul r0, r8, fp
00638140  00 10 8d e5                                      str r1, [sp]
00638144  06 5a f3 eb                                      bl #0x30e964
00638148  04 20 9d e5                                      ldr r2, [sp, #4]
0063814c  00 30 9d e5                                      ldr r3, [sp]
00638150  00 a0 a0 e1                                      mov sl, r0
00638154  02 00 a0 e1                                      mov r0, r2
00638158  03 10 a0 e1                                      mov r1, r3
0063815c  4f 59 f3 eb                                      bl #0x30e6a0
00638160  00 10 a0 e1                                      mov r1, r0
00638164  0a 00 a0 e1                                      mov r0, sl
00638168  ff 5a f3 eb                                      bl #0x30ed6c
0063816c  d6 58 f3 eb                                      bl #0x30e4cc
00638170  00 a0 a0 e1                                      mov sl, r0
00638174  0a 00 a0 e1                                      mov r0, sl
00638178  08 10 a0 e1                                      mov r1, r8
0063817c  e0 59 f3 eb                                      bl #0x30e904
00638180  0a 00 a0 e1                                      mov r0, sl
00638184  01 90 a0 e1                                      mov sb, r1
00638188  08 10 a0 e1                                      mov r1, r8
0063818c  44 58 f3 eb                                      bl #0x30e2a4
00638190  00 a0 a0 e1                                      mov sl, r0
00638194  08 00 a0 e1                                      mov r0, r8
00638198  f1 59 f3 eb                                      bl #0x30e964
0063819c  00 10 a0 e1                                      mov r1, r0
006381a0  fe 05 a0 e3                                      mov r0, #0x3f800000
006381a4  ba 5a f3 eb                                      bl #0x30ec94
006381a8  00 80 a0 e1                                      mov r8, r0
006381ac  09 00 a0 e1                                      mov r0, sb
006381b0  eb 59 f3 eb                                      bl #0x30e964
006381b4  00 10 a0 e1                                      mov r1, r0
006381b8  08 00 a0 e1                                      mov r0, r8
006381bc  ea 5a f3 eb                                      bl #0x30ed6c
006381c0  00 80 a0 e1                                      mov r8, r0
006381c4  0b 00 a0 e1                                      mov r0, fp
006381c8  e5 59 f3 eb                                      bl #0x30e964
006381cc  00 10 a0 e1                                      mov r1, r0
006381d0  fe 05 a0 e3                                      mov r0, #0x3f800000
006381d4  ae 5a f3 eb                                      bl #0x30ec94
006381d8  00 b0 a0 e1                                      mov fp, r0
006381dc  0a 00 a0 e1                                      mov r0, sl
006381e0  df 59 f3 eb                                      bl #0x30e964
006381e4  00 10 a0 e1                                      mov r1, r0
006381e8  0b 00 a0 e1                                      mov r0, fp
006381ec  de 5a f3 eb                                      bl #0x30ed6c
006381f0  40 80 87 e5                                      str r8, [r7, #0x40]
006381f4  44 00 87 e5                                      str r0, [r7, #0x44]
006381f8  38 00 96 e5                                      ldr r0, [r6, #0x38]
006381fc  d8 59 f3 eb                                      bl #0x30e964
00638200  00 10 a0 e1                                      mov r1, r0
00638204  fe 05 a0 e3                                      mov r0, #0x3f800000
00638208  a1 5a f3 eb                                      bl #0x30ec94
0063820c  00 80 a0 e1                                      mov r8, r0
00638210  01 00 89 e2                                      add r0, sb, #1
00638214  d2 59 f3 eb                                      bl #0x30e964
00638218  00 10 a0 e1                                      mov r1, r0
0063821c  08 00 a0 e1                                      mov r0, r8
00638220  d1 5a f3 eb                                      bl #0x30ed6c
00638224  00 80 a0 e1                                      mov r8, r0
00638228  3c 00 96 e5                                      ldr r0, [r6, #0x3c]
0063822c  cc 59 f3 eb                                      bl #0x30e964
00638230  00 10 a0 e1                                      mov r1, r0
00638234  fe 05 a0 e3                                      mov r0, #0x3f800000
00638238  95 5a f3 eb                                      bl #0x30ec94
0063823c  00 90 a0 e1                                      mov sb, r0
00638240  01 00 8a e2                                      add r0, sl, #1
00638244  c6 59 f3 eb                                      bl #0x30e964
00638248  00 10 a0 e1                                      mov r1, r0
0063824c  09 00 a0 e1                                      mov r0, sb
00638250  c5 5a f3 eb                                      bl #0x30ed6c
00638254  48 80 87 e5                                      str r8, [r7, #0x48]
00638258  4c 00 87 e5                                      str r0, [r7, #0x4c]
0063825c  48 30 96 e5                                      ldr r3, [r6, #0x48]
00638260  00 00 53 e3                                      cmp r3, #0
00638264  48 20 97 15                                      ldrne r2, [r7, #0x48]
00638268  40 30 97 15                                      ldrne r3, [r7, #0x40]
0063826c  40 20 87 15                                      strne r2, [r7, #0x40]
00638270  48 30 87 15                                      strne r3, [r7, #0x48]
00638274  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
00638278  00 00 53 e3                                      cmp r3, #0
0063827c  44 30 97 15                                      ldrne r3, [r7, #0x44]
00638280  4c 20 97 15                                      ldrne r2, [r7, #0x4c]
00638284  4c 30 87 15                                      strne r3, [r7, #0x4c]
00638288  44 20 87 15                                      strne r2, [r7, #0x44]
0063828c  04 30 96 e5                                      ldr r3, [r6, #4]
00638290  00 00 53 e3                                      cmp r3, #0
00638294  35 00 00 0a                                      beq #0x638370
00638298  00 30 96 e5                                      ldr r3, [r6]
0063829c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006382a0  03 00 86 e0                                      add r0, r6, r3
006382a4  03 30 96 e7                                      ldr r3, [r6, r3]
006382a8  0f e0 a0 e1                                      mov lr, pc
006382ac  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006382b0  14 10 96 e5                                      ldr r1, [r6, #0x14]
006382b4  00 90 a0 e1                                      mov sb, r0
006382b8  10 00 96 e5                                      ldr r0, [r6, #0x10]
006382bc  aa 5a f3 eb                                      bl #0x30ed6c
006382c0  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
006382c4  00 a0 a0 e1                                      mov sl, r0
006382c8  18 00 96 e5                                      ldr r0, [r6, #0x18]
006382cc  a6 5a f3 eb                                      bl #0x30ed6c
006382d0  00 10 a0 e3                                      mov r1, #0
006382d4  00 80 a0 e1                                      mov r8, r0
006382d8  0a 00 a0 e1                                      mov r0, sl
006382dc  2a 57 f3 eb                                      bl #0x30df8c
006382e0  00 00 50 e3                                      cmp r0, #0
006382e4  00 a0 a0 13                                      movne sl, #0
006382e8  24 00 00 0a                                      beq #0x638380
006382ec  08 00 a0 e1                                      mov r0, r8
006382f0  00 10 a0 e3                                      mov r1, #0
006382f4  24 57 f3 eb                                      bl #0x30df8c
006382f8  00 00 50 e3                                      cmp r0, #0
006382fc  00 80 a0 13                                      movne r8, #0
00638300  32 00 00 0a                                      beq #0x6383d0
00638304  10 10 96 e5                                      ldr r1, [r6, #0x10]
00638308  0a 00 a0 e1                                      mov r0, sl
0063830c  24 5a f3 eb                                      bl #0x30eba4
00638310  50 00 87 e5                                      str r0, [r7, #0x50]
00638314  18 10 96 e5                                      ldr r1, [r6, #0x18]
00638318  08 00 a0 e1                                      mov r0, r8
0063831c  20 5a f3 eb                                      bl #0x30eba4
00638320  54 00 87 e5                                      str r0, [r7, #0x54]
00638324  9c 70 87 e2                                      add r7, r7, #0x9c
00638328  07 00 55 e1                                      cmp r5, r7
0063832c  3a 00 00 0a                                      beq #0x63841c
00638330  38 10 96 e5                                      ldr r1, [r6, #0x38]
00638334  01 00 51 e3                                      cmp r1, #1
00638338  33 00 00 da                                      ble #0x63840c
0063833c  40 30 96 e5                                      ldr r3, [r6, #0x40]
00638340  00 00 53 e3                                      cmp r3, #0
00638344  71 ff ff ca                                      bgt #0x638110
00638348  44 90 96 e5                                      ldr sb, [r6, #0x44]
0063834c  3c b0 96 e5                                      ldr fp, [r6, #0x3c]
00638350  01 80 a0 e1                                      mov r8, r1
00638354  09 00 a0 e1                                      mov r0, sb
00638358  9b 01 01 e0                                      mul r1, fp, r1
0063835c  68 59 f3 eb                                      bl #0x30e904
00638360  01 90 89 e2                                      add sb, sb, #1
00638364  01 a0 a0 e1                                      mov sl, r1
00638368  44 90 86 e5                                      str sb, [r6, #0x44]
0063836c  80 ff ff ea                                      b #0x638174
00638370  08 30 96 e5                                      ldr r3, [r6, #8]
00638374  00 00 53 e3                                      cmp r3, #0
00638378  c6 ff ff 1a                                      bne #0x638298
0063837c  e8 ff ff ea                                      b #0x638324
00638380  09 00 a0 e1                                      mov r0, sb
00638384  bb de ff eb                                      bl #0x62fe78
00638388  c4 58 f3 eb                                      bl #0x30e6a0
0063838c  00 10 a0 e1                                      mov r1, r0
00638390  0a 00 a0 e1                                      mov r0, sl
00638394  74 5a f3 eb                                      bl #0x30ed6c
00638398  bf 14 a0 e3                                      mov r1, #0xbf000000
0063839c  00 b0 a0 e1                                      mov fp, r0
006383a0  0a 00 a0 e1                                      mov r0, sl
006383a4  70 5a f3 eb                                      bl #0x30ed6c
006383a8  00 10 a0 e1                                      mov r1, r0
006383ac  0b 00 a0 e1                                      mov r0, fp
006383b0  fb 59 f3 eb                                      bl #0x30eba4
006383b4  00 10 a0 e3                                      mov r1, #0
006383b8  00 a0 a0 e1                                      mov sl, r0
006383bc  08 00 a0 e1                                      mov r0, r8
006383c0  f1 56 f3 eb                                      bl #0x30df8c
006383c4  00 00 50 e3                                      cmp r0, #0
006383c8  00 80 a0 13                                      movne r8, #0
006383cc  cc ff ff 1a                                      bne #0x638304
006383d0  09 00 a0 e1                                      mov r0, sb
006383d4  a7 de ff eb                                      bl #0x62fe78
006383d8  b0 58 f3 eb                                      bl #0x30e6a0
006383dc  00 10 a0 e1                                      mov r1, r0
006383e0  08 00 a0 e1                                      mov r0, r8
006383e4  60 5a f3 eb                                      bl #0x30ed6c
006383e8  bf 14 a0 e3                                      mov r1, #0xbf000000
006383ec  00 90 a0 e1                                      mov sb, r0
006383f0  08 00 a0 e1                                      mov r0, r8
006383f4  5c 5a f3 eb                                      bl #0x30ed6c
006383f8  00 10 a0 e1                                      mov r1, r0
006383fc  09 00 a0 e1                                      mov r0, sb
00638400  e7 59 f3 eb                                      bl #0x30eba4
00638404  00 80 a0 e1                                      mov r8, r0
00638408  bd ff ff ea                                      b #0x638304
0063840c  3c 30 96 e5                                      ldr r3, [r6, #0x3c]
00638410  01 00 53 e3                                      cmp r3, #1
00638414  c8 ff ff ca                                      bgt #0x63833c
00638418  8f ff ff ea                                      b #0x63825c
0063841c  34 30 96 e5                                      ldr r3, [r6, #0x34]
00638420  00 00 53 e3                                      cmp r3, #0
00638424  01 00 00 1a                                      bne #0x638430
00638428  0c d0 8d e2                                      add sp, sp, #0xc
0063842c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00638430  00 30 96 e5                                      ldr r3, [r6]
00638434  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00638438  03 00 86 e0                                      add r0, r6, r3
0063843c  03 30 96 e7                                      ldr r3, [r6, r3]
00638440  0f e0 a0 e1                                      mov lr, pc
00638444  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00638448  05 00 54 e1                                      cmp r4, r5
0063844c  00 60 a0 e1                                      mov r6, r0
00638450  f4 ff ff 0a                                      beq #0x638428
00638454  06 00 a0 e1                                      mov r0, r6
00638458  86 de ff eb                                      bl #0x62fe78
0063845c  00 a0 a0 e1                                      mov sl, r0
00638460  06 00 a0 e1                                      mov r0, r6
00638464  01 b0 a0 e1                                      mov fp, r1
00638468  82 de ff eb                                      bl #0x62fe78
0063846c  00 80 a0 e1                                      mov r8, r0
00638470  06 00 a0 e1                                      mov r0, r6
00638474  01 90 a0 e1                                      mov sb, r1
00638478  7e de ff eb                                      bl #0x62fe78
0063847c  00 20 a0 e1                                      mov r2, r0
00638480  01 30 a0 e1                                      mov r3, r1
00638484  0a 00 a0 e1                                      mov r0, sl
00638488  0b 10 a0 e1                                      mov r1, fp
0063848c  04 20 8d e5                                      str r2, [sp, #4]
00638490  00 30 8d e5                                      str r3, [sp]
00638494  81 58 f3 eb                                      bl #0x30e6a0
00638498  43 14 a0 e3                                      mov r1, #0x43000000
0063849c  7f 18 81 e2                                      add r1, r1, #0x7f0000
006384a0  31 5a f3 eb                                      bl #0x30ed6c
006384a4  08 58 f3 eb                                      bl #0x30e4cc
006384a8  09 10 a0 e1                                      mov r1, sb
006384ac  70 70 ef e6                                      uxtb r7, r0
006384b0  08 00 a0 e1                                      mov r0, r8
006384b4  79 58 f3 eb                                      bl #0x30e6a0
006384b8  43 14 a0 e3                                      mov r1, #0x43000000
006384bc  7f 18 81 e2                                      add r1, r1, #0x7f0000
006384c0  29 5a f3 eb                                      bl #0x30ed6c
006384c4  00 58 f3 eb                                      bl #0x30e4cc
006384c8  00 30 9d e5                                      ldr r3, [sp]
006384cc  04 20 9d e5                                      ldr r2, [sp, #4]
006384d0  70 80 ef e6                                      uxtb r8, r0
006384d4  03 10 a0 e1                                      mov r1, r3
006384d8  02 00 a0 e1                                      mov r0, r2
006384dc  6f 58 f3 eb                                      bl #0x30e6a0
006384e0  43 14 a0 e3                                      mov r1, #0x43000000
006384e4  7f 18 81 e2                                      add r1, r1, #0x7f0000
006384e8  1f 5a f3 eb                                      bl #0x30ed6c
006384ec  f6 57 f3 eb                                      bl #0x30e4cc
006384f0  00 30 e0 e3                                      mvn r3, #0
006384f4  25 80 c4 e5                                      strb r8, [r4, #0x25]
006384f8  26 00 c4 e5                                      strb r0, [r4, #0x26]
006384fc  24 70 c4 e5                                      strb r7, [r4, #0x24]
00638500  27 30 c4 e5                                      strb r3, [r4, #0x27]
00638504  9c 40 84 e2                                      add r4, r4, #0x9c
00638508  04 00 55 e1                                      cmp r5, r4
0063850c  d0 ff ff 1a                                      bne #0x638454
00638510  c4 ff ff ea                                      b #0x638428

; FUNCTION 0x00638514, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n68_N6glitch2ps14GNPSColorModelINS0_12GNPSParticleEE10initPColorEPS2_S4_
; demangled: virtual thunk to glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::initPColor(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
00638514  00 30 90 e5                                      ldr r3, [r0]
00638518  44 30 13 e5                                      ldr r3, [r3, #-0x44]
0063851c  03 00 80 e0                                      add r0, r0, r3
00638520  f1 fe ff ea                                      b #0x6380ec

; FUNCTION 0x00638524, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps14GNPSColorModelINS0_12GNPSParticleEE22hasColorAnimationTrackEv
; demangled: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::hasColorAnimationTrack()
; decoder-mode: arm
00638524  08 00 90 e5                                      ldr r0, [r0, #8]
00638528  00 00 50 e2                                      subs r0, r0, #0
0063852c  01 00 a0 13                                      movne r0, #1
00638530  1e ff 2f e1                                      bx lr

; FUNCTION 0x00638534, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n36_N6glitch2ps14GNPSColorModelINS0_12GNPSParticleEE22hasColorAnimationTrackEv
; demangled: virtual thunk to glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::hasColorAnimationTrack()
; decoder-mode: arm
00638534  00 30 90 e5                                      ldr r3, [r0]
00638538  24 30 13 e5                                      ldr r3, [r3, #-0x24]
0063853c  03 00 80 e0                                      add r0, r0, r3
00638540  f7 ff ff ea                                      b #0x638524

; FUNCTION 0x0063a3ec, declared_size=60, range_size=60, mode=arm
; class-group: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps14GNPSColorModelINS0_12GNPSParticleEED1Ev
; demangled: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::~GNPSColorModel()
; decoder-mode: arm
0063a3ec  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0063a3f0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0063a3f4  10 40 2d e9                                      push {r4, lr}
0063a3f8  02 20 8f e0                                      add r2, pc, r2
0063a3fc  03 30 92 e7                                      ldr r3, [r2, r3]
0063a400  00 40 a0 e1                                      mov r4, r0
0063a404  0c 20 83 e2                                      add r2, r3, #0xc
0063a408  bc 30 83 e2                                      add r3, r3, #0xbc
0063a40c  50 20 80 e4                                      str r2, [r0], #0x50
0063a410  50 30 84 e5                                      str r3, [r4, #0x50]
0063a414  77 ff ff eb                                      bl #0x63a1f8
0063a418  04 00 a0 e1                                      mov r0, r4
0063a41c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063a420  98 a6 35 00 b8 1e 00 00                          .byte 0x98, 0xa6, 0x35, 0x00, 0xb8, 0x1e, 0x00, 0x00

; FUNCTION 0x0063a428, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps14GNPSColorModelINS0_12GNPSParticleEED1Ev
; demangled: virtual thunk to glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::~GNPSColorModel()
; decoder-mode: arm
0063a428  00 30 90 e5                                      ldr r3, [r0]
0063a42c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063a430  03 00 80 e0                                      add r0, r0, r3
0063a434  ec ff ff ea                                      b #0x63a3ec

; FUNCTION 0x0063c5a8, declared_size=584, range_size=584, mode=arm
; class-group: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps14GNPSColorModelINS0_12GNPSParticleEE11applyPColorEPS2_S4_RNS_5video6SColorE
; demangled: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::applyPColor(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::video::SColor&)
; decoder-mode: arm
0063c5a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0063c5ac  08 30 90 e5                                      ldr r3, [r0, #8]
0063c5b0  5c d0 4d e2                                      sub sp, sp, #0x5c
0063c5b4  00 50 a0 e1                                      mov r5, r0
0063c5b8  00 00 53 e3                                      cmp r3, #0
0063c5bc  10 20 8d e5                                      str r2, [sp, #0x10]
0063c5c0  85 00 00 0a                                      beq #0x63c7dc
0063c5c4  10 20 9d e5                                      ldr r2, [sp, #0x10]
0063c5c8  02 00 51 e1                                      cmp r1, r2
0063c5cc  85 00 00 0a                                      beq #0x63c7e8
0063c5d0  00 30 a0 e3                                      mov r3, #0
0063c5d4  41 30 cd e5                                      strb r3, [sp, #0x41]
0063c5d8  54 30 8d e5                                      str r3, [sp, #0x54]
0063c5dc  34 30 8d e2                                      add r3, sp, #0x34
0063c5e0  0c 30 8d e5                                      str r3, [sp, #0xc]
0063c5e4  20 c0 8d e2                                      add ip, sp, #0x20
0063c5e8  54 20 8d e2                                      add r2, sp, #0x54
0063c5ec  50 30 8d e2                                      add r3, sp, #0x50
0063c5f0  00 a0 a0 e3                                      mov sl, #0
0063c5f4  fe 95 a0 e3                                      mov sb, #0x3f800000
0063c5f8  01 40 a0 e1                                      mov r4, r1
0063c5fc  44 70 8d e2                                      add r7, sp, #0x44
0063c600  14 c0 8d e5                                      str ip, [sp, #0x14]
0063c604  18 20 8d e5                                      str r2, [sp, #0x18]
0063c608  1c 30 8d e5                                      str r3, [sp, #0x1c]
0063c60c  68 00 00 ea                                      b #0x63c7b4
0063c610  50 00 94 e5                                      ldr r0, [r4, #0x50]
0063c614  58 10 94 e5                                      ldr r1, [r4, #0x58]
0063c618  61 49 f3 eb                                      bl #0x30eba4
0063c61c  00 60 a0 e1                                      mov r6, r0
0063c620  04 30 95 e5                                      ldr r3, [r5, #4]
0063c624  00 00 53 e3                                      cmp r3, #0
0063c628  37 00 00 0a                                      beq #0x63c70c
0063c62c  00 20 95 e5                                      ldr r2, [r5]
0063c630  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0063c634  00 10 a0 e3                                      mov r1, #0
0063c638  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0063c63c  07 00 a0 e1                                      mov r0, r7
0063c640  02 20 85 e0                                      add r2, r5, r2
0063c644  58 20 92 e5                                      ldr r2, [r2, #0x58]
0063c648  44 30 8d e5                                      str r3, [sp, #0x44]
0063c64c  4c c0 8d e5                                      str ip, [sp, #0x4c]
0063c650  48 20 8d e5                                      str r2, [sp, #0x48]
0063c654  60 b6 00 eb                                      bl #0x669fdc
0063c658  20 a0 8d e5                                      str sl, [sp, #0x20]
0063c65c  24 a0 8d e5                                      str sl, [sp, #0x24]
0063c660  28 a0 8d e5                                      str sl, [sp, #0x28]
0063c664  2c 90 8d e5                                      str sb, [sp, #0x2c]
0063c668  30 90 8d e5                                      str sb, [sp, #0x30]
0063c66c  bc 48 f3 eb                                      bl #0x30e964
0063c670  00 10 a0 e1                                      mov r1, r0
0063c674  06 00 a0 e1                                      mov r0, r6
0063c678  bb 49 f3 eb                                      bl #0x30ed6c
0063c67c  92 47 f3 eb                                      bl #0x30e4cc
0063c680  00 c0 a0 e3                                      mov ip, #0
0063c684  14 20 9d e5                                      ldr r2, [sp, #0x14]
0063c688  00 10 a0 e1                                      mov r1, r0
0063c68c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0063c690  07 00 a0 e1                                      mov r0, r7
0063c694  00 c0 8d e5                                      str ip, [sp]
0063c698  c2 b6 00 eb                                      bl #0x66a1a8
0063c69c  28 b0 9d e5                                      ldr fp, [sp, #0x28]
0063c6a0  0b 00 a0 e1                                      mov r0, fp
0063c6a4  2a 48 f3 eb                                      bl #0x30e754
0063c6a8  00 80 a0 e1                                      mov r8, r0
0063c6ac  0b 00 a0 e1                                      mov r0, fp
0063c6b0  14 49 f3 eb                                      bl #0x30eb08
0063c6b4  08 10 a0 e1                                      mov r1, r8
0063c6b8  00 b0 a0 e1                                      mov fp, r0
0063c6bc  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0063c6c0  a9 49 f3 eb                                      bl #0x30ed6c
0063c6c4  02 31 8b e2                                      add r3, fp, #0x80000000
0063c6c8  28 00 84 e5                                      str r0, [r4, #0x28]
0063c6cc  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0063c6d0  03 00 a0 e1                                      mov r0, r3
0063c6d4  a4 49 f3 eb                                      bl #0x30ed6c
0063c6d8  20 30 9d e5                                      ldr r3, [sp, #0x20]
0063c6dc  2c 00 84 e5                                      str r0, [r4, #0x2c]
0063c6e0  0b 10 a0 e1                                      mov r1, fp
0063c6e4  30 30 84 e5                                      str r3, [r4, #0x30]
0063c6e8  30 00 9d e5                                      ldr r0, [sp, #0x30]
0063c6ec  9e 49 f3 eb                                      bl #0x30ed6c
0063c6f0  34 00 84 e5                                      str r0, [r4, #0x34]
0063c6f4  30 00 9d e5                                      ldr r0, [sp, #0x30]
0063c6f8  08 10 a0 e1                                      mov r1, r8
0063c6fc  9a 49 f3 eb                                      bl #0x30ed6c
0063c700  24 30 9d e5                                      ldr r3, [sp, #0x24]
0063c704  38 00 84 e5                                      str r0, [r4, #0x38]
0063c708  3c 30 84 e5                                      str r3, [r4, #0x3c]
0063c70c  08 80 95 e5                                      ldr r8, [r5, #8]
0063c710  00 00 58 e3                                      cmp r8, #0
0063c714  22 00 00 0a                                      beq #0x63c7a4
0063c718  11 13 a0 e3                                      mov r1, #0x44000000
0063c71c  7a 18 81 e2                                      add r1, r1, #0x7a0000
0063c720  06 00 a0 e1                                      mov r0, r6
0063c724  90 49 f3 eb                                      bl #0x30ed6c
0063c728  5d 48 f3 eb                                      bl #0x30e8a4
0063c72c  ea 2a 05 e3                                      movw r2, #0x5aea
0063c730  aa 3a 0a e3                                      movw r3, #0xaaaa
0063c734  7b 2f 49 e3                                      movt r2, #0x9f7b
0063c738  40 30 44 e3                                      movt r3, #0x4040
0063c73c  ff 46 f3 eb                                      bl #0x30e340
0063c740  b7 48 f3 eb                                      bl #0x30ea24
0063c744  00 30 95 e5                                      ldr r3, [r5]
0063c748  50 00 8d e5                                      str r0, [sp, #0x50]
0063c74c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0063c750  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063c754  00 10 a0 e3                                      mov r1, #0
0063c758  07 00 a0 e1                                      mov r0, r7
0063c75c  03 30 85 e0                                      add r3, r5, r3
0063c760  58 30 93 e5                                      ldr r3, [r3, #0x58]
0063c764  4c c0 8d e5                                      str ip, [sp, #0x4c]
0063c768  44 80 8d e5                                      str r8, [sp, #0x44]
0063c76c  48 30 8d e5                                      str r3, [sp, #0x48]
0063c770  19 b6 00 eb                                      bl #0x669fdc
0063c774  7a 48 f3 eb                                      bl #0x30e964
0063c778  00 10 a0 e1                                      mov r1, r0
0063c77c  06 00 a0 e1                                      mov r0, r6
0063c780  79 49 f3 eb                                      bl #0x30ed6c
0063c784  50 47 f3 eb                                      bl #0x30e4cc
0063c788  01 c0 a0 e3                                      mov ip, #1
0063c78c  00 10 a0 e1                                      mov r1, r0
0063c790  24 20 84 e2                                      add r2, r4, #0x24
0063c794  07 00 a0 e1                                      mov r0, r7
0063c798  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0063c79c  00 c0 8d e5                                      str ip, [sp]
0063c7a0  80 b6 00 eb                                      bl #0x66a1a8
0063c7a4  10 20 9d e5                                      ldr r2, [sp, #0x10]
0063c7a8  9c 40 84 e2                                      add r4, r4, #0x9c
0063c7ac  04 00 52 e1                                      cmp r2, r4
0063c7b0  0c 00 00 0a                                      beq #0x63c7e8
0063c7b4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0063c7b8  01 00 53 e3                                      cmp r3, #1
0063c7bc  93 ff ff 1a                                      bne #0x63c610
0063c7c0  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
0063c7c4  58 00 94 e5                                      ldr r0, [r4, #0x58]
0063c7c8  31 49 f3 eb                                      bl #0x30ec94
0063c7cc  50 10 94 e5                                      ldr r1, [r4, #0x50]
0063c7d0  f3 48 f3 eb                                      bl #0x30eba4
0063c7d4  00 60 a0 e1                                      mov r6, r0
0063c7d8  90 ff ff ea                                      b #0x63c620
0063c7dc  04 30 90 e5                                      ldr r3, [r0, #4]
0063c7e0  00 00 53 e3                                      cmp r3, #0
0063c7e4  76 ff ff 1a                                      bne #0x63c5c4
0063c7e8  5c d0 8d e2                                      add sp, sp, #0x5c
0063c7ec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0063c7f0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n72_N6glitch2ps14GNPSColorModelINS0_12GNPSParticleEE11applyPColorEPS2_S4_RNS_5video6SColorE
; demangled: virtual thunk to glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::applyPColor(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::video::SColor&)
; decoder-mode: arm
0063c7f0  00 c0 90 e5                                      ldr ip, [r0]
0063c7f4  48 c0 1c e5                                      ldr ip, [ip, #-0x48]
0063c7f8  0c 00 80 e0                                      add r0, r0, ip
0063c7fc  69 ff ff ea                                      b #0x63c5a8

; FUNCTION 0x0063d848, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps14GNPSColorModelINS0_12GNPSParticleEED0Ev
; demangled: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::~GNPSColorModel()
; decoder-mode: arm
0063d848  34 20 9f e5                                      ldr r2, [pc, #0x34]
0063d84c  34 30 9f e5                                      ldr r3, [pc, #0x34]
0063d850  10 40 2d e9                                      push {r4, lr}
0063d854  02 20 8f e0                                      add r2, pc, r2
0063d858  03 30 92 e7                                      ldr r3, [r2, r3]
0063d85c  00 40 a0 e1                                      mov r4, r0
0063d860  0c 20 83 e2                                      add r2, r3, #0xc
0063d864  bc 30 83 e2                                      add r3, r3, #0xbc
0063d868  50 20 80 e4                                      str r2, [r0], #0x50
0063d86c  50 30 84 e5                                      str r3, [r4, #0x50]
0063d870  60 f2 ff eb                                      bl #0x63a1f8
0063d874  04 00 a0 e1                                      mov r0, r4
0063d878  8c 42 f3 eb                                      bl #0x30e2b0
0063d87c  04 00 a0 e1                                      mov r0, r4
0063d880  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063d884  3c 72 35 00 b8 1e 00 00                          .byte 0x3c, 0x72, 0x35, 0x00, 0xb8, 0x1e, 0x00, 0x00

; FUNCTION 0x0063d88c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps14GNPSColorModelINS0_12GNPSParticleEED0Ev
; demangled: virtual thunk to glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::~GNPSColorModel()
; decoder-mode: arm
0063d88c  00 30 90 e5                                      ldr r3, [r0]
0063d890  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063d894  03 00 80 e0                                      add r0, r0, r3
0063d898  ea ff ff ea                                      b #0x63d848

; FUNCTION 0x006420a8, declared_size=1200, range_size=1200, mode=arm
; class-group: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps14GNPSColorModelINS0_12GNPSParticleEEC2Ev
; demangled: glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::GNPSColorModel()
; decoder-mode: arm
006420a8  30 40 2d e9                                      push {r4, r5, lr}
006420ac  00 30 91 e5                                      ldr r3, [r1]
006420b0  00 40 a0 e1                                      mov r4, r0
006420b4  fe c5 a0 e3                                      mov ip, #0x3f800000
006420b8  00 30 80 e5                                      str r3, [r0]
006420bc  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
006420c0  04 10 91 e5                                      ldr r1, [r1, #4]
006420c4  00 30 a0 e3                                      mov r3, #0
006420c8  00 20 a0 e3                                      mov r2, #0
006420cc  00 10 84 e7                                      str r1, [r4, r0]
006420d0  00 00 94 e5                                      ldr r0, [r4]
006420d4  01 10 a0 e3                                      mov r1, #1
006420d8  20 c0 84 e5                                      str ip, [r4, #0x20]
006420dc  1c 20 84 e5                                      str r2, [r4, #0x1c]
006420e0  3c 10 84 e5                                      str r1, [r4, #0x3c]
006420e4  4c 30 84 e5                                      str r3, [r4, #0x4c]
006420e8  04 30 84 e5                                      str r3, [r4, #4]
006420ec  08 30 84 e5                                      str r3, [r4, #8]
006420f0  0c 10 84 e5                                      str r1, [r4, #0xc]
006420f4  10 20 84 e5                                      str r2, [r4, #0x10]
006420f8  14 20 84 e5                                      str r2, [r4, #0x14]
006420fc  18 20 84 e5                                      str r2, [r4, #0x18]
00642100  34 30 84 e5                                      str r3, [r4, #0x34]
00642104  38 10 84 e5                                      str r1, [r4, #0x38]
00642108  40 30 84 e5                                      str r3, [r4, #0x40]
0064210c  44 30 84 e5                                      str r3, [r4, #0x44]
00642110  48 30 84 e5                                      str r3, [r4, #0x48]
00642114  0c 50 10 e5                                      ldr r5, [r0, #-0xc]
00642118  f0 13 9f e5                                      ldr r1, [pc, #0x3f0]
0064211c  49 df 4d e2                                      sub sp, sp, #0x124
00642120  05 50 84 e0                                      add r5, r4, r5
00642124  01 10 8f e0                                      add r1, pc, r1
00642128  05 00 a0 e1                                      mov r0, r5
0064212c  c6 e4 ff eb                                      bl #0x63b44c
00642130  11 2e 8d e2                                      add r2, sp, #0x110
00642134  04 30 84 e2                                      add r3, r4, #4
00642138  10 01 8d e5                                      str r0, [sp, #0x110]
0064213c  30 10 85 e2                                      add r1, r5, #0x30
00642140  46 0f 8d e2                                      add r0, sp, #0x118
00642144  14 31 8d e5                                      str r3, [sp, #0x114]
00642148  e7 e1 ff eb                                      bl #0x63a8ec
0064214c  00 30 94 e5                                      ldr r3, [r4]
00642150  bc 13 9f e5                                      ldr r1, [pc, #0x3bc]
00642154  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00642158  01 10 8f e0                                      add r1, pc, r1
0064215c  05 50 84 e0                                      add r5, r4, r5
00642160  05 00 a0 e1                                      mov r0, r5
00642164  b8 e4 ff eb                                      bl #0x63b44c
00642168  01 2c 8d e2                                      add r2, sp, #0x100
0064216c  08 30 84 e2                                      add r3, r4, #8
00642170  00 01 8d e5                                      str r0, [sp, #0x100]
00642174  30 10 85 e2                                      add r1, r5, #0x30
00642178  42 0f 8d e2                                      add r0, sp, #0x108
0064217c  04 31 8d e5                                      str r3, [sp, #0x104]
00642180  d9 e1 ff eb                                      bl #0x63a8ec
00642184  00 30 94 e5                                      ldr r3, [r4]
00642188  88 13 9f e5                                      ldr r1, [pc, #0x388]
0064218c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00642190  01 10 8f e0                                      add r1, pc, r1
00642194  05 50 84 e0                                      add r5, r4, r5
00642198  05 00 a0 e1                                      mov r0, r5
0064219c  aa e4 ff eb                                      bl #0x63b44c
006421a0  f0 20 8d e2                                      add r2, sp, #0xf0
006421a4  0c 30 84 e2                                      add r3, r4, #0xc
006421a8  f0 00 8d e5                                      str r0, [sp, #0xf0]
006421ac  30 10 85 e2                                      add r1, r5, #0x30
006421b0  f8 00 8d e2                                      add r0, sp, #0xf8
006421b4  f4 30 8d e5                                      str r3, [sp, #0xf4]
006421b8  cb e1 ff eb                                      bl #0x63a8ec
006421bc  00 30 94 e5                                      ldr r3, [r4]
006421c0  54 13 9f e5                                      ldr r1, [pc, #0x354]
006421c4  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006421c8  01 10 8f e0                                      add r1, pc, r1
006421cc  05 50 84 e0                                      add r5, r4, r5
006421d0  05 00 a0 e1                                      mov r0, r5
006421d4  9c e4 ff eb                                      bl #0x63b44c
006421d8  d0 20 8d e2                                      add r2, sp, #0xd0
006421dc  10 30 84 e2                                      add r3, r4, #0x10
006421e0  d0 00 8d e5                                      str r0, [sp, #0xd0]
006421e4  30 10 85 e2                                      add r1, r5, #0x30
006421e8  d8 00 8d e2                                      add r0, sp, #0xd8
006421ec  d4 30 8d e5                                      str r3, [sp, #0xd4]
006421f0  bd e1 ff eb                                      bl #0x63a8ec
006421f4  00 30 94 e5                                      ldr r3, [r4]
006421f8  20 13 9f e5                                      ldr r1, [pc, #0x320]
006421fc  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00642200  01 10 8f e0                                      add r1, pc, r1
00642204  05 50 84 e0                                      add r5, r4, r5
00642208  05 00 a0 e1                                      mov r0, r5
0064220c  8e e4 ff eb                                      bl #0x63b44c
00642210  c0 20 8d e2                                      add r2, sp, #0xc0
00642214  14 30 84 e2                                      add r3, r4, #0x14
00642218  c0 00 8d e5                                      str r0, [sp, #0xc0]
0064221c  30 10 85 e2                                      add r1, r5, #0x30
00642220  c8 00 8d e2                                      add r0, sp, #0xc8
00642224  c4 30 8d e5                                      str r3, [sp, #0xc4]
00642228  af e1 ff eb                                      bl #0x63a8ec
0064222c  00 30 94 e5                                      ldr r3, [r4]
00642230  ec 12 9f e5                                      ldr r1, [pc, #0x2ec]
00642234  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00642238  01 10 8f e0                                      add r1, pc, r1
0064223c  05 50 84 e0                                      add r5, r4, r5
00642240  05 00 a0 e1                                      mov r0, r5
00642244  80 e4 ff eb                                      bl #0x63b44c
00642248  b0 20 8d e2                                      add r2, sp, #0xb0
0064224c  18 30 84 e2                                      add r3, r4, #0x18
00642250  b0 00 8d e5                                      str r0, [sp, #0xb0]
00642254  30 10 85 e2                                      add r1, r5, #0x30
00642258  b8 00 8d e2                                      add r0, sp, #0xb8
0064225c  b4 30 8d e5                                      str r3, [sp, #0xb4]
00642260  a1 e1 ff eb                                      bl #0x63a8ec
00642264  00 30 94 e5                                      ldr r3, [r4]
00642268  b8 12 9f e5                                      ldr r1, [pc, #0x2b8]
0064226c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00642270  01 10 8f e0                                      add r1, pc, r1
00642274  05 50 84 e0                                      add r5, r4, r5
00642278  05 00 a0 e1                                      mov r0, r5
0064227c  72 e4 ff eb                                      bl #0x63b44c
00642280  a0 20 8d e2                                      add r2, sp, #0xa0
00642284  1c 30 84 e2                                      add r3, r4, #0x1c
00642288  a0 00 8d e5                                      str r0, [sp, #0xa0]
0064228c  30 10 85 e2                                      add r1, r5, #0x30
00642290  a8 00 8d e2                                      add r0, sp, #0xa8
00642294  a4 30 8d e5                                      str r3, [sp, #0xa4]
00642298  93 e1 ff eb                                      bl #0x63a8ec
0064229c  00 30 94 e5                                      ldr r3, [r4]
006422a0  84 12 9f e5                                      ldr r1, [pc, #0x284]
006422a4  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006422a8  01 10 8f e0                                      add r1, pc, r1
006422ac  05 50 84 e0                                      add r5, r4, r5
006422b0  05 00 a0 e1                                      mov r0, r5
006422b4  64 e4 ff eb                                      bl #0x63b44c
006422b8  90 20 8d e2                                      add r2, sp, #0x90
006422bc  20 30 84 e2                                      add r3, r4, #0x20
006422c0  90 00 8d e5                                      str r0, [sp, #0x90]
006422c4  30 10 85 e2                                      add r1, r5, #0x30
006422c8  98 00 8d e2                                      add r0, sp, #0x98
006422cc  94 30 8d e5                                      str r3, [sp, #0x94]
006422d0  85 e1 ff eb                                      bl #0x63a8ec
006422d4  00 30 94 e5                                      ldr r3, [r4]
006422d8  50 12 9f e5                                      ldr r1, [pc, #0x250]
006422dc  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006422e0  01 10 8f e0                                      add r1, pc, r1
006422e4  05 50 84 e0                                      add r5, r4, r5
006422e8  05 00 a0 e1                                      mov r0, r5
006422ec  56 e4 ff eb                                      bl #0x63b44c
006422f0  80 20 8d e2                                      add r2, sp, #0x80
006422f4  24 30 84 e2                                      add r3, r4, #0x24
006422f8  80 00 8d e5                                      str r0, [sp, #0x80]
006422fc  30 10 85 e2                                      add r1, r5, #0x30
00642300  88 00 8d e2                                      add r0, sp, #0x88
00642304  84 30 8d e5                                      str r3, [sp, #0x84]
00642308  77 e1 ff eb                                      bl #0x63a8ec
0064230c  00 30 94 e5                                      ldr r3, [r4]
00642310  1c 12 9f e5                                      ldr r1, [pc, #0x21c]
00642314  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00642318  01 10 8f e0                                      add r1, pc, r1
0064231c  05 50 84 e0                                      add r5, r4, r5
00642320  05 00 a0 e1                                      mov r0, r5
00642324  48 e4 ff eb                                      bl #0x63b44c
00642328  70 20 8d e2                                      add r2, sp, #0x70
0064232c  28 30 84 e2                                      add r3, r4, #0x28
00642330  70 00 8d e5                                      str r0, [sp, #0x70]
00642334  30 10 85 e2                                      add r1, r5, #0x30
00642338  78 00 8d e2                                      add r0, sp, #0x78
0064233c  74 30 8d e5                                      str r3, [sp, #0x74]
00642340  69 e1 ff eb                                      bl #0x63a8ec
00642344  00 30 94 e5                                      ldr r3, [r4]
00642348  e8 11 9f e5                                      ldr r1, [pc, #0x1e8]
0064234c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00642350  01 10 8f e0                                      add r1, pc, r1
00642354  05 50 84 e0                                      add r5, r4, r5
00642358  05 00 a0 e1                                      mov r0, r5
0064235c  3a e4 ff eb                                      bl #0x63b44c
00642360  e0 20 8d e2                                      add r2, sp, #0xe0
00642364  2c 30 84 e2                                      add r3, r4, #0x2c
00642368  e0 00 8d e5                                      str r0, [sp, #0xe0]
0064236c  30 10 85 e2                                      add r1, r5, #0x30
00642370  e8 00 8d e2                                      add r0, sp, #0xe8
00642374  e4 30 8d e5                                      str r3, [sp, #0xe4]
00642378  5b e1 ff eb                                      bl #0x63a8ec
0064237c  00 30 94 e5                                      ldr r3, [r4]
00642380  b4 11 9f e5                                      ldr r1, [pc, #0x1b4]
00642384  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00642388  01 10 8f e0                                      add r1, pc, r1
0064238c  05 50 84 e0                                      add r5, r4, r5
00642390  05 00 a0 e1                                      mov r0, r5
00642394  2c e4 ff eb                                      bl #0x63b44c
00642398  60 20 8d e2                                      add r2, sp, #0x60
0064239c  30 30 84 e2                                      add r3, r4, #0x30
006423a0  60 00 8d e5                                      str r0, [sp, #0x60]
006423a4  30 10 85 e2                                      add r1, r5, #0x30
006423a8  68 00 8d e2                                      add r0, sp, #0x68
006423ac  64 30 8d e5                                      str r3, [sp, #0x64]
006423b0  4d e1 ff eb                                      bl #0x63a8ec
006423b4  00 30 94 e5                                      ldr r3, [r4]
006423b8  80 11 9f e5                                      ldr r1, [pc, #0x180]
006423bc  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006423c0  01 10 8f e0                                      add r1, pc, r1
006423c4  05 50 84 e0                                      add r5, r4, r5
006423c8  05 00 a0 e1                                      mov r0, r5
006423cc  1e e4 ff eb                                      bl #0x63b44c
006423d0  50 20 8d e2                                      add r2, sp, #0x50
006423d4  34 30 84 e2                                      add r3, r4, #0x34
006423d8  50 00 8d e5                                      str r0, [sp, #0x50]
006423dc  30 10 85 e2                                      add r1, r5, #0x30
006423e0  58 00 8d e2                                      add r0, sp, #0x58
006423e4  54 30 8d e5                                      str r3, [sp, #0x54]
006423e8  3f e1 ff eb                                      bl #0x63a8ec
006423ec  00 30 94 e5                                      ldr r3, [r4]
006423f0  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
006423f4  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006423f8  01 10 8f e0                                      add r1, pc, r1
006423fc  05 50 84 e0                                      add r5, r4, r5
00642400  05 00 a0 e1                                      mov r0, r5
00642404  10 e4 ff eb                                      bl #0x63b44c
00642408  40 20 8d e2                                      add r2, sp, #0x40
0064240c  38 30 84 e2                                      add r3, r4, #0x38
00642410  40 00 8d e5                                      str r0, [sp, #0x40]
00642414  30 10 85 e2                                      add r1, r5, #0x30
00642418  48 00 8d e2                                      add r0, sp, #0x48
0064241c  44 30 8d e5                                      str r3, [sp, #0x44]
00642420  31 e1 ff eb                                      bl #0x63a8ec
00642424  00 30 94 e5                                      ldr r3, [r4]
00642428  18 11 9f e5                                      ldr r1, [pc, #0x118]
0064242c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00642430  01 10 8f e0                                      add r1, pc, r1
00642434  05 50 84 e0                                      add r5, r4, r5
00642438  05 00 a0 e1                                      mov r0, r5
0064243c  02 e4 ff eb                                      bl #0x63b44c
00642440  30 20 8d e2                                      add r2, sp, #0x30
00642444  3c 30 84 e2                                      add r3, r4, #0x3c
00642448  30 00 8d e5                                      str r0, [sp, #0x30]
0064244c  30 10 85 e2                                      add r1, r5, #0x30
00642450  38 00 8d e2                                      add r0, sp, #0x38
00642454  34 30 8d e5                                      str r3, [sp, #0x34]
00642458  23 e1 ff eb                                      bl #0x63a8ec
0064245c  00 30 94 e5                                      ldr r3, [r4]
00642460  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
00642464  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00642468  01 10 8f e0                                      add r1, pc, r1
0064246c  05 50 84 e0                                      add r5, r4, r5
00642470  05 00 a0 e1                                      mov r0, r5
00642474  f4 e3 ff eb                                      bl #0x63b44c
00642478  20 20 8d e2                                      add r2, sp, #0x20
0064247c  40 30 84 e2                                      add r3, r4, #0x40
00642480  20 00 8d e5                                      str r0, [sp, #0x20]
00642484  30 10 85 e2                                      add r1, r5, #0x30
00642488  28 00 8d e2                                      add r0, sp, #0x28
0064248c  24 30 8d e5                                      str r3, [sp, #0x24]
00642490  15 e1 ff eb                                      bl #0x63a8ec
00642494  00 30 94 e5                                      ldr r3, [r4]
00642498  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0064249c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006424a0  01 10 8f e0                                      add r1, pc, r1
006424a4  05 50 84 e0                                      add r5, r4, r5
006424a8  05 00 a0 e1                                      mov r0, r5
006424ac  e6 e3 ff eb                                      bl #0x63b44c
006424b0  10 20 8d e2                                      add r2, sp, #0x10
006424b4  48 30 84 e2                                      add r3, r4, #0x48
006424b8  10 00 8d e5                                      str r0, [sp, #0x10]
006424bc  30 10 85 e2                                      add r1, r5, #0x30
006424c0  18 00 8d e2                                      add r0, sp, #0x18
006424c4  14 30 8d e5                                      str r3, [sp, #0x14]
006424c8  07 e1 ff eb                                      bl #0x63a8ec
006424cc  00 30 94 e5                                      ldr r3, [r4]
006424d0  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
006424d4  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006424d8  01 10 8f e0                                      add r1, pc, r1
006424dc  05 50 84 e0                                      add r5, r4, r5
006424e0  05 00 a0 e1                                      mov r0, r5
006424e4  d8 e3 ff eb                                      bl #0x63b44c
006424e8  4c 30 84 e2                                      add r3, r4, #0x4c
006424ec  00 00 8d e5                                      str r0, [sp]
006424f0  30 10 85 e2                                      add r1, r5, #0x30
006424f4  08 00 8d e2                                      add r0, sp, #8
006424f8  0d 20 a0 e1                                      mov r2, sp
006424fc  04 30 8d e5                                      str r3, [sp, #4]
00642500  f9 e0 ff eb                                      bl #0x63a8ec
00642504  04 00 a0 e1                                      mov r0, r4
00642508  49 df 8d e2                                      add sp, sp, #0x124
0064250c  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00642510  0c 30 2a 00 c0 2f 2a 00 a0 32 2a 00 80 32 2a 00  .byte 0x0c, 0x30, 0x2a, 0x00, 0xc0, 0x2f, 0x2a, 0x00, 0xa0, 0x32, 0x2a, 0x00, 0x80, 0x32, 0x2a, 0x00
00642520  58 32 2a 00 38 32 2a 00 10 32 2a 00 f0 31 2a 00  .byte 0x58, 0x32, 0x2a, 0x00, 0x38, 0x32, 0x2a, 0x00, 0x10, 0x32, 0x2a, 0x00, 0xf0, 0x31, 0x2a, 0x00
00642530  d0 31 2a 00 b8 31 2a 00 90 31 2a 00 68 31 2a 00  .byte 0xd0, 0x31, 0x2a, 0x00, 0xb8, 0x31, 0x2a, 0x00, 0x90, 0x31, 0x2a, 0x00, 0x68, 0x31, 0x2a, 0x00
00642540  40 31 2a 00 18 31 2a 00 f8 30 2a 00 d8 30 2a 00  .byte 0x40, 0x31, 0x2a, 0x00, 0x18, 0x31, 0x2a, 0x00, 0xf8, 0x30, 0x2a, 0x00, 0xd8, 0x30, 0x2a, 0x00
00642550  c0 30 2a 00 90 30 2a 00                          .byte 0xc0, 0x30, 0x2a, 0x00, 0x90, 0x30, 0x2a, 0x00
