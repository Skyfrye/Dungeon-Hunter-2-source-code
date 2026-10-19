; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00645250, declared_size=108, range_size=108, mode=arm
; class-group: glitch::res::onDemand<char>
; alias: _ZN6glitch3res8onDemandIcE3getERNS0_14onDemandReaderE
; demangled: glitch::res::onDemand<char>::get(glitch::res::onDemandReader&)
; decoder-mode: arm
00645250  70 40 2d e9                                      push {r4, r5, r6, lr}
00645254  00 50 a0 e1                                      mov r5, r0
00645258  00 00 51 e3                                      cmp r1, #0
0064525c  00 10 85 e5                                      str r1, [r5]
00645260  00 30 91 15                                      ldrne r3, [r1]
00645264  01 40 a0 e1                                      mov r4, r1
00645268  02 60 a0 e1                                      mov r6, r2
0064526c  01 30 83 12                                      addne r3, r3, #1
00645270  00 30 81 15                                      strne r3, [r1]
00645274  0c 10 91 e5                                      ldr r1, [r1, #0xc]
00645278  00 00 51 e3                                      cmp r1, #0
0064527c  01 00 00 0a                                      beq #0x645288
00645280  05 00 a0 e1                                      mov r0, r5
00645284  70 80 bd e8                                      pop {r4, r5, r6, pc}
00645288  08 00 94 e5                                      ldr r0, [r4, #8]
0064528c  03 00 c0 e3                                      bic r0, r0, #3
00645290  c4 bb fb eb                                      bl #0x5341a8
00645294  0c 00 84 e5                                      str r0, [r4, #0xc]
00645298  00 30 a0 e1                                      mov r3, r0
0064529c  04 20 94 e5                                      ldr r2, [r4, #4]
006452a0  06 00 a0 e1                                      mov r0, r6
006452a4  00 c0 96 e5                                      ldr ip, [r6]
006452a8  08 10 94 e5                                      ldr r1, [r4, #8]
006452ac  0f e0 a0 e1                                      mov lr, pc
006452b0  08 f0 9c e5                                      ldr pc, [ip, #8]
006452b4  05 00 a0 e1                                      mov r0, r5
006452b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
