; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0069ac9c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PDLine
; alias: _ZN6glitch2ps6PDLineD1Ev
; demangled: glitch::ps::PDLine::~PDLine()
; decoder-mode: arm
0069ac9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069aca0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PDLine
; alias: _ZNK6glitch2ps6PDLine7getTypeEv
; demangled: glitch::ps::PDLine::getType() const
; decoder-mode: arm
0069aca0  04 00 a0 e3                                      mov r0, #4
0069aca4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069ae54, declared_size=112, range_size=112, mode=arm
; class-group: glitch::ps::PDLine
; alias: _ZNK6glitch2ps6PDLine8generateERNS0_8PSRandomE
; demangled: glitch::ps::PDLine::generate(glitch::ps::PSRandom&) const
; decoder-mode: arm
0069ae54  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0069ae58  00 40 a0 e1                                      mov r4, r0
0069ae5c  02 00 a0 e1                                      mov r0, r2
0069ae60  01 50 a0 e1                                      mov r5, r1
0069ae64  03 54 fe eb                                      bl #0x62fe78
0069ae68  0c ce f1 eb                                      bl #0x30e6a0
0069ae6c  14 10 95 e5                                      ldr r1, [r5, #0x14]
0069ae70  00 60 a0 e1                                      mov r6, r0
0069ae74  bc cf f1 eb                                      bl #0x30ed6c
0069ae78  08 10 95 e5                                      ldr r1, [r5, #8]
0069ae7c  48 cf f1 eb                                      bl #0x30eba4
0069ae80  18 10 95 e5                                      ldr r1, [r5, #0x18]
0069ae84  00 80 a0 e1                                      mov r8, r0
0069ae88  06 00 a0 e1                                      mov r0, r6
0069ae8c  b6 cf f1 eb                                      bl #0x30ed6c
0069ae90  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0069ae94  42 cf f1 eb                                      bl #0x30eba4
0069ae98  10 10 95 e5                                      ldr r1, [r5, #0x10]
0069ae9c  00 70 a0 e1                                      mov r7, r0
0069aea0  06 00 a0 e1                                      mov r0, r6
0069aea4  b0 cf f1 eb                                      bl #0x30ed6c
0069aea8  04 10 95 e5                                      ldr r1, [r5, #4]
0069aeac  3c cf f1 eb                                      bl #0x30eba4
0069aeb0  04 80 84 e5                                      str r8, [r4, #4]
0069aeb4  00 00 84 e5                                      str r0, [r4]
0069aeb8  08 70 84 e5                                      str r7, [r4, #8]
0069aebc  04 00 a0 e1                                      mov r0, r4
0069aec0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0069aec4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PDLine
; alias: _ZNK6glitch2ps6PDLine4sizeEv
; demangled: glitch::ps::PDLine::size() const
; decoder-mode: arm
0069aec4  28 00 90 e5                                      ldr r0, [r0, #0x28]
0069aec8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069bfcc, declared_size=20, range_size=20, mode=arm
; class-group: glitch::ps::PDLine
; alias: _ZN6glitch2ps6PDLineD0Ev
; demangled: glitch::ps::PDLine::~PDLine()
; decoder-mode: arm
0069bfcc  10 40 2d e9                                      push {r4, lr}
0069bfd0  00 40 a0 e1                                      mov r4, r0
0069bfd4  b5 c8 f1 eb                                      bl #0x30e2b0
0069bfd8  04 00 a0 e1                                      mov r0, r4
0069bfdc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0069c3d4, declared_size=136, range_size=136, mode=arm
; class-group: glitch::ps::PDLine
; alias: _ZNK6glitch2ps6PDLine4copyEv
; demangled: glitch::ps::PDLine::copy() const
; decoder-mode: arm
0069c3d4  70 40 2d e9                                      push {r4, r5, r6, lr}
0069c3d8  00 10 a0 e3                                      mov r1, #0
0069c3dc  00 40 a0 e1                                      mov r4, r0
0069c3e0  2c 00 a0 e3                                      mov r0, #0x2c
0069c3e4  70 5f fa eb                                      bl #0x5341ac
0069c3e8  64 50 9f e5                                      ldr r5, [pc, #0x64]
0069c3ec  64 20 9f e5                                      ldr r2, [pc, #0x64]
0069c3f0  05 50 8f e0                                      add r5, pc, r5
0069c3f4  02 20 95 e7                                      ldr r2, [r5, r2]
0069c3f8  08 20 82 e2                                      add r2, r2, #8
0069c3fc  00 20 80 e5                                      str r2, [r0]
0069c400  04 20 94 e5                                      ldr r2, [r4, #4]
0069c404  04 20 80 e5                                      str r2, [r0, #4]
0069c408  08 20 94 e5                                      ldr r2, [r4, #8]
0069c40c  08 20 80 e5                                      str r2, [r0, #8]
0069c410  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0069c414  0c 20 80 e5                                      str r2, [r0, #0xc]
0069c418  10 20 94 e5                                      ldr r2, [r4, #0x10]
0069c41c  10 20 80 e5                                      str r2, [r0, #0x10]
0069c420  14 20 94 e5                                      ldr r2, [r4, #0x14]
0069c424  14 20 80 e5                                      str r2, [r0, #0x14]
0069c428  18 20 94 e5                                      ldr r2, [r4, #0x18]
0069c42c  18 20 80 e5                                      str r2, [r0, #0x18]
0069c430  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0069c434  1c 20 80 e5                                      str r2, [r0, #0x1c]
0069c438  20 20 94 e5                                      ldr r2, [r4, #0x20]
0069c43c  20 20 80 e5                                      str r2, [r0, #0x20]
0069c440  24 20 94 e5                                      ldr r2, [r4, #0x24]
0069c444  24 20 80 e5                                      str r2, [r0, #0x24]
0069c448  28 20 94 e5                                      ldr r2, [r4, #0x28]
0069c44c  28 20 80 e5                                      str r2, [r0, #0x28]
0069c450  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0069c454  a0 86 2f 00 80 37 00 00                          .byte 0xa0, 0x86, 0x2f, 0x00, 0x80, 0x37, 0x00, 0x00

; FUNCTION 0x0069e350, declared_size=268, range_size=268, mode=arm
; class-group: glitch::ps::PDLine
; alias: _ZNK6glitch2ps6PDLine6withinERKNS_4core8vector3dIfEE
; demangled: glitch::ps::PDLine::within(glitch::core::vector3d<float> const&) const
; decoder-mode: arm
0069e350  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0069e354  00 40 a0 e1                                      mov r4, r0
0069e358  01 50 a0 e1                                      mov r5, r1
0069e35c  00 00 91 e5                                      ldr r0, [r1]
0069e360  04 10 94 e5                                      ldr r1, [r4, #4]
0069e364  10 c0 f1 eb                                      bl #0x30e3ac
0069e368  08 10 94 e5                                      ldr r1, [r4, #8]
0069e36c  00 70 a0 e1                                      mov r7, r0
0069e370  04 00 95 e5                                      ldr r0, [r5, #4]
0069e374  0c c0 f1 eb                                      bl #0x30e3ac
0069e378  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0069e37c  00 60 a0 e1                                      mov r6, r0
0069e380  08 00 95 e5                                      ldr r0, [r5, #8]
0069e384  08 c0 f1 eb                                      bl #0x30e3ac
0069e388  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0069e38c  00 50 a0 e1                                      mov r5, r0
0069e390  07 00 a0 e1                                      mov r0, r7
0069e394  74 c2 f1 eb                                      bl #0x30ed6c
0069e398  20 10 94 e5                                      ldr r1, [r4, #0x20]
0069e39c  00 80 a0 e1                                      mov r8, r0
0069e3a0  06 00 a0 e1                                      mov r0, r6
0069e3a4  70 c2 f1 eb                                      bl #0x30ed6c
0069e3a8  00 10 a0 e1                                      mov r1, r0
0069e3ac  08 00 a0 e1                                      mov r0, r8
0069e3b0  fb c1 f1 eb                                      bl #0x30eba4
0069e3b4  24 10 94 e5                                      ldr r1, [r4, #0x24]
0069e3b8  00 80 a0 e1                                      mov r8, r0
0069e3bc  05 00 a0 e1                                      mov r0, r5
0069e3c0  69 c2 f1 eb                                      bl #0x30ed6c
0069e3c4  00 10 a0 e1                                      mov r1, r0
0069e3c8  08 00 a0 e1                                      mov r0, r8
0069e3cc  f4 c1 f1 eb                                      bl #0x30eba4
0069e3d0  07 10 a0 e1                                      mov r1, r7
0069e3d4  00 80 a0 e1                                      mov r8, r0
0069e3d8  07 00 a0 e1                                      mov r0, r7
0069e3dc  62 c2 f1 eb                                      bl #0x30ed6c
0069e3e0  06 10 a0 e1                                      mov r1, r6
0069e3e4  00 70 a0 e1                                      mov r7, r0
0069e3e8  06 00 a0 e1                                      mov r0, r6
0069e3ec  5e c2 f1 eb                                      bl #0x30ed6c
0069e3f0  00 10 a0 e1                                      mov r1, r0
0069e3f4  07 00 a0 e1                                      mov r0, r7
0069e3f8  e9 c1 f1 eb                                      bl #0x30eba4
0069e3fc  05 10 a0 e1                                      mov r1, r5
0069e400  00 60 a0 e1                                      mov r6, r0
0069e404  05 00 a0 e1                                      mov r0, r5
0069e408  57 c2 f1 eb                                      bl #0x30ed6c
0069e40c  00 10 a0 e1                                      mov r1, r0
0069e410  06 00 a0 e1                                      mov r0, r6
0069e414  e2 c1 f1 eb                                      bl #0x30eba4
0069e418  21 c1 f1 eb                                      bl #0x30e8a4
0069e41c  67 bf f1 eb                                      bl #0x30e1c0
0069e420  9e c0 f1 eb                                      bl #0x30e6a0
0069e424  00 10 a0 e1                                      mov r1, r0
0069e428  08 00 a0 e1                                      mov r0, r8
0069e42c  de bf f1 eb                                      bl #0x30e3ac
0069e430  28 10 94 e5                                      ldr r1, [r4, #0x28]
0069e434  02 01 c0 e3                                      bic r0, r0, #0x80000000
0069e438  15 c2 f1 eb                                      bl #0x30ec94
0069e43c  95 1f 0b e3                                      movw r1, #0xbf95
0069e440  d6 13 43 e3                                      movt r1, #0x33d6
0069e444  b0 c0 f1 eb                                      bl #0x30e70c
0069e448  00 00 50 e3                                      cmp r0, #0
0069e44c  00 00 a0 e3                                      mov r0, #0
0069e450  01 00 a0 13                                      movne r0, #1
0069e454  01 00 00 e2                                      and r0, r0, #1
0069e458  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0069e45c, declared_size=288, range_size=288, mode=arm
; class-group: glitch::ps::PDLine
; alias: _ZN6glitch2ps6PDLineC1ERKNS_4core8vector3dIfEES6_
; demangled: glitch::ps::PDLine::PDLine(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
0069e45c  10 c1 9f e5                                      ldr ip, [pc, #0x110]
0069e460  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0069e464  0c e1 9f e5                                      ldr lr, [pc, #0x10c]
0069e468  0c c0 8f e0                                      add ip, pc, ip
0069e46c  00 30 a0 e3                                      mov r3, #0
0069e470  0e e0 9c e7                                      ldr lr, [ip, lr]
0069e474  04 30 80 e5                                      str r3, [r0, #4]
0069e478  08 30 80 e5                                      str r3, [r0, #8]
0069e47c  08 e0 8e e2                                      add lr, lr, #8
0069e480  00 e0 80 e5                                      str lr, [r0]
0069e484  0c 30 80 e5                                      str r3, [r0, #0xc]
0069e488  24 30 80 e5                                      str r3, [r0, #0x24]
0069e48c  10 30 80 e5                                      str r3, [r0, #0x10]
0069e490  14 30 80 e5                                      str r3, [r0, #0x14]
0069e494  18 30 80 e5                                      str r3, [r0, #0x18]
0069e498  1c 30 80 e5                                      str r3, [r0, #0x1c]
0069e49c  20 30 80 e5                                      str r3, [r0, #0x20]
0069e4a0  00 30 91 e5                                      ldr r3, [r1]
0069e4a4  00 40 a0 e1                                      mov r4, r0
0069e4a8  01 50 a0 e1                                      mov r5, r1
0069e4ac  04 30 80 e5                                      str r3, [r0, #4]
0069e4b0  04 30 91 e5                                      ldr r3, [r1, #4]
0069e4b4  02 60 a0 e1                                      mov r6, r2
0069e4b8  08 30 80 e5                                      str r3, [r0, #8]
0069e4bc  08 30 91 e5                                      ldr r3, [r1, #8]
0069e4c0  0c 30 80 e5                                      str r3, [r0, #0xc]
0069e4c4  00 00 92 e5                                      ldr r0, [r2]
0069e4c8  00 10 91 e5                                      ldr r1, [r1]
0069e4cc  b6 bf f1 eb                                      bl #0x30e3ac
0069e4d0  04 10 95 e5                                      ldr r1, [r5, #4]
0069e4d4  00 80 a0 e1                                      mov r8, r0
0069e4d8  04 00 96 e5                                      ldr r0, [r6, #4]
0069e4dc  b2 bf f1 eb                                      bl #0x30e3ac
0069e4e0  08 10 95 e5                                      ldr r1, [r5, #8]
0069e4e4  00 70 a0 e1                                      mov r7, r0
0069e4e8  08 00 96 e5                                      ldr r0, [r6, #8]
0069e4ec  ae bf f1 eb                                      bl #0x30e3ac
0069e4f0  20 70 84 e5                                      str r7, [r4, #0x20]
0069e4f4  24 00 84 e5                                      str r0, [r4, #0x24]
0069e4f8  14 70 84 e5                                      str r7, [r4, #0x14]
0069e4fc  18 00 84 e5                                      str r0, [r4, #0x18]
0069e500  1c 80 84 e5                                      str r8, [r4, #0x1c]
0069e504  10 80 84 e5                                      str r8, [r4, #0x10]
0069e508  1c 00 84 e2                                      add r0, r4, #0x1c
0069e50c  f3 00 f3 eb                                      bl #0x35e8e0
0069e510  10 00 94 e5                                      ldr r0, [r4, #0x10]
0069e514  14 70 94 e5                                      ldr r7, [r4, #0x14]
0069e518  18 60 94 e5                                      ldr r6, [r4, #0x18]
0069e51c  00 10 a0 e1                                      mov r1, r0
0069e520  11 c2 f1 eb                                      bl #0x30ed6c
0069e524  07 10 a0 e1                                      mov r1, r7
0069e528  00 50 a0 e1                                      mov r5, r0
0069e52c  07 00 a0 e1                                      mov r0, r7
0069e530  0d c2 f1 eb                                      bl #0x30ed6c
0069e534  00 10 a0 e1                                      mov r1, r0
0069e538  05 00 a0 e1                                      mov r0, r5
0069e53c  98 c1 f1 eb                                      bl #0x30eba4
0069e540  06 10 a0 e1                                      mov r1, r6
0069e544  00 50 a0 e1                                      mov r5, r0
0069e548  06 00 a0 e1                                      mov r0, r6
0069e54c  06 c2 f1 eb                                      bl #0x30ed6c
0069e550  00 10 a0 e1                                      mov r1, r0
0069e554  05 00 a0 e1                                      mov r0, r5
0069e558  91 c1 f1 eb                                      bl #0x30eba4
0069e55c  d0 c0 f1 eb                                      bl #0x30e8a4
0069e560  16 bf f1 eb                                      bl #0x30e1c0
0069e564  4d c0 f1 eb                                      bl #0x30e6a0
0069e568  28 00 84 e5                                      str r0, [r4, #0x28]
0069e56c  04 00 a0 e1                                      mov r0, r4
0069e570  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0069e574  28 66 2f 00 80 37 00 00                          .byte 0x28, 0x66, 0x2f, 0x00, 0x80, 0x37, 0x00, 0x00

; FUNCTION 0x0069e57c, declared_size=288, range_size=288, mode=arm
; class-group: glitch::ps::PDLine
; alias: _ZN6glitch2ps6PDLineC2ERKNS_4core8vector3dIfEES6_
; demangled: glitch::ps::PDLine::PDLine(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
0069e57c  10 c1 9f e5                                      ldr ip, [pc, #0x110]
0069e580  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0069e584  0c e1 9f e5                                      ldr lr, [pc, #0x10c]
0069e588  0c c0 8f e0                                      add ip, pc, ip
0069e58c  00 30 a0 e3                                      mov r3, #0
0069e590  0e e0 9c e7                                      ldr lr, [ip, lr]
0069e594  04 30 80 e5                                      str r3, [r0, #4]
0069e598  08 30 80 e5                                      str r3, [r0, #8]
0069e59c  08 e0 8e e2                                      add lr, lr, #8
0069e5a0  00 e0 80 e5                                      str lr, [r0]
0069e5a4  0c 30 80 e5                                      str r3, [r0, #0xc]
0069e5a8  24 30 80 e5                                      str r3, [r0, #0x24]
0069e5ac  10 30 80 e5                                      str r3, [r0, #0x10]
0069e5b0  14 30 80 e5                                      str r3, [r0, #0x14]
0069e5b4  18 30 80 e5                                      str r3, [r0, #0x18]
0069e5b8  1c 30 80 e5                                      str r3, [r0, #0x1c]
0069e5bc  20 30 80 e5                                      str r3, [r0, #0x20]
0069e5c0  00 30 91 e5                                      ldr r3, [r1]
0069e5c4  00 40 a0 e1                                      mov r4, r0
0069e5c8  01 50 a0 e1                                      mov r5, r1
0069e5cc  04 30 80 e5                                      str r3, [r0, #4]
0069e5d0  04 30 91 e5                                      ldr r3, [r1, #4]
0069e5d4  02 60 a0 e1                                      mov r6, r2
0069e5d8  08 30 80 e5                                      str r3, [r0, #8]
0069e5dc  08 30 91 e5                                      ldr r3, [r1, #8]
0069e5e0  0c 30 80 e5                                      str r3, [r0, #0xc]
0069e5e4  00 00 92 e5                                      ldr r0, [r2]
0069e5e8  00 10 91 e5                                      ldr r1, [r1]
0069e5ec  6e bf f1 eb                                      bl #0x30e3ac
0069e5f0  04 10 95 e5                                      ldr r1, [r5, #4]
0069e5f4  00 80 a0 e1                                      mov r8, r0
0069e5f8  04 00 96 e5                                      ldr r0, [r6, #4]
0069e5fc  6a bf f1 eb                                      bl #0x30e3ac
0069e600  08 10 95 e5                                      ldr r1, [r5, #8]
0069e604  00 70 a0 e1                                      mov r7, r0
0069e608  08 00 96 e5                                      ldr r0, [r6, #8]
0069e60c  66 bf f1 eb                                      bl #0x30e3ac
0069e610  20 70 84 e5                                      str r7, [r4, #0x20]
0069e614  24 00 84 e5                                      str r0, [r4, #0x24]
0069e618  14 70 84 e5                                      str r7, [r4, #0x14]
0069e61c  18 00 84 e5                                      str r0, [r4, #0x18]
0069e620  1c 80 84 e5                                      str r8, [r4, #0x1c]
0069e624  10 80 84 e5                                      str r8, [r4, #0x10]
0069e628  1c 00 84 e2                                      add r0, r4, #0x1c
0069e62c  ab 00 f3 eb                                      bl #0x35e8e0
0069e630  10 00 94 e5                                      ldr r0, [r4, #0x10]
0069e634  14 70 94 e5                                      ldr r7, [r4, #0x14]
0069e638  18 60 94 e5                                      ldr r6, [r4, #0x18]
0069e63c  00 10 a0 e1                                      mov r1, r0
0069e640  c9 c1 f1 eb                                      bl #0x30ed6c
0069e644  07 10 a0 e1                                      mov r1, r7
0069e648  00 50 a0 e1                                      mov r5, r0
0069e64c  07 00 a0 e1                                      mov r0, r7
0069e650  c5 c1 f1 eb                                      bl #0x30ed6c
0069e654  00 10 a0 e1                                      mov r1, r0
0069e658  05 00 a0 e1                                      mov r0, r5
0069e65c  50 c1 f1 eb                                      bl #0x30eba4
0069e660  06 10 a0 e1                                      mov r1, r6
0069e664  00 50 a0 e1                                      mov r5, r0
0069e668  06 00 a0 e1                                      mov r0, r6
0069e66c  be c1 f1 eb                                      bl #0x30ed6c
0069e670  00 10 a0 e1                                      mov r1, r0
0069e674  05 00 a0 e1                                      mov r0, r5
0069e678  49 c1 f1 eb                                      bl #0x30eba4
0069e67c  88 c0 f1 eb                                      bl #0x30e8a4
0069e680  ce be f1 eb                                      bl #0x30e1c0
0069e684  05 c0 f1 eb                                      bl #0x30e6a0
0069e688  28 00 84 e5                                      str r0, [r4, #0x28]
0069e68c  04 00 a0 e1                                      mov r0, r4
0069e690  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0069e694  08 65 2f 00 80 37 00 00                          .byte 0x08, 0x65, 0x2f, 0x00, 0x80, 0x37, 0x00, 0x00

; FUNCTION 0x0069ec90, declared_size=796, range_size=796, mode=arm
; class-group: glitch::ps::PDLine
; alias: _ZN6glitch2ps6PDLine9transformERKNS_4core8CMatrix4IfEE
; demangled: glitch::ps::PDLine::transform(glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0069ec90  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0069ec94  04 80 90 e5                                      ldr r8, [r0, #4]
0069ec98  01 40 a0 e1                                      mov r4, r1
0069ec9c  00 50 a0 e1                                      mov r5, r0
0069eca0  08 70 90 e5                                      ldr r7, [r0, #8]
0069eca4  04 10 91 e5                                      ldr r1, [r1, #4]
0069eca8  08 00 a0 e1                                      mov r0, r8
0069ecac  2e c0 f1 eb                                      bl #0x30ed6c
0069ecb0  14 10 94 e5                                      ldr r1, [r4, #0x14]
0069ecb4  00 a0 a0 e1                                      mov sl, r0
0069ecb8  07 00 a0 e1                                      mov r0, r7
0069ecbc  2a c0 f1 eb                                      bl #0x30ed6c
0069ecc0  00 10 a0 e1                                      mov r1, r0
0069ecc4  0a 00 a0 e1                                      mov r0, sl
0069ecc8  b5 bf f1 eb                                      bl #0x30eba4
0069eccc  0c 60 95 e5                                      ldr r6, [r5, #0xc]
0069ecd0  00 a0 a0 e1                                      mov sl, r0
0069ecd4  24 10 94 e5                                      ldr r1, [r4, #0x24]
0069ecd8  06 00 a0 e1                                      mov r0, r6
0069ecdc  22 c0 f1 eb                                      bl #0x30ed6c
0069ece0  00 10 a0 e1                                      mov r1, r0
0069ece4  0a 00 a0 e1                                      mov r0, sl
0069ece8  ad bf f1 eb                                      bl #0x30eba4
0069ecec  34 10 94 e5                                      ldr r1, [r4, #0x34]
0069ecf0  ab bf f1 eb                                      bl #0x30eba4
0069ecf4  08 10 94 e5                                      ldr r1, [r4, #8]
0069ecf8  00 90 a0 e1                                      mov sb, r0
0069ecfc  08 00 a0 e1                                      mov r0, r8
0069ed00  19 c0 f1 eb                                      bl #0x30ed6c
0069ed04  18 10 94 e5                                      ldr r1, [r4, #0x18]
0069ed08  00 a0 a0 e1                                      mov sl, r0
0069ed0c  07 00 a0 e1                                      mov r0, r7
0069ed10  15 c0 f1 eb                                      bl #0x30ed6c
0069ed14  00 10 a0 e1                                      mov r1, r0
0069ed18  0a 00 a0 e1                                      mov r0, sl
0069ed1c  a0 bf f1 eb                                      bl #0x30eba4
0069ed20  28 10 94 e5                                      ldr r1, [r4, #0x28]
0069ed24  00 a0 a0 e1                                      mov sl, r0
0069ed28  06 00 a0 e1                                      mov r0, r6
0069ed2c  0e c0 f1 eb                                      bl #0x30ed6c
0069ed30  00 10 a0 e1                                      mov r1, r0
0069ed34  0a 00 a0 e1                                      mov r0, sl
0069ed38  99 bf f1 eb                                      bl #0x30eba4
0069ed3c  38 10 94 e5                                      ldr r1, [r4, #0x38]
0069ed40  97 bf f1 eb                                      bl #0x30eba4
0069ed44  00 10 94 e5                                      ldr r1, [r4]
0069ed48  00 a0 a0 e1                                      mov sl, r0
0069ed4c  08 00 a0 e1                                      mov r0, r8
0069ed50  05 c0 f1 eb                                      bl #0x30ed6c
0069ed54  10 10 94 e5                                      ldr r1, [r4, #0x10]
0069ed58  00 80 a0 e1                                      mov r8, r0
0069ed5c  07 00 a0 e1                                      mov r0, r7
0069ed60  01 c0 f1 eb                                      bl #0x30ed6c
0069ed64  00 10 a0 e1                                      mov r1, r0
0069ed68  08 00 a0 e1                                      mov r0, r8
0069ed6c  8c bf f1 eb                                      bl #0x30eba4
0069ed70  20 10 94 e5                                      ldr r1, [r4, #0x20]
0069ed74  00 70 a0 e1                                      mov r7, r0
0069ed78  06 00 a0 e1                                      mov r0, r6
0069ed7c  fa bf f1 eb                                      bl #0x30ed6c
0069ed80  00 10 a0 e1                                      mov r1, r0
0069ed84  07 00 a0 e1                                      mov r0, r7
0069ed88  85 bf f1 eb                                      bl #0x30eba4
0069ed8c  30 10 94 e5                                      ldr r1, [r4, #0x30]
0069ed90  83 bf f1 eb                                      bl #0x30eba4
0069ed94  04 00 85 e5                                      str r0, [r5, #4]
0069ed98  10 80 95 e5                                      ldr r8, [r5, #0x10]
0069ed9c  08 90 85 e5                                      str sb, [r5, #8]
0069eda0  0c a0 85 e5                                      str sl, [r5, #0xc]
0069eda4  04 10 94 e5                                      ldr r1, [r4, #4]
0069eda8  08 00 a0 e1                                      mov r0, r8
0069edac  ee bf f1 eb                                      bl #0x30ed6c
0069edb0  14 70 95 e5                                      ldr r7, [r5, #0x14]
0069edb4  00 a0 a0 e1                                      mov sl, r0
0069edb8  14 10 94 e5                                      ldr r1, [r4, #0x14]
0069edbc  07 00 a0 e1                                      mov r0, r7
0069edc0  e9 bf f1 eb                                      bl #0x30ed6c
0069edc4  00 10 a0 e1                                      mov r1, r0
0069edc8  0a 00 a0 e1                                      mov r0, sl
0069edcc  74 bf f1 eb                                      bl #0x30eba4
0069edd0  18 60 95 e5                                      ldr r6, [r5, #0x18]
0069edd4  00 a0 a0 e1                                      mov sl, r0
0069edd8  24 10 94 e5                                      ldr r1, [r4, #0x24]
0069eddc  06 00 a0 e1                                      mov r0, r6
0069ede0  e1 bf f1 eb                                      bl #0x30ed6c
0069ede4  00 10 a0 e1                                      mov r1, r0
0069ede8  0a 00 a0 e1                                      mov r0, sl
0069edec  6c bf f1 eb                                      bl #0x30eba4
0069edf0  34 10 94 e5                                      ldr r1, [r4, #0x34]
0069edf4  6a bf f1 eb                                      bl #0x30eba4
0069edf8  08 10 94 e5                                      ldr r1, [r4, #8]
0069edfc  00 90 a0 e1                                      mov sb, r0
0069ee00  08 00 a0 e1                                      mov r0, r8
0069ee04  d8 bf f1 eb                                      bl #0x30ed6c
0069ee08  18 10 94 e5                                      ldr r1, [r4, #0x18]
0069ee0c  00 a0 a0 e1                                      mov sl, r0
0069ee10  07 00 a0 e1                                      mov r0, r7
0069ee14  d4 bf f1 eb                                      bl #0x30ed6c
0069ee18  00 10 a0 e1                                      mov r1, r0
0069ee1c  0a 00 a0 e1                                      mov r0, sl
0069ee20  5f bf f1 eb                                      bl #0x30eba4
0069ee24  28 10 94 e5                                      ldr r1, [r4, #0x28]
0069ee28  00 a0 a0 e1                                      mov sl, r0
0069ee2c  06 00 a0 e1                                      mov r0, r6
0069ee30  cd bf f1 eb                                      bl #0x30ed6c
0069ee34  00 10 a0 e1                                      mov r1, r0
0069ee38  0a 00 a0 e1                                      mov r0, sl
0069ee3c  58 bf f1 eb                                      bl #0x30eba4
0069ee40  38 10 94 e5                                      ldr r1, [r4, #0x38]
0069ee44  56 bf f1 eb                                      bl #0x30eba4
0069ee48  00 10 94 e5                                      ldr r1, [r4]
0069ee4c  00 a0 a0 e1                                      mov sl, r0
0069ee50  08 00 a0 e1                                      mov r0, r8
0069ee54  c4 bf f1 eb                                      bl #0x30ed6c
0069ee58  10 10 94 e5                                      ldr r1, [r4, #0x10]
0069ee5c  00 80 a0 e1                                      mov r8, r0
0069ee60  07 00 a0 e1                                      mov r0, r7
0069ee64  c0 bf f1 eb                                      bl #0x30ed6c
0069ee68  00 10 a0 e1                                      mov r1, r0
0069ee6c  08 00 a0 e1                                      mov r0, r8
0069ee70  4b bf f1 eb                                      bl #0x30eba4
0069ee74  20 10 94 e5                                      ldr r1, [r4, #0x20]
0069ee78  00 70 a0 e1                                      mov r7, r0
0069ee7c  06 00 a0 e1                                      mov r0, r6
0069ee80  b9 bf f1 eb                                      bl #0x30ed6c
0069ee84  00 10 a0 e1                                      mov r1, r0
0069ee88  07 00 a0 e1                                      mov r0, r7
0069ee8c  44 bf f1 eb                                      bl #0x30eba4
0069ee90  30 10 94 e5                                      ldr r1, [r4, #0x30]
0069ee94  42 bf f1 eb                                      bl #0x30eba4
0069ee98  10 00 85 e5                                      str r0, [r5, #0x10]
0069ee9c  1c 80 95 e5                                      ldr r8, [r5, #0x1c]
0069eea0  14 90 85 e5                                      str sb, [r5, #0x14]
0069eea4  18 a0 85 e5                                      str sl, [r5, #0x18]
0069eea8  04 10 94 e5                                      ldr r1, [r4, #4]
0069eeac  08 00 a0 e1                                      mov r0, r8
0069eeb0  ad bf f1 eb                                      bl #0x30ed6c
0069eeb4  20 70 95 e5                                      ldr r7, [r5, #0x20]
0069eeb8  00 a0 a0 e1                                      mov sl, r0
0069eebc  14 10 94 e5                                      ldr r1, [r4, #0x14]
0069eec0  07 00 a0 e1                                      mov r0, r7
0069eec4  a8 bf f1 eb                                      bl #0x30ed6c
0069eec8  00 10 a0 e1                                      mov r1, r0
0069eecc  0a 00 a0 e1                                      mov r0, sl
0069eed0  33 bf f1 eb                                      bl #0x30eba4
0069eed4  24 60 95 e5                                      ldr r6, [r5, #0x24]
0069eed8  00 a0 a0 e1                                      mov sl, r0
0069eedc  24 10 94 e5                                      ldr r1, [r4, #0x24]
0069eee0  06 00 a0 e1                                      mov r0, r6
0069eee4  a0 bf f1 eb                                      bl #0x30ed6c
0069eee8  00 10 a0 e1                                      mov r1, r0
0069eeec  0a 00 a0 e1                                      mov r0, sl
0069eef0  2b bf f1 eb                                      bl #0x30eba4
0069eef4  34 10 94 e5                                      ldr r1, [r4, #0x34]
0069eef8  29 bf f1 eb                                      bl #0x30eba4
0069eefc  08 10 94 e5                                      ldr r1, [r4, #8]
0069ef00  00 a0 a0 e1                                      mov sl, r0
0069ef04  08 00 a0 e1                                      mov r0, r8
0069ef08  97 bf f1 eb                                      bl #0x30ed6c
0069ef0c  18 10 94 e5                                      ldr r1, [r4, #0x18]
0069ef10  00 90 a0 e1                                      mov sb, r0
0069ef14  07 00 a0 e1                                      mov r0, r7
0069ef18  93 bf f1 eb                                      bl #0x30ed6c
0069ef1c  00 10 a0 e1                                      mov r1, r0
0069ef20  09 00 a0 e1                                      mov r0, sb
0069ef24  1e bf f1 eb                                      bl #0x30eba4
0069ef28  28 10 94 e5                                      ldr r1, [r4, #0x28]
0069ef2c  00 90 a0 e1                                      mov sb, r0
0069ef30  06 00 a0 e1                                      mov r0, r6
0069ef34  8c bf f1 eb                                      bl #0x30ed6c
0069ef38  00 10 a0 e1                                      mov r1, r0
0069ef3c  09 00 a0 e1                                      mov r0, sb
0069ef40  17 bf f1 eb                                      bl #0x30eba4
0069ef44  38 10 94 e5                                      ldr r1, [r4, #0x38]
0069ef48  15 bf f1 eb                                      bl #0x30eba4
0069ef4c  00 10 94 e5                                      ldr r1, [r4]
0069ef50  00 90 a0 e1                                      mov sb, r0
0069ef54  08 00 a0 e1                                      mov r0, r8
0069ef58  83 bf f1 eb                                      bl #0x30ed6c
0069ef5c  10 10 94 e5                                      ldr r1, [r4, #0x10]
0069ef60  00 80 a0 e1                                      mov r8, r0
0069ef64  07 00 a0 e1                                      mov r0, r7
0069ef68  7f bf f1 eb                                      bl #0x30ed6c
0069ef6c  00 10 a0 e1                                      mov r1, r0
0069ef70  08 00 a0 e1                                      mov r0, r8
0069ef74  0a bf f1 eb                                      bl #0x30eba4
0069ef78  20 10 94 e5                                      ldr r1, [r4, #0x20]
0069ef7c  00 70 a0 e1                                      mov r7, r0
0069ef80  06 00 a0 e1                                      mov r0, r6
0069ef84  78 bf f1 eb                                      bl #0x30ed6c
0069ef88  00 10 a0 e1                                      mov r1, r0
0069ef8c  07 00 a0 e1                                      mov r0, r7
0069ef90  03 bf f1 eb                                      bl #0x30eba4
0069ef94  30 10 94 e5                                      ldr r1, [r4, #0x30]
0069ef98  01 bf f1 eb                                      bl #0x30eba4
0069ef9c  1c 00 85 e5                                      str r0, [r5, #0x1c]
0069efa0  24 90 85 e5                                      str sb, [r5, #0x24]
0069efa4  20 a0 85 e5                                      str sl, [r5, #0x20]
0069efa8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
