; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00663c3c, declared_size=108, range_size=108, mode=arm
; class-group: glitch::res::onDemand<std::pair<float, unsigned short> >
; alias: _ZN6glitch3res8onDemandISt4pairIftEE3getERNS0_14onDemandReaderE
; demangled: glitch::res::onDemand<std::pair<float, unsigned short> >::get(glitch::res::onDemandReader&)
; decoder-mode: arm
00663c3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00663c40  00 50 a0 e1                                      mov r5, r0
00663c44  00 00 51 e3                                      cmp r1, #0
00663c48  00 10 85 e5                                      str r1, [r5]
00663c4c  00 30 91 15                                      ldrne r3, [r1]
00663c50  01 40 a0 e1                                      mov r4, r1
00663c54  02 60 a0 e1                                      mov r6, r2
00663c58  01 30 83 12                                      addne r3, r3, #1
00663c5c  00 30 81 15                                      strne r3, [r1]
00663c60  0c 10 91 e5                                      ldr r1, [r1, #0xc]
00663c64  00 00 51 e3                                      cmp r1, #0
00663c68  01 00 00 0a                                      beq #0x663c74
00663c6c  05 00 a0 e1                                      mov r0, r5
00663c70  70 80 bd e8                                      pop {r4, r5, r6, pc}
00663c74  08 00 94 e5                                      ldr r0, [r4, #8]
00663c78  03 00 c0 e3                                      bic r0, r0, #3
00663c7c  49 41 fb eb                                      bl #0x5341a8
00663c80  0c 00 84 e5                                      str r0, [r4, #0xc]
00663c84  00 30 a0 e1                                      mov r3, r0
00663c88  04 20 94 e5                                      ldr r2, [r4, #4]
00663c8c  06 00 a0 e1                                      mov r0, r6
00663c90  00 c0 96 e5                                      ldr ip, [r6]
00663c94  08 10 94 e5                                      ldr r1, [r4, #8]
00663c98  0f e0 a0 e1                                      mov lr, pc
00663c9c  08 f0 9c e5                                      ldr pc, [ip, #8]
00663ca0  05 00 a0 e1                                      mov r0, r5
00663ca4  70 80 bd e8                                      pop {r4, r5, r6, pc}
