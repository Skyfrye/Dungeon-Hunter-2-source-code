; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00602c84, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::IImageLoader
; alias: _ZN6glitch5video12IImageLoader23hasTextureLoadInterfaceEv
; demangled: glitch::video::IImageLoader::hasTextureLoadInterface()
; decoder-mode: arm
00602c84  00 00 a0 e3                                      mov r0, #0
00602c88  1e ff 2f e1                                      bx lr

; FUNCTION 0x00602c8c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::IImageLoader
; alias: _ZNK6glitch5video12IImageLoader17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE
; demangled: glitch::video::IImageLoader::loadTextureHeader(glitch::io::IReadFile*, glitch::video::STextureDesc&) const
; decoder-mode: arm
00602c8c  00 00 a0 e3                                      mov r0, #0
00602c90  1e ff 2f e1                                      bx lr

; FUNCTION 0x00602c94, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::IImageLoader
; alias: _ZNK6glitch5video12IImageLoader15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE
; demangled: glitch::video::IImageLoader::loadTextureData(glitch::io::IReadFile*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::STextureDesc const&) const
; decoder-mode: arm
00602c94  00 00 a0 e3                                      mov r0, #0
00602c98  1e ff 2f e1                                      bx lr

; FUNCTION 0x00602d74, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IImageLoader
; alias: _ZN6glitch5video12IImageLoaderD1Ev
; demangled: glitch::video::IImageLoader::~IImageLoader()
; decoder-mode: arm
00602d74  1e ff 2f e1                                      bx lr

