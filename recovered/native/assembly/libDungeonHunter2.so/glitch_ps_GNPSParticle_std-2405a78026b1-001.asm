; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00638fbc, declared_size=144, range_size=144, mode=arm
; class-group: glitch::ps::GNPSParticle* std
; alias: _ZSt9remove_ifIPN6glitch2ps12GNPSParticleENS1_13AgeNKillCheckIS2_EEET_S6_S6_T0_
; demangled: glitch::ps::GNPSParticle* std::remove_if<glitch::ps::GNPSParticle*, glitch::ps::AgeNKillCheck<glitch::ps::GNPSParticle> >(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::AgeNKillCheck<glitch::ps::GNPSParticle>)
; decoder-mode: arm
00638fbc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00638fc0  08 d0 4d e2                                      sub sp, sp, #8
00638fc4  04 30 8d e2                                      add r3, sp, #4
00638fc8  01 40 a0 e1                                      mov r4, r1
00638fcc  02 50 a0 e1                                      mov r5, r2
00638fd0  5f ff ff eb                                      bl #0x638d54
00638fd4  00 00 54 e1                                      cmp r4, r0
00638fd8  00 80 a0 e1                                      mov r8, r0
00638fdc  17 00 00 0a                                      beq #0x639040
00638fe0  9c 60 80 e2                                      add r6, r0, #0x9c
00638fe4  06 00 54 e1                                      cmp r4, r6
00638fe8  14 00 00 0a                                      beq #0x639040
00638fec  58 10 96 e5                                      ldr r1, [r6, #0x58]
00638ff0  05 00 a0 e1                                      mov r0, r5
00638ff4  ea 56 f3 eb                                      bl #0x30eba4
00638ff8  5c 10 96 e5                                      ldr r1, [r6, #0x5c]
00638ffc  58 00 86 e5                                      str r0, [r6, #0x58]
00639000  00 70 a0 e1                                      mov r7, r0
00639004  2a 55 f3 eb                                      bl #0x30e4b4
00639008  00 00 50 e3                                      cmp r0, #0
0063900c  00 10 a0 e3                                      mov r1, #0
00639010  07 00 a0 e1                                      mov r0, r7
00639014  06 00 00 1a                                      bne #0x639034
00639018  bb 55 f3 eb                                      bl #0x30e70c
0063901c  00 00 50 e3                                      cmp r0, #0
00639020  03 00 00 1a                                      bne #0x639034
00639024  08 00 a0 e1                                      mov r0, r8
00639028  06 10 a0 e1                                      mov r1, r6
0063902c  7f fb ff eb                                      bl #0x637e30
00639030  9c 80 88 e2                                      add r8, r8, #0x9c
00639034  9c 60 86 e2                                      add r6, r6, #0x9c
00639038  06 00 54 e1                                      cmp r4, r6
0063903c  ea ff ff 1a                                      bne #0x638fec
00639040  08 00 a0 e1                                      mov r0, r8
00639044  08 d0 8d e2                                      add sp, sp, #8
00639048  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
