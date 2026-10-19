; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a26b8, declared_size=124, range_size=124, mode=arm
; class-group: void gameswf::array<gameswf::as_mcloader::loadable_movie>
; alias: _ZN7gameswf5arrayINS_11as_mcloader14loadable_movieEE9push_backIS2_EEvRKT_
; demangled: void gameswf::array<gameswf::as_mcloader::loadable_movie>::push_back<gameswf::as_mcloader::loadable_movie>(gameswf::as_mcloader::loadable_movie const&)
; decoder-mode: arm
007a26b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a26bc  04 30 90 e5                                      ldr r3, [r0, #4]
007a26c0  08 20 90 e5                                      ldr r2, [r0, #8]
007a26c4  00 40 a0 e1                                      mov r4, r0
007a26c8  01 60 83 e2                                      add r6, r3, #1
007a26cc  02 00 56 e1                                      cmp r6, r2
007a26d0  01 50 a0 e1                                      mov r5, r1
007a26d4  12 00 00 ca                                      bgt #0x7a2724
007a26d8  00 00 95 e5                                      ldr r0, [r5]
007a26dc  00 70 94 e5                                      ldr r7, [r4]
007a26e0  00 00 50 e3                                      cmp r0, #0
007a26e4  03 02 87 e7                                      str r0, [r7, r3, lsl #4]
007a26e8  03 72 87 e0                                      add r7, r7, r3, lsl #4
007a26ec  00 00 00 0a                                      beq #0x7a26f4
007a26f0  5b dd fe eb                                      bl #0x759c64
007a26f4  04 30 95 e5                                      ldr r3, [r5, #4]
007a26f8  04 30 87 e5                                      str r3, [r7, #4]
007a26fc  00 00 53 e3                                      cmp r3, #0
007a2700  00 20 93 15                                      ldrne r2, [r3]
007a2704  01 20 82 12                                      addne r2, r2, #1
007a2708  00 20 83 15                                      strne r2, [r3]
007a270c  08 30 95 e5                                      ldr r3, [r5, #8]
007a2710  08 30 87 e5                                      str r3, [r7, #8]
007a2714  0c 30 95 e5                                      ldr r3, [r5, #0xc]
007a2718  0c 30 87 e5                                      str r3, [r7, #0xc]
007a271c  04 60 84 e5                                      str r6, [r4, #4]
007a2720  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a2724  c6 10 86 e0                                      add r1, r6, r6, asr #1
007a2728  a8 ff ff eb                                      bl #0x7a25d0
007a272c  04 30 94 e5                                      ldr r3, [r4, #4]
007a2730  e8 ff ff ea                                      b #0x7a26d8
