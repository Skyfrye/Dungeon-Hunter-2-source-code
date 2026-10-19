; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ae04, declared_size=112, range_size=112, mode=arm
; class-group: glitch::os::Randomizer
; alias: _ZN6glitch2os10Randomizer4randEv
; demangled: glitch::os::Randomizer::rand()
; decoder-mode: arm
0060ae04  60 30 9f e5                                      ldr r3, [pc, #0x60]
0060ae08  60 20 9f e5                                      ldr r2, [pc, #0x60]
0060ae0c  04 40 2d e5                                      str r4, [sp, #-4]!
0060ae10  03 30 8f e0                                      add r3, pc, r3
0060ae14  02 10 93 e7                                      ldr r1, [r3, r2]
0060ae18  cd 09 00 e3                                      movw r0, #0x9cd
0060ae1c  7a 0f 44 e3                                      movt r0, #0x4f7a
0060ae20  00 20 91 e5                                      ldr r2, [r1]
0060ae24  26 4e 0c e3                                      movw r4, #0xce26
0060ae28  90 c2 c0 e0                                      smull ip, r0, r0, r2
0060ae2c  c2 cf a0 e1                                      asr ip, r2, #0x1f
0060ae30  40 37 a0 e1                                      asr r3, r0, #0xe
0060ae34  03 00 6c e0                                      rsb r0, ip, r3
0060ae38  94 20 62 e0                                      mls r2, r4, r0, r2
0060ae3c  f4 0e 09 e3                                      movw r0, #0x9ef4
0060ae40  90 02 02 e0                                      mul r2, r0, r2
0060ae44  0c 30 63 e0                                      rsb r3, r3, ip
0060ae48  cf 0e 00 e3                                      movw r0, #0xecf
0060ae4c  90 23 20 e0                                      mla r0, r0, r3, r2
0060ae50  00 00 50 e3                                      cmp r0, #0
0060ae54  00 00 81 e5                                      str r0, [r1]
0060ae58  02 01 80 b2                                      addlt r0, r0, #0x80000000
0060ae5c  f9 00 40 b2                                      sublt r0, r0, #0xf9
0060ae60  00 00 81 b5                                      strlt r0, [r1]
0060ae64  10 00 bd e8                                      ldm sp!, {r4}
0060ae68  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0060ae6c  80 9c 38 00 d4 44 00 00                          .byte 0x80, 0x9c, 0x38, 0x00, 0xd4, 0x44, 0x00, 0x00

; FUNCTION 0x0060ae74, declared_size=40, range_size=40, mode=arm
; class-group: glitch::os::Randomizer
; alias: _ZN6glitch2os10Randomizer5resetEv
; demangled: glitch::os::Randomizer::reset()
; decoder-mode: arm
0060ae74  18 20 9f e5                                      ldr r2, [pc, #0x18]
0060ae78  18 10 9f e5                                      ldr r1, [pc, #0x18]
0060ae7c  0f 3f 00 e3                                      movw r3, #0xf0f
0060ae80  02 20 8f e0                                      add r2, pc, r2
0060ae84  01 10 92 e7                                      ldr r1, [r2, r1]
0060ae88  03 38 83 e1                                      orr r3, r3, r3, lsl #16
0060ae8c  00 30 81 e5                                      str r3, [r1]
0060ae90  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0060ae94  10 9c 38 00 d4 44 00 00                          .byte 0x10, 0x9c, 0x38, 0x00, 0xd4, 0x44, 0x00, 0x00
