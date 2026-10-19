; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00664530, declared_size=200, range_size=200, mode=arm
; class-group: glitch::collada::SSkinBuffer
; alias: _ZN6glitch7collada11SSkinBufferaSERKS1_
; demangled: glitch::collada::SSkinBuffer::operator=(glitch::collada::SSkinBuffer const&)
; decoder-mode: arm
00664530  30 40 2d e9                                      push {r4, r5, lr}
00664534  00 30 91 e5                                      ldr r3, [r1]
00664538  00 40 a0 e1                                      mov r4, r0
0066453c  0c d0 4d e2                                      sub sp, sp, #0xc
00664540  00 00 53 e3                                      cmp r3, #0
00664544  04 20 93 15                                      ldrne r2, [r3, #4]
00664548  01 50 a0 e1                                      mov r5, r1
0066454c  01 20 82 12                                      addne r2, r2, #1
00664550  04 20 83 15                                      strne r2, [r3, #4]
00664554  00 00 90 e5                                      ldr r0, [r0]
00664558  00 30 84 e5                                      str r3, [r4]
0066455c  00 00 50 e3                                      cmp r0, #0
00664560  00 00 00 0a                                      beq #0x664568
00664564  06 e4 f2 eb                                      bl #0x31d584
00664568  04 30 95 e5                                      ldr r3, [r5, #4]
0066456c  08 00 8d e2                                      add r0, sp, #8
00664570  04 30 8d e5                                      str r3, [sp, #4]
00664574  00 00 53 e3                                      cmp r3, #0
00664578  00 20 93 15                                      ldrne r2, [r3]
0066457c  01 20 82 12                                      addne r2, r2, #1
00664580  00 20 83 15                                      strne r2, [r3]
00664584  04 20 94 e5                                      ldr r2, [r4, #4]
00664588  04 30 9d 15                                      ldrne r3, [sp, #4]
0066458c  04 30 84 e5                                      str r3, [r4, #4]
00664590  04 20 20 e5                                      str r2, [r0, #-4]!
00664594  93 b1 f2 eb                                      bl #0x310be8
00664598  08 30 95 e5                                      ldr r3, [r5, #8]
0066459c  08 00 8d e2                                      add r0, sp, #8
006645a0  00 30 8d e5                                      str r3, [sp]
006645a4  00 00 53 e3                                      cmp r3, #0
006645a8  00 20 93 15                                      ldrne r2, [r3]
006645ac  01 20 82 12                                      addne r2, r2, #1
006645b0  00 20 83 15                                      strne r2, [r3]
006645b4  00 30 9d 15                                      ldrne r3, [sp]
006645b8  08 20 94 e5                                      ldr r2, [r4, #8]
006645bc  08 30 84 e5                                      str r3, [r4, #8]
006645c0  08 20 20 e5                                      str r2, [r0, #-8]!
006645c4  0d 00 a0 e1                                      mov r0, sp
006645c8  27 57 fc eb                                      bl #0x57a26c
006645cc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006645d0  04 00 a0 e1                                      mov r0, r4
006645d4  0c 30 84 e5                                      str r3, [r4, #0xc]
006645d8  10 30 d5 e5                                      ldrb r3, [r5, #0x10]
006645dc  10 30 c4 e5                                      strb r3, [r4, #0x10]
006645e0  11 30 d5 e5                                      ldrb r3, [r5, #0x11]
006645e4  11 30 c4 e5                                      strb r3, [r4, #0x11]
006645e8  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
006645ec  12 30 c4 e5                                      strb r3, [r4, #0x12]
006645f0  0c d0 8d e2                                      add sp, sp, #0xc
006645f4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006645f8, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::SSkinBuffer
; alias: _ZN6glitch7collada11SSkinBufferD1Ev
; demangled: glitch::collada::SSkinBuffer::~SSkinBuffer()
; decoder-mode: arm
006645f8  10 40 2d e9                                      push {r4, lr}
006645fc  00 40 a0 e1                                      mov r4, r0
00664600  08 00 80 e2                                      add r0, r0, #8
00664604  18 57 fc eb                                      bl #0x57a26c
00664608  04 00 84 e2                                      add r0, r4, #4
0066460c  75 b1 f2 eb                                      bl #0x310be8
00664610  00 00 94 e5                                      ldr r0, [r4]
00664614  00 00 50 e3                                      cmp r0, #0
00664618  00 00 00 0a                                      beq #0x664620
0066461c  d8 e3 f2 eb                                      bl #0x31d584
00664620  04 00 a0 e1                                      mov r0, r4
00664624  10 80 bd e8                                      pop {r4, pc}
