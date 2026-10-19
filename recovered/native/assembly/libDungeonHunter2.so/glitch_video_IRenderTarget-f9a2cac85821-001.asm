; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006dc4e4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IRenderTarget
; alias: _ZN6glitch5video13IRenderTargetD1Ev
; demangled: glitch::video::IRenderTarget::~IRenderTarget()
; decoder-mode: arm
006dc4e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dc4e8, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::IRenderTarget
; alias: _ZN6glitch5video13IRenderTargetC2EPNS0_12IVideoDriverERKNS_4core11dimension2dIiEE
; demangled: glitch::video::IRenderTarget::IRenderTarget(glitch::video::IVideoDriver*, glitch::core::dimension2d<int> const&)
; decoder-mode: arm
006dc4e8  50 c0 9f e5                                      ldr ip, [pc, #0x50]
006dc4ec  30 00 2d e9                                      push {r4, r5}
006dc4f0  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
006dc4f4  0c c0 8f e0                                      add ip, pc, ip
006dc4f8  00 40 a0 e3                                      mov r4, #0
006dc4fc  05 50 9c e7                                      ldr r5, [ip, r5]
006dc500  08 10 80 e5                                      str r1, [r0, #8]
006dc504  04 40 80 e5                                      str r4, [r0, #4]
006dc508  08 50 85 e2                                      add r5, r5, #8
006dc50c  00 50 80 e5                                      str r5, [r0]
006dc510  00 10 92 e5                                      ldr r1, [r2]
006dc514  0c 10 80 e5                                      str r1, [r0, #0xc]
006dc518  04 10 92 e5                                      ldr r1, [r2, #4]
006dc51c  10 10 80 e5                                      str r1, [r0, #0x10]
006dc520  04 10 92 e5                                      ldr r1, [r2, #4]
006dc524  00 20 92 e5                                      ldr r2, [r2]
006dc528  18 40 80 e5                                      str r4, [r0, #0x18]
006dc52c  20 10 80 e5                                      str r1, [r0, #0x20]
006dc530  1c 20 80 e5                                      str r2, [r0, #0x1c]
006dc534  14 40 80 e5                                      str r4, [r0, #0x14]
006dc538  30 00 bd e8                                      pop {r4, r5}
006dc53c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006dc540  9c 85 2b 00 64 29 00 00                          .byte 0x9c, 0x85, 0x2b, 0x00, 0x64, 0x29, 0x00, 0x00

; FUNCTION 0x006dc548, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::IRenderTarget
; alias: _ZN6glitch5video13IRenderTargetC1EPNS0_12IVideoDriverERKNS_4core11dimension2dIiEE
; demangled: glitch::video::IRenderTarget::IRenderTarget(glitch::video::IVideoDriver*, glitch::core::dimension2d<int> const&)
; decoder-mode: arm
006dc548  50 c0 9f e5                                      ldr ip, [pc, #0x50]
006dc54c  30 00 2d e9                                      push {r4, r5}
006dc550  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
006dc554  0c c0 8f e0                                      add ip, pc, ip
006dc558  00 40 a0 e3                                      mov r4, #0
006dc55c  05 50 9c e7                                      ldr r5, [ip, r5]
006dc560  08 10 80 e5                                      str r1, [r0, #8]
006dc564  04 40 80 e5                                      str r4, [r0, #4]
006dc568  08 50 85 e2                                      add r5, r5, #8
006dc56c  00 50 80 e5                                      str r5, [r0]
006dc570  00 10 92 e5                                      ldr r1, [r2]
006dc574  0c 10 80 e5                                      str r1, [r0, #0xc]
006dc578  04 10 92 e5                                      ldr r1, [r2, #4]
006dc57c  10 10 80 e5                                      str r1, [r0, #0x10]
006dc580  04 10 92 e5                                      ldr r1, [r2, #4]
006dc584  00 20 92 e5                                      ldr r2, [r2]
006dc588  18 40 80 e5                                      str r4, [r0, #0x18]
006dc58c  20 10 80 e5                                      str r1, [r0, #0x20]
006dc590  1c 20 80 e5                                      str r2, [r0, #0x1c]
006dc594  14 40 80 e5                                      str r4, [r0, #0x14]
006dc598  30 00 bd e8                                      pop {r4, r5}
006dc59c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006dc5a0  3c 85 2b 00 64 29 00 00                          .byte 0x3c, 0x85, 0x2b, 0x00, 0x64, 0x29, 0x00, 0x00

; FUNCTION 0x006dc5a8, declared_size=168, range_size=168, mode=arm
; class-group: glitch::video::IRenderTarget
; alias: _ZN6glitch5video13IRenderTarget11setViewportERKNS_4core4rectIiEE
; demangled: glitch::video::IRenderTarget::setViewport(glitch::core::rect<int> const&)
; decoder-mode: arm
006dc5a8  10 40 2d e9                                      push {r4, lr}
006dc5ac  00 30 91 e5                                      ldr r3, [r1]
006dc5b0  00 20 a0 e1                                      mov r2, r0
006dc5b4  0c 40 90 e5                                      ldr r4, [r0, #0xc]
006dc5b8  14 30 80 e5                                      str r3, [r0, #0x14]
006dc5bc  04 30 91 e5                                      ldr r3, [r1, #4]
006dc5c0  10 c0 90 e5                                      ldr ip, [r0, #0x10]
006dc5c4  18 30 80 e5                                      str r3, [r0, #0x18]
006dc5c8  08 00 91 e5                                      ldr r0, [r1, #8]
006dc5cc  1c 00 82 e5                                      str r0, [r2, #0x1c]
006dc5d0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
006dc5d4  00 00 54 e1                                      cmp r4, r0
006dc5d8  1c 40 82 b5                                      strlt r4, [r2, #0x1c]
006dc5dc  20 30 82 e5                                      str r3, [r2, #0x20]
006dc5e0  03 00 5c e1                                      cmp ip, r3
006dc5e4  14 30 92 e5                                      ldr r3, [r2, #0x14]
006dc5e8  18 10 92 e5                                      ldr r1, [r2, #0x18]
006dc5ec  20 c0 82 b5                                      strlt ip, [r2, #0x20]
006dc5f0  00 00 53 e3                                      cmp r3, #0
006dc5f4  00 30 a0 b3                                      movlt r3, #0
006dc5f8  20 00 92 e5                                      ldr r0, [r2, #0x20]
006dc5fc  14 30 82 b5                                      strlt r3, [r2, #0x14]
006dc600  00 00 51 e3                                      cmp r1, #0
006dc604  00 10 a0 b3                                      movlt r1, #0
006dc608  18 10 82 b5                                      strlt r1, [r2, #0x18]
006dc60c  00 00 51 e1                                      cmp r1, r0
006dc610  1c 10 92 e5                                      ldr r1, [r2, #0x1c]
006dc614  18 00 82 c5                                      strgt r0, [r2, #0x18]
006dc618  01 00 53 e1                                      cmp r3, r1
006dc61c  08 30 92 e5                                      ldr r3, [r2, #8]
006dc620  14 10 82 c5                                      strgt r1, [r2, #0x14]
006dc624  cc 10 93 e5                                      ldr r1, [r3, #0xcc]
006dc628  04 10 11 e5                                      ldr r1, [r1, #-4]
006dc62c  01 00 52 e1                                      cmp r2, r1
006dc630  00 00 00 0a                                      beq #0x6dc638
006dc634  10 80 bd e8                                      pop {r4, pc}
006dc638  03 00 a0 e1                                      mov r0, r3
006dc63c  14 10 82 e2                                      add r1, r2, #0x14
006dc640  00 30 93 e5                                      ldr r3, [r3]
006dc644  0f e0 a0 e1                                      mov lr, pc
006dc648  e8 f1 93 e5                                      ldr pc, [r3, #0x1e8]
006dc64c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006dc670, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::IRenderTarget
; alias: _ZN6glitch5video13IRenderTargetD0Ev
; demangled: glitch::video::IRenderTarget::~IRenderTarget()
; decoder-mode: arm
006dc670  10 40 2d e9                                      push {r4, lr}
006dc674  00 40 a0 e1                                      mov r4, r0
006dc678  0c c7 f0 eb                                      bl #0x30e2b0
006dc67c  04 00 a0 e1                                      mov r0, r4
006dc680  10 80 bd e8                                      pop {r4, pc}
