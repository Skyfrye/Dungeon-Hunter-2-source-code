; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006319d8, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::SEffectList
; alias: _ZN6glitch7collada11SEffectListC1ERKNS0_16CColladaDatabaseEPNS0_7SEffectE
; demangled: glitch::collada::SEffectList::SEffectList(glitch::collada::CColladaDatabase const&, glitch::collada::SEffect*)
; decoder-mode: arm
006319d8  10 40 2d e9                                      push {r4, lr}
006319dc  00 40 a0 e1                                      mov r4, r0
006319e0  00 00 84 e5                                      str r0, [r4]
006319e4  04 00 84 e5                                      str r0, [r4, #4]
006319e8  00 30 91 e5                                      ldr r3, [r1]
006319ec  04 10 91 e5                                      ldr r1, [r1, #4]
006319f0  10 d0 4d e2                                      sub sp, sp, #0x10
006319f4  00 00 53 e3                                      cmp r3, #0
006319f8  08 10 8d e5                                      str r1, [sp, #8]
006319fc  04 30 8d e5                                      str r3, [sp, #4]
00631a00  03 00 00 0a                                      beq #0x631a14
00631a04  04 10 93 e5                                      ldr r1, [r3, #4]
00631a08  00 00 51 e3                                      cmp r1, #0
00631a0c  01 10 81 12                                      addne r1, r1, #1
00631a10  04 10 83 15                                      strne r1, [r3, #4]
00631a14  14 00 a0 e3                                      mov r0, #0x14
00631a18  0c 20 8d e5                                      str r2, [sp, #0xc]
00631a1c  f4 0a fc eb                                      bl #0x5345f4
00631a20  04 20 9d e5                                      ldr r2, [sp, #4]
00631a24  00 30 a0 e1                                      mov r3, r0
00631a28  08 20 80 e5                                      str r2, [r0, #8]
00631a2c  08 10 9d e5                                      ldr r1, [sp, #8]
00631a30  00 00 52 e3                                      cmp r2, #0
00631a34  0c 10 80 e5                                      str r1, [r0, #0xc]
00631a38  03 00 00 0a                                      beq #0x631a4c
00631a3c  04 10 92 e5                                      ldr r1, [r2, #4]
00631a40  00 00 51 e3                                      cmp r1, #0
00631a44  01 10 81 12                                      addne r1, r1, #1
00631a48  04 10 82 15                                      strne r1, [r2, #4]
00631a4c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00631a50  04 00 8d e2                                      add r0, sp, #4
00631a54  10 20 83 e5                                      str r2, [r3, #0x10]
00631a58  04 20 94 e5                                      ldr r2, [r4, #4]
00631a5c  00 40 83 e5                                      str r4, [r3]
00631a60  04 20 83 e5                                      str r2, [r3, #4]
00631a64  00 30 82 e5                                      str r3, [r2]
00631a68  04 30 84 e5                                      str r3, [r4, #4]
00631a6c  80 9e ff eb                                      bl #0x619474
00631a70  04 00 a0 e1                                      mov r0, r4
00631a74  10 d0 8d e2                                      add sp, sp, #0x10
00631a78  10 80 bd e8                                      pop {r4, pc}
