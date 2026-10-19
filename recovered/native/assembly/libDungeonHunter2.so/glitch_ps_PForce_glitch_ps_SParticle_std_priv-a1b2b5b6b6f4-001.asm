; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064c518, declared_size=348, range_size=348, mode=arm
; class-group: glitch::ps::PForce<glitch::ps::SParticle>** std::priv
; alias: _ZNSt4priv9__find_ifIPPN6glitch2ps6PForceINS2_9SParticleEEENS2_12CompareForceIS4_EEEET_SA_SA_T0_RKSt26random_access_iterator_tag
; demangled: glitch::ps::PForce<glitch::ps::SParticle>** std::priv::__find_if<glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::CompareForce<glitch::ps::SParticle> >(glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::CompareForce<glitch::ps::SParticle>, std::random_access_iterator_tag const&)
; decoder-mode: arm
0064c518  00 30 a0 e1                                      mov r3, r0
0064c51c  01 00 60 e0                                      rsb r0, r0, r1
0064c520  40 c2 a0 e1                                      asr ip, r0, #4
0064c524  00 00 5c e3                                      cmp ip, #0
0064c528  30 00 2d e9                                      push {r4, r5}
0064c52c  40 41 a0 e1                                      asr r4, r0, #2
0064c530  03 00 a0 d1                                      movle r0, r3
0064c534  29 00 00 da                                      ble #0x64c5e0
0064c538  00 00 93 e5                                      ldr r0, [r3]
0064c53c  04 40 92 e5                                      ldr r4, [r2, #4]
0064c540  04 00 90 e5                                      ldr r0, [r0, #4]
0064c544  00 00 54 e1                                      cmp r4, r0
0064c548  03 00 a0 01                                      moveq r0, r3
0064c54c  2a 00 00 0a                                      beq #0x64c5fc
0064c550  04 50 93 e5                                      ldr r5, [r3, #4]
0064c554  04 00 83 e2                                      add r0, r3, #4
0064c558  04 50 95 e5                                      ldr r5, [r5, #4]
0064c55c  05 00 54 e1                                      cmp r4, r5
0064c560  25 00 00 0a                                      beq #0x64c5fc
0064c564  04 50 b0 e5                                      ldr r5, [r0, #4]!
0064c568  04 50 95 e5                                      ldr r5, [r5, #4]
0064c56c  05 00 54 e1                                      cmp r4, r5
0064c570  21 00 00 0a                                      beq #0x64c5fc
0064c574  04 50 b0 e5                                      ldr r5, [r0, #4]!
0064c578  04 50 95 e5                                      ldr r5, [r5, #4]
0064c57c  05 00 54 e1                                      cmp r4, r5
0064c580  11 00 00 1a                                      bne #0x64c5cc
0064c584  1c 00 00 ea                                      b #0x64c5fc
0064c588  10 00 93 e5                                      ldr r0, [r3, #0x10]
0064c58c  04 00 90 e5                                      ldr r0, [r0, #4]
0064c590  04 00 50 e1                                      cmp r0, r4
0064c594  27 00 00 0a                                      beq #0x64c638
0064c598  14 00 93 e5                                      ldr r0, [r3, #0x14]
0064c59c  04 00 90 e5                                      ldr r0, [r0, #4]
0064c5a0  00 00 54 e1                                      cmp r4, r0
0064c5a4  25 00 00 0a                                      beq #0x64c640
0064c5a8  18 00 93 e5                                      ldr r0, [r3, #0x18]
0064c5ac  04 00 90 e5                                      ldr r0, [r0, #4]
0064c5b0  00 00 54 e1                                      cmp r4, r0
0064c5b4  23 00 00 0a                                      beq #0x64c648
0064c5b8  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
0064c5bc  10 30 83 e2                                      add r3, r3, #0x10
0064c5c0  04 00 90 e5                                      ldr r0, [r0, #4]
0064c5c4  00 00 54 e1                                      cmp r4, r0
0064c5c8  20 00 00 0a                                      beq #0x64c650
0064c5cc  01 c0 5c e2                                      subs ip, ip, #1
0064c5d0  ec ff ff 1a                                      bne #0x64c588
0064c5d4  10 00 83 e2                                      add r0, r3, #0x10
0064c5d8  01 40 60 e0                                      rsb r4, r0, r1
0064c5dc  44 41 a0 e1                                      asr r4, r4, #2
0064c5e0  02 00 54 e3                                      cmp r4, #2
0064c5e4  06 00 00 0a                                      beq #0x64c604
0064c5e8  03 00 54 e3                                      cmp r4, #3
0064c5ec  19 00 00 0a                                      beq #0x64c658
0064c5f0  01 00 54 e3                                      cmp r4, #1
0064c5f4  0d 00 00 0a                                      beq #0x64c630
0064c5f8  01 00 a0 e1                                      mov r0, r1
0064c5fc  30 00 bd e8                                      pop {r4, r5}
0064c600  1e ff 2f e1                                      bx lr
0064c604  04 30 92 e5                                      ldr r3, [r2, #4]
0064c608  00 20 90 e5                                      ldr r2, [r0]
0064c60c  04 20 92 e5                                      ldr r2, [r2, #4]
0064c610  03 00 52 e1                                      cmp r2, r3
0064c614  f8 ff ff 0a                                      beq #0x64c5fc
0064c618  04 00 80 e2                                      add r0, r0, #4
0064c61c  00 20 90 e5                                      ldr r2, [r0]
0064c620  04 20 92 e5                                      ldr r2, [r2, #4]
0064c624  03 00 52 e1                                      cmp r2, r3
0064c628  01 00 a0 11                                      movne r0, r1
0064c62c  f2 ff ff ea                                      b #0x64c5fc
0064c630  04 30 92 e5                                      ldr r3, [r2, #4]
0064c634  f8 ff ff ea                                      b #0x64c61c
0064c638  10 00 83 e2                                      add r0, r3, #0x10
0064c63c  ee ff ff ea                                      b #0x64c5fc
0064c640  14 00 83 e2                                      add r0, r3, #0x14
0064c644  ec ff ff ea                                      b #0x64c5fc
0064c648  18 00 83 e2                                      add r0, r3, #0x18
0064c64c  ea ff ff ea                                      b #0x64c5fc
0064c650  0c 00 83 e2                                      add r0, r3, #0xc
0064c654  e8 ff ff ea                                      b #0x64c5fc
0064c658  00 c0 90 e5                                      ldr ip, [r0]
0064c65c  04 30 92 e5                                      ldr r3, [r2, #4]
0064c660  04 20 9c e5                                      ldr r2, [ip, #4]
0064c664  02 00 53 e1                                      cmp r3, r2
0064c668  e3 ff ff 0a                                      beq #0x64c5fc
0064c66c  04 00 80 e2                                      add r0, r0, #4
0064c670  e4 ff ff ea                                      b #0x64c608
