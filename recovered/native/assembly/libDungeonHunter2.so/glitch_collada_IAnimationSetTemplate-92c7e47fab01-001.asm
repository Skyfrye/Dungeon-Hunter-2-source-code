; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00667320, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::IAnimationSetTemplate
; alias: _ZN6glitch7collada21IAnimationSetTemplate10setUnAddedEv
; demangled: glitch::collada::IAnimationSetTemplate::setUnAdded()
; decoder-mode: arm
00667320  0c 00 90 e9                                      ldmib r0, {r2, r3}
00667324  03 30 62 e0                                      rsb r3, r2, r3
00667328  23 31 b0 e1                                      lsrs r3, r3, #2
0066732c  1e ff 2f 01                                      bxeq lr
00667330  00 30 a0 e3                                      mov r3, #0
00667334  03 10 a0 e1                                      mov r1, r3
00667338  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0066733c  00 10 c2 e5                                      strb r1, [r2]
00667340  04 20 90 e5                                      ldr r2, [r0, #4]
00667344  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
00667348  01 30 83 e2                                      add r3, r3, #1
0066734c  0c 10 82 e5                                      str r1, [r2, #0xc]
00667350  04 10 90 e9                                      ldmib r0, {r2, ip}
00667354  0c c0 62 e0                                      rsb ip, r2, ip
00667358  4c 01 53 e1                                      cmp r3, ip, asr #2
0066735c  f5 ff ff 3a                                      blo #0x667338
00667360  1e ff 2f e1                                      bx lr

; FUNCTION 0x00667384, declared_size=516, range_size=516, mode=arm
; class-group: glitch::collada::IAnimationSetTemplate
; alias: _ZN6glitch7collada21IAnimationSetTemplate11addChannelsEPSt6vectorIPKNS0_8SChannelENS_4core10SAllocatorIS5_LNS_6memory13E_MEMORY_HINTE0EEEEPS2_IPKNS0_17CAnimationTrackExENS7_ISF_LS9_0EEEE
; demangled: glitch::collada::IAnimationSetTemplate::addChannels(std::vector<glitch::collada::SChannel const*, glitch::core::SAllocator<glitch::collada::SChannel const*, (glitch::memory::E_MEMORY_HINT)0> >*, std::vector<glitch::collada::CAnimationTrackEx const*, glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*, (glitch::memory::E_MEMORY_HINT)0> >*)
; decoder-mode: arm
00667384  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00667388  00 50 a0 e1                                      mov r5, r0
0066738c  04 30 90 e5                                      ldr r3, [r0, #4]
00667390  08 00 90 e5                                      ldr r0, [r0, #8]
00667394  00 20 63 e0                                      rsb r2, r3, r0
00667398  22 21 b0 e1                                      lsrs r2, r2, #2
0066739c  39 00 00 0a                                      beq #0x667488
006673a0  00 40 a0 e3                                      mov r4, #0
006673a4  01 70 a0 e3                                      mov r7, #1
006673a8  03 00 00 ea                                      b #0x6673bc
006673ac  01 40 84 e2                                      add r4, r4, #1
006673b0  00 20 63 e0                                      rsb r2, r3, r0
006673b4  42 01 54 e1                                      cmp r4, r2, asr #2
006673b8  32 00 00 2a                                      bhs #0x667488
006673bc  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
006673c0  04 61 a0 e1                                      lsl r6, r4, #2
006673c4  00 10 d2 e5                                      ldrb r1, [r2]
006673c8  00 00 51 e3                                      cmp r1, #0
006673cc  f6 ff ff 1a                                      bne #0x6673ac
006673d0  10 00 a0 e3                                      mov r0, #0x10
006673d4  74 33 fb eb                                      bl #0x5341ac
006673d8  04 30 95 e5                                      ldr r3, [r5, #4]
006673dc  00 80 a0 e1                                      mov r8, r0
006673e0  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
006673e4  04 30 93 e5                                      ldr r3, [r3, #4]
006673e8  08 30 80 e5                                      str r3, [r0, #8]
006673ec  04 30 95 e5                                      ldr r3, [r5, #4]
006673f0  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
006673f4  08 30 93 e5                                      ldr r3, [r3, #8]
006673f8  03 00 a0 e1                                      mov r0, r3
006673fc  00 30 93 e5                                      ldr r3, [r3]
00667400  0f e0 a0 e1                                      mov lr, pc
00667404  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00667408  04 00 88 e5                                      str r0, [r8, #4]
0066740c  04 30 95 e5                                      ldr r3, [r5, #4]
00667410  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00667414  0c 80 83 e5                                      str r8, [r3, #0xc]
00667418  08 30 98 e5                                      ldr r3, [r8, #8]
0066741c  01 30 43 e2                                      sub r3, r3, #1
00667420  0c 00 53 e3                                      cmp r3, #0xc
00667424  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00667428  0d 00 00 ea                                      b #0x667464
0066742c  4e 00 00 ea                                      b #0x66756c
00667430  46 00 00 ea                                      b #0x667550
00667434  3e 00 00 ea                                      b #0x667534
00667438  36 00 00 ea                                      b #0x667518
0066743c  2e 00 00 ea                                      b #0x6674fc
00667440  26 00 00 ea                                      b #0x6674e0
00667444  25 00 00 ea                                      b #0x6674e0
00667448  24 00 00 ea                                      b #0x6674e0
0066744c  23 00 00 ea                                      b #0x6674e0
00667450  1b 00 00 ea                                      b #0x6674c4
00667454  13 00 00 ea                                      b #0x6674a8
00667458  0b 00 00 ea                                      b #0x66748c
0066745c  ff ff ff ea                                      b #0x667460
00667460  95 a6 fe eb                                      bl #0x610ebc
00667464  04 30 95 e5                                      ldr r3, [r5, #4]
00667468  06 30 93 e7                                      ldr r3, [r3, r6]
0066746c  00 70 c3 e5                                      strb r7, [r3]
00667470  04 30 95 e5                                      ldr r3, [r5, #4]
00667474  08 00 95 e5                                      ldr r0, [r5, #8]
00667478  01 40 84 e2                                      add r4, r4, #1
0066747c  00 20 63 e0                                      rsb r2, r3, r0
00667480  42 01 54 e1                                      cmp r4, r2, asr #2
00667484  cc ff ff 3a                                      blo #0x6673bc
00667488  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0066748c  1b a6 fe eb                                      bl #0x610d00
00667490  04 30 95 e5                                      ldr r3, [r5, #4]
00667494  06 30 93 e7                                      ldr r3, [r3, r6]
00667498  00 70 c3 e5                                      strb r7, [r3]
0066749c  04 30 95 e5                                      ldr r3, [r5, #4]
006674a0  08 00 95 e5                                      ldr r0, [r5, #8]
006674a4  f3 ff ff ea                                      b #0x667478
006674a8  a5 a5 fe eb                                      bl #0x610b44
006674ac  04 30 95 e5                                      ldr r3, [r5, #4]
006674b0  06 30 93 e7                                      ldr r3, [r3, r6]
006674b4  00 70 c3 e5                                      strb r7, [r3]
006674b8  04 30 95 e5                                      ldr r3, [r5, #4]
006674bc  08 00 95 e5                                      ldr r0, [r5, #8]
006674c0  ec ff ff ea                                      b #0x667478
006674c4  2f a5 fe eb                                      bl #0x610988
006674c8  04 30 95 e5                                      ldr r3, [r5, #4]
006674cc  06 30 93 e7                                      ldr r3, [r3, r6]
006674d0  00 70 c3 e5                                      strb r7, [r3]
006674d4  04 30 95 e5                                      ldr r3, [r5, #4]
006674d8  08 00 95 e5                                      ldr r0, [r5, #8]
006674dc  e5 ff ff ea                                      b #0x667478
006674e0  fd a2 fe eb                                      bl #0x6100dc
006674e4  04 30 95 e5                                      ldr r3, [r5, #4]
006674e8  06 30 93 e7                                      ldr r3, [r3, r6]
006674ec  00 70 c3 e5                                      strb r7, [r3]
006674f0  04 30 95 e5                                      ldr r3, [r5, #4]
006674f4  08 00 95 e5                                      ldr r0, [r5, #8]
006674f8  de ff ff ea                                      b #0x667478
006674fc  87 a2 fe eb                                      bl #0x60ff20
00667500  04 30 95 e5                                      ldr r3, [r5, #4]
00667504  06 30 93 e7                                      ldr r3, [r3, r6]
00667508  00 70 c3 e5                                      strb r7, [r3]
0066750c  04 30 95 e5                                      ldr r3, [r5, #4]
00667510  08 00 95 e5                                      ldr r0, [r5, #8]
00667514  d7 ff ff ea                                      b #0x667478
00667518  ab a4 fe eb                                      bl #0x6107cc
0066751c  04 30 95 e5                                      ldr r3, [r5, #4]
00667520  06 30 93 e7                                      ldr r3, [r3, r6]
00667524  00 70 c3 e5                                      strb r7, [r3]
00667528  04 30 95 e5                                      ldr r3, [r5, #4]
0066752c  08 00 95 e5                                      ldr r0, [r5, #8]
00667530  d0 ff ff ea                                      b #0x667478
00667534  35 a4 fe eb                                      bl #0x610610
00667538  04 30 95 e5                                      ldr r3, [r5, #4]
0066753c  06 30 93 e7                                      ldr r3, [r3, r6]
00667540  00 70 c3 e5                                      strb r7, [r3]
00667544  04 30 95 e5                                      ldr r3, [r5, #4]
00667548  08 00 95 e5                                      ldr r0, [r5, #8]
0066754c  c9 ff ff ea                                      b #0x667478
00667550  bf a3 fe eb                                      bl #0x610454
00667554  04 30 95 e5                                      ldr r3, [r5, #4]
00667558  06 30 93 e7                                      ldr r3, [r3, r6]
0066755c  00 70 c3 e5                                      strb r7, [r3]
00667560  04 30 95 e5                                      ldr r3, [r5, #4]
00667564  08 00 95 e5                                      ldr r0, [r5, #8]
00667568  c2 ff ff ea                                      b #0x667478
0066756c  49 a3 fe eb                                      bl #0x610298
00667570  04 30 95 e5                                      ldr r3, [r5, #4]
00667574  06 30 93 e7                                      ldr r3, [r3, r6]
00667578  00 70 c3 e5                                      strb r7, [r3]
0066757c  04 30 95 e5                                      ldr r3, [r5, #4]
00667580  08 00 95 e5                                      ldr r0, [r5, #8]
00667584  bb ff ff ea                                      b #0x667478

; FUNCTION 0x00667588, declared_size=136, range_size=136, mode=arm
; class-group: glitch::collada::IAnimationSetTemplate
; alias: _ZN6glitch7collada21IAnimationSetTemplateD1Ev
; demangled: glitch::collada::IAnimationSetTemplate::~IAnimationSetTemplate()
; decoder-mode: arm
00667588  70 40 2d e9                                      push {r4, r5, r6, lr}
0066758c  74 30 9f e5                                      ldr r3, [pc, #0x74]
00667590  74 20 9f e5                                      ldr r2, [pc, #0x74]
00667594  08 c0 90 e5                                      ldr ip, [r0, #8]
00667598  03 30 8f e0                                      add r3, pc, r3
0066759c  04 10 90 e5                                      ldr r1, [r0, #4]
006675a0  02 20 93 e7                                      ldr r2, [r3, r2]
006675a4  00 50 a0 e1                                      mov r5, r0
006675a8  0c 30 61 e0                                      rsb r3, r1, ip
006675ac  08 20 82 e2                                      add r2, r2, #8
006675b0  23 31 b0 e1                                      lsrs r3, r3, #2
006675b4  00 20 80 e5                                      str r2, [r0]
006675b8  0a 00 00 0a                                      beq #0x6675e8
006675bc  00 40 a0 e3                                      mov r4, #0
006675c0  04 31 91 e7                                      ldr r3, [r1, r4, lsl #2]
006675c4  01 40 84 e2                                      add r4, r4, #1
006675c8  0c 00 93 e5                                      ldr r0, [r3, #0xc]
006675cc  00 00 50 e3                                      cmp r0, #0
006675d0  01 00 00 0a                                      beq #0x6675dc
006675d4  35 9b f2 eb                                      bl #0x30e2b0
006675d8  02 10 95 e9                                      ldmib r5, {r1, ip}
006675dc  0c 30 61 e0                                      rsb r3, r1, ip
006675e0  43 01 54 e1                                      cmp r4, r3, asr #2
006675e4  f5 ff ff 3a                                      blo #0x6675c0
006675e8  04 00 95 e5                                      ldr r0, [r5, #4]
006675ec  01 00 5c e1                                      cmp ip, r1
006675f0  08 10 85 15                                      strne r1, [r5, #8]
006675f4  00 00 50 e3                                      cmp r0, #0
006675f8  00 00 00 0a                                      beq #0x667600
006675fc  21 34 fb eb                                      bl #0x534688
00667600  05 00 a0 e1                                      mov r0, r5
00667604  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00667608  f8 d4 32 00 dc 1a 00 00                          .byte 0xf8, 0xd4, 0x32, 0x00, 0xdc, 0x1a, 0x00, 0x00

; FUNCTION 0x00667610, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::IAnimationSetTemplate
; alias: _ZN6glitch7collada21IAnimationSetTemplateD0Ev
; demangled: glitch::collada::IAnimationSetTemplate::~IAnimationSetTemplate()
; decoder-mode: arm
00667610  10 40 2d e9                                      push {r4, lr}
00667614  00 40 a0 e1                                      mov r4, r0
00667618  da ff ff eb                                      bl #0x667588
0066761c  04 00 a0 e1                                      mov r0, r4
00667620  22 9b f2 eb                                      bl #0x30e2b0
00667624  04 00 a0 e1                                      mov r0, r4
00667628  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0066762c, declared_size=136, range_size=136, mode=arm
; class-group: glitch::collada::IAnimationSetTemplate
; alias: _ZN6glitch7collada21IAnimationSetTemplateD2Ev
; demangled: glitch::collada::IAnimationSetTemplate::~IAnimationSetTemplate()
; decoder-mode: arm
0066762c  70 40 2d e9                                      push {r4, r5, r6, lr}
00667630  74 30 9f e5                                      ldr r3, [pc, #0x74]
00667634  74 20 9f e5                                      ldr r2, [pc, #0x74]
00667638  08 c0 90 e5                                      ldr ip, [r0, #8]
0066763c  03 30 8f e0                                      add r3, pc, r3
00667640  04 10 90 e5                                      ldr r1, [r0, #4]
00667644  02 20 93 e7                                      ldr r2, [r3, r2]
00667648  00 50 a0 e1                                      mov r5, r0
0066764c  0c 30 61 e0                                      rsb r3, r1, ip
00667650  08 20 82 e2                                      add r2, r2, #8
00667654  23 31 b0 e1                                      lsrs r3, r3, #2
00667658  00 20 80 e5                                      str r2, [r0]
0066765c  0a 00 00 0a                                      beq #0x66768c
00667660  00 40 a0 e3                                      mov r4, #0
00667664  04 31 91 e7                                      ldr r3, [r1, r4, lsl #2]
00667668  01 40 84 e2                                      add r4, r4, #1
0066766c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00667670  00 00 50 e3                                      cmp r0, #0
00667674  01 00 00 0a                                      beq #0x667680
00667678  0c 9b f2 eb                                      bl #0x30e2b0
0066767c  02 10 95 e9                                      ldmib r5, {r1, ip}
00667680  0c 30 61 e0                                      rsb r3, r1, ip
00667684  43 01 54 e1                                      cmp r4, r3, asr #2
00667688  f5 ff ff 3a                                      blo #0x667664
0066768c  04 00 95 e5                                      ldr r0, [r5, #4]
00667690  01 00 5c e1                                      cmp ip, r1
00667694  08 10 85 15                                      strne r1, [r5, #8]
00667698  00 00 50 e3                                      cmp r0, #0
0066769c  00 00 00 0a                                      beq #0x6676a4
006676a0  f8 33 fb eb                                      bl #0x534688
006676a4  05 00 a0 e1                                      mov r0, r5
006676a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006676ac  54 d4 32 00 dc 1a 00 00                          .byte 0x54, 0xd4, 0x32, 0x00, 0xdc, 0x1a, 0x00, 0x00
