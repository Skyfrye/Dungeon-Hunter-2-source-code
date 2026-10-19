; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00645328, declared_size=108, range_size=108, mode=arm
; class-group: glitch::res::onDemand<unsigned short>
; alias: _ZN6glitch3res8onDemandItE3getERNS0_14onDemandReaderE
; demangled: glitch::res::onDemand<unsigned short>::get(glitch::res::onDemandReader&)
; decoder-mode: arm
00645328  70 40 2d e9                                      push {r4, r5, r6, lr}
0064532c  00 50 a0 e1                                      mov r5, r0
00645330  00 00 51 e3                                      cmp r1, #0
00645334  00 10 85 e5                                      str r1, [r5]
00645338  00 30 91 15                                      ldrne r3, [r1]
0064533c  01 40 a0 e1                                      mov r4, r1
00645340  02 60 a0 e1                                      mov r6, r2
00645344  01 30 83 12                                      addne r3, r3, #1
00645348  00 30 81 15                                      strne r3, [r1]
0064534c  0c 10 91 e5                                      ldr r1, [r1, #0xc]
00645350  00 00 51 e3                                      cmp r1, #0
00645354  01 00 00 0a                                      beq #0x645360
00645358  05 00 a0 e1                                      mov r0, r5
0064535c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00645360  08 00 94 e5                                      ldr r0, [r4, #8]
00645364  03 00 c0 e3                                      bic r0, r0, #3
00645368  8e bb fb eb                                      bl #0x5341a8
0064536c  0c 00 84 e5                                      str r0, [r4, #0xc]
00645370  00 30 a0 e1                                      mov r3, r0
00645374  04 20 94 e5                                      ldr r2, [r4, #4]
00645378  06 00 a0 e1                                      mov r0, r6
0064537c  00 c0 96 e5                                      ldr ip, [r6]
00645380  08 10 94 e5                                      ldr r1, [r4, #8]
00645384  0f e0 a0 e1                                      mov lr, pc
00645388  08 f0 9c e5                                      ldr pc, [ip, #8]
0064538c  05 00 a0 e1                                      mov r0, r5
00645390  70 80 bd e8                                      pop {r4, r5, r6, pc}
