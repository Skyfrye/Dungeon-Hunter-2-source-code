; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005891a8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::SDefaultSegmentCompileCallback
; alias: _ZN6glitch5scene30SDefaultSegmentCompileCallbackD1Ev
; demangled: glitch::scene::SDefaultSegmentCompileCallback::~SDefaultSegmentCompileCallback()
; decoder-mode: arm
005891a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005899b4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::SDefaultSegmentCompileCallback
; alias: _ZN6glitch5scene30SDefaultSegmentCompileCallbackD0Ev
; demangled: glitch::scene::SDefaultSegmentCompileCallback::~SDefaultSegmentCompileCallback()
; decoder-mode: arm
005899b4  10 40 2d e9                                      push {r4, lr}
005899b8  00 40 a0 e1                                      mov r4, r0
005899bc  3b 12 f6 eb                                      bl #0x30e2b0
005899c0  04 00 a0 e1                                      mov r0, r4
005899c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0058c118, declared_size=428, range_size=428, mode=arm
; class-group: glitch::scene::SDefaultSegmentCompileCallback
; alias: _ZN6glitch5scene30SDefaultSegmentCompileCallbackclEPNS0_10CBatchMeshEPvRKNS0_12SCompileInfoE
; demangled: glitch::scene::SDefaultSegmentCompileCallback::operator()(glitch::scene::CBatchMesh*, void*, glitch::scene::SCompileInfo const&)
; decoder-mode: arm
0058c118  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0058c11c  10 10 90 e5                                      ldr r1, [r0, #0x10]
0058c120  04 20 90 e5                                      ldr r2, [r0, #4]
0058c124  14 d0 4d e2                                      sub sp, sp, #0x14
0058c128  01 00 71 e3                                      cmn r1, #1
0058c12c  00 40 a0 e1                                      mov r4, r0
0058c130  03 50 a0 e1                                      mov r5, r3
0058c134  30 61 92 e5                                      ldr r6, [r2, #0x130]
0058c138  5d 00 00 0a                                      beq #0x58c2b4
0058c13c  04 00 95 e5                                      ldr r0, [r5, #4]
0058c140  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0058c144  10 80 90 e5                                      ldr r8, [r0, #0x10]
0058c148  08 80 63 e0                                      rsb r8, r3, r8
0058c14c  6b 50 00 eb                                      bl #0x5a0300
0058c150  00 10 a0 e3                                      mov r1, #0
0058c154  01 20 a0 e1                                      mov r2, r1
0058c158  00 70 a0 e1                                      mov r7, r0
0058c15c  08 00 94 e5                                      ldr r0, [r4, #8]
0058c160  ec f4 ff eb                                      bl #0x589518
0058c164  00 30 90 e5                                      ldr r3, [r0]
0058c168  0f e0 a0 e1                                      mov lr, pc
0058c16c  d8 f0 93 e5                                      ldr pc, [r3, #0xd8]
0058c170  78 80 ff e6                                      uxth r8, r8
0058c174  70 30 bf e6                                      sxth r3, r0
0058c178  08 10 a0 e1                                      mov r1, r8
0058c17c  87 20 87 e0                                      add r2, r7, r7, lsl #1
0058c180  06 00 a0 e1                                      mov r0, r6
0058c184  00 c6 ff eb                                      bl #0x57d98c
0058c188  08 70 95 e5                                      ldr r7, [r5, #8]
0058c18c  00 80 a0 e1                                      mov r8, r0
0058c190  00 00 57 e3                                      cmp r7, #0
0058c194  02 00 00 0a                                      beq #0x58c1a4
0058c198  34 30 d7 e5                                      ldrb r3, [r7, #0x34]
0058c19c  00 00 53 e3                                      cmp r3, #0
0058c1a0  26 00 00 1a                                      bne #0x58c240
0058c1a4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0058c1a8  00 00 53 e3                                      cmp r3, #0
0058c1ac  21 00 00 0a                                      beq #0x58c238
0058c1b0  00 30 95 e5                                      ldr r3, [r5]
0058c1b4  06 10 a0 e1                                      mov r1, r6
0058c1b8  00 30 8d e5                                      str r3, [sp]
0058c1bc  00 00 53 e3                                      cmp r3, #0
0058c1c0  00 20 93 15                                      ldrne r2, [r3]
0058c1c4  01 20 82 12                                      addne r2, r2, #1
0058c1c8  00 20 83 15                                      strne r2, [r3]
0058c1cc  0c 00 95 e9                                      ldmib r5, {r2, r3}
0058c1d0  00 00 53 e3                                      cmp r3, #0
0058c1d4  0c 00 8d e9                                      stmib sp, {r2, r3}
0058c1d8  04 20 93 15                                      ldrne r2, [r3, #4]
0058c1dc  01 20 82 12                                      addne r2, r2, #1
0058c1e0  04 20 83 15                                      strne r2, [r3, #4]
0058c1e4  08 20 94 e5                                      ldr r2, [r4, #8]
0058c1e8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0058c1ec  0c 20 8d e5                                      str r2, [sp, #0xc]
0058c1f0  03 00 a0 e1                                      mov r0, r3
0058c1f4  00 c0 93 e5                                      ldr ip, [r3]
0058c1f8  08 20 a0 e1                                      mov r2, r8
0058c1fc  0d 30 a0 e1                                      mov r3, sp
0058c200  0f e0 a0 e1                                      mov lr, pc
0058c204  08 f0 9c e5                                      ldr pc, [ip, #8]
0058c208  08 00 9d e5                                      ldr r0, [sp, #8]
0058c20c  00 00 50 e3                                      cmp r0, #0
0058c210  00 00 00 0a                                      beq #0x58c218
0058c214  da 44 f6 eb                                      bl #0x31d584
0058c218  00 40 9d e5                                      ldr r4, [sp]
0058c21c  00 00 54 e3                                      cmp r4, #0
0058c220  04 00 00 0a                                      beq #0x58c238
0058c224  00 30 94 e5                                      ldr r3, [r4]
0058c228  01 30 43 e2                                      sub r3, r3, #1
0058c22c  00 00 53 e3                                      cmp r3, #0
0058c230  00 30 84 e5                                      str r3, [r4]
0058c234  19 00 00 0a                                      beq #0x58c2a0
0058c238  14 d0 8d e2                                      add sp, sp, #0x14
0058c23c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0058c240  14 30 96 e5                                      ldr r3, [r6, #0x14]
0058c244  20 10 96 e5                                      ldr r1, [r6, #0x20]
0058c248  70 c0 96 e5                                      ldr ip, [r6, #0x70]
0058c24c  80 01 93 e7                                      ldr r0, [r3, r0, lsl #3]
0058c250  88 31 83 e0                                      add r3, r3, r8, lsl #3
0058c254  04 20 93 e5                                      ldr r2, [r3, #4]
0058c258  14 30 a0 e3                                      mov r3, #0x14
0058c25c  93 10 23 e0                                      mla r3, r3, r0, r1
0058c260  00 10 a0 e3                                      mov r1, #0
0058c264  bc a0 d3 e1                                      ldrh sl, [r3, #0xc]
0058c268  08 30 96 e5                                      ldr r3, [r6, #8]
0058c26c  08 00 94 e5                                      ldr r0, [r4, #8]
0058c270  02 a0 8a e0                                      add sl, sl, r2
0058c274  01 20 a0 e1                                      mov r2, r1
0058c278  9c 3a 2a e0                                      mla sl, ip, sl, r3
0058c27c  a5 f4 ff eb                                      bl #0x589518
0058c280  00 30 90 e5                                      ldr r3, [r0]
0058c284  0f e0 a0 e1                                      mov lr, pc
0058c288  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0058c28c  07 10 a0 e1                                      mov r1, r7
0058c290  00 20 a0 e1                                      mov r2, r0
0058c294  0a 00 a0 e1                                      mov r0, sl
0058c298  f8 f2 ff eb                                      bl #0x588e80
0058c29c  c0 ff ff ea                                      b #0x58c1a4
0058c2a0  04 00 a0 e1                                      mov r0, r4
0058c2a4  dc 51 00 eb                                      bl #0x5a0a1c
0058c2a8  04 00 a0 e1                                      mov r0, r4
0058c2ac  ff 07 f6 eb                                      bl #0x30e2b0
0058c2b0  e0 ff ff ea                                      b #0x58c238
0058c2b4  06 00 a0 e1                                      mov r0, r6
0058c2b8  90 bd ff eb                                      bl #0x57b900
0058c2bc  10 00 84 e5                                      str r0, [r4, #0x10]
0058c2c0  9d ff ff ea                                      b #0x58c13c
