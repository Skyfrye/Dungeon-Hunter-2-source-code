; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e0554, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullShader
; alias: _ZN6glitch5video11CNullShader30releaseDriverSpecificResourcesEv
; demangled: glitch::video::CNullShader::releaseDriverSpecificResources()
; decoder-mode: arm
006e0554  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e0558, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullShader
; alias: _ZNK6glitch5video11CNullShader10bindShaderEv
; demangled: glitch::video::CNullShader::bindShader() const
; decoder-mode: arm
006e0558  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e055c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CNullShader
; alias: _ZNK6glitch5video11CNullShader10updateHashEv
; demangled: glitch::video::CNullShader::updateHash() const
; decoder-mode: arm
006e055c  b0 34 d0 e1                                      ldrh r3, [r0, #0x40]
006e0560  00 20 a0 e3                                      mov r2, #0
006e0564  48 20 c0 e5                                      strb r2, [r0, #0x48]
006e0568  44 30 80 e5                                      str r3, [r0, #0x44]
006e056c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e0570, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::CNullShader
; alias: _ZNK6glitch5video11CNullShader13getShaderSizeEv
; demangled: glitch::video::CNullShader::getShaderSize() const
; decoder-mode: arm
006e0570  10 40 2d e9                                      push {r4, lr}
006e0574  48 30 d0 e5                                      ldrb r3, [r0, #0x48]
006e0578  00 40 a0 e1                                      mov r4, r0
006e057c  00 00 53 e3                                      cmp r3, #0
006e0580  00 00 00 0a                                      beq #0x6e0588
006e0584  f4 ff ff eb                                      bl #0x6e055c
006e0588  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006e058c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e0590, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::CNullShader
; alias: _ZNK6glitch5video11CNullShader12getHashValueEv
; demangled: glitch::video::CNullShader::getHashValue() const
; decoder-mode: arm
006e0590  10 40 2d e9                                      push {r4, lr}
006e0594  48 30 d0 e5                                      ldrb r3, [r0, #0x48]
006e0598  00 40 a0 e1                                      mov r4, r0
006e059c  00 00 53 e3                                      cmp r3, #0
006e05a0  00 00 00 0a                                      beq #0x6e05a8
006e05a4  ec ff ff eb                                      bl #0x6e055c
006e05a8  44 00 94 e5                                      ldr r0, [r4, #0x44]
006e05ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e05d0, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::CNullShader
; alias: _ZN6glitch5video11CNullShader21deserializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::CNullShader::deserializeAttributes(glitch::io::IAttributes*)
; decoder-mode: arm
006e05d0  10 40 2d e9                                      push {r4, lr}
006e05d4  00 40 a0 e1                                      mov r4, r0
006e05d8  62 12 fc eb                                      bl #0x5e4f68
006e05dc  04 00 a0 e1                                      mov r0, r4
006e05e0  10 40 bd e8                                      pop {r4, lr}
006e05e4  dc ff ff ea                                      b #0x6e055c

; FUNCTION 0x006e05e8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullShader
; alias: _ZNK6glitch5video11CNullShader19serializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::CNullShader::serializeAttributes(glitch::io::IAttributes*) const
; decoder-mode: arm
006e05e8  e6 12 fc ea                                      b #0x5e5188

; FUNCTION 0x006e05ec, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CNullShader
; alias: _ZN6glitch5video11CNullShaderD1Ev
; demangled: glitch::video::CNullShader::~CNullShader()
; decoder-mode: arm
006e05ec  24 30 9f e5                                      ldr r3, [pc, #0x24]
006e05f0  24 20 9f e5                                      ldr r2, [pc, #0x24]
006e05f4  10 40 2d e9                                      push {r4, lr}
006e05f8  03 30 8f e0                                      add r3, pc, r3
006e05fc  02 20 93 e7                                      ldr r2, [r3, r2]
006e0600  00 40 a0 e1                                      mov r4, r0
006e0604  08 20 82 e2                                      add r2, r2, #8
006e0608  00 20 80 e5                                      str r2, [r0]
006e060c  3c 12 fc eb                                      bl #0x5e4f04
006e0610  04 00 a0 e1                                      mov r0, r4
006e0614  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006e0618  98 44 2b 00 88 32 00 00                          .byte 0x98, 0x44, 0x2b, 0x00, 0x88, 0x32, 0x00, 0x00

; FUNCTION 0x006e0620, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CNullShader
; alias: _ZN6glitch5video11CNullShaderD0Ev
; demangled: glitch::video::CNullShader::~CNullShader()
; decoder-mode: arm
006e0620  10 40 2d e9                                      push {r4, lr}
006e0624  00 40 a0 e1                                      mov r4, r0
006e0628  ef ff ff eb                                      bl #0x6e05ec
006e062c  04 00 a0 e1                                      mov r0, r4
006e0630  1e b7 f0 eb                                      bl #0x30e2b0
006e0634  04 00 a0 e1                                      mov r0, r4
006e0638  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e063c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CNullShader
; alias: _ZN6glitch5video11CNullShaderD2Ev
; demangled: glitch::video::CNullShader::~CNullShader()
; decoder-mode: arm
006e063c  24 30 9f e5                                      ldr r3, [pc, #0x24]
006e0640  24 20 9f e5                                      ldr r2, [pc, #0x24]
006e0644  10 40 2d e9                                      push {r4, lr}
006e0648  03 30 8f e0                                      add r3, pc, r3
006e064c  02 20 93 e7                                      ldr r2, [r3, r2]
006e0650  00 40 a0 e1                                      mov r4, r0
006e0654  08 20 82 e2                                      add r2, r2, #8
006e0658  00 20 80 e5                                      str r2, [r0]
006e065c  28 12 fc eb                                      bl #0x5e4f04
006e0660  04 00 a0 e1                                      mov r0, r4
006e0664  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006e0668  48 44 2b 00 88 32 00 00                          .byte 0x48, 0x44, 0x2b, 0x00, 0x88, 0x32, 0x00, 0x00

; FUNCTION 0x006e0670, declared_size=72, range_size=72, mode=arm
; class-group: glitch::video::CNullShader
; alias: _ZN6glitch5video11CNullShaderC1EPNS0_11CNullDriverE
; demangled: glitch::video::CNullShader::CNullShader(glitch::video::CNullDriver*)
; decoder-mode: arm
006e0670  34 20 9f e5                                      ldr r2, [pc, #0x34]
006e0674  70 40 2d e9                                      push {r4, r5, r6, lr}
006e0678  01 30 a0 e1                                      mov r3, r1
006e067c  02 20 8f e0                                      add r2, pc, r2
006e0680  00 10 a0 e3                                      mov r1, #0
006e0684  24 40 9f e5                                      ldr r4, [pc, #0x24]
006e0688  00 50 a0 e1                                      mov r5, r0
006e068c  13 11 fc eb                                      bl #0x5e4ae0
006e0690  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
006e0694  04 40 8f e0                                      add r4, pc, r4
006e0698  05 00 a0 e1                                      mov r0, r5
006e069c  03 30 94 e7                                      ldr r3, [r4, r3]
006e06a0  08 30 83 e2                                      add r3, r3, #8
006e06a4  00 30 85 e5                                      str r3, [r5]
006e06a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006e06ac  8c b1 1e 00 fc 43 2b 00 88 32 00 00              .byte 0x8c, 0xb1, 0x1e, 0x00, 0xfc, 0x43, 0x2b, 0x00, 0x88, 0x32, 0x00, 0x00

; FUNCTION 0x006e06b8, declared_size=72, range_size=72, mode=arm
; class-group: glitch::video::CNullShader
; alias: _ZN6glitch5video11CNullShaderC2EPNS0_11CNullDriverE
; demangled: glitch::video::CNullShader::CNullShader(glitch::video::CNullDriver*)
; decoder-mode: arm
006e06b8  34 20 9f e5                                      ldr r2, [pc, #0x34]
006e06bc  70 40 2d e9                                      push {r4, r5, r6, lr}
006e06c0  01 30 a0 e1                                      mov r3, r1
006e06c4  02 20 8f e0                                      add r2, pc, r2
006e06c8  00 10 a0 e3                                      mov r1, #0
006e06cc  24 40 9f e5                                      ldr r4, [pc, #0x24]
006e06d0  00 50 a0 e1                                      mov r5, r0
006e06d4  01 11 fc eb                                      bl #0x5e4ae0
006e06d8  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
006e06dc  04 40 8f e0                                      add r4, pc, r4
006e06e0  05 00 a0 e1                                      mov r0, r5
006e06e4  03 30 94 e7                                      ldr r3, [r4, r3]
006e06e8  08 30 83 e2                                      add r3, r3, #8
006e06ec  00 30 85 e5                                      str r3, [r5]
006e06f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006e06f4  44 b1 1e 00 b4 43 2b 00 88 32 00 00              .byte 0x44, 0xb1, 0x1e, 0x00, 0xb4, 0x43, 0x2b, 0x00, 0x88, 0x32, 0x00, 0x00

; FUNCTION 0x006e0700, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CNullShader
; alias: _ZN6glitch5video11CNullShaderC1EtPKcPNS0_11CNullDriverE
; demangled: glitch::video::CNullShader::CNullShader(unsigned short, char const*, glitch::video::CNullDriver*)
; decoder-mode: arm
006e0700  70 40 2d e9                                      push {r4, r5, r6, lr}
006e0704  30 50 9f e5                                      ldr r5, [pc, #0x30]
006e0708  00 40 a0 e1                                      mov r4, r0
006e070c  f3 10 fc eb                                      bl #0x5e4ae0
006e0710  28 30 9f e5                                      ldr r3, [pc, #0x28]
006e0714  05 50 8f e0                                      add r5, pc, r5
006e0718  04 00 a0 e1                                      mov r0, r4
006e071c  03 30 95 e7                                      ldr r3, [r5, r3]
006e0720  08 30 83 e2                                      add r3, r3, #8
006e0724  00 30 84 e5                                      str r3, [r4]
006e0728  8b ff ff eb                                      bl #0x6e055c
006e072c  01 30 a0 e3                                      mov r3, #1
006e0730  38 30 84 e5                                      str r3, [r4, #0x38]
006e0734  04 00 a0 e1                                      mov r0, r4
006e0738  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006e073c  7c 43 2b 00 88 32 00 00                          .byte 0x7c, 0x43, 0x2b, 0x00, 0x88, 0x32, 0x00, 0x00

; FUNCTION 0x006e0744, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CNullShader
; alias: _ZN6glitch5video11CNullShaderC2EtPKcPNS0_11CNullDriverE
; demangled: glitch::video::CNullShader::CNullShader(unsigned short, char const*, glitch::video::CNullDriver*)
; decoder-mode: arm
006e0744  70 40 2d e9                                      push {r4, r5, r6, lr}
006e0748  30 50 9f e5                                      ldr r5, [pc, #0x30]
006e074c  00 40 a0 e1                                      mov r4, r0
006e0750  e2 10 fc eb                                      bl #0x5e4ae0
006e0754  28 30 9f e5                                      ldr r3, [pc, #0x28]
006e0758  05 50 8f e0                                      add r5, pc, r5
006e075c  04 00 a0 e1                                      mov r0, r4
006e0760  03 30 95 e7                                      ldr r3, [r5, r3]
006e0764  08 30 83 e2                                      add r3, r3, #8
006e0768  00 30 84 e5                                      str r3, [r4]
006e076c  7a ff ff eb                                      bl #0x6e055c
006e0770  01 30 a0 e3                                      mov r3, #1
006e0774  38 30 84 e5                                      str r3, [r4, #0x38]
006e0778  04 00 a0 e1                                      mov r0, r4
006e077c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006e0780  38 43 2b 00 88 32 00 00                          .byte 0x38, 0x43, 0x2b, 0x00, 0x88, 0x32, 0x00, 0x00
