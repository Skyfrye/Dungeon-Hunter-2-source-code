; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006041c4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderDDS
; alias: _ZN6glitch5video15CImageLoaderDDS23hasTextureLoadInterfaceEv
; demangled: glitch::video::CImageLoaderDDS::hasTextureLoadInterface()
; decoder-mode: arm
006041c4  01 00 a0 e3                                      mov r0, #1
006041c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00604268, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CImageLoaderDDS
; alias: _ZN6glitch5video15CImageLoaderDDSC2Ev
; demangled: glitch::video::CImageLoaderDDS::CImageLoaderDDS()
; decoder-mode: arm
00604268  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0060426c  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00604270  01 c0 a0 e3                                      mov ip, #1
00604274  03 30 8f e0                                      add r3, pc, r3
00604278  02 20 93 e7                                      ldr r2, [r3, r2]
0060427c  04 c0 80 e5                                      str ip, [r0, #4]
00604280  08 20 82 e2                                      add r2, r2, #8
00604284  00 20 80 e5                                      str r2, [r0]
00604288  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0060428c  1c 08 39 00 a8 2f 00 00                          .byte 0x1c, 0x08, 0x39, 0x00, 0xa8, 0x2f, 0x00, 0x00

; FUNCTION 0x00604294, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CImageLoaderDDS
; alias: _ZN6glitch5video15CImageLoaderDDSC1Ev
; demangled: glitch::video::CImageLoaderDDS::CImageLoaderDDS()
; decoder-mode: arm
00604294  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00604298  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0060429c  01 c0 a0 e3                                      mov ip, #1
006042a0  03 30 8f e0                                      add r3, pc, r3
006042a4  02 20 93 e7                                      ldr r2, [r3, r2]
006042a8  04 c0 80 e5                                      str ip, [r0, #4]
006042ac  08 20 82 e2                                      add r2, r2, #8
006042b0  00 20 80 e5                                      str r2, [r0]
006042b4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006042b8  f0 07 39 00 a8 2f 00 00                          .byte 0xf0, 0x07, 0x39, 0x00, 0xa8, 0x2f, 0x00, 0x00

; FUNCTION 0x006042c0, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CImageLoaderDDS
; alias: _ZNK6glitch5video15CImageLoaderDDS21isALoadableFileFormatEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderDDS::isALoadableFileFormat(glitch::io::IReadFile*) const
; decoder-mode: arm
006042c0  04 e0 2d e5                                      str lr, [sp, #-4]!
006042c4  00 00 51 e3                                      cmp r1, #0
006042c8  0c d0 4d e2                                      sub sp, sp, #0xc
006042cc  01 00 a0 01                                      moveq r0, r1
006042d0  0b 00 00 0a                                      beq #0x604304
006042d4  00 30 91 e5                                      ldr r3, [r1]
006042d8  01 00 a0 e1                                      mov r0, r1
006042dc  04 20 a0 e3                                      mov r2, #4
006042e0  04 10 8d e2                                      add r1, sp, #4
006042e4  0f e0 a0 e1                                      mov lr, pc
006042e8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006042ec  04 00 9d e5                                      ldr r0, [sp, #4]
006042f0  44 34 04 e3                                      movw r3, #0x4444
006042f4  53 30 42 e3                                      movt r3, #0x2053
006042f8  03 00 50 e1                                      cmp r0, r3
006042fc  00 00 a0 13                                      movne r0, #0
00604300  01 00 a0 03                                      moveq r0, #1
00604304  0c d0 8d e2                                      add sp, sp, #0xc
00604308  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0060430c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImageLoaderDDS
; alias: _ZN6glitch5video15CImageLoaderDDSD1Ev
; demangled: glitch::video::CImageLoaderDDS::~CImageLoaderDDS()
; decoder-mode: arm
0060430c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00604330, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CImageLoaderDDS
; alias: _ZN6glitch5video15CImageLoaderDDSD0Ev
; demangled: glitch::video::CImageLoaderDDS::~CImageLoaderDDS()
; decoder-mode: arm
00604330  10 40 2d e9                                      push {r4, lr}
00604334  00 40 a0 e1                                      mov r4, r0
00604338  dc 27 f4 eb                                      bl #0x30e2b0
0060433c  04 00 a0 e1                                      mov r0, r4
00604340  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00604398, declared_size=860, range_size=860, mode=arm
; class-group: glitch::video::CImageLoaderDDS
; alias: _ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE
; demangled: glitch::video::CImageLoaderDDS::loadTextureHeader(glitch::io::IReadFile*, glitch::video::STextureDesc&) const
; decoder-mode: arm
00604398  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0060439c  9c d0 4d e2                                      sub sp, sp, #0x9c
006043a0  01 00 a0 e1                                      mov r0, r1
006043a4  01 50 a0 e1                                      mov r5, r1
006043a8  10 10 8d e2                                      add r1, sp, #0x10
006043ac  02 40 a0 e1                                      mov r4, r2
006043b0  85 ff ff eb                                      bl #0x6041cc
006043b4  00 00 50 e3                                      cmp r0, #0
006043b8  01 00 00 1a                                      bne #0x6043c4
006043bc  9c d0 8d e2                                      add sp, sp, #0x9c
006043c0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006043c4  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006043c8  02 0c 13 e3                                      tst r3, #0x200
006043cc  51 00 00 1a                                      bne #0x604518
006043d0  02 36 13 e2                                      ands r3, r3, #0x200000
006043d4  01 30 a0 13                                      movne r3, #1
006043d8  00 30 84 e5                                      str r3, [r4]
006043dc  14 10 9d e5                                      ldr r1, [sp, #0x14]
006043e0  18 30 9d e5                                      ldr r3, [sp, #0x18]
006043e4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006043e8  02 05 11 e3                                      tst r1, #0x800000
006043ec  00 10 a0 e3                                      mov r1, #0
006043f0  14 30 84 e5                                      str r3, [r4, #0x14]
006043f4  08 10 84 e5                                      str r1, [r4, #8]
006043f8  10 20 84 e5                                      str r2, [r4, #0x10]
006043fc  24 30 9d 15                                      ldrne r3, [sp, #0x24]
00604400  01 30 a0 03                                      moveq r3, #1
00604404  18 30 84 e5                                      str r3, [r4, #0x18]
00604408  78 30 9d e5                                      ldr r3, [sp, #0x78]
0060440c  53 3b e0 e7                                      ubfx r3, r3, #0x16, #1
00604410  00 00 53 e3                                      cmp r3, #0
00604414  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
00604418  25 00 00 0a                                      beq #0x6044b4
0060441c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00604420  00 00 53 e3                                      cmp r3, #0
00604424  00 20 e0 03                                      mvneq r2, #0
00604428  03 00 00 0a                                      beq #0x60443c
0060442c  00 20 e0 e3                                      mvn r2, #0
00604430  a3 30 b0 e1                                      lsrs r3, r3, #1
00604434  01 20 82 e2                                      add r2, r2, #1
00604438  fc ff ff 1a                                      bne #0x604430
0060443c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00604440  8c 20 8d e5                                      str r2, [sp, #0x8c]
00604444  00 00 53 e3                                      cmp r3, #0
00604448  00 10 e0 03                                      mvneq r1, #0
0060444c  03 00 00 0a                                      beq #0x604460
00604450  00 10 e0 e3                                      mvn r1, #0
00604454  a3 30 b0 e1                                      lsrs r3, r3, #1
00604458  01 10 81 e2                                      add r1, r1, #1
0060445c  fc ff ff 1a                                      bne #0x604454
00604460  18 30 94 e5                                      ldr r3, [r4, #0x18]
00604464  90 10 8d e5                                      str r1, [sp, #0x90]
00604468  00 00 53 e3                                      cmp r3, #0
0060446c  00 00 e0 03                                      mvneq r0, #0
00604470  03 00 00 0a                                      beq #0x604484
00604474  00 00 e0 e3                                      mvn r0, #0
00604478  a3 30 b0 e1                                      lsrs r3, r3, #1
0060447c  01 00 80 e2                                      add r0, r0, #1
00604480  fc ff ff 1a                                      bne #0x604478
00604484  02 00 51 e1                                      cmp r1, r2
00604488  01 20 a0 81                                      movhi r2, r1
0060448c  90 30 8d 82                                      addhi r3, sp, #0x90
00604490  8c 30 8d 92                                      addls r3, sp, #0x8c
00604494  00 00 52 e1                                      cmp r2, r0
00604498  94 30 8d 32                                      addlo r3, sp, #0x94
0060449c  94 00 8d e5                                      str r0, [sp, #0x94]
006044a0  00 60 93 e5                                      ldr r6, [r3]
006044a4  28 30 9d e5                                      ldr r3, [sp, #0x28]
006044a8  01 60 86 e2                                      add r6, r6, #1
006044ac  03 00 56 e1                                      cmp r6, r3
006044b0  4e 00 00 1a                                      bne #0x6045f0
006044b4  5c a0 9d e5                                      ldr sl, [sp, #0x5c]
006044b8  04 00 1a e3                                      tst sl, #4
006044bc  25 00 00 0a                                      beq #0x604558
006044c0  60 20 9d e5                                      ldr r2, [sp, #0x60]
006044c4  44 38 05 e3                                      movw r3, #0x5844
006044c8  54 33 43 e3                                      movt r3, #0x3354
006044cc  03 00 52 e1                                      cmp r2, r3
006044d0  7b 00 00 0a                                      beq #0x6046c4
006044d4  53 00 00 9a                                      bls #0x604628
006044d8  44 38 05 e3                                      movw r3, #0x5844
006044dc  54 34 43 e3                                      movt r3, #0x3454
006044e0  03 00 52 e1                                      cmp r2, r3
006044e4  7a 00 00 0a                                      beq #0x6046d4
006044e8  44 38 05 e3                                      movw r3, #0x5844
006044ec  54 35 43 e3                                      movt r3, #0x3554
006044f0  03 00 52 e1                                      cmp r2, r3
006044f4  76 00 00 0a                                      beq #0x6046d4
006044f8  50 34 05 e3                                      movw r3, #0x5450
006044fc  43 34 43 e3                                      movt r3, #0x3443
00604500  03 00 52 e1                                      cmp r2, r3
00604504  56 00 00 1a                                      bne #0x604664
00604508  1b 30 a0 e3                                      mov r3, #0x1b
0060450c  04 30 84 e5                                      str r3, [r4, #4]
00604510  01 00 a0 e3                                      mov r0, #1
00604514  a8 ff ff ea                                      b #0x6043bc
00604518  3f 3b 03 e2                                      and r3, r3, #0xfc00
0060451c  3f 0b 53 e3                                      cmp r3, #0xfc00
00604520  02 30 a0 03                                      moveq r3, #2
00604524  00 30 84 05                                      streq r3, [r4]
00604528  ab ff ff 0a                                      beq #0x6043dc
0060452c  00 30 95 e5                                      ldr r3, [r5]
00604530  05 00 a0 e1                                      mov r0, r5
00604534  0f e0 a0 e1                                      mov lr, pc
00604538  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0060453c  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
00604540  00 20 a0 e1                                      mov r2, r0
00604544  03 00 a0 e3                                      mov r0, #3
00604548  01 10 8f e0                                      add r1, pc, r1
0060454c  b8 1a 00 eb                                      bl #0x60b034
00604550  00 00 a0 e3                                      mov r0, #0
00604554  98 ff ff ea                                      b #0x6043bc
00604558  40 60 00 e3                                      movw r6, #0x40
0060455c  02 60 40 e3                                      movt r6, #2
00604560  06 60 0a e0                                      and r6, sl, r6
00604564  00 00 56 e3                                      cmp r6, #0
00604568  06 80 a0 01                                      moveq r8, r6
0060456c  06 70 a0 01                                      moveq r7, r6
00604570  05 00 00 0a                                      beq #0x60458c
00604574  02 08 1a e3                                      tst sl, #0x20000
00604578  68 70 9d e5                                      ldr r7, [sp, #0x68]
0060457c  6c 80 9d 05                                      ldreq r8, [sp, #0x6c]
00604580  70 60 9d 05                                      ldreq r6, [sp, #0x70]
00604584  07 60 a0 11                                      movne r6, r7
00604588  07 80 a0 11                                      movne r8, r7
0060458c  03 a0 1a e2                                      ands sl, sl, #3
00604590  74 a0 9d 15                                      ldrne sl, [sp, #0x74]
00604594  07 00 a0 e1                                      mov r0, r7
00604598  08 10 a0 e1                                      mov r1, r8
0060459c  06 20 a0 e1                                      mov r2, r6
006045a0  0a 30 a0 e1                                      mov r3, sl
006045a4  31 a5 ff eb                                      bl #0x5eda70
006045a8  27 00 50 e3                                      cmp r0, #0x27
006045ac  04 00 84 e5                                      str r0, [r4, #4]
006045b0  01 00 a0 13                                      movne r0, #1
006045b4  80 ff ff 1a                                      bne #0x6043bc
006045b8  00 30 95 e5                                      ldr r3, [r5]
006045bc  05 00 a0 e1                                      mov r0, r5
006045c0  0f e0 a0 e1                                      mov lr, pc
006045c4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006045c8  18 11 9f e5                                      ldr r1, [pc, #0x118]
006045cc  00 20 a0 e1                                      mov r2, r0
006045d0  07 30 a0 e1                                      mov r3, r7
006045d4  03 00 a0 e3                                      mov r0, #3
006045d8  01 10 8f e0                                      add r1, pc, r1
006045dc  00 80 8d e5                                      str r8, [sp]
006045e0  40 04 8d e9                                      stmib sp, {r6, sl}
006045e4  92 1a 00 eb                                      bl #0x60b034
006045e8  00 00 a0 e3                                      mov r0, #0
006045ec  72 ff ff ea                                      b #0x6043bc
006045f0  00 30 95 e5                                      ldr r3, [r5]
006045f4  05 00 a0 e1                                      mov r0, r5
006045f8  0f e0 a0 e1                                      mov lr, pc
006045fc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00604600  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
00604604  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00604608  00 20 a0 e1                                      mov r2, r0
0060460c  01 10 8f e0                                      add r1, pc, r1
00604610  03 00 a0 e3                                      mov r0, #3
00604614  06 30 a0 e1                                      mov r3, r6
00604618  00 c0 8d e5                                      str ip, [sp]
0060461c  84 1a 00 eb                                      bl #0x60b034
00604620  00 00 a0 e3                                      mov r0, #0
00604624  64 ff ff ea                                      b #0x6043bc
00604628  50 34 05 e3                                      movw r3, #0x5450
0060462c  43 32 43 e3                                      movt r3, #0x3243
00604630  03 00 52 e1                                      cmp r2, r3
00604634  19 30 a0 03                                      moveq r3, #0x19
00604638  04 30 84 05                                      streq r3, [r4, #4]
0060463c  01 00 a0 03                                      moveq r0, #1
00604640  5d ff ff 0a                                      beq #0x6043bc
00604644  44 38 05 e3                                      movw r3, #0x5844
00604648  54 32 43 e3                                      movt r3, #0x3254
0060464c  03 00 52 e1                                      cmp r2, r3
00604650  1b 00 00 0a                                      beq #0x6046c4
00604654  44 38 05 e3                                      movw r3, #0x5844
00604658  54 31 43 e3                                      movt r3, #0x3154
0060465c  03 00 52 e1                                      cmp r2, r3
00604660  13 00 00 0a                                      beq #0x6046b4
00604664  27 30 a0 e3                                      mov r3, #0x27
00604668  04 30 84 e5                                      str r3, [r4, #4]
0060466c  00 30 95 e5                                      ldr r3, [r5]
00604670  05 00 a0 e1                                      mov r0, r5
00604674  0f e0 a0 e1                                      mov lr, pc
00604678  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0060467c  60 c0 9d e5                                      ldr ip, [sp, #0x60]
00604680  68 10 9f e5                                      ldr r1, [pc, #0x68]
00604684  00 20 a0 e1                                      mov r2, r0
00604688  5c e8 a7 e7                                      sbfx lr, ip, #0x10, #8
0060468c  7c 30 af e6                                      sxtb r3, ip
00604690  5c 44 a7 e7                                      sbfx r4, ip, #8, #8
00604694  03 00 a0 e3                                      mov r0, #3
00604698  4c cc a0 e1                                      asr ip, ip, #0x18
0060469c  01 10 8f e0                                      add r1, pc, r1
006046a0  10 40 8d e8                                      stm sp, {r4, lr}
006046a4  08 c0 8d e5                                      str ip, [sp, #8]
006046a8  61 1a 00 eb                                      bl #0x60b034
006046ac  00 00 a0 e3                                      mov r0, #0
006046b0  41 ff ff ea                                      b #0x6043bc
006046b4  12 30 a0 e3                                      mov r3, #0x12
006046b8  04 30 84 e5                                      str r3, [r4, #4]
006046bc  01 00 a0 e3                                      mov r0, #1
006046c0  3d ff ff ea                                      b #0x6043bc
006046c4  13 30 a0 e3                                      mov r3, #0x13
006046c8  04 30 84 e5                                      str r3, [r4, #4]
006046cc  01 00 a0 e3                                      mov r0, #1
006046d0  39 ff ff ea                                      b #0x6043bc
006046d4  14 30 a0 e3                                      mov r3, #0x14
006046d8  04 30 84 e5                                      str r3, [r4, #4]
006046dc  01 00 a0 e3                                      mov r0, #1
006046e0  35 ff ff ea                                      b #0x6043bc
; mapping-symbol data/literal pool
006046e4  b8 00 2e 00 d0 00 2e 00 24 00 2e 00 e4 ff 2d 00  .byte 0xb8, 0x00, 0x2e, 0x00, 0xd0, 0x00, 0x2e, 0x00, 0x24, 0x00, 0x2e, 0x00, 0xe4, 0xff, 0x2d, 0x00

; FUNCTION 0x006046f4, declared_size=536, range_size=536, mode=arm
; class-group: glitch::video::CImageLoaderDDS
; alias: _ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderDDS::loadImage(glitch::io::IReadFile*) const
; decoder-mode: arm
006046f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006046f8  00 30 a0 e3                                      mov r3, #0
006046fc  98 d0 4d e2                                      sub sp, sp, #0x98
00604700  00 30 80 e5                                      str r3, [r0]
00604704  00 40 a0 e1                                      mov r4, r0
00604708  14 10 8d e2                                      add r1, sp, #0x14
0060470c  02 00 a0 e1                                      mov r0, r2
00604710  02 50 a0 e1                                      mov r5, r2
00604714  ac fe ff eb                                      bl #0x6041cc
00604718  00 00 50 e3                                      cmp r0, #0
0060471c  02 00 00 0a                                      beq #0x60472c
00604720  14 30 9d e5                                      ldr r3, [sp, #0x14]
00604724  7c 00 53 e3                                      cmp r3, #0x7c
00604728  02 00 00 0a                                      beq #0x604738
0060472c  04 00 a0 e1                                      mov r0, r4
00604730  98 d0 8d e2                                      add sp, sp, #0x98
00604734  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00604738  18 20 9d e5                                      ldr r2, [sp, #0x18]
0060473c  01 30 01 e3                                      movw r3, #0x1001
00604740  00 30 40 e3                                      movt r3, #0
00604744  03 30 02 e0                                      and r3, r2, r3
00604748  01 10 01 e3                                      movw r1, #0x1001
0060474c  01 00 53 e1                                      cmp r3, r1
00604750  f5 ff ff 1a                                      bne #0x60472c
00604754  28 30 9d e5                                      ldr r3, [sp, #0x28]
00604758  00 00 53 e3                                      cmp r3, #0
0060475c  06 00 00 0a                                      beq #0x60477c
00604760  02 05 12 e3                                      tst r2, #0x800000
00604764  04 00 00 0a                                      beq #0x60477c
00604768  88 01 9f e5                                      ldr r0, [pc, #0x188]
0060476c  03 10 a0 e3                                      mov r1, #3
00604770  00 00 8f e0                                      add r0, pc, r0
00604774  49 19 00 eb                                      bl #0x60aca0
00604778  eb ff ff ea                                      b #0x60472c
0060477c  60 30 9d e5                                      ldr r3, [sp, #0x60]
00604780  01 10 a0 e3                                      mov r1, #1
00604784  28 10 8d e5                                      str r1, [sp, #0x28]
00604788  04 00 13 e3                                      tst r3, #4
0060478c  41 00 00 0a                                      beq #0x604898
00604790  64 20 9d e5                                      ldr r2, [sp, #0x64]
00604794  44 38 05 e3                                      movw r3, #0x5844
00604798  54 33 43 e3                                      movt r3, #0x3354
0060479c  03 00 52 e1                                      cmp r2, r3
006047a0  20 60 9d e5                                      ldr r6, [sp, #0x20]
006047a4  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
006047a8  08 00 00 0a                                      beq #0x6047d0
006047ac  3e 00 00 8a                                      bhi #0x6048ac
006047b0  44 38 05 e3                                      movw r3, #0x5844
006047b4  54 31 43 e3                                      movt r3, #0x3154
006047b8  03 00 52 e1                                      cmp r2, r3
006047bc  48 00 00 0a                                      beq #0x6048e4
006047c0  44 38 05 e3                                      movw r3, #0x5844
006047c4  54 32 43 e3                                      movt r3, #0x3254
006047c8  03 00 52 e1                                      cmp r2, r3
006047cc  d6 ff ff 1a                                      bne #0x60472c
006047d0  24 01 9f e5                                      ldr r0, [pc, #0x124]
006047d4  01 10 a0 e3                                      mov r1, #1
006047d8  13 70 a0 e3                                      mov r7, #0x13
006047dc  00 00 8f e0                                      add r0, pc, r0
006047e0  2e 19 00 eb                                      bl #0x60aca0
006047e4  08 20 a0 e1                                      mov r2, r8
006047e8  06 10 a0 e1                                      mov r1, r6
006047ec  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006047f0  07 00 a0 e1                                      mov r0, r7
006047f4  ef a4 ff eb                                      bl #0x5edbb8
006047f8  00 10 a0 e3                                      mov r1, #0
006047fc  00 60 a0 e1                                      mov r6, r0
00604800  68 be fc eb                                      bl #0x5341a8
00604804  00 80 a0 e1                                      mov r8, r0
00604808  06 20 a0 e1                                      mov r2, r6
0060480c  00 30 95 e5                                      ldr r3, [r5]
00604810  05 00 a0 e1                                      mov r0, r5
00604814  08 10 a0 e1                                      mov r1, r8
00604818  0f e0 a0 e1                                      mov lr, pc
0060481c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00604820  20 30 9d e5                                      ldr r3, [sp, #0x20]
00604824  00 10 a0 e3                                      mov r1, #0
00604828  2c 00 a0 e3                                      mov r0, #0x2c
0060482c  90 30 8d e5                                      str r3, [sp, #0x90]
00604830  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00604834  94 30 8d e5                                      str r3, [sp, #0x94]
00604838  5b be fc eb                                      bl #0x5341ac
0060483c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00604840  00 50 a0 e1                                      mov r5, r0
00604844  08 30 a0 e1                                      mov r3, r8
00604848  00 00 5c e3                                      cmp ip, #0
0060484c  01 c0 4c 12                                      subne ip, ip, #1
00604850  01 e0 a0 e3                                      mov lr, #1
00604854  07 10 a0 e1                                      mov r1, r7
00604858  05 00 a0 e1                                      mov r0, r5
0060485c  90 20 8d e2                                      add r2, sp, #0x90
00604860  40 10 8d e8                                      stm sp, {r6, ip}
00604864  0c e0 8d e5                                      str lr, [sp, #0xc]
00604868  08 e0 8d e5                                      str lr, [sp, #8]
0060486c  dd f7 ff eb                                      bl #0x6027e8
00604870  00 00 55 e3                                      cmp r5, #0
00604874  04 30 95 15                                      ldrne r3, [r5, #4]
00604878  01 30 83 12                                      addne r3, r3, #1
0060487c  04 30 85 15                                      strne r3, [r5, #4]
00604880  00 00 94 e5                                      ldr r0, [r4]
00604884  00 50 84 e5                                      str r5, [r4]
00604888  00 00 50 e3                                      cmp r0, #0
0060488c  a6 ff ff 0a                                      beq #0x60472c
00604890  3b 63 f4 eb                                      bl #0x31d584
00604894  a4 ff ff ea                                      b #0x60472c
00604898  60 00 9f e5                                      ldr r0, [pc, #0x60]
0060489c  03 10 a0 e3                                      mov r1, #3
006048a0  00 00 8f e0                                      add r0, pc, r0
006048a4  fd 18 00 eb                                      bl #0x60aca0
006048a8  9f ff ff ea                                      b #0x60472c
006048ac  44 38 05 e3                                      movw r3, #0x5844
006048b0  54 34 43 e3                                      movt r3, #0x3454
006048b4  03 00 52 e1                                      cmp r2, r3
006048b8  03 00 00 0a                                      beq #0x6048cc
006048bc  44 38 05 e3                                      movw r3, #0x5844
006048c0  54 35 43 e3                                      movt r3, #0x3554
006048c4  03 00 52 e1                                      cmp r2, r3
006048c8  97 ff ff 1a                                      bne #0x60472c
006048cc  30 00 9f e5                                      ldr r0, [pc, #0x30]
006048d0  01 10 a0 e3                                      mov r1, #1
006048d4  14 70 a0 e3                                      mov r7, #0x14
006048d8  00 00 8f e0                                      add r0, pc, r0
006048dc  ef 18 00 eb                                      bl #0x60aca0
006048e0  bf ff ff ea                                      b #0x6047e4
006048e4  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
006048e8  12 70 a0 e3                                      mov r7, #0x12
006048ec  00 00 8f e0                                      add r0, pc, r0
006048f0  ea 18 00 eb                                      bl #0x60aca0
006048f4  ba ff ff ea                                      b #0x6047e4
; mapping-symbol data/literal pool
006048f8  80 ff 2d 00 4c ff 2d 00 b8 fe 2d 00 68 fe 2d 00  .byte 0x80, 0xff, 0x2d, 0x00, 0x4c, 0xff, 0x2d, 0x00, 0xb8, 0xfe, 0x2d, 0x00, 0x68, 0xfe, 0x2d, 0x00
00604908  24 fe 2d 00                                      .byte 0x24, 0xfe, 0x2d, 0x00

; FUNCTION 0x0060490c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::CImageLoaderDDS
; alias: _ZNK6glitch5video15CImageLoaderDDS24isALoadableFileExtensionEPKc
; demangled: glitch::video::CImageLoaderDDS::isALoadableFileExtension(char const*) const
; decoder-mode: arm
0060490c  01 00 a0 e1                                      mov r0, r1
00604910  14 10 9f e5                                      ldr r1, [pc, #0x14]
00604914  10 40 2d e9                                      push {r4, lr}
00604918  01 10 8f e0                                      add r1, pc, r1
0060491c  ac 28 f4 eb                                      bl #0x30ebd4
00604920  00 00 50 e2                                      subs r0, r0, #0
00604924  01 00 a0 13                                      movne r0, #1
00604928  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060492c  60 fe 2d 00                                      .byte 0x60, 0xfe, 0x2d, 0x00

; FUNCTION 0x0060496c, declared_size=272, range_size=272, mode=arm
; class-group: glitch::video::CImageLoaderDDS
; alias: _ZNK6glitch5video15CImageLoaderDDS15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE
; demangled: glitch::video::CImageLoaderDDS::loadTextureData(glitch::io::IReadFile*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::STextureDesc const&) const
; decoder-mode: arm
0060496c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00604970  94 d0 4d e2                                      sub sp, sp, #0x94
00604974  04 50 8d e2                                      add r5, sp, #4
00604978  01 00 a0 e1                                      mov r0, r1
0060497c  01 40 a0 e1                                      mov r4, r1
00604980  05 10 a0 e1                                      mov r1, r5
00604984  02 70 a0 e1                                      mov r7, r2
00604988  03 60 a0 e1                                      mov r6, r3
0060498c  0e fe ff eb                                      bl #0x6041cc
00604990  d8 a0 9f e5                                      ldr sl, [pc, #0xd8]
00604994  00 00 50 e3                                      cmp r0, #0
00604998  00 50 a0 01                                      moveq r5, r0
0060499c  0a a0 8f e0                                      add sl, pc, sl
006049a0  18 00 00 0a                                      beq #0x604a08
006049a4  08 30 9d e5                                      ldr r3, [sp, #8]
006049a8  02 07 13 e3                                      tst r3, #0x80000
006049ac  18 00 00 1a                                      bne #0x604a14
006049b0  00 30 94 e5                                      ldr r3, [r4]
006049b4  04 00 a0 e1                                      mov r0, r4
006049b8  0f e0 a0 e1                                      mov lr, pc
006049bc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006049c0  ac 30 9f e5                                      ldr r3, [pc, #0xac]
006049c4  80 80 8d e2                                      add r8, sp, #0x80
006049c8  80 c0 40 e2                                      sub ip, r0, #0x80
006049cc  03 30 9a e7                                      ldr r3, [sl, r3]
006049d0  04 00 a0 e1                                      mov r0, r4
006049d4  06 20 a0 e1                                      mov r2, r6
006049d8  08 40 83 e2                                      add r4, r3, #8
006049dc  08 10 a0 e1                                      mov r1, r8
006049e0  07 30 a0 e1                                      mov r3, r7
006049e4  84 50 8d e5                                      str r5, [sp, #0x84]
006049e8  8c c0 8d e5                                      str ip, [sp, #0x8c]
006049ec  80 40 8d e5                                      str r4, [sp, #0x80]
006049f0  88 60 8d e5                                      str r6, [sp, #0x88]
006049f4  75 0e 00 eb                                      bl #0x6083d0
006049f8  00 50 a0 e1                                      mov r5, r0
006049fc  08 00 a0 e1                                      mov r0, r8
00604a00  80 40 8d e5                                      str r4, [sp, #0x80]
00604a04  10 0b 00 eb                                      bl #0x60764c
00604a08  05 00 a0 e1                                      mov r0, r5
00604a0c  94 d0 8d e2                                      add sp, sp, #0x94
00604a10  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00604a14  00 30 97 e5                                      ldr r3, [r7]
00604a18  04 10 96 e5                                      ldr r1, [r6, #4]
00604a1c  38 20 93 e5                                      ldr r2, [r3, #0x38]
00604a20  52 22 e5 e7                                      ubfx r2, r2, #4, #6
00604a24  02 00 51 e1                                      cmp r1, r2
00604a28  e0 ff ff 1a                                      bne #0x6049b0
00604a2c  30 30 93 e5                                      ldr r3, [r3, #0x30]
00604a30  0c 00 93 e8                                      ldm r3, {r2, r3}
00604a34  03 30 62 e0                                      rsb r3, r2, r3
00604a38  14 20 9d e5                                      ldr r2, [sp, #0x14]
00604a3c  03 00 52 e1                                      cmp r2, r3
00604a40  da ff ff 0a                                      beq #0x6049b0
00604a44  00 30 94 e5                                      ldr r3, [r4]
00604a48  04 00 a0 e1                                      mov r0, r4
00604a4c  0f e0 a0 e1                                      mov lr, pc
00604a50  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00604a54  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00604a58  00 20 a0 e1                                      mov r2, r0
00604a5c  03 00 a0 e3                                      mov r0, #3
00604a60  01 10 8f e0                                      add r1, pc, r1
00604a64  72 19 00 eb                                      bl #0x60b034
00604a68  00 50 a0 e3                                      mov r5, #0
00604a6c  e5 ff ff ea                                      b #0x604a08
; mapping-symbol data/literal pool
00604a70  f4 00 39 00 c4 47 00 00 20 fd 2d 00              .byte 0xf4, 0x00, 0x39, 0x00, 0xc4, 0x47, 0x00, 0x00, 0x20, 0xfd, 0x2d, 0x00
