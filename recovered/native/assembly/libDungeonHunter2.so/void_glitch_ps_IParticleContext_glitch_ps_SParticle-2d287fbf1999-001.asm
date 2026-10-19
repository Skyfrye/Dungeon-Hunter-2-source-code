; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064fcbc, declared_size=164, range_size=164, mode=arm
; class-group: void glitch::ps::IParticleContext<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_9SParticleEE12setParameterIPNS_7collada10SAnimationEEEvPKcT_
; demangled: void glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::collada::SAnimation*>(char const*, glitch::collada::SAnimation*)
; decoder-mode: arm
0064fcbc  70 40 2d e9                                      push {r4, r5, r6, lr}
0064fcc0  10 d0 4d e2                                      sub sp, sp, #0x10
0064fcc4  00 60 a0 e1                                      mov r6, r0
0064fcc8  02 50 a0 e1                                      mov r5, r2
0064fccc  fa f4 ff eb                                      bl #0x64d0bc
0064fcd0  34 c0 96 e5                                      ldr ip, [r6, #0x34]
0064fcd4  30 10 86 e2                                      add r1, r6, #0x30
0064fcd8  00 40 a0 e1                                      mov r4, r0
0064fcdc  00 00 5c e3                                      cmp ip, #0
0064fce0  01 c0 a0 01                                      moveq ip, r1
0064fce4  0a 00 00 0a                                      beq #0x64fd14
0064fce8  01 20 a0 e1                                      mov r2, r1
0064fcec  00 00 00 ea                                      b #0x64fcf4
0064fcf0  03 c0 a0 e1                                      mov ip, r3
0064fcf4  10 30 9c e5                                      ldr r3, [ip, #0x10]
0064fcf8  03 00 54 e1                                      cmp r4, r3
0064fcfc  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0064fd00  08 30 9c 95                                      ldrls r3, [ip, #8]
0064fd04  02 c0 a0 81                                      movhi ip, r2
0064fd08  0c 20 a0 e1                                      mov r2, ip
0064fd0c  00 00 53 e3                                      cmp r3, #0
0064fd10  f6 ff ff 1a                                      bne #0x64fcf0
0064fd14  0c 00 51 e1                                      cmp r1, ip
0064fd18  03 00 00 0a                                      beq #0x64fd2c
0064fd1c  10 20 9c e5                                      ldr r2, [ip, #0x10]
0064fd20  0c 30 a0 e1                                      mov r3, ip
0064fd24  02 00 54 e1                                      cmp r4, r2
0064fd28  07 00 00 2a                                      bhs #0x64fd4c
0064fd2c  0d 30 a0 e1                                      mov r3, sp
0064fd30  00 e0 a0 e3                                      mov lr, #0
0064fd34  08 00 8d e2                                      add r0, sp, #8
0064fd38  0c 20 8d e2                                      add r2, sp, #0xc
0064fd3c  10 40 8d e8                                      stm sp, {r4, lr}
0064fd40  0c c0 8d e5                                      str ip, [sp, #0xc]
0064fd44  4a ab ff eb                                      bl #0x63aa74
0064fd48  08 30 9d e5                                      ldr r3, [sp, #8]
0064fd4c  14 30 93 e5                                      ldr r3, [r3, #0x14]
0064fd50  00 00 53 e3                                      cmp r3, #0
0064fd54  00 50 83 15                                      strne r5, [r3]
0064fd58  10 d0 8d e2                                      add sp, sp, #0x10
0064fd5c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006501d4, declared_size=164, range_size=164, mode=arm
; class-group: void glitch::ps::IParticleContext<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_9SParticleEE12setParameterIiEEvPKcT_
; demangled: void glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<int>(char const*, int)
; decoder-mode: arm
006501d4  70 40 2d e9                                      push {r4, r5, r6, lr}
006501d8  10 d0 4d e2                                      sub sp, sp, #0x10
006501dc  00 60 a0 e1                                      mov r6, r0
006501e0  02 50 a0 e1                                      mov r5, r2
006501e4  b4 f3 ff eb                                      bl #0x64d0bc
006501e8  34 c0 96 e5                                      ldr ip, [r6, #0x34]
006501ec  30 10 86 e2                                      add r1, r6, #0x30
006501f0  00 40 a0 e1                                      mov r4, r0
006501f4  00 00 5c e3                                      cmp ip, #0
006501f8  01 c0 a0 01                                      moveq ip, r1
006501fc  0a 00 00 0a                                      beq #0x65022c
00650200  01 20 a0 e1                                      mov r2, r1
00650204  00 00 00 ea                                      b #0x65020c
00650208  03 c0 a0 e1                                      mov ip, r3
0065020c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00650210  03 00 54 e1                                      cmp r4, r3
00650214  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
00650218  08 30 9c 95                                      ldrls r3, [ip, #8]
0065021c  02 c0 a0 81                                      movhi ip, r2
00650220  0c 20 a0 e1                                      mov r2, ip
00650224  00 00 53 e3                                      cmp r3, #0
00650228  f6 ff ff 1a                                      bne #0x650208
0065022c  0c 00 51 e1                                      cmp r1, ip
00650230  03 00 00 0a                                      beq #0x650244
00650234  10 20 9c e5                                      ldr r2, [ip, #0x10]
00650238  0c 30 a0 e1                                      mov r3, ip
0065023c  02 00 54 e1                                      cmp r4, r2
00650240  07 00 00 2a                                      bhs #0x650264
00650244  0d 30 a0 e1                                      mov r3, sp
00650248  00 e0 a0 e3                                      mov lr, #0
0065024c  08 00 8d e2                                      add r0, sp, #8
00650250  0c 20 8d e2                                      add r2, sp, #0xc
00650254  10 40 8d e8                                      stm sp, {r4, lr}
00650258  0c c0 8d e5                                      str ip, [sp, #0xc]
0065025c  04 aa ff eb                                      bl #0x63aa74
00650260  08 30 9d e5                                      ldr r3, [sp, #8]
00650264  14 30 93 e5                                      ldr r3, [r3, #0x14]
00650268  00 00 53 e3                                      cmp r3, #0
0065026c  00 50 83 15                                      strne r5, [r3]
00650270  10 d0 8d e2                                      add sp, sp, #0x10
00650274  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00650278, declared_size=200, range_size=200, mode=arm
; class-group: void glitch::ps::IParticleContext<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_9SParticleEE12setParameterINS_3res9SFixedVecIfLj3EEEEEvPKcT_
; demangled: void glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::res::SFixedVec<float, 3u> >(char const*, glitch::res::SFixedVec<float, 3u>)
; decoder-mode: arm
00650278  08 d0 4d e2                                      sub sp, sp, #8
0065027c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00650280  10 d0 4d e2                                      sub sp, sp, #0x10
00650284  28 20 8d e5                                      str r2, [sp, #0x28]
00650288  2c 30 8d e5                                      str r3, [sp, #0x2c]
0065028c  00 80 a0 e1                                      mov r8, r0
00650290  28 60 9d e5                                      ldr r6, [sp, #0x28]
00650294  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
00650298  30 50 9d e5                                      ldr r5, [sp, #0x30]
0065029c  86 f3 ff eb                                      bl #0x64d0bc
006502a0  34 c0 98 e5                                      ldr ip, [r8, #0x34]
006502a4  30 10 88 e2                                      add r1, r8, #0x30
006502a8  00 40 a0 e1                                      mov r4, r0
006502ac  00 00 5c e3                                      cmp ip, #0
006502b0  01 c0 a0 01                                      moveq ip, r1
006502b4  0a 00 00 0a                                      beq #0x6502e4
006502b8  01 20 a0 e1                                      mov r2, r1
006502bc  00 00 00 ea                                      b #0x6502c4
006502c0  03 c0 a0 e1                                      mov ip, r3
006502c4  10 30 9c e5                                      ldr r3, [ip, #0x10]
006502c8  03 00 54 e1                                      cmp r4, r3
006502cc  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
006502d0  08 30 9c 95                                      ldrls r3, [ip, #8]
006502d4  02 c0 a0 81                                      movhi ip, r2
006502d8  0c 20 a0 e1                                      mov r2, ip
006502dc  00 00 53 e3                                      cmp r3, #0
006502e0  f6 ff ff 1a                                      bne #0x6502c0
006502e4  0c 00 51 e1                                      cmp r1, ip
006502e8  03 00 00 0a                                      beq #0x6502fc
006502ec  10 20 9c e5                                      ldr r2, [ip, #0x10]
006502f0  0c 30 a0 e1                                      mov r3, ip
006502f4  02 00 54 e1                                      cmp r4, r2
006502f8  07 00 00 2a                                      bhs #0x65031c
006502fc  0d 30 a0 e1                                      mov r3, sp
00650300  00 e0 a0 e3                                      mov lr, #0
00650304  08 00 8d e2                                      add r0, sp, #8
00650308  0c 20 8d e2                                      add r2, sp, #0xc
0065030c  10 40 8d e8                                      stm sp, {r4, lr}
00650310  0c c0 8d e5                                      str ip, [sp, #0xc]
00650314  d6 a9 ff eb                                      bl #0x63aa74
00650318  08 30 9d e5                                      ldr r3, [sp, #8]
0065031c  14 30 93 e5                                      ldr r3, [r3, #0x14]
00650320  00 00 53 e3                                      cmp r3, #0
00650324  00 60 83 15                                      strne r6, [r3]
00650328  08 50 83 15                                      strne r5, [r3, #8]
0065032c  04 70 83 15                                      strne r7, [r3, #4]
00650330  10 d0 8d e2                                      add sp, sp, #0x10
00650334  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00650338  08 d0 8d e2                                      add sp, sp, #8
0065033c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00650340, declared_size=192, range_size=192, mode=arm
; class-group: void glitch::ps::IParticleContext<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_9SParticleEE12setParameterINS_4core8vector3dIfEEEEvPKcT_
; demangled: void glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::core::vector3d<float> >(char const*, glitch::core::vector3d<float>)
; decoder-mode: arm
00650340  70 40 2d e9                                      push {r4, r5, r6, lr}
00650344  10 d0 4d e2                                      sub sp, sp, #0x10
00650348  00 60 a0 e1                                      mov r6, r0
0065034c  02 50 a0 e1                                      mov r5, r2
00650350  59 f3 ff eb                                      bl #0x64d0bc
00650354  34 c0 96 e5                                      ldr ip, [r6, #0x34]
00650358  30 10 86 e2                                      add r1, r6, #0x30
0065035c  00 40 a0 e1                                      mov r4, r0
00650360  00 00 5c e3                                      cmp ip, #0
00650364  01 c0 a0 01                                      moveq ip, r1
00650368  0a 00 00 0a                                      beq #0x650398
0065036c  01 20 a0 e1                                      mov r2, r1
00650370  00 00 00 ea                                      b #0x650378
00650374  03 c0 a0 e1                                      mov ip, r3
00650378  10 30 9c e5                                      ldr r3, [ip, #0x10]
0065037c  03 00 54 e1                                      cmp r4, r3
00650380  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
00650384  08 30 9c 95                                      ldrls r3, [ip, #8]
00650388  02 c0 a0 81                                      movhi ip, r2
0065038c  0c 20 a0 e1                                      mov r2, ip
00650390  00 00 53 e3                                      cmp r3, #0
00650394  f6 ff ff 1a                                      bne #0x650374
00650398  0c 00 51 e1                                      cmp r1, ip
0065039c  0e 00 00 0a                                      beq #0x6503dc
006503a0  10 20 9c e5                                      ldr r2, [ip, #0x10]
006503a4  0c 30 a0 e1                                      mov r3, ip
006503a8  02 00 54 e1                                      cmp r4, r2
006503ac  0a 00 00 3a                                      blo #0x6503dc
006503b0  14 30 93 e5                                      ldr r3, [r3, #0x14]
006503b4  00 00 53 e3                                      cmp r3, #0
006503b8  05 00 00 0a                                      beq #0x6503d4
006503bc  00 20 95 e5                                      ldr r2, [r5]
006503c0  00 20 83 e5                                      str r2, [r3]
006503c4  04 20 95 e5                                      ldr r2, [r5, #4]
006503c8  04 20 83 e5                                      str r2, [r3, #4]
006503cc  08 20 95 e5                                      ldr r2, [r5, #8]
006503d0  08 20 83 e5                                      str r2, [r3, #8]
006503d4  10 d0 8d e2                                      add sp, sp, #0x10
006503d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
006503dc  0d 30 a0 e1                                      mov r3, sp
006503e0  00 e0 a0 e3                                      mov lr, #0
006503e4  08 00 8d e2                                      add r0, sp, #8
006503e8  0c 20 8d e2                                      add r2, sp, #0xc
006503ec  10 40 8d e8                                      stm sp, {r4, lr}
006503f0  0c c0 8d e5                                      str ip, [sp, #0xc]
006503f4  9e a9 ff eb                                      bl #0x63aa74
006503f8  08 30 9d e5                                      ldr r3, [sp, #8]
006503fc  eb ff ff ea                                      b #0x6503b0

; FUNCTION 0x00650400, declared_size=164, range_size=164, mode=arm
; class-group: void glitch::ps::IParticleContext<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_9SParticleEE12setParameterIfEEvPKcT_
; demangled: void glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(char const*, float)
; decoder-mode: arm
00650400  70 40 2d e9                                      push {r4, r5, r6, lr}
00650404  10 d0 4d e2                                      sub sp, sp, #0x10
00650408  00 60 a0 e1                                      mov r6, r0
0065040c  02 50 a0 e1                                      mov r5, r2
00650410  29 f3 ff eb                                      bl #0x64d0bc
00650414  34 c0 96 e5                                      ldr ip, [r6, #0x34]
00650418  30 10 86 e2                                      add r1, r6, #0x30
0065041c  00 40 a0 e1                                      mov r4, r0
00650420  00 00 5c e3                                      cmp ip, #0
00650424  01 c0 a0 01                                      moveq ip, r1
00650428  0a 00 00 0a                                      beq #0x650458
0065042c  01 20 a0 e1                                      mov r2, r1
00650430  00 00 00 ea                                      b #0x650438
00650434  03 c0 a0 e1                                      mov ip, r3
00650438  10 30 9c e5                                      ldr r3, [ip, #0x10]
0065043c  03 00 54 e1                                      cmp r4, r3
00650440  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
00650444  08 30 9c 95                                      ldrls r3, [ip, #8]
00650448  02 c0 a0 81                                      movhi ip, r2
0065044c  0c 20 a0 e1                                      mov r2, ip
00650450  00 00 53 e3                                      cmp r3, #0
00650454  f6 ff ff 1a                                      bne #0x650434
00650458  0c 00 51 e1                                      cmp r1, ip
0065045c  03 00 00 0a                                      beq #0x650470
00650460  10 20 9c e5                                      ldr r2, [ip, #0x10]
00650464  0c 30 a0 e1                                      mov r3, ip
00650468  02 00 54 e1                                      cmp r4, r2
0065046c  07 00 00 2a                                      bhs #0x650490
00650470  0d 30 a0 e1                                      mov r3, sp
00650474  00 e0 a0 e3                                      mov lr, #0
00650478  08 00 8d e2                                      add r0, sp, #8
0065047c  0c 20 8d e2                                      add r2, sp, #0xc
00650480  10 40 8d e8                                      stm sp, {r4, lr}
00650484  0c c0 8d e5                                      str ip, [sp, #0xc]
00650488  79 a9 ff eb                                      bl #0x63aa74
0065048c  08 30 9d e5                                      ldr r3, [sp, #8]
00650490  14 30 93 e5                                      ldr r3, [r3, #0x14]
00650494  00 00 53 e3                                      cmp r3, #0
00650498  00 50 83 15                                      strne r5, [r3]
0065049c  10 d0 8d e2                                      add sp, sp, #0x10
006504a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006504a4, declared_size=208, range_size=208, mode=arm
; class-group: void glitch::ps::IParticleContext<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_9SParticleEE12setParameterIN5boost13intrusive_ptrINS_5video7IBufferEEEEEvPKcT_.clone.7
; demangled: void glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<boost::intrusive_ptr<glitch::video::IBuffer> >(char const*, boost::intrusive_ptr<glitch::video::IBuffer>) [clone .clone.7]
; decoder-mode: arm
006504a4  70 40 2d e9                                      push {r4, r5, r6, lr}
006504a8  01 50 a0 e1                                      mov r5, r1
006504ac  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
006504b0  10 d0 4d e2                                      sub sp, sp, #0x10
006504b4  00 60 a0 e1                                      mov r6, r0
006504b8  01 10 8f e0                                      add r1, pc, r1
006504bc  fe f2 ff eb                                      bl #0x64d0bc
006504c0  34 30 96 e5                                      ldr r3, [r6, #0x34]
006504c4  30 10 86 e2                                      add r1, r6, #0x30
006504c8  00 40 a0 e1                                      mov r4, r0
006504cc  00 00 53 e3                                      cmp r3, #0
006504d0  01 c0 a0 01                                      moveq ip, r1
006504d4  07 00 00 0a                                      beq #0x6504f8
006504d8  01 c0 a0 e1                                      mov ip, r1
006504dc  10 20 93 e5                                      ldr r2, [r3, #0x10]
006504e0  02 00 54 e1                                      cmp r4, r2
006504e4  03 c0 a0 91                                      movls ip, r3
006504e8  0c 30 93 85                                      ldrhi r3, [r3, #0xc]
006504ec  08 30 93 95                                      ldrls r3, [r3, #8]
006504f0  00 00 53 e3                                      cmp r3, #0
006504f4  f8 ff ff 1a                                      bne #0x6504dc
006504f8  0c 00 51 e1                                      cmp r1, ip
006504fc  12 00 00 0a                                      beq #0x65054c
00650500  10 20 9c e5                                      ldr r2, [ip, #0x10]
00650504  0c 30 a0 e1                                      mov r3, ip
00650508  02 00 54 e1                                      cmp r4, r2
0065050c  0e 00 00 3a                                      blo #0x65054c
00650510  14 20 93 e5                                      ldr r2, [r3, #0x14]
00650514  00 00 52 e3                                      cmp r2, #0
00650518  09 00 00 0a                                      beq #0x650544
0065051c  00 30 95 e5                                      ldr r3, [r5]
00650520  00 00 53 e3                                      cmp r3, #0
00650524  04 10 93 15                                      ldrne r1, [r3, #4]
00650528  01 10 81 12                                      addne r1, r1, #1
0065052c  04 10 83 15                                      strne r1, [r3, #4]
00650530  00 00 92 e5                                      ldr r0, [r2]
00650534  00 30 82 e5                                      str r3, [r2]
00650538  00 00 50 e3                                      cmp r0, #0
0065053c  00 00 00 0a                                      beq #0x650544
00650540  0f 34 f3 eb                                      bl #0x31d584
00650544  10 d0 8d e2                                      add sp, sp, #0x10
00650548  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065054c  0d 30 a0 e1                                      mov r3, sp
00650550  00 e0 a0 e3                                      mov lr, #0
00650554  08 00 8d e2                                      add r0, sp, #8
00650558  0c 20 8d e2                                      add r2, sp, #0xc
0065055c  10 40 8d e8                                      stm sp, {r4, lr}
00650560  0c c0 8d e5                                      str ip, [sp, #0xc]
00650564  42 a9 ff eb                                      bl #0x63aa74
00650568  08 30 9d e5                                      ldr r3, [sp, #8]
0065056c  e7 ff ff ea                                      b #0x650510
; mapping-symbol data/literal pool
00650570  c8 50 29 00                                      .byte 0xc8, 0x50, 0x29, 0x00

; FUNCTION 0x00650574, declared_size=164, range_size=164, mode=arm
; class-group: void glitch::ps::IParticleContext<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_9SParticleEE12setParameterIPNS_5scene11CMeshBufferEEEvPKcT_.clone.8
; demangled: void glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::scene::CMeshBuffer*>(char const*, glitch::scene::CMeshBuffer*) [clone .clone.8]
; decoder-mode: arm
00650574  70 40 2d e9                                      push {r4, r5, r6, lr}
00650578  01 50 a0 e1                                      mov r5, r1
0065057c  90 10 9f e5                                      ldr r1, [pc, #0x90]
00650580  10 d0 4d e2                                      sub sp, sp, #0x10
00650584  00 60 a0 e1                                      mov r6, r0
00650588  01 10 8f e0                                      add r1, pc, r1
0065058c  ca f2 ff eb                                      bl #0x64d0bc
00650590  34 30 96 e5                                      ldr r3, [r6, #0x34]
00650594  30 10 86 e2                                      add r1, r6, #0x30
00650598  00 40 a0 e1                                      mov r4, r0
0065059c  00 00 53 e3                                      cmp r3, #0
006505a0  01 c0 a0 01                                      moveq ip, r1
006505a4  07 00 00 0a                                      beq #0x6505c8
006505a8  01 c0 a0 e1                                      mov ip, r1
006505ac  10 20 93 e5                                      ldr r2, [r3, #0x10]
006505b0  02 00 54 e1                                      cmp r4, r2
006505b4  03 c0 a0 91                                      movls ip, r3
006505b8  0c 30 93 85                                      ldrhi r3, [r3, #0xc]
006505bc  08 30 93 95                                      ldrls r3, [r3, #8]
006505c0  00 00 53 e3                                      cmp r3, #0
006505c4  f8 ff ff 1a                                      bne #0x6505ac
006505c8  0c 00 51 e1                                      cmp r1, ip
006505cc  03 00 00 0a                                      beq #0x6505e0
006505d0  10 20 9c e5                                      ldr r2, [ip, #0x10]
006505d4  0c 30 a0 e1                                      mov r3, ip
006505d8  02 00 54 e1                                      cmp r4, r2
006505dc  07 00 00 2a                                      bhs #0x650600
006505e0  0d 30 a0 e1                                      mov r3, sp
006505e4  00 e0 a0 e3                                      mov lr, #0
006505e8  08 00 8d e2                                      add r0, sp, #8
006505ec  0c 20 8d e2                                      add r2, sp, #0xc
006505f0  10 40 8d e8                                      stm sp, {r4, lr}
006505f4  0c c0 8d e5                                      str ip, [sp, #0xc]
006505f8  1d a9 ff eb                                      bl #0x63aa74
006505fc  08 30 9d e5                                      ldr r3, [sp, #8]
00650600  14 30 93 e5                                      ldr r3, [r3, #0x14]
00650604  00 00 53 e3                                      cmp r3, #0
00650608  00 50 83 15                                      strne r5, [r3]
0065060c  10 d0 8d e2                                      add sp, sp, #0x10
00650610  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00650614  60 4b 29 00                                      .byte 0x60, 0x4b, 0x29, 0x00
