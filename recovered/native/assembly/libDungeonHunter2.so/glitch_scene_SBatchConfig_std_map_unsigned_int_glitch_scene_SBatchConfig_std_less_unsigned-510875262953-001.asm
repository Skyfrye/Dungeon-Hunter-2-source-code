; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0058ff54, declared_size=488, range_size=488, mode=arm
; class-group: glitch::scene::SBatchConfig& std::map<unsigned int, glitch::scene::SBatchConfig, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, glitch::scene::SBatchConfig> > >
; alias: _ZNSt3mapIjN6glitch5scene12SBatchConfigESt4lessIjESaISt4pairIKjS2_EEEixIjEERS2_RKT_
; demangled: glitch::scene::SBatchConfig& std::map<unsigned int, glitch::scene::SBatchConfig, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, glitch::scene::SBatchConfig> > >::operator[]<unsigned int>(unsigned int const&)
; decoder-mode: arm
0058ff54  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058ff58  04 40 90 e5                                      ldr r4, [r0, #4]
0058ff5c  68 d0 4d e2                                      sub sp, sp, #0x68
0058ff60  00 50 a0 e1                                      mov r5, r0
0058ff64  00 00 54 e3                                      cmp r4, #0
0058ff68  01 80 a0 e1                                      mov r8, r1
0058ff6c  00 40 a0 01                                      moveq r4, r0
0058ff70  0b 00 00 0a                                      beq #0x58ffa4
0058ff74  00 10 91 e5                                      ldr r1, [r1]
0058ff78  00 20 a0 e1                                      mov r2, r0
0058ff7c  00 00 00 ea                                      b #0x58ff84
0058ff80  03 40 a0 e1                                      mov r4, r3
0058ff84  10 30 94 e5                                      ldr r3, [r4, #0x10]
0058ff88  01 00 53 e1                                      cmp r3, r1
0058ff8c  0c 30 94 35                                      ldrlo r3, [r4, #0xc]
0058ff90  08 30 94 25                                      ldrhs r3, [r4, #8]
0058ff94  02 40 a0 31                                      movlo r4, r2
0058ff98  04 20 a0 e1                                      mov r2, r4
0058ff9c  00 00 53 e3                                      cmp r3, #0
0058ffa0  f6 ff ff 1a                                      bne #0x58ff80
0058ffa4  04 00 55 e1                                      cmp r5, r4
0058ffa8  04 00 00 0a                                      beq #0x58ffc0
0058ffac  00 20 98 e5                                      ldr r2, [r8]
0058ffb0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0058ffb4  04 00 a0 e1                                      mov r0, r4
0058ffb8  03 00 52 e1                                      cmp r2, r3
0058ffbc  45 00 00 2a                                      bhs #0x5900d8
0058ffc0  00 70 a0 e3                                      mov r7, #0
0058ffc4  00 30 a0 e3                                      mov r3, #0
0058ffc8  38 00 8d e2                                      add r0, sp, #0x38
0058ffcc  54 30 8d e5                                      str r3, [sp, #0x54]
0058ffd0  44 30 8d e5                                      str r3, [sp, #0x44]
0058ffd4  48 30 8d e5                                      str r3, [sp, #0x48]
0058ffd8  4c 30 8d e5                                      str r3, [sp, #0x4c]
0058ffdc  50 30 8d e5                                      str r3, [sp, #0x50]
0058ffe0  34 70 8d e5                                      str r7, [sp, #0x34]
0058ffe4  38 70 8d e5                                      str r7, [sp, #0x38]
0058ffe8  3c 70 8d e5                                      str r7, [sp, #0x3c]
0058ffec  40 70 cd e5                                      strb r7, [sp, #0x40]
0058fff0  41 70 cd e5                                      strb r7, [sp, #0x41]
0058fff4  42 70 cd e5                                      strb r7, [sp, #0x42]
0058fff8  43 70 cd e5                                      strb r7, [sp, #0x43]
0058fffc  5c 70 8d e5                                      str r7, [sp, #0x5c]
00590000  75 e3 ff eb                                      bl #0x588ddc
00590004  34 60 9d e5                                      ldr r6, [sp, #0x34]
00590008  00 30 98 e5                                      ldr r3, [r8]
0059000c  5c 70 8d e5                                      str r7, [sp, #0x5c]
00590010  07 00 56 e1                                      cmp r6, r7
00590014  48 00 8d e9                                      stmib sp, {r3, r6}
00590018  3f 00 00 0a                                      beq #0x59011c
0059001c  00 30 96 e5                                      ldr r3, [r6]
00590020  0c c0 8d e2                                      add ip, sp, #0xc
00590024  38 e0 8d e2                                      add lr, sp, #0x38
00590028  01 30 83 e2                                      add r3, r3, #1
0059002c  00 30 86 e5                                      str r3, [r6]
00590030  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00590034  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00590038  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0059003c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00590040  5c e0 9d e5                                      ldr lr, [sp, #0x5c]
00590044  07 00 5e e1                                      cmp lr, r7
00590048  30 e0 8d e5                                      str lr, [sp, #0x30]
0059004c  04 30 9e 15                                      ldrne r3, [lr, #4]
00590050  01 30 83 12                                      addne r3, r3, #1
00590054  04 30 8e 15                                      strne r3, [lr, #4]
00590058  05 10 a0 e1                                      mov r1, r5
0059005c  64 00 8d e2                                      add r0, sp, #0x64
00590060  60 20 8d e2                                      add r2, sp, #0x60
00590064  04 30 8d e2                                      add r3, sp, #4
00590068  60 40 8d e5                                      str r4, [sp, #0x60]
0059006c  dd e8 ff eb                                      bl #0x58a3e8
00590070  30 00 9d e5                                      ldr r0, [sp, #0x30]
00590074  64 50 9d e5                                      ldr r5, [sp, #0x64]
00590078  00 00 50 e3                                      cmp r0, #0
0059007c  00 00 00 0a                                      beq #0x590084
00590080  3f 35 f6 eb                                      bl #0x31d584
00590084  08 40 9d e5                                      ldr r4, [sp, #8]
00590088  00 00 54 e3                                      cmp r4, #0
0059008c  04 00 00 0a                                      beq #0x5900a4
00590090  00 30 94 e5                                      ldr r3, [r4]
00590094  01 30 43 e2                                      sub r3, r3, #1
00590098  00 00 53 e3                                      cmp r3, #0
0059009c  00 30 84 e5                                      str r3, [r4]
005900a0  0f 00 00 0a                                      beq #0x5900e4
005900a4  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005900a8  00 00 50 e3                                      cmp r0, #0
005900ac  00 00 00 0a                                      beq #0x5900b4
005900b0  33 35 f6 eb                                      bl #0x31d584
005900b4  34 40 9d e5                                      ldr r4, [sp, #0x34]
005900b8  00 00 54 e3                                      cmp r4, #0
005900bc  04 00 00 0a                                      beq #0x5900d4
005900c0  00 30 94 e5                                      ldr r3, [r4]
005900c4  01 30 43 e2                                      sub r3, r3, #1
005900c8  00 00 53 e3                                      cmp r3, #0
005900cc  00 30 84 e5                                      str r3, [r4]
005900d0  0b 00 00 0a                                      beq #0x590104
005900d4  05 00 a0 e1                                      mov r0, r5
005900d8  14 00 80 e2                                      add r0, r0, #0x14
005900dc  68 d0 8d e2                                      add sp, sp, #0x68
005900e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005900e4  04 00 a0 e1                                      mov r0, r4
005900e8  a2 ef 00 eb                                      bl #0x5cbf78
005900ec  04 00 a0 e1                                      mov r0, r4
005900f0  6e f8 f5 eb                                      bl #0x30e2b0
005900f4  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005900f8  00 00 50 e3                                      cmp r0, #0
005900fc  eb ff ff 1a                                      bne #0x5900b0
00590100  eb ff ff ea                                      b #0x5900b4
00590104  04 00 a0 e1                                      mov r0, r4
00590108  9a ef 00 eb                                      bl #0x5cbf78
0059010c  04 00 a0 e1                                      mov r0, r4
00590110  66 f8 f5 eb                                      bl #0x30e2b0
00590114  05 00 a0 e1                                      mov r0, r5
00590118  ee ff ff ea                                      b #0x5900d8
0059011c  0c c0 8d e2                                      add ip, sp, #0xc
00590120  38 e0 8d e2                                      add lr, sp, #0x38
00590124  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00590128  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0059012c  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
00590130  30 60 8d e5                                      str r6, [sp, #0x30]
00590134  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00590138  c6 ff ff ea                                      b #0x590058