; FUNCTION 0x00602db0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::IImageLoader
; alias: _ZN6glitch5video12IImageLoaderD0Ev
; demangled: glitch::video::IImageLoader::~IImageLoader()
; decoder-mode: arm
00602db0  10 40 2d e9                                      push {r4, lr}
00602db4  00 40 a0 e1                                      mov r4, r0
00602db8  3c 2d f4 eb                                      bl #0x30e2b0
00602dbc  04 00 a0 e1                                      mov r0, r4
00602dc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006083d0, declared_size=1152, range_size=1152, mode=arm
; class-group: glitch::video::IImageLoader
; alias: _ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE
; demangled: glitch::video::IImageLoader::loadData(glitch::io::IReadFile*, glitch::video::IImageLoader::IDataInfo const&, glitch::video::STextureDesc const&, boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
006083d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006083d4  01 40 a0 e1                                      mov r4, r1
006083d8  8c d0 4d e2                                      sub sp, sp, #0x8c
006083dc  00 10 a0 e3                                      mov r1, #0
006083e0  85 10 cd e5                                      strb r1, [sp, #0x85]
006083e4  78 10 8d e5                                      str r1, [sp, #0x78]
006083e8  7c 10 8d e5                                      str r1, [sp, #0x7c]
006083ec  80 10 8d e5                                      str r1, [sp, #0x80]
006083f0  84 10 cd e5                                      strb r1, [sp, #0x84]
006083f4  00 90 a0 e1                                      mov sb, r0
006083f8  00 10 94 e5                                      ldr r1, [r4]
006083fc  04 00 a0 e1                                      mov r0, r4
00608400  02 70 a0 e1                                      mov r7, r2
00608404  03 60 a0 e1                                      mov r6, r3
00608408  0f e0 a0 e1                                      mov lr, pc
0060840c  10 f0 91 e5                                      ldr pc, [r1, #0x10]
00608410  18 54 9f e5                                      ldr r5, [pc, #0x418]
00608414  00 00 50 e3                                      cmp r0, #0
00608418  05 50 8f e0                                      add r5, pc, r5
0060841c  7a 00 00 0a                                      beq #0x60860c
00608420  0c 84 9f e5                                      ldr r8, [pc, #0x40c]
00608424  00 30 a0 e3                                      mov r3, #0
00608428  85 30 cd e5                                      strb r3, [sp, #0x85]
0060842c  00 30 94 e5                                      ldr r3, [r4]
00608430  00 10 a0 e3                                      mov r1, #0
00608434  04 00 a0 e1                                      mov r0, r4
00608438  0f e0 a0 e1                                      mov lr, pc
0060843c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00608440  00 30 96 e5                                      ldr r3, [r6]
00608444  00 a0 a0 e1                                      mov sl, r0
00608448  08 20 95 e7                                      ldr r2, [r5, r8]
0060844c  38 00 93 e5                                      ldr r0, [r3, #0x38]
00608450  04 c0 97 e5                                      ldr ip, [r7, #4]
00608454  28 10 a0 e3                                      mov r1, #0x28
00608458  50 02 e5 e7                                      ubfx r0, r0, #4, #6
0060845c  91 2c 2c e0                                      mla ip, r1, ip, r2
00608460  91 20 22 e0                                      mla r2, r1, r0, r2
00608464  16 c0 dc e5                                      ldrb ip, [ip, #0x16]
00608468  16 20 d2 e5                                      ldrb r2, [r2, #0x16]
0060846c  0c 00 52 e1                                      cmp r2, ip
00608470  77 00 00 0a                                      beq #0x608654
00608474  00 30 94 e5                                      ldr r3, [r4]
00608478  04 00 a0 e1                                      mov r0, r4
0060847c  0f e0 a0 e1                                      mov lr, pc
00608480  08 f0 93 e5                                      ldr pc, [r3, #8]
00608484  00 10 a0 e3                                      mov r1, #0
00608488  46 af fc eb                                      bl #0x5341a8
0060848c  00 b0 a0 e1                                      mov fp, r0
00608490  80 00 9d e5                                      ldr r0, [sp, #0x80]
00608494  80 b0 8d e5                                      str fp, [sp, #0x80]
00608498  00 00 50 e3                                      cmp r0, #0
0060849c  01 00 00 0a                                      beq #0x6084a8
006084a0  04 17 f4 eb                                      bl #0x30e0b8
006084a4  80 b0 9d e5                                      ldr fp, [sp, #0x80]
006084a8  00 00 5b e3                                      cmp fp, #0
006084ac  cb 00 00 0a                                      beq #0x6087e0
006084b0  01 30 a0 e3                                      mov r3, #1
006084b4  00 20 96 e5                                      ldr r2, [r6]
006084b8  00 80 a0 e3                                      mov r8, #0
006084bc  84 30 cd e5                                      strb r3, [sp, #0x84]
006084c0  3e 20 d2 e5                                      ldrb r2, [r2, #0x3e]
006084c4  01 00 52 e3                                      cmp r2, #1
006084c8  00 50 a0 83                                      movhi r5, #0
006084cc  1c 50 d7 95                                      ldrbls r5, [r7, #0x1c]
006084d0  00 00 53 e3                                      cmp r3, #0
006084d4  02 00 00 0a                                      beq #0x6084e4
006084d8  80 30 9d e5                                      ldr r3, [sp, #0x80]
006084dc  00 00 53 e3                                      cmp r3, #0
006084e0  56 00 00 0a                                      beq #0x608640
006084e4  85 30 dd e5                                      ldrb r3, [sp, #0x85]
006084e8  00 00 53 e3                                      cmp r3, #0
006084ec  04 c0 a0 03                                      moveq ip, #4
006084f0  52 00 00 1a                                      bne #0x608640
006084f4  00 20 a0 e3                                      mov r2, #0
006084f8  78 a0 8d e2                                      add sl, sp, #0x78
006084fc  0a 00 a0 e1                                      mov r0, sl
00608500  06 10 a0 e1                                      mov r1, r6
00608504  02 30 a0 e1                                      mov r3, r2
00608508  00 c0 8d e5                                      str ip, [sp]
0060850c  c4 fc ff eb                                      bl #0x607824
00608510  7c b0 9d e5                                      ldr fp, [sp, #0x7c]
00608514  00 00 5b e3                                      cmp fp, #0
00608518  ba 00 00 0a                                      beq #0x608808
0060851c  00 30 96 e5                                      ldr r3, [r6]
00608520  3f 30 d3 e5                                      ldrb r3, [r3, #0x3f]
00608524  40 00 13 e3                                      tst r3, #0x40
00608528  46 00 00 0a                                      beq #0x608648
0060852c  00 00 55 e3                                      cmp r5, #0
00608530  67 00 00 0a                                      beq #0x6086d4
00608534  00 30 99 e5                                      ldr r3, [sb]
00608538  09 00 a0 e1                                      mov r0, sb
0060853c  0f e0 a0 e1                                      mov lr, pc
00608540  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00608544  ec 12 9f e5                                      ldr r1, [pc, #0x2ec]
00608548  00 20 a0 e1                                      mov r2, r0
0060854c  02 00 a0 e3                                      mov r0, #2
00608550  01 10 8f e0                                      add r1, pc, r1
00608554  b6 0a 00 eb                                      bl #0x60b034
00608558  0c 50 8d e2                                      add r5, sp, #0xc
0060855c  00 30 a0 e3                                      mov r3, #0
00608560  05 00 a0 e1                                      mov r0, r5
00608564  2e 30 cd e5                                      strb r3, [sp, #0x2e]
00608568  0c 30 8d e5                                      str r3, [sp, #0xc]
0060856c  10 30 8d e5                                      str r3, [sp, #0x10]
00608570  14 30 8d e5                                      str r3, [sp, #0x14]
00608574  18 30 8d e5                                      str r3, [sp, #0x18]
00608578  1c 30 8d e5                                      str r3, [sp, #0x1c]
0060857c  20 30 8d e5                                      str r3, [sp, #0x20]
00608580  24 30 8d e5                                      str r3, [sp, #0x24]
00608584  28 30 8d e5                                      str r3, [sp, #0x28]
00608588  2c 30 cd e5                                      strb r3, [sp, #0x2c]
0060858c  2d 30 cd e5                                      strb r3, [sp, #0x2d]
00608590  2f fc ff eb                                      bl #0x607654
00608594  a0 32 9f e5                                      ldr r3, [pc, #0x2a0]
00608598  04 20 a0 e1                                      mov r2, r4
0060859c  09 10 a0 e1                                      mov r1, sb
006085a0  03 30 8f e0                                      add r3, pc, r3
006085a4  50 40 83 e2                                      add r4, r3, #0x50
006085a8  05 00 a0 e1                                      mov r0, r5
006085ac  07 30 a0 e1                                      mov r3, r7
006085b0  00 a0 8d e5                                      str sl, [sp]
006085b4  0c 40 8d e5                                      str r4, [sp, #0xc]
006085b8  29 fd ff eb                                      bl #0x607a64
006085bc  00 b0 a0 e1                                      mov fp, r0
006085c0  05 00 a0 e1                                      mov r0, r5
006085c4  0c 40 8d e5                                      str r4, [sp, #0xc]
006085c8  4b fc ff eb                                      bl #0x6076fc
006085cc  80 00 9d e5                                      ldr r0, [sp, #0x80]
006085d0  00 00 50 e3                                      cmp r0, #0
006085d4  00 00 00 0a                                      beq #0x6085dc
006085d8  b6 16 f4 eb                                      bl #0x30e0b8
006085dc  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006085e0  00 00 53 e3                                      cmp r3, #0
006085e4  01 00 00 0a                                      beq #0x6085f0
006085e8  78 00 9d e5                                      ldr r0, [sp, #0x78]
006085ec  86 d5 ff eb                                      bl #0x5fdc0c
006085f0  78 00 9d e5                                      ldr r0, [sp, #0x78]
006085f4  00 00 50 e3                                      cmp r0, #0
006085f8  00 00 00 0a                                      beq #0x608600
006085fc  e0 53 f4 eb                                      bl #0x31d584
00608600  0b 00 a0 e1                                      mov r0, fp
00608604  8c d0 8d e2                                      add sp, sp, #0x8c
00608608  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0060860c  04 30 97 e5                                      ldr r3, [r7, #4]
00608610  1c 82 9f e5                                      ldr r8, [pc, #0x21c]
00608614  28 20 a0 e3                                      mov r2, #0x28
00608618  92 03 03 e0                                      mul r3, r2, r3
0060861c  08 20 95 e7                                      ldr r2, [r5, r8]
00608620  03 10 92 e7                                      ldr r1, [r2, r3]
00608624  03 30 82 e0                                      add r3, r2, r3
00608628  08 00 11 e3                                      tst r1, #8
0060862c  7c ff ff 1a                                      bne #0x608424
00608630  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
00608634  00 30 53 e2                                      subs r3, r3, #0
00608638  01 30 a0 13                                      movne r3, #1
0060863c  79 ff ff ea                                      b #0x608428
00608640  05 c0 a0 e3                                      mov ip, #5
00608644  aa ff ff ea                                      b #0x6084f4
00608648  00 00 55 e3                                      cmp r5, #0
0060864c  c1 ff ff 0a                                      beq #0x608558
00608650  b7 ff ff ea                                      b #0x608534
00608654  00 00 5a e3                                      cmp sl, #0
00608658  5b 00 00 1a                                      bne #0x6087cc
0060865c  00 30 94 e5                                      ldr r3, [r4]
00608660  04 00 a0 e1                                      mov r0, r4
00608664  0f e0 a0 e1                                      mov lr, pc
00608668  08 f0 93 e5                                      ldr pc, [r3, #8]
0060866c  00 20 96 e5                                      ldr r2, [r6]
00608670  38 30 92 e5                                      ldr r3, [r2, #0x38]
00608674  3f 10 d2 e5                                      ldrb r1, [r2, #0x3f]
00608678  03 e0 03 e2                                      and lr, r3, #3
0060867c  02 00 5e e3                                      cmp lr, #2
00608680  05 e0 a0 03                                      moveq lr, #5
00608684  00 e0 a0 13                                      movne lr, #0
00608688  02 00 11 e3                                      tst r1, #2
0060868c  30 c0 92 15                                      ldrne ip, [r2, #0x30]
00608690  30 10 92 05                                      ldreq r1, [r2, #0x30]
00608694  3e c0 d2 05                                      ldrbeq ip, [r2, #0x3e]
00608698  00 10 9c 15                                      ldrne r1, [ip]
0060869c  04 80 9c 15                                      ldrne r8, [ip, #4]
006086a0  0c 11 91 07                                      ldreq r1, [r1, ip, lsl #2]
006086a4  53 32 e5 e7                                      ubfx r3, r3, #4, #6
006086a8  08 10 61 10                                      rsbne r1, r1, r8
006086ac  7f 80 81 e2                                      add r8, r1, #0x7f
006086b0  7f 80 c8 e3                                      bic r8, r8, #0x7f
006086b4  98 1e 28 e0                                      mla r8, r8, lr, r1
006086b8  04 10 97 e5                                      ldr r1, [r7, #4]
006086bc  08 80 50 e0                                      subs r8, r0, r8
006086c0  01 80 a0 13                                      movne r8, #1
006086c4  03 30 51 e0                                      subs r3, r1, r3
006086c8  01 30 a0 13                                      movne r3, #1
006086cc  84 30 cd e5                                      strb r3, [sp, #0x84]
006086d0  7a ff ff ea                                      b #0x6084c0
006086d4  00 00 58 e3                                      cmp r8, #0
006086d8  1d 00 00 0a                                      beq #0x608754
006086dc  5c 61 9f e5                                      ldr r6, [pc, #0x15c]
006086e0  54 80 8d e2                                      add r8, sp, #0x54
006086e4  08 00 a0 e1                                      mov r0, r8
006086e8  06 60 8f e0                                      add r6, pc, r6
006086ec  76 50 cd e5                                      strb r5, [sp, #0x76]
006086f0  54 50 8d e5                                      str r5, [sp, #0x54]
006086f4  58 50 8d e5                                      str r5, [sp, #0x58]
006086f8  5c 50 8d e5                                      str r5, [sp, #0x5c]
006086fc  60 50 8d e5                                      str r5, [sp, #0x60]
00608700  64 50 8d e5                                      str r5, [sp, #0x64]
00608704  68 50 8d e5                                      str r5, [sp, #0x68]
00608708  6c 50 8d e5                                      str r5, [sp, #0x6c]
0060870c  70 50 8d e5                                      str r5, [sp, #0x70]
00608710  74 50 cd e5                                      strb r5, [sp, #0x74]
00608714  75 50 cd e5                                      strb r5, [sp, #0x75]
00608718  cd fb ff eb                                      bl #0x607654
0060871c  20 c0 86 e2                                      add ip, r6, #0x20
00608720  09 10 a0 e1                                      mov r1, sb
00608724  04 20 a0 e1                                      mov r2, r4
00608728  07 30 a0 e1                                      mov r3, r7
0060872c  08 00 a0 e1                                      mov r0, r8
00608730  54 c0 8d e5                                      str ip, [sp, #0x54]
00608734  00 a0 8d e5                                      str sl, [sp]
00608738  c9 fc ff eb                                      bl #0x607a64
0060873c  08 60 86 e2                                      add r6, r6, #8
00608740  00 b0 a0 e1                                      mov fp, r0
00608744  08 00 a0 e1                                      mov r0, r8
00608748  54 60 8d e5                                      str r6, [sp, #0x54]
0060874c  ea fb ff eb                                      bl #0x6076fc
00608750  9d ff ff ea                                      b #0x6085cc
00608754  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
00608758  30 60 8d e2                                      add r6, sp, #0x30
0060875c  06 00 a0 e1                                      mov r0, r6
00608760  05 50 8f e0                                      add r5, pc, r5
00608764  52 80 cd e5                                      strb r8, [sp, #0x52]
00608768  30 80 8d e5                                      str r8, [sp, #0x30]
0060876c  34 80 8d e5                                      str r8, [sp, #0x34]
00608770  38 80 8d e5                                      str r8, [sp, #0x38]
00608774  3c 80 8d e5                                      str r8, [sp, #0x3c]
00608778  40 80 8d e5                                      str r8, [sp, #0x40]
0060877c  44 80 8d e5                                      str r8, [sp, #0x44]
00608780  48 80 8d e5                                      str r8, [sp, #0x48]
00608784  4c 80 8d e5                                      str r8, [sp, #0x4c]
00608788  50 80 cd e5                                      strb r8, [sp, #0x50]
0060878c  51 80 cd e5                                      strb r8, [sp, #0x51]
00608790  af fb ff eb                                      bl #0x607654
00608794  38 c0 85 e2                                      add ip, r5, #0x38
00608798  09 10 a0 e1                                      mov r1, sb
0060879c  04 20 a0 e1                                      mov r2, r4
006087a0  07 30 a0 e1                                      mov r3, r7
006087a4  06 00 a0 e1                                      mov r0, r6
006087a8  30 c0 8d e5                                      str ip, [sp, #0x30]
006087ac  00 a0 8d e5                                      str sl, [sp]
006087b0  ab fc ff eb                                      bl #0x607a64
006087b4  08 50 85 e2                                      add r5, r5, #8
006087b8  00 b0 a0 e1                                      mov fp, r0
006087bc  06 00 a0 e1                                      mov r0, r6
006087c0  30 50 8d e5                                      str r5, [sp, #0x30]
006087c4  cc fb ff eb                                      bl #0x6076fc
006087c8  7f ff ff ea                                      b #0x6085cc
006087cc  20 10 93 e5                                      ldr r1, [r3, #0x20]
006087d0  c5 94 ff eb                                      bl #0x5edaec
006087d4  00 00 5a e1                                      cmp sl, r0
006087d8  25 ff ff 1a                                      bne #0x608474
006087dc  9e ff ff ea                                      b #0x60865c
006087e0  09 00 a0 e1                                      mov r0, sb
006087e4  00 30 99 e5                                      ldr r3, [sb]
006087e8  0f e0 a0 e1                                      mov lr, pc
006087ec  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006087f0  50 10 9f e5                                      ldr r1, [pc, #0x50]
006087f4  00 20 a0 e1                                      mov r2, r0
006087f8  03 00 a0 e3                                      mov r0, #3
006087fc  01 10 8f e0                                      add r1, pc, r1
00608800  0b 0a 00 eb                                      bl #0x60b034
00608804  70 ff ff ea                                      b #0x6085cc
00608808  09 00 a0 e1                                      mov r0, sb
0060880c  00 30 99 e5                                      ldr r3, [sb]
00608810  0f e0 a0 e1                                      mov lr, pc
00608814  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00608818  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0060881c  00 20 a0 e1                                      mov r2, r0
00608820  03 00 a0 e3                                      mov r0, #3
00608824  01 10 8f e0                                      add r1, pc, r1
00608828  01 0a 00 eb                                      bl #0x60b034
0060882c  66 ff ff ea                                      b #0x6085cc
; mapping-symbol data/literal pool
00608830  78 c6 38 00 34 1f 00 00 f0 c6 2d 00 68 ef 34 00  .byte 0x78, 0xc6, 0x38, 0x00, 0x34, 0x1f, 0x00, 0x00, 0xf0, 0xc6, 0x2d, 0x00, 0x68, 0xef, 0x34, 0x00
00608840  20 ee 34 00 a8 ed 34 00 0c c4 2d 00 04 c4 2d 00  .byte 0x20, 0xee, 0x34, 0x00, 0xa8, 0xed, 0x34, 0x00, 0x0c, 0xc4, 0x2d, 0x00, 0x04, 0xc4, 0x2d, 0x00
