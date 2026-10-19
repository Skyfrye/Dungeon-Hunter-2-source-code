; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fd1ec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZN6glitch5scene21CParticleSizeAffector13setTargetSizeEf
; demangled: glitch::scene::CParticleSizeAffector::setTargetSize(float)
; decoder-mode: arm
006fd1ec  08 10 80 e5                                      str r1, [r0, #8]
006fd1f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd1f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZN6glitch5scene21CParticleSizeAffector12setVariationEf
; demangled: glitch::scene::CParticleSizeAffector::setVariation(float)
; decoder-mode: arm
006fd1f4  0c 10 80 e5                                      str r1, [r0, #0xc]
006fd1f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd1fc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZN6glitch5scene21CParticleSizeAffector14setGrowForTimeEf
; demangled: glitch::scene::CParticleSizeAffector::setGrowForTime(float)
; decoder-mode: arm
006fd1fc  10 10 80 e5                                      str r1, [r0, #0x10]
006fd200  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd204, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZN6glitch5scene21CParticleSizeAffector14setFadeForTimeEf
; demangled: glitch::scene::CParticleSizeAffector::setFadeForTime(float)
; decoder-mode: arm
006fd204  14 10 80 e5                                      str r1, [r0, #0x14]
006fd208  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd20c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZNK6glitch5scene21CParticleSizeAffector13getTargetSizeEv
; demangled: glitch::scene::CParticleSizeAffector::getTargetSize() const
; decoder-mode: arm
006fd20c  08 00 90 e5                                      ldr r0, [r0, #8]
006fd210  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd214, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZNK6glitch5scene21CParticleSizeAffector12getVariationEv
; demangled: glitch::scene::CParticleSizeAffector::getVariation() const
; decoder-mode: arm
006fd214  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006fd218  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd21c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZNK6glitch5scene21CParticleSizeAffector14getGrowForTimeEv
; demangled: glitch::scene::CParticleSizeAffector::getGrowForTime() const
; decoder-mode: arm
006fd21c  10 00 90 e5                                      ldr r0, [r0, #0x10]
006fd220  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd224, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZNK6glitch5scene21CParticleSizeAffector14getFadeForTimeEv
; demangled: glitch::scene::CParticleSizeAffector::getFadeForTime() const
; decoder-mode: arm
006fd224  14 00 90 e5                                      ldr r0, [r0, #0x14]
006fd228  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd250, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZN6glitch5scene21CParticleSizeAffectorC2Effjj
; demangled: glitch::scene::CParticleSizeAffector::CParticleSizeAffector(float, float, unsigned int, unsigned int)
; decoder-mode: arm
006fd250  70 40 2d e9                                      push {r4, r5, r6, lr}
006fd254  00 40 a0 e1                                      mov r4, r0
006fd258  00 00 a0 e3                                      mov r0, #0
006fd25c  00 00 84 e5                                      str r0, [r4]
006fd260  04 00 84 e5                                      str r0, [r4, #4]
006fd264  0c 00 84 e5                                      str r0, [r4, #0xc]
006fd268  08 00 84 e5                                      str r0, [r4, #8]
006fd26c  04 00 81 e2                                      add r0, r1, #4
006fd270  04 e0 90 e5                                      ldr lr, [r0, #4]
006fd274  04 c0 80 e2                                      add ip, r0, #4
006fd278  00 e0 84 e5                                      str lr, [r4]
006fd27c  04 50 9c e5                                      ldr r5, [ip, #4]
006fd280  1c e0 1e e5                                      ldr lr, [lr, #-0x1c]
006fd284  0e 50 84 e7                                      str r5, [r4, lr]
006fd288  00 50 94 e5                                      ldr r5, [r4]
006fd28c  08 e0 9c e5                                      ldr lr, [ip, #8]
006fd290  0c c0 15 e5                                      ldr ip, [r5, #-0xc]
006fd294  0c e0 84 e7                                      str lr, [r4, ip]
006fd298  01 c0 a0 e3                                      mov ip, #1
006fd29c  04 c0 c4 e5                                      strb ip, [r4, #4]
006fd2a0  04 c0 91 e5                                      ldr ip, [r1, #4]
006fd2a4  00 c0 84 e5                                      str ip, [r4]
006fd2a8  10 e0 90 e5                                      ldr lr, [r0, #0x10]
006fd2ac  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
006fd2b0  0c e0 84 e7                                      str lr, [r4, ip]
006fd2b4  00 e0 94 e5                                      ldr lr, [r4]
006fd2b8  14 c0 90 e5                                      ldr ip, [r0, #0x14]
006fd2bc  0c 00 1e e5                                      ldr r0, [lr, #-0xc]
006fd2c0  00 c0 84 e7                                      str ip, [r4, r0]
006fd2c4  00 00 91 e5                                      ldr r0, [r1]
006fd2c8  00 00 84 e5                                      str r0, [r4]
006fd2cc  1c c0 91 e5                                      ldr ip, [r1, #0x1c]
006fd2d0  1c 00 10 e5                                      ldr r0, [r0, #-0x1c]
006fd2d4  00 c0 84 e7                                      str ip, [r4, r0]
006fd2d8  00 c0 94 e5                                      ldr ip, [r4]
006fd2dc  20 00 91 e5                                      ldr r0, [r1, #0x20]
006fd2e0  0c 10 1c e5                                      ldr r1, [ip, #-0xc]
006fd2e4  01 00 84 e7                                      str r0, [r4, r1]
006fd2e8  08 20 84 e5                                      str r2, [r4, #8]
006fd2ec  0c 30 84 e5                                      str r3, [r4, #0xc]
006fd2f0  10 00 9d e5                                      ldr r0, [sp, #0x10]
006fd2f4  f9 43 f0 eb                                      bl #0x30e2e0
006fd2f8  10 00 84 e5                                      str r0, [r4, #0x10]
006fd2fc  14 00 9d e5                                      ldr r0, [sp, #0x14]
006fd300  f6 43 f0 eb                                      bl #0x30e2e0
006fd304  14 00 84 e5                                      str r0, [r4, #0x14]
006fd308  04 00 a0 e1                                      mov r0, r4
006fd30c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006fd310, declared_size=240, range_size=240, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZN6glitch5scene21CParticleSizeAffectorC1Effjj
; demangled: glitch::scene::CParticleSizeAffector::CParticleSizeAffector(float, float, unsigned int, unsigned int)
; decoder-mode: arm
006fd310  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006fd314  d4 e0 9f e5                                      ldr lr, [pc, #0xd4]
006fd318  d4 c0 9f e5                                      ldr ip, [pc, #0xd4]
006fd31c  d4 50 9f e5                                      ldr r5, [pc, #0xd4]
006fd320  0e e0 8f e0                                      add lr, pc, lr
006fd324  0c c0 9e e7                                      ldr ip, [lr, ip]
006fd328  05 50 9e e7                                      ldr r5, [lr, r5]
006fd32c  00 40 a0 e1                                      mov r4, r0
006fd330  24 00 9c e5                                      ldr r0, [ip, #0x24]
006fd334  01 60 a0 e3                                      mov r6, #1
006fd338  08 50 85 e2                                      add r5, r5, #8
006fd33c  00 00 84 e5                                      str r0, [r4]
006fd340  18 50 84 e5                                      str r5, [r4, #0x18]
006fd344  1c 60 84 e5                                      str r6, [r4, #0x1c]
006fd348  0c 70 10 e5                                      ldr r7, [r0, #-0xc]
006fd34c  08 50 9c e5                                      ldr r5, [ip, #8]
006fd350  28 80 9c e5                                      ldr r8, [ip, #0x28]
006fd354  00 00 a0 e3                                      mov r0, #0
006fd358  0c a0 9c e5                                      ldr sl, [ip, #0xc]
006fd35c  07 80 84 e7                                      str r8, [r4, r7]
006fd360  00 50 84 e5                                      str r5, [r4]
006fd364  04 00 84 e5                                      str r0, [r4, #4]
006fd368  0c 00 84 e5                                      str r0, [r4, #0xc]
006fd36c  08 00 84 e5                                      str r0, [r4, #8]
006fd370  1c 00 15 e5                                      ldr r0, [r5, #-0x1c]
006fd374  10 80 9c e5                                      ldr r8, [ip, #0x10]
006fd378  04 50 9c e5                                      ldr r5, [ip, #4]
006fd37c  00 a0 84 e7                                      str sl, [r4, r0]
006fd380  00 70 94 e5                                      ldr r7, [r4]
006fd384  14 a0 9c e5                                      ldr sl, [ip, #0x14]
006fd388  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
006fd38c  0c 70 17 e5                                      ldr r7, [r7, #-0xc]
006fd390  18 c0 9c e5                                      ldr ip, [ip, #0x18]
006fd394  00 00 9e e7                                      ldr r0, [lr, r0]
006fd398  07 80 84 e7                                      str r8, [r4, r7]
006fd39c  00 50 84 e5                                      str r5, [r4]
006fd3a0  04 60 c4 e5                                      strb r6, [r4, #4]
006fd3a4  1c 70 15 e5                                      ldr r7, [r5, #-0x1c]
006fd3a8  1c 60 80 e2                                      add r6, r0, #0x1c
006fd3ac  70 50 80 e2                                      add r5, r0, #0x70
006fd3b0  07 a0 84 e7                                      str sl, [r4, r7]
006fd3b4  00 70 94 e5                                      ldr r7, [r4]
006fd3b8  03 00 a0 e1                                      mov r0, r3
006fd3bc  0c 30 17 e5                                      ldr r3, [r7, #-0xc]
006fd3c0  03 c0 84 e7                                      str ip, [r4, r3]
006fd3c4  00 60 84 e5                                      str r6, [r4]
006fd3c8  08 10 84 e5                                      str r1, [r4, #8]
006fd3cc  0c 20 84 e5                                      str r2, [r4, #0xc]
006fd3d0  18 50 84 e5                                      str r5, [r4, #0x18]
006fd3d4  c1 43 f0 eb                                      bl #0x30e2e0
006fd3d8  10 00 84 e5                                      str r0, [r4, #0x10]
006fd3dc  20 00 9d e5                                      ldr r0, [sp, #0x20]
006fd3e0  be 43 f0 eb                                      bl #0x30e2e0
006fd3e4  14 00 84 e5                                      str r0, [r4, #0x14]
006fd3e8  04 00 a0 e1                                      mov r0, r4
006fd3ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006fd3f0  70 77 29 00 98 3f 00 00 44 2b 00 00 58 0c 00 00  .byte 0x70, 0x77, 0x29, 0x00, 0x98, 0x3f, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x58, 0x0c, 0x00, 0x00

; FUNCTION 0x006fd400, declared_size=160, range_size=160, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZNK6glitch5scene21CParticleSizeAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CParticleSizeAffector::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006fd400  70 40 2d e9                                      push {r4, r5, r6, lr}
006fd404  01 40 a0 e1                                      mov r4, r1
006fd408  80 10 9f e5                                      ldr r1, [pc, #0x80]
006fd40c  00 50 a0 e1                                      mov r5, r0
006fd410  08 20 95 e5                                      ldr r2, [r5, #8]
006fd414  04 00 a0 e1                                      mov r0, r4
006fd418  00 c0 94 e5                                      ldr ip, [r4]
006fd41c  01 10 8f e0                                      add r1, pc, r1
006fd420  00 30 a0 e3                                      mov r3, #0
006fd424  0f e0 a0 e1                                      mov lr, pc
006fd428  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006fd42c  60 10 9f e5                                      ldr r1, [pc, #0x60]
006fd430  04 00 a0 e1                                      mov r0, r4
006fd434  0c 20 95 e5                                      ldr r2, [r5, #0xc]
006fd438  00 c0 94 e5                                      ldr ip, [r4]
006fd43c  01 10 8f e0                                      add r1, pc, r1
006fd440  00 30 a0 e3                                      mov r3, #0
006fd444  0f e0 a0 e1                                      mov lr, pc
006fd448  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006fd44c  44 10 9f e5                                      ldr r1, [pc, #0x44]
006fd450  04 00 a0 e1                                      mov r0, r4
006fd454  10 20 95 e5                                      ldr r2, [r5, #0x10]
006fd458  00 c0 94 e5                                      ldr ip, [r4]
006fd45c  01 10 8f e0                                      add r1, pc, r1
006fd460  00 30 a0 e3                                      mov r3, #0
006fd464  0f e0 a0 e1                                      mov lr, pc
006fd468  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006fd46c  28 10 9f e5                                      ldr r1, [pc, #0x28]
006fd470  04 00 a0 e1                                      mov r0, r4
006fd474  14 20 95 e5                                      ldr r2, [r5, #0x14]
006fd478  01 10 8f e0                                      add r1, pc, r1
006fd47c  00 c0 94 e5                                      ldr ip, [r4]
006fd480  00 30 a0 e3                                      mov r3, #0
006fd484  0f e0 a0 e1                                      mov lr, pc
006fd488  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006fd48c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006fd490  dc 7f 1e 00 e4 7e 1e 00 44 49 1f 00 38 49 1f 00  .byte 0xdc, 0x7f, 0x1e, 0x00, 0xe4, 0x7e, 0x1e, 0x00, 0x44, 0x49, 0x1f, 0x00, 0x38, 0x49, 0x1f, 0x00

; FUNCTION 0x006fd4a0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZN6glitch5scene21CParticleSizeAffectorD1Ev
; demangled: glitch::scene::CParticleSizeAffector::~CParticleSizeAffector()
; decoder-mode: arm
006fd4a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd4a4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZTv0_n24_N6glitch5scene21CParticleSizeAffectorD1Ev
; demangled: virtual thunk to glitch::scene::CParticleSizeAffector::~CParticleSizeAffector()
; decoder-mode: arm
006fd4a4  00 30 90 e5                                      ldr r3, [r0]
006fd4a8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fd4ac  03 00 80 e0                                      add r0, r0, r3
006fd4b0  fa ff ff ea                                      b #0x6fd4a0

; FUNCTION 0x006fd4b4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZTv0_n12_N6glitch5scene21CParticleSizeAffectorD1Ev
; demangled: virtual thunk to glitch::scene::CParticleSizeAffector::~CParticleSizeAffector()
; decoder-mode: arm
006fd4b4  00 30 90 e5                                      ldr r3, [r0]
006fd4b8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fd4bc  03 00 80 e0                                      add r0, r0, r3
006fd4c0  f6 ff ff ea                                      b #0x6fd4a0

; FUNCTION 0x006fd4e4, declared_size=344, range_size=344, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZN6glitch5scene21CParticleSizeAffector21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CParticleSizeAffector::deserializeAttributes(int, glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006fd4e4  70 40 2d e9                                      push {r4, r5, r6, lr}
006fd4e8  00 30 92 e5                                      ldr r3, [r2]
006fd4ec  00 60 a0 e1                                      mov r6, r0
006fd4f0  02 00 a0 e1                                      mov r0, r2
006fd4f4  02 40 a0 e1                                      mov r4, r2
006fd4f8  01 50 a0 e1                                      mov r5, r1
006fd4fc  0f e0 a0 e1                                      mov lr, pc
006fd500  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006fd504  00 00 50 e3                                      cmp r0, #0
006fd508  04 00 00 0a                                      beq #0x6fd520
006fd50c  18 11 9f e5                                      ldr r1, [pc, #0x118]
006fd510  01 10 8f e0                                      add r1, pc, r1
006fd514  80 43 f0 eb                                      bl #0x30e31c
006fd518  00 00 50 e3                                      cmp r0, #0
006fd51c  01 00 00 0a                                      beq #0x6fd528
006fd520  05 00 a0 e1                                      mov r0, r5
006fd524  70 80 bd e8                                      pop {r4, r5, r6, pc}
006fd528  05 10 a0 e1                                      mov r1, r5
006fd52c  00 30 94 e5                                      ldr r3, [r4]
006fd530  04 00 a0 e1                                      mov r0, r4
006fd534  0f e0 a0 e1                                      mov lr, pc
006fd538  74 f0 93 e5                                      ldr pc, [r3, #0x74]
006fd53c  01 50 85 e2                                      add r5, r5, #1
006fd540  08 00 86 e5                                      str r0, [r6, #8]
006fd544  00 30 94 e5                                      ldr r3, [r4]
006fd548  04 00 a0 e1                                      mov r0, r4
006fd54c  05 10 a0 e1                                      mov r1, r5
006fd550  0f e0 a0 e1                                      mov lr, pc
006fd554  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006fd558  00 00 50 e3                                      cmp r0, #0
006fd55c  ef ff ff 0a                                      beq #0x6fd520
006fd560  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
006fd564  01 10 8f e0                                      add r1, pc, r1
006fd568  6b 43 f0 eb                                      bl #0x30e31c
006fd56c  00 00 50 e3                                      cmp r0, #0
006fd570  ea ff ff 1a                                      bne #0x6fd520
006fd574  05 10 a0 e1                                      mov r1, r5
006fd578  00 30 94 e5                                      ldr r3, [r4]
006fd57c  04 00 a0 e1                                      mov r0, r4
006fd580  0f e0 a0 e1                                      mov lr, pc
006fd584  74 f0 93 e5                                      ldr pc, [r3, #0x74]
006fd588  01 50 85 e2                                      add r5, r5, #1
006fd58c  0c 00 86 e5                                      str r0, [r6, #0xc]
006fd590  00 30 94 e5                                      ldr r3, [r4]
006fd594  04 00 a0 e1                                      mov r0, r4
006fd598  05 10 a0 e1                                      mov r1, r5
006fd59c  0f e0 a0 e1                                      mov lr, pc
006fd5a0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006fd5a4  00 00 50 e3                                      cmp r0, #0
006fd5a8  dc ff ff 0a                                      beq #0x6fd520
006fd5ac  80 10 9f e5                                      ldr r1, [pc, #0x80]
006fd5b0  01 10 8f e0                                      add r1, pc, r1
006fd5b4  58 43 f0 eb                                      bl #0x30e31c
006fd5b8  00 00 50 e3                                      cmp r0, #0
006fd5bc  d7 ff ff 1a                                      bne #0x6fd520
006fd5c0  05 10 a0 e1                                      mov r1, r5
006fd5c4  00 30 94 e5                                      ldr r3, [r4]
006fd5c8  04 00 a0 e1                                      mov r0, r4
006fd5cc  0f e0 a0 e1                                      mov lr, pc
006fd5d0  74 f0 93 e5                                      ldr pc, [r3, #0x74]
006fd5d4  01 50 85 e2                                      add r5, r5, #1
006fd5d8  10 00 86 e5                                      str r0, [r6, #0x10]
006fd5dc  00 30 94 e5                                      ldr r3, [r4]
006fd5e0  04 00 a0 e1                                      mov r0, r4
006fd5e4  05 10 a0 e1                                      mov r1, r5
006fd5e8  0f e0 a0 e1                                      mov lr, pc
006fd5ec  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006fd5f0  00 00 50 e3                                      cmp r0, #0
006fd5f4  c9 ff ff 0a                                      beq #0x6fd520
006fd5f8  38 10 9f e5                                      ldr r1, [pc, #0x38]
006fd5fc  01 10 8f e0                                      add r1, pc, r1
006fd600  45 43 f0 eb                                      bl #0x30e31c
006fd604  00 00 50 e3                                      cmp r0, #0
006fd608  c4 ff ff 1a                                      bne #0x6fd520
006fd60c  05 10 a0 e1                                      mov r1, r5
006fd610  04 00 a0 e1                                      mov r0, r4
006fd614  00 30 94 e5                                      ldr r3, [r4]
006fd618  0f e0 a0 e1                                      mov lr, pc
006fd61c  74 f0 93 e5                                      ldr pc, [r3, #0x74]
006fd620  01 50 85 e2                                      add r5, r5, #1
006fd624  14 00 86 e5                                      str r0, [r6, #0x14]
006fd628  bc ff ff ea                                      b #0x6fd520
; mapping-symbol data/literal pool
006fd62c  e8 7e 1e 00 bc 7d 1e 00 f0 47 1f 00 b4 47 1f 00  .byte 0xe8, 0x7e, 0x1e, 0x00, 0xbc, 0x7d, 0x1e, 0x00, 0xf0, 0x47, 0x1f, 0x00, 0xb4, 0x47, 0x1f, 0x00

; FUNCTION 0x006fd63c, declared_size=412, range_size=412, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZN6glitch5scene21CParticleSizeAffector6affectEjPNS0_9SParticleEj
; demangled: glitch::scene::CParticleSizeAffector::affect(unsigned int, glitch::scene::SParticle*, unsigned int)
; decoder-mode: arm
006fd63c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006fd640  00 40 a0 e1                                      mov r4, r0
006fd644  04 00 d0 e5                                      ldrb r0, [r0, #4]
006fd648  01 50 a0 e1                                      mov r5, r1
006fd64c  03 90 a0 e1                                      mov sb, r3
006fd650  00 00 50 e3                                      cmp r0, #0
006fd654  5e 00 00 0a                                      beq #0x6fd7d4
006fd658  00 00 53 e3                                      cmp r3, #0
006fd65c  5c 00 00 0a                                      beq #0x6fd7d4
006fd660  02 60 a0 e1                                      mov r6, r2
006fd664  00 70 a0 e3                                      mov r7, #0
006fd668  3a 00 00 ea                                      b #0x6fd758
006fd66c  08 80 94 e5                                      ldr r8, [r4, #8]
006fd670  08 00 a0 e1                                      mov r0, r8
006fd674  bc 45 f0 eb                                      bl #0x30ed6c
006fd678  c2 14 a0 e3                                      mov r1, #0xc2000000
006fd67c  32 17 81 e2                                      add r1, r1, #0xc80000
006fd680  83 45 f0 eb                                      bl #0x30ec94
006fd684  00 10 a0 e1                                      mov r1, r0
006fd688  08 00 a0 e1                                      mov r0, r8
006fd68c  44 45 f0 eb                                      bl #0x30eba4
006fd690  34 00 86 e5                                      str r0, [r6, #0x34]
006fd694  10 80 94 e5                                      ldr r8, [r4, #0x10]
006fd698  00 a0 a0 e1                                      mov sl, r0
006fd69c  00 10 a0 e3                                      mov r1, #0
006fd6a0  08 00 a0 e1                                      mov r0, r8
006fd6a4  13 43 f0 eb                                      bl #0x30e2f8
006fd6a8  00 00 50 e3                                      cmp r0, #0
006fd6ac  0f 00 00 0a                                      beq #0x6fd6f0
006fd6b0  18 00 96 e5                                      ldr r0, [r6, #0x18]
006fd6b4  05 00 60 e0                                      rsb r0, r0, r5
006fd6b8  08 43 f0 eb                                      bl #0x30e2e0
006fd6bc  00 b0 a0 e1                                      mov fp, r0
006fd6c0  0b 10 a0 e1                                      mov r1, fp
006fd6c4  08 00 a0 e1                                      mov r0, r8
006fd6c8  0a 43 f0 eb                                      bl #0x30e2f8
006fd6cc  00 00 50 e3                                      cmp r0, #0
006fd6d0  06 00 00 0a                                      beq #0x6fd6f0
006fd6d4  08 10 a0 e1                                      mov r1, r8
006fd6d8  0b 00 a0 e1                                      mov r0, fp
006fd6dc  6c 45 f0 eb                                      bl #0x30ec94
006fd6e0  00 10 a0 e1                                      mov r1, r0
006fd6e4  0a 00 a0 e1                                      mov r0, sl
006fd6e8  9f 45 f0 eb                                      bl #0x30ed6c
006fd6ec  34 00 86 e5                                      str r0, [r6, #0x34]
006fd6f0  14 80 94 e5                                      ldr r8, [r4, #0x14]
006fd6f4  00 10 a0 e3                                      mov r1, #0
006fd6f8  08 00 a0 e1                                      mov r0, r8
006fd6fc  fd 42 f0 eb                                      bl #0x30e2f8
006fd700  00 00 50 e3                                      cmp r0, #0
006fd704  0f 00 00 0a                                      beq #0x6fd748
006fd708  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
006fd70c  00 00 65 e0                                      rsb r0, r5, r0
006fd710  f2 42 f0 eb                                      bl #0x30e2e0
006fd714  00 b0 a0 e1                                      mov fp, r0
006fd718  0b 10 a0 e1                                      mov r1, fp
006fd71c  08 00 a0 e1                                      mov r0, r8
006fd720  f4 42 f0 eb                                      bl #0x30e2f8
006fd724  00 00 50 e3                                      cmp r0, #0
006fd728  06 00 00 0a                                      beq #0x6fd748
006fd72c  08 10 a0 e1                                      mov r1, r8
006fd730  0b 00 a0 e1                                      mov r0, fp
006fd734  56 45 f0 eb                                      bl #0x30ec94
006fd738  00 10 a0 e1                                      mov r1, r0
006fd73c  0a 00 a0 e1                                      mov r0, sl
006fd740  89 45 f0 eb                                      bl #0x30ed6c
006fd744  34 00 86 e5                                      str r0, [r6, #0x34]
006fd748  01 70 87 e2                                      add r7, r7, #1
006fd74c  09 00 57 e1                                      cmp r7, sb
006fd750  44 60 86 e2                                      add r6, r6, #0x44
006fd754  1e 00 00 0a                                      beq #0x6fd7d4
006fd758  18 30 96 e5                                      ldr r3, [r6, #0x18]
006fd75c  05 00 53 e1                                      cmp r3, r5
006fd760  38 10 96 15                                      ldrne r1, [r6, #0x38]
006fd764  c0 ff ff 1a                                      bne #0x6fd66c
006fd768  0c 80 94 e5                                      ldr r8, [r4, #0xc]
006fd76c  00 10 a0 e3                                      mov r1, #0
006fd770  08 00 a0 e1                                      mov r0, r8
006fd774  df 42 f0 eb                                      bl #0x30e2f8
006fd778  00 00 50 e3                                      cmp r0, #0
006fd77c  00 30 a0 03                                      moveq r3, #0
006fd780  38 30 86 05                                      streq r3, [r6, #0x38]
006fd784  03 10 a0 01                                      moveq r1, r3
006fd788  b7 ff ff 0a                                      beq #0x6fd66c
006fd78c  9c 35 fc eb                                      bl #0x60ae04
006fd790  42 14 a0 e3                                      mov r1, #0x42000000
006fd794  32 17 81 e2                                      add r1, r1, #0xc80000
006fd798  00 a0 a0 e1                                      mov sl, r0
006fd79c  08 00 a0 e1                                      mov r0, r8
006fd7a0  71 45 f0 eb                                      bl #0x30ed6c
006fd7a4  48 43 f0 eb                                      bl #0x30e4cc
006fd7a8  00 10 a0 e1                                      mov r1, r0
006fd7ac  0a 00 a0 e1                                      mov r0, sl
006fd7b0  53 44 f0 eb                                      bl #0x30e904
006fd7b4  01 00 a0 e1                                      mov r0, r1
006fd7b8  69 44 f0 eb                                      bl #0x30e964
006fd7bc  42 14 a0 e3                                      mov r1, #0x42000000
006fd7c0  32 17 81 e2                                      add r1, r1, #0xc80000
006fd7c4  32 45 f0 eb                                      bl #0x30ec94
006fd7c8  00 10 a0 e1                                      mov r1, r0
006fd7cc  38 00 86 e5                                      str r0, [r6, #0x38]
006fd7d0  a5 ff ff ea                                      b #0x6fd66c
006fd7d4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006fd84c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZN6glitch5scene21CParticleSizeAffectorD0Ev
; demangled: glitch::scene::CParticleSizeAffector::~CParticleSizeAffector()
; decoder-mode: arm
006fd84c  64 30 9f e5                                      ldr r3, [pc, #0x64]
006fd850  64 20 9f e5                                      ldr r2, [pc, #0x64]
006fd854  64 10 9f e5                                      ldr r1, [pc, #0x64]
006fd858  03 30 8f e0                                      add r3, pc, r3
006fd85c  02 20 93 e7                                      ldr r2, [r3, r2]
006fd860  70 40 2d e9                                      push {r4, r5, r6, lr}
006fd864  01 10 93 e7                                      ldr r1, [r3, r1]
006fd868  04 c0 92 e5                                      ldr ip, [r2, #4]
006fd86c  14 50 92 e5                                      ldr r5, [r2, #0x14]
006fd870  70 10 81 e2                                      add r1, r1, #0x70
006fd874  00 c0 80 e5                                      str ip, [r0]
006fd878  18 10 80 e5                                      str r1, [r0, #0x18]
006fd87c  1c e0 1c e5                                      ldr lr, [ip, #-0x1c]
006fd880  08 10 92 e5                                      ldr r1, [r2, #8]
006fd884  18 c0 92 e5                                      ldr ip, [r2, #0x18]
006fd888  0e 50 80 e7                                      str r5, [r0, lr]
006fd88c  00 e0 90 e5                                      ldr lr, [r0]
006fd890  0c 20 92 e5                                      ldr r2, [r2, #0xc]
006fd894  00 40 a0 e1                                      mov r4, r0
006fd898  0c 30 1e e5                                      ldr r3, [lr, #-0xc]
006fd89c  03 c0 80 e7                                      str ip, [r0, r3]
006fd8a0  00 10 80 e5                                      str r1, [r0]
006fd8a4  1c 30 11 e5                                      ldr r3, [r1, #-0x1c]
006fd8a8  03 20 80 e7                                      str r2, [r0, r3]
006fd8ac  7f 42 f0 eb                                      bl #0x30e2b0
006fd8b0  04 00 a0 e1                                      mov r0, r4
006fd8b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006fd8b8  38 72 29 00 98 3f 00 00 58 0c 00 00              .byte 0x38, 0x72, 0x29, 0x00, 0x98, 0x3f, 0x00, 0x00, 0x58, 0x0c, 0x00, 0x00

; FUNCTION 0x006fd8c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZTv0_n24_N6glitch5scene21CParticleSizeAffectorD0Ev
; demangled: virtual thunk to glitch::scene::CParticleSizeAffector::~CParticleSizeAffector()
; decoder-mode: arm
006fd8c4  00 30 90 e5                                      ldr r3, [r0]
006fd8c8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fd8cc  03 00 80 e0                                      add r0, r0, r3
006fd8d0  dd ff ff ea                                      b #0x6fd84c

; FUNCTION 0x006fd8d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZTv0_n12_N6glitch5scene21CParticleSizeAffectorD0Ev
; demangled: virtual thunk to glitch::scene::CParticleSizeAffector::~CParticleSizeAffector()
; decoder-mode: arm
006fd8d4  00 30 90 e5                                      ldr r3, [r0]
006fd8d8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fd8dc  03 00 80 e0                                      add r0, r0, r3
006fd8e0  d9 ff ff ea                                      b #0x6fd84c

; FUNCTION 0x006fd8e4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSizeAffector
; alias: _ZTv0_n16_NK6glitch5scene21CParticleSizeAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CParticleSizeAffector::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006fd8e4  00 30 90 e5                                      ldr r3, [r0]
006fd8e8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006fd8ec  03 00 80 e0                                      add r0, r0, r3
006fd8f0  c2 fe ff ea                                      b #0x6fd400
