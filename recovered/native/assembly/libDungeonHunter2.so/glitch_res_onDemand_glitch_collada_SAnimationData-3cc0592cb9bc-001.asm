; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060b66c, declared_size=108, range_size=108, mode=arm
; class-group: glitch::res::onDemand<glitch::collada::SAnimationData>
; alias: _ZN6glitch3res8onDemandINS_7collada14SAnimationDataEE3getERNS0_14onDemandReaderE
; demangled: glitch::res::onDemand<glitch::collada::SAnimationData>::get(glitch::res::onDemandReader&)
; decoder-mode: arm
0060b66c  70 40 2d e9                                      push {r4, r5, r6, lr}
0060b670  00 50 a0 e1                                      mov r5, r0
0060b674  00 00 51 e3                                      cmp r1, #0
0060b678  00 10 85 e5                                      str r1, [r5]
0060b67c  00 30 91 15                                      ldrne r3, [r1]
0060b680  01 40 a0 e1                                      mov r4, r1
0060b684  02 60 a0 e1                                      mov r6, r2
0060b688  01 30 83 12                                      addne r3, r3, #1
0060b68c  00 30 81 15                                      strne r3, [r1]
0060b690  0c 10 91 e5                                      ldr r1, [r1, #0xc]
0060b694  00 00 51 e3                                      cmp r1, #0
0060b698  01 00 00 0a                                      beq #0x60b6a4
0060b69c  05 00 a0 e1                                      mov r0, r5
0060b6a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0060b6a4  08 00 94 e5                                      ldr r0, [r4, #8]
0060b6a8  03 00 c0 e3                                      bic r0, r0, #3
0060b6ac  bd a2 fc eb                                      bl #0x5341a8
0060b6b0  0c 00 84 e5                                      str r0, [r4, #0xc]
0060b6b4  00 30 a0 e1                                      mov r3, r0
0060b6b8  04 20 94 e5                                      ldr r2, [r4, #4]
0060b6bc  06 00 a0 e1                                      mov r0, r6
0060b6c0  00 c0 96 e5                                      ldr ip, [r6]
0060b6c4  08 10 94 e5                                      ldr r1, [r4, #8]
0060b6c8  0f e0 a0 e1                                      mov lr, pc
0060b6cc  08 f0 9c e5                                      ldr pc, [ip, #8]
0060b6d0  05 00 a0 e1                                      mov r0, r5
0060b6d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
