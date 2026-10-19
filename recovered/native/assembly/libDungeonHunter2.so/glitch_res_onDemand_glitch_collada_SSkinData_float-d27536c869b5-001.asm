; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00663bd0, declared_size=108, range_size=108, mode=arm
; class-group: glitch::res::onDemand<glitch::collada::SSkinData<float> >
; alias: _ZN6glitch3res8onDemandINS_7collada9SSkinDataIfEEE3getERNS0_14onDemandReaderE
; demangled: glitch::res::onDemand<glitch::collada::SSkinData<float> >::get(glitch::res::onDemandReader&)
; decoder-mode: arm
00663bd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00663bd4  00 50 a0 e1                                      mov r5, r0
00663bd8  00 00 51 e3                                      cmp r1, #0
00663bdc  00 10 85 e5                                      str r1, [r5]
00663be0  00 30 91 15                                      ldrne r3, [r1]
00663be4  01 40 a0 e1                                      mov r4, r1
00663be8  02 60 a0 e1                                      mov r6, r2
00663bec  01 30 83 12                                      addne r3, r3, #1
00663bf0  00 30 81 15                                      strne r3, [r1]
00663bf4  0c 10 91 e5                                      ldr r1, [r1, #0xc]
00663bf8  00 00 51 e3                                      cmp r1, #0
00663bfc  01 00 00 0a                                      beq #0x663c08
00663c00  05 00 a0 e1                                      mov r0, r5
00663c04  70 80 bd e8                                      pop {r4, r5, r6, pc}
00663c08  08 00 94 e5                                      ldr r0, [r4, #8]
00663c0c  03 00 c0 e3                                      bic r0, r0, #3
00663c10  64 41 fb eb                                      bl #0x5341a8
00663c14  0c 00 84 e5                                      str r0, [r4, #0xc]
00663c18  00 30 a0 e1                                      mov r3, r0
00663c1c  04 20 94 e5                                      ldr r2, [r4, #4]
00663c20  06 00 a0 e1                                      mov r0, r6
00663c24  00 c0 96 e5                                      ldr ip, [r6]
00663c28  08 10 94 e5                                      ldr r1, [r4, #8]
00663c2c  0f e0 a0 e1                                      mov lr, pc
00663c30  08 f0 9c e5                                      ldr pc, [ip, #8]
00663c34  05 00 a0 e1                                      mov r0, r5
00663c38  70 80 bd e8                                      pop {r4, r5, r6, pc}
