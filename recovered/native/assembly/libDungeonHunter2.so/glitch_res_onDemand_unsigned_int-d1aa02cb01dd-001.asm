; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006452bc, declared_size=108, range_size=108, mode=arm
; class-group: glitch::res::onDemand<unsigned int>
; alias: _ZN6glitch3res8onDemandIjE3getERNS0_14onDemandReaderE
; demangled: glitch::res::onDemand<unsigned int>::get(glitch::res::onDemandReader&)
; decoder-mode: arm
006452bc  70 40 2d e9                                      push {r4, r5, r6, lr}
006452c0  00 50 a0 e1                                      mov r5, r0
006452c4  00 00 51 e3                                      cmp r1, #0
006452c8  00 10 85 e5                                      str r1, [r5]
006452cc  00 30 91 15                                      ldrne r3, [r1]
006452d0  01 40 a0 e1                                      mov r4, r1
006452d4  02 60 a0 e1                                      mov r6, r2
006452d8  01 30 83 12                                      addne r3, r3, #1
006452dc  00 30 81 15                                      strne r3, [r1]
006452e0  0c 10 91 e5                                      ldr r1, [r1, #0xc]
006452e4  00 00 51 e3                                      cmp r1, #0
006452e8  01 00 00 0a                                      beq #0x6452f4
006452ec  05 00 a0 e1                                      mov r0, r5
006452f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006452f4  08 00 94 e5                                      ldr r0, [r4, #8]
006452f8  03 00 c0 e3                                      bic r0, r0, #3
006452fc  a9 bb fb eb                                      bl #0x5341a8
00645300  0c 00 84 e5                                      str r0, [r4, #0xc]
00645304  00 30 a0 e1                                      mov r3, r0
00645308  04 20 94 e5                                      ldr r2, [r4, #4]
0064530c  06 00 a0 e1                                      mov r0, r6
00645310  00 c0 96 e5                                      ldr ip, [r6]
00645314  08 10 94 e5                                      ldr r1, [r4, #8]
00645318  0f e0 a0 e1                                      mov lr, pc
0064531c  08 f0 9c e5                                      ldr pc, [ip, #8]
00645320  05 00 a0 e1                                      mov r0, r5
00645324  70 80 bd e8                                      pop {r4, r5, r6, pc}
