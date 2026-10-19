; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065788c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CResFactory
; alias: _ZN6glitch7collada11CResFactoryD2Ev
; demangled: glitch::collada::CResFactory::~CResFactory()
; decoder-mode: arm
0065788c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00657890, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CResFactory
; alias: _ZN6glitch7collada11CResFactoryD1Ev
; demangled: glitch::collada::CResFactory::~CResFactory()
; decoder-mode: arm
00657890  1e ff 2f e1                                      bx lr

; FUNCTION 0x00657a08, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CResFactory
; alias: _ZN6glitch7collada11CResFactoryD0Ev
; demangled: glitch::collada::CResFactory::~CResFactory()
; decoder-mode: arm
00657a08  10 40 2d e9                                      push {r4, lr}
00657a0c  00 40 a0 e1                                      mov r4, r0
00657a10  9e ff ff eb                                      bl #0x657890
00657a14  04 00 a0 e1                                      mov r0, r4
00657a18  24 da f2 eb                                      bl #0x30e2b0
00657a1c  04 00 a0 e1                                      mov r0, r4
00657a20  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006594a0, declared_size=612, range_size=612, mode=arm
; class-group: glitch::collada::CResFactory
; alias: _ZN6glitch7collada11CResFactory14getTextureImplERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPNS_2io9IReadFileEPNS_5video15CTextureManagerEPKcSJ_
; demangled: glitch::collada::CResFactory::getTextureImpl(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::io::IReadFile*, glitch::video::CTextureManager*, char const*, char const*)
; decoder-mode: arm
006594a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006594a4  48 42 9f e5                                      ldr r4, [pc, #0x248]
006594a8  48 82 9f e5                                      ldr r8, [pc, #0x248]
006594ac  c4 d0 4d e2                                      sub sp, sp, #0xc4
006594b0  04 40 8f e0                                      add r4, pc, r4
006594b4  08 10 94 e7                                      ldr r1, [r4, r8]
006594b8  0c 20 8d e5                                      str r2, [sp, #0xc]
006594bc  38 22 9f e5                                      ldr r2, [pc, #0x238]
006594c0  00 c0 91 e5                                      ldr ip, [r1]
006594c4  ec a0 9d e5                                      ldr sl, [sp, #0xec]
006594c8  f0 b0 9d e5                                      ldr fp, [sp, #0xf0]
006594cc  a4 60 8d e2                                      add r6, sp, #0xa4
006594d0  e8 90 9d e5                                      ldr sb, [sp, #0xe8]
006594d4  00 50 a0 e1                                      mov r5, r0
006594d8  02 20 8f e0                                      add r2, pc, r2
006594dc  06 00 a0 e1                                      mov r0, r6
006594e0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006594e4  8c 70 8d e2                                      add r7, sp, #0x8c
006594e8  bc c0 8d e5                                      str ip, [sp, #0xbc]
006594ec  10 30 8d e5                                      str r3, [sp, #0x10]
006594f0  ee 50 fc eb                                      bl #0x56d8b0
006594f4  0a 20 a0 e1                                      mov r2, sl
006594f8  07 00 a0 e1                                      mov r0, r7
006594fc  06 10 a0 e1                                      mov r1, r6
00659500  ea 50 fc eb                                      bl #0x56d8b0
00659504  05 00 a0 e1                                      mov r0, r5
00659508  09 10 a0 e1                                      mov r1, sb
0065950c  a0 20 9d e5                                      ldr r2, [sp, #0xa0]
00659510  0b 30 a0 e1                                      mov r3, fp
00659514  3d 4f fe eb                                      bl #0x5ed210
00659518  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
0065951c  07 00 50 e1                                      cmp r0, r7
00659520  02 00 00 0a                                      beq #0x659530
00659524  00 00 50 e3                                      cmp r0, #0
00659528  00 00 00 0a                                      beq #0x659530
0065952c  c7 db f2 eb                                      bl #0x310450
00659530  b8 00 9d e5                                      ldr r0, [sp, #0xb8]
00659534  06 00 50 e1                                      cmp r0, r6
00659538  02 00 00 0a                                      beq #0x659548
0065953c  00 00 50 e3                                      cmp r0, #0
00659540  00 00 00 0a                                      beq #0x659548
00659544  c1 db f2 eb                                      bl #0x310450
00659548  00 30 95 e5                                      ldr r3, [r5]
0065954c  00 00 53 e3                                      cmp r3, #0
00659550  07 00 00 0a                                      beq #0x659574
00659554  08 30 94 e7                                      ldr r3, [r4, r8]
00659558  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
0065955c  05 00 a0 e1                                      mov r0, r5
00659560  00 30 93 e5                                      ldr r3, [r3]
00659564  03 00 52 e1                                      cmp r2, r3
00659568  60 00 00 1a                                      bne #0x6596f0
0065956c  c4 d0 8d e2                                      add sp, sp, #0xc4
00659570  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00659574  0a 20 a0 e1                                      mov r2, sl
00659578  20 00 8d e2                                      add r0, sp, #0x20
0065957c  0b 30 a0 e1                                      mov r3, fp
00659580  09 10 a0 e1                                      mov r1, sb
00659584  21 4f fe eb                                      bl #0x5ed210
00659588  20 30 9d e5                                      ldr r3, [sp, #0x20]
0065958c  00 00 53 e3                                      cmp r3, #0
00659590  04 20 93 15                                      ldrne r2, [r3, #4]
00659594  01 20 82 12                                      addne r2, r2, #1
00659598  04 20 83 15                                      strne r2, [r3, #4]
0065959c  00 00 95 e5                                      ldr r0, [r5]
006595a0  00 30 85 e5                                      str r3, [r5]
006595a4  00 00 50 e3                                      cmp r0, #0
006595a8  00 00 00 0a                                      beq #0x6595b0
006595ac  f4 0f f3 eb                                      bl #0x31d584
006595b0  20 00 9d e5                                      ldr r0, [sp, #0x20]
006595b4  00 00 50 e3                                      cmp r0, #0
006595b8  00 00 00 0a                                      beq #0x6595c0
006595bc  f0 0f f3 eb                                      bl #0x31d584
006595c0  00 20 95 e5                                      ldr r2, [r5]
006595c4  00 00 52 e3                                      cmp r2, #0
006595c8  14 20 8d e5                                      str r2, [sp, #0x14]
006595cc  e0 ff ff 1a                                      bne #0x659554
006595d0  10 30 9d e5                                      ldr r3, [sp, #0x10]
006595d4  00 00 53 e3                                      cmp r3, #0
006595d8  dd ff ff 0a                                      beq #0x659554
006595dc  03 00 a0 e1                                      mov r0, r3
006595e0  0a 10 a0 e1                                      mov r1, sl
006595e4  00 30 93 e5                                      ldr r3, [r3]
006595e8  1c 20 8d e2                                      add r2, sp, #0x1c
006595ec  0f e0 a0 e1                                      mov lr, pc
006595f0  34 f0 93 e5                                      ldr pc, [r3, #0x34]
006595f4  00 00 50 e3                                      cmp r0, #0
006595f8  10 00 8d e5                                      str r0, [sp, #0x10]
006595fc  d4 ff ff 0a                                      beq #0x659554
00659600  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
00659604  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00659608  74 70 8d e2                                      add r7, sp, #0x74
0065960c  5c c0 8d e2                                      add ip, sp, #0x5c
00659610  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00659614  02 20 8f e0                                      add r2, pc, r2
00659618  07 00 a0 e1                                      mov r0, r7
0065961c  0c c0 8d e5                                      str ip, [sp, #0xc]
00659620  08 30 8d e5                                      str r3, [sp, #8]
00659624  a1 50 fc eb                                      bl #0x56d8b0
00659628  0a 20 a0 e1                                      mov r2, sl
0065962c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00659630  07 10 a0 e1                                      mov r1, r7
00659634  9d 50 fc eb                                      bl #0x56d8b0
00659638  08 30 9d e5                                      ldr r3, [sp, #8]
0065963c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00659640  24 60 8d e2                                      add r6, sp, #0x24
00659644  03 20 a0 e1                                      mov r2, r3
00659648  10 10 9d e5                                      ldr r1, [sp, #0x10]
0065964c  70 30 9d e5                                      ldr r3, [sp, #0x70]
00659650  06 00 a0 e1                                      mov r0, r6
00659654  00 c0 8d e5                                      str ip, [sp]
00659658  23 57 fc eb                                      bl #0x56f2ec
0065965c  70 00 9d e5                                      ldr r0, [sp, #0x70]
00659660  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00659664  02 00 50 e1                                      cmp r0, r2
00659668  02 00 00 0a                                      beq #0x659678
0065966c  00 00 50 e3                                      cmp r0, #0
00659670  00 00 00 0a                                      beq #0x659678
00659674  75 db f2 eb                                      bl #0x310450
00659678  88 00 9d e5                                      ldr r0, [sp, #0x88]
0065967c  07 00 50 e1                                      cmp r0, r7
00659680  02 00 00 0a                                      beq #0x659690
00659684  00 00 50 e3                                      cmp r0, #0
00659688  00 00 00 0a                                      beq #0x659690
0065968c  6f db f2 eb                                      bl #0x310450
00659690  06 20 a0 e1                                      mov r2, r6
00659694  0b 30 a0 e1                                      mov r3, fp
00659698  18 00 8d e2                                      add r0, sp, #0x18
0065969c  00 c0 a0 e3                                      mov ip, #0
006596a0  09 10 a0 e1                                      mov r1, sb
006596a4  00 c0 8d e5                                      str ip, [sp]
006596a8  85 4e fe eb                                      bl #0x5ed0c4
006596ac  18 30 9d e5                                      ldr r3, [sp, #0x18]
006596b0  00 00 53 e3                                      cmp r3, #0
006596b4  04 20 93 15                                      ldrne r2, [r3, #4]
006596b8  01 20 82 12                                      addne r2, r2, #1
006596bc  04 20 83 15                                      strne r2, [r3, #4]
006596c0  00 00 95 e5                                      ldr r0, [r5]
006596c4  00 30 85 e5                                      str r3, [r5]
006596c8  00 00 50 e3                                      cmp r0, #0
006596cc  00 00 00 0a                                      beq #0x6596d4
006596d0  ab 0f f3 eb                                      bl #0x31d584
006596d4  18 00 9d e5                                      ldr r0, [sp, #0x18]
006596d8  00 00 50 e3                                      cmp r0, #0
006596dc  00 00 00 0a                                      beq #0x6596e4
006596e0  a7 0f f3 eb                                      bl #0x31d584
006596e4  06 00 a0 e1                                      mov r0, r6
006596e8  b1 56 fc eb                                      bl #0x56f1b4
006596ec  98 ff ff ea                                      b #0x659554
006596f0  06 d3 f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006596f4  e0 b5 33 00 ac 40 00 00 80 77 26 00 44 76 26 00  .byte 0xe0, 0xb5, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00, 0x80, 0x77, 0x26, 0x00, 0x44, 0x76, 0x26, 0x00

; FUNCTION 0x00659704, declared_size=100, range_size=100, mode=arm
; class-group: glitch::collada::CResFactory
; alias: _ZN6glitch7collada11CResFactory10getTextureEPNS0_8CResFileERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPNS_2io9IReadFileEPNS_5video15CTextureManagerEPNS0_6SImageE
; demangled: glitch::collada::CResFactory::getTexture(glitch::collada::CResFile*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::io::IReadFile*, glitch::video::CTextureManager*, glitch::collada::SImage*)
; decoder-mode: arm
00659704  54 20 9f e5                                      ldr r2, [pc, #0x54]
00659708  30 40 2d e9                                      push {r4, r5, lr}
0065970c  00 40 a0 e1                                      mov r4, r0
00659710  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00659714  02 20 8f e0                                      add r2, pc, r2
00659718  14 d0 4d e2                                      sub sp, sp, #0x14
0065971c  00 00 92 e7                                      ldr r0, [r2, r0]
00659720  24 50 9d e5                                      ldr r5, [sp, #0x24]
00659724  00 20 90 e5                                      ldr r2, [r0]
00659728  04 00 a0 e1                                      mov r0, r4
0065972c  29 c0 d2 e5                                      ldrb ip, [r2, #0x29]
00659730  28 20 9d e5                                      ldr r2, [sp, #0x28]
00659734  00 00 5c e3                                      cmp ip, #0
00659738  00 c0 92 15                                      ldrne ip, [r2]
0065973c  08 e0 92 e5                                      ldr lr, [r2, #8]
00659740  03 20 a0 e1                                      mov r2, r3
00659744  20 30 9d e5                                      ldr r3, [sp, #0x20]
00659748  20 40 8d e8                                      stm sp, {r5, lr}
0065974c  08 c0 8d e5                                      str ip, [sp, #8]
00659750  52 ff ff eb                                      bl #0x6594a0
00659754  04 00 a0 e1                                      mov r0, r4
00659758  14 d0 8d e2                                      add sp, sp, #0x14
0065975c  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00659760  7c b3 33 00 48 44 00 00                          .byte 0x7c, 0xb3, 0x33, 0x00, 0x48, 0x44, 0x00, 0x00
