; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0058f2a8, declared_size=160, range_size=160, mode=arm
; class-group: glitch::scene::SBatchConfig
; alias: _ZN6glitch5scene12SBatchConfigaSERKS1_
; demangled: glitch::scene::SBatchConfig::operator=(glitch::scene::SBatchConfig const&)
; decoder-mode: arm
0058f2a8  70 40 2d e9                                      push {r4, r5, r6, lr}
0058f2ac  00 30 91 e5                                      ldr r3, [r1]
0058f2b0  01 60 a0 e1                                      mov r6, r1
0058f2b4  00 50 a0 e1                                      mov r5, r0
0058f2b8  00 00 53 e3                                      cmp r3, #0
0058f2bc  00 20 93 15                                      ldrne r2, [r3]
0058f2c0  01 20 82 12                                      addne r2, r2, #1
0058f2c4  00 20 83 15                                      strne r2, [r3]
0058f2c8  00 40 90 e5                                      ldr r4, [r0]
0058f2cc  00 30 80 e5                                      str r3, [r0]
0058f2d0  00 00 54 e3                                      cmp r4, #0
0058f2d4  04 00 00 0a                                      beq #0x58f2ec
0058f2d8  00 30 94 e5                                      ldr r3, [r4]
0058f2dc  01 30 43 e2                                      sub r3, r3, #1
0058f2e0  00 00 53 e3                                      cmp r3, #0
0058f2e4  00 30 84 e5                                      str r3, [r4]
0058f2e8  11 00 00 0a                                      beq #0x58f334
0058f2ec  04 c0 85 e2                                      add ip, r5, #4
0058f2f0  04 40 86 e2                                      add r4, r6, #4
0058f2f4  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0058f2f8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0058f2fc  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0058f300  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0058f304  28 30 96 e5                                      ldr r3, [r6, #0x28]
0058f308  00 00 53 e3                                      cmp r3, #0
0058f30c  04 20 93 15                                      ldrne r2, [r3, #4]
0058f310  01 20 82 12                                      addne r2, r2, #1
0058f314  04 20 83 15                                      strne r2, [r3, #4]
0058f318  28 00 95 e5                                      ldr r0, [r5, #0x28]
0058f31c  28 30 85 e5                                      str r3, [r5, #0x28]
0058f320  00 00 50 e3                                      cmp r0, #0
0058f324  00 00 00 0a                                      beq #0x58f32c
0058f328  95 38 f6 eb                                      bl #0x31d584
0058f32c  05 00 a0 e1                                      mov r0, r5
0058f330  70 80 bd e8                                      pop {r4, r5, r6, pc}
0058f334  04 00 a0 e1                                      mov r0, r4
0058f338  0e f3 00 eb                                      bl #0x5cbf78
0058f33c  04 00 a0 e1                                      mov r0, r4
0058f340  da fb f5 eb                                      bl #0x30e2b0
0058f344  e8 ff ff ea                                      b #0x58f2ec
