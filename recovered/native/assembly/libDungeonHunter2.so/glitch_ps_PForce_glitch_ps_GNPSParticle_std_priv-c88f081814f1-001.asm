; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006387f8, declared_size=348, range_size=348, mode=arm
; class-group: glitch::ps::PForce<glitch::ps::GNPSParticle>** std::priv
; alias: _ZNSt4priv9__find_ifIPPN6glitch2ps6PForceINS2_12GNPSParticleEEENS2_12CompareForceIS4_EEEET_SA_SA_T0_RKSt26random_access_iterator_tag
; demangled: glitch::ps::PForce<glitch::ps::GNPSParticle>** std::priv::__find_if<glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::CompareForce<glitch::ps::GNPSParticle> >(glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::CompareForce<glitch::ps::GNPSParticle>, std::random_access_iterator_tag const&)
; decoder-mode: arm
006387f8  00 30 a0 e1                                      mov r3, r0
006387fc  01 00 60 e0                                      rsb r0, r0, r1
00638800  40 c2 a0 e1                                      asr ip, r0, #4
00638804  00 00 5c e3                                      cmp ip, #0
00638808  30 00 2d e9                                      push {r4, r5}
0063880c  40 41 a0 e1                                      asr r4, r0, #2
00638810  03 00 a0 d1                                      movle r0, r3
00638814  29 00 00 da                                      ble #0x6388c0
00638818  00 00 93 e5                                      ldr r0, [r3]
0063881c  04 40 92 e5                                      ldr r4, [r2, #4]
00638820  04 00 90 e5                                      ldr r0, [r0, #4]
00638824  00 00 54 e1                                      cmp r4, r0
00638828  03 00 a0 01                                      moveq r0, r3
0063882c  2a 00 00 0a                                      beq #0x6388dc
00638830  04 50 93 e5                                      ldr r5, [r3, #4]
00638834  04 00 83 e2                                      add r0, r3, #4
00638838  04 50 95 e5                                      ldr r5, [r5, #4]
0063883c  05 00 54 e1                                      cmp r4, r5
00638840  25 00 00 0a                                      beq #0x6388dc
00638844  04 50 b0 e5                                      ldr r5, [r0, #4]!
00638848  04 50 95 e5                                      ldr r5, [r5, #4]
0063884c  05 00 54 e1                                      cmp r4, r5
00638850  21 00 00 0a                                      beq #0x6388dc
00638854  04 50 b0 e5                                      ldr r5, [r0, #4]!
00638858  04 50 95 e5                                      ldr r5, [r5, #4]
0063885c  05 00 54 e1                                      cmp r4, r5
00638860  11 00 00 1a                                      bne #0x6388ac
00638864  1c 00 00 ea                                      b #0x6388dc
00638868  10 00 93 e5                                      ldr r0, [r3, #0x10]
0063886c  04 00 90 e5                                      ldr r0, [r0, #4]
00638870  04 00 50 e1                                      cmp r0, r4
00638874  27 00 00 0a                                      beq #0x638918
00638878  14 00 93 e5                                      ldr r0, [r3, #0x14]
0063887c  04 00 90 e5                                      ldr r0, [r0, #4]
00638880  00 00 54 e1                                      cmp r4, r0
00638884  25 00 00 0a                                      beq #0x638920
00638888  18 00 93 e5                                      ldr r0, [r3, #0x18]
0063888c  04 00 90 e5                                      ldr r0, [r0, #4]
00638890  00 00 54 e1                                      cmp r4, r0
00638894  23 00 00 0a                                      beq #0x638928
00638898  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
0063889c  10 30 83 e2                                      add r3, r3, #0x10
006388a0  04 00 90 e5                                      ldr r0, [r0, #4]
006388a4  00 00 54 e1                                      cmp r4, r0
006388a8  20 00 00 0a                                      beq #0x638930
006388ac  01 c0 5c e2                                      subs ip, ip, #1
006388b0  ec ff ff 1a                                      bne #0x638868
006388b4  10 00 83 e2                                      add r0, r3, #0x10
006388b8  01 40 60 e0                                      rsb r4, r0, r1
006388bc  44 41 a0 e1                                      asr r4, r4, #2
006388c0  02 00 54 e3                                      cmp r4, #2
006388c4  06 00 00 0a                                      beq #0x6388e4
006388c8  03 00 54 e3                                      cmp r4, #3
006388cc  19 00 00 0a                                      beq #0x638938
006388d0  01 00 54 e3                                      cmp r4, #1
006388d4  0d 00 00 0a                                      beq #0x638910
006388d8  01 00 a0 e1                                      mov r0, r1
006388dc  30 00 bd e8                                      pop {r4, r5}
006388e0  1e ff 2f e1                                      bx lr
006388e4  04 30 92 e5                                      ldr r3, [r2, #4]
006388e8  00 20 90 e5                                      ldr r2, [r0]
006388ec  04 20 92 e5                                      ldr r2, [r2, #4]
006388f0  03 00 52 e1                                      cmp r2, r3
006388f4  f8 ff ff 0a                                      beq #0x6388dc
006388f8  04 00 80 e2                                      add r0, r0, #4
006388fc  00 20 90 e5                                      ldr r2, [r0]
00638900  04 20 92 e5                                      ldr r2, [r2, #4]
00638904  03 00 52 e1                                      cmp r2, r3
00638908  01 00 a0 11                                      movne r0, r1
0063890c  f2 ff ff ea                                      b #0x6388dc
00638910  04 30 92 e5                                      ldr r3, [r2, #4]
00638914  f8 ff ff ea                                      b #0x6388fc
00638918  10 00 83 e2                                      add r0, r3, #0x10
0063891c  ee ff ff ea                                      b #0x6388dc
00638920  14 00 83 e2                                      add r0, r3, #0x14
00638924  ec ff ff ea                                      b #0x6388dc
00638928  18 00 83 e2                                      add r0, r3, #0x18
0063892c  ea ff ff ea                                      b #0x6388dc
00638930  0c 00 83 e2                                      add r0, r3, #0xc
00638934  e8 ff ff ea                                      b #0x6388dc
00638938  00 c0 90 e5                                      ldr ip, [r0]
0063893c  04 30 92 e5                                      ldr r3, [r2, #4]
00638940  04 20 9c e5                                      ldr r2, [ip, #4]
00638944  02 00 53 e1                                      cmp r3, r2
00638948  e3 ff ff 0a                                      beq #0x6388dc
0063894c  04 00 80 e2                                      add r0, r0, #4
00638950  e4 ff ff ea                                      b #0x6388e8
