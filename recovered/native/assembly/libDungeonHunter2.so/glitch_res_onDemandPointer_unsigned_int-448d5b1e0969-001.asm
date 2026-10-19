; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006bc71c, declared_size=80, range_size=80, mode=arm
; class-group: glitch::res::onDemandPointer<unsigned int>
; alias: _ZN6glitch3res15onDemandPointerIjED1Ev
; demangled: glitch::res::onDemandPointer<unsigned int>::~onDemandPointer()
; decoder-mode: arm
006bc71c  70 40 2d e9                                      push {r4, r5, r6, lr}
006bc720  00 40 90 e5                                      ldr r4, [r0]
006bc724  00 50 a0 e1                                      mov r5, r0
006bc728  00 00 54 e3                                      cmp r4, #0
006bc72c  0c 00 00 0a                                      beq #0x6bc764
006bc730  00 30 94 e5                                      ldr r3, [r4]
006bc734  01 30 43 e2                                      sub r3, r3, #1
006bc738  00 00 53 e3                                      cmp r3, #0
006bc73c  00 30 84 e5                                      str r3, [r4]
006bc740  05 00 00 1a                                      bne #0x6bc75c
006bc744  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006bc748  00 00 50 e3                                      cmp r0, #0
006bc74c  00 00 00 0a                                      beq #0x6bc754
006bc750  58 46 f1 eb                                      bl #0x30e0b8
006bc754  00 30 a0 e3                                      mov r3, #0
006bc758  0c 30 84 e5                                      str r3, [r4, #0xc]
006bc75c  00 30 a0 e3                                      mov r3, #0
006bc760  00 30 85 e5                                      str r3, [r5]
006bc764  05 00 a0 e1                                      mov r0, r5
006bc768  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006bc76c, declared_size=104, range_size=104, mode=arm
; class-group: glitch::res::onDemandPointer<unsigned int>
; alias: _ZN6glitch3res15onDemandPointerIjEaSERKS2_
; demangled: glitch::res::onDemandPointer<unsigned int>::operator=(glitch::res::onDemandPointer<unsigned int> const&)
; decoder-mode: arm
006bc76c  70 40 2d e9                                      push {r4, r5, r6, lr}
006bc770  00 30 91 e5                                      ldr r3, [r1]
006bc774  01 60 a0 e1                                      mov r6, r1
006bc778  00 50 a0 e1                                      mov r5, r0
006bc77c  00 00 53 e3                                      cmp r3, #0
006bc780  00 20 93 15                                      ldrne r2, [r3]
006bc784  01 20 82 12                                      addne r2, r2, #1
006bc788  00 20 83 15                                      strne r2, [r3]
006bc78c  00 40 90 e5                                      ldr r4, [r0]
006bc790  00 00 54 e3                                      cmp r4, #0
006bc794  0a 00 00 0a                                      beq #0x6bc7c4
006bc798  00 30 94 e5                                      ldr r3, [r4]
006bc79c  01 30 43 e2                                      sub r3, r3, #1
006bc7a0  00 00 53 e3                                      cmp r3, #0
006bc7a4  00 30 84 e5                                      str r3, [r4]
006bc7a8  05 00 00 1a                                      bne #0x6bc7c4
006bc7ac  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006bc7b0  00 00 50 e3                                      cmp r0, #0
006bc7b4  00 00 00 0a                                      beq #0x6bc7bc
006bc7b8  3e 46 f1 eb                                      bl #0x30e0b8
006bc7bc  00 30 a0 e3                                      mov r3, #0
006bc7c0  0c 30 84 e5                                      str r3, [r4, #0xc]
006bc7c4  00 30 96 e5                                      ldr r3, [r6]
006bc7c8  05 00 a0 e1                                      mov r0, r5
006bc7cc  00 30 85 e5                                      str r3, [r5]
006bc7d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
