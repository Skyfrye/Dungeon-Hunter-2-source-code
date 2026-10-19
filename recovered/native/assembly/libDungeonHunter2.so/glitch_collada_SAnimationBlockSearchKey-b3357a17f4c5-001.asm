; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065d6d8, declared_size=144, range_size=144, mode=arm
; class-group: glitch::collada::SAnimationBlockSearchKey
; alias: _ZN6glitch7collada24SAnimationBlockSearchKeyC1ERKNS0_16CColladaDatabaseEii
; demangled: glitch::collada::SAnimationBlockSearchKey::SAnimationBlockSearchKey(glitch::collada::CColladaDatabase const&, int, int)
; decoder-mode: arm
0065d6d8  70 40 2d e9                                      push {r4, r5, r6, lr}
0065d6dc  00 c0 91 e5                                      ldr ip, [r1]
0065d6e0  00 40 a0 e1                                      mov r4, r0
0065d6e4  03 50 a0 e1                                      mov r5, r3
0065d6e8  00 c0 80 e5                                      str ip, [r0]
0065d6ec  04 00 91 e5                                      ldr r0, [r1, #4]
0065d6f0  00 00 5c e3                                      cmp ip, #0
0065d6f4  04 00 84 e5                                      str r0, [r4, #4]
0065d6f8  03 00 00 0a                                      beq #0x65d70c
0065d6fc  04 30 9c e5                                      ldr r3, [ip, #4]
0065d700  00 00 53 e3                                      cmp r3, #0
0065d704  01 30 83 12                                      addne r3, r3, #1
0065d708  04 30 8c 15                                      strne r3, [ip, #4]
0065d70c  00 30 a0 e3                                      mov r3, #0
0065d710  08 30 84 e5                                      str r3, [r4, #8]
0065d714  00 30 91 e5                                      ldr r3, [r1]
0065d718  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065d71c  20 00 93 e5                                      ldr r0, [r3, #0x20]
0065d720  34 30 90 e5                                      ldr r3, [r0, #0x34]
0065d724  00 00 53 e3                                      cmp r3, #0
0065d728  18 00 80 02                                      addeq r0, r0, #0x18
0065d72c  08 00 84 05                                      streq r0, [r4, #8]
0065d730  07 00 00 1a                                      bne #0x65d754
0065d734  0c 00 90 e9                                      ldmib r0, {r2, r3}
0065d738  04 00 a0 e1                                      mov r0, r4
0065d73c  02 00 55 e1                                      cmp r5, r2
0065d740  02 50 a0 b1                                      movlt r5, r2
0065d744  03 00 55 e1                                      cmp r5, r3
0065d748  0c 50 84 d5                                      strle r5, [r4, #0xc]
0065d74c  0c 30 84 c5                                      strgt r3, [r4, #0xc]
0065d750  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065d754  01 00 a0 e1                                      mov r0, r1
0065d758  02 10 a0 e1                                      mov r1, r2
0065d75c  04 c3 fe eb                                      bl #0x60e374
0065d760  08 00 84 e5                                      str r0, [r4, #8]
0065d764  f2 ff ff ea                                      b #0x65d734
