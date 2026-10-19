; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006bc7d4, declared_size=80, range_size=80, mode=arm
; class-group: glitch::res::onDemandPointer<unsigned short>
; alias: _ZN6glitch3res15onDemandPointerItED1Ev
; demangled: glitch::res::onDemandPointer<unsigned short>::~onDemandPointer()
; decoder-mode: arm
006bc7d4  70 40 2d e9                                      push {r4, r5, r6, lr}
006bc7d8  00 40 90 e5                                      ldr r4, [r0]
006bc7dc  00 50 a0 e1                                      mov r5, r0
006bc7e0  00 00 54 e3                                      cmp r4, #0
006bc7e4  0c 00 00 0a                                      beq #0x6bc81c
006bc7e8  00 30 94 e5                                      ldr r3, [r4]
006bc7ec  01 30 43 e2                                      sub r3, r3, #1
006bc7f0  00 00 53 e3                                      cmp r3, #0
006bc7f4  00 30 84 e5                                      str r3, [r4]
006bc7f8  05 00 00 1a                                      bne #0x6bc814
006bc7fc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006bc800  00 00 50 e3                                      cmp r0, #0
006bc804  00 00 00 0a                                      beq #0x6bc80c
006bc808  2a 46 f1 eb                                      bl #0x30e0b8
006bc80c  00 30 a0 e3                                      mov r3, #0
006bc810  0c 30 84 e5                                      str r3, [r4, #0xc]
006bc814  00 30 a0 e3                                      mov r3, #0
006bc818  00 30 85 e5                                      str r3, [r5]
006bc81c  05 00 a0 e1                                      mov r0, r5
006bc820  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006bc824, declared_size=104, range_size=104, mode=arm
; class-group: glitch::res::onDemandPointer<unsigned short>
; alias: _ZN6glitch3res15onDemandPointerItEaSERKS2_
; demangled: glitch::res::onDemandPointer<unsigned short>::operator=(glitch::res::onDemandPointer<unsigned short> const&)
; decoder-mode: arm
006bc824  70 40 2d e9                                      push {r4, r5, r6, lr}
006bc828  00 30 91 e5                                      ldr r3, [r1]
006bc82c  01 60 a0 e1                                      mov r6, r1
006bc830  00 50 a0 e1                                      mov r5, r0
006bc834  00 00 53 e3                                      cmp r3, #0
006bc838  00 20 93 15                                      ldrne r2, [r3]
006bc83c  01 20 82 12                                      addne r2, r2, #1
006bc840  00 20 83 15                                      strne r2, [r3]
006bc844  00 40 90 e5                                      ldr r4, [r0]
006bc848  00 00 54 e3                                      cmp r4, #0
006bc84c  0a 00 00 0a                                      beq #0x6bc87c
006bc850  00 30 94 e5                                      ldr r3, [r4]
006bc854  01 30 43 e2                                      sub r3, r3, #1
006bc858  00 00 53 e3                                      cmp r3, #0
006bc85c  00 30 84 e5                                      str r3, [r4]
006bc860  05 00 00 1a                                      bne #0x6bc87c
006bc864  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006bc868  00 00 50 e3                                      cmp r0, #0
006bc86c  00 00 00 0a                                      beq #0x6bc874
006bc870  10 46 f1 eb                                      bl #0x30e0b8
006bc874  00 30 a0 e3                                      mov r3, #0
006bc878  0c 30 84 e5                                      str r3, [r4, #0xc]
006bc87c  00 30 96 e5                                      ldr r3, [r6]
006bc880  05 00 a0 e1                                      mov r0, r5
006bc884  00 30 85 e5                                      str r3, [r5]
006bc888  70 80 bd e8                                      pop {r4, r5, r6, pc}
