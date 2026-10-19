; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00647f54, declared_size=120, range_size=120, mode=arm
; class-group: glitch::video::SVertexStreamData
; alias: _ZN6glitch5video17SVertexStreamDataaSERNS0_13SVertexStreamE
; demangled: glitch::video::SVertexStreamData::operator=(glitch::video::SVertexStream&)
; decoder-mode: arm
00647f54  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00647f58  00 40 91 e5                                      ldr r4, [r1]
00647f5c  00 50 a0 e1                                      mov r5, r0
00647f60  00 00 54 e3                                      cmp r4, #0
00647f64  04 30 94 15                                      ldrne r3, [r4, #4]
00647f68  01 30 83 12                                      addne r3, r3, #1
00647f6c  04 30 84 15                                      strne r3, [r4, #4]
00647f70  00 00 54 e3                                      cmp r4, #0
00647f74  04 30 94 15                                      ldrne r3, [r4, #4]
00647f78  be 60 d1 e1                                      ldrh r6, [r1, #0xe]
00647f7c  04 a0 91 e5                                      ldr sl, [r1, #4]
00647f80  01 30 83 12                                      addne r3, r3, #1
00647f84  ba 80 d1 e1                                      ldrh r8, [r1, #0xa]
00647f88  bc 70 d1 e1                                      ldrh r7, [r1, #0xc]
00647f8c  04 30 84 15                                      strne r3, [r4, #4]
00647f90  00 00 90 e5                                      ldr r0, [r0]
00647f94  00 40 85 e5                                      str r4, [r5]
00647f98  00 00 50 e3                                      cmp r0, #0
00647f9c  00 00 00 0a                                      beq #0x647fa4
00647fa0  77 55 f3 eb                                      bl #0x31d584
00647fa4  00 00 54 e3                                      cmp r4, #0
00647fa8  04 a0 85 e5                                      str sl, [r5, #4]
00647fac  08 80 85 e5                                      str r8, [r5, #8]
00647fb0  bc 70 c5 e1                                      strh r7, [r5, #0xc]
00647fb4  be 60 c5 e1                                      strh r6, [r5, #0xe]
00647fb8  01 00 00 0a                                      beq #0x647fc4
00647fbc  04 00 a0 e1                                      mov r0, r4
00647fc0  6f 55 f3 eb                                      bl #0x31d584
00647fc4  05 00 a0 e1                                      mov r0, r5
00647fc8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
