; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005abfa8, declared_size=432, range_size=432, mode=arm
; class-group: glitch::video::E_DRIVER_ALLOCATION_RESULT glitch::video::CDriverBinding
; alias: _ZN6glitch5video14CDriverBinding16getProcessBufferINS0_12IVideoDriverEEENS0_26E_DRIVER_ALLOCATION_RESULTEPT_jjjRKN5boost13intrusive_ptrINS0_14CVertexStreamsEEEb
; demangled: glitch::video::E_DRIVER_ALLOCATION_RESULT glitch::video::CDriverBinding::getProcessBuffer<glitch::video::IVideoDriver>(glitch::video::IVideoDriver*, unsigned int, unsigned int, unsigned int, boost::intrusive_ptr<glitch::video::CVertexStreams> const&, bool)
; decoder-mode: arm
005abfa8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005abfac  00 40 a0 e1                                      mov r4, r0
005abfb0  08 00 90 e5                                      ldr r0, [r0, #8]
005abfb4  24 d0 4d e2                                      sub sp, sp, #0x24
005abfb8  02 50 a0 e1                                      mov r5, r2
005abfbc  00 00 52 e1                                      cmp r2, r0
005abfc0  03 60 a0 e1                                      mov r6, r3
005abfc4  40 70 9d e5                                      ldr r7, [sp, #0x40]
005abfc8  44 80 9d e5                                      ldr r8, [sp, #0x44]
005abfcc  48 c0 dd e5                                      ldrb ip, [sp, #0x48]
005abfd0  2b 00 00 0a                                      beq #0x5ac084
005abfd4  00 20 a0 e3                                      mov r2, #0
005abfd8  04 30 94 e5                                      ldr r3, [r4, #4]
005abfdc  00 00 53 e3                                      cmp r3, #0
005abfe0  04 00 00 0a                                      beq #0x5abff8
005abfe4  08 00 93 e5                                      ldr r0, [r3, #8]
005abfe8  00 00 50 e3                                      cmp r0, #0
005abfec  01 00 00 0a                                      beq #0x5abff8
005abff0  00 00 52 e3                                      cmp r2, #0
005abff4  0a 00 00 1a                                      bne #0x5ac024
005abff8  00 00 5c e3                                      cmp ip, #0
005abffc  04 00 a0 03                                      moveq r0, #4
005ac000  27 00 00 1a                                      bne #0x5ac0a4
005ac004  00 00 53 e3                                      cmp r3, #0
005ac008  4e 00 00 0a                                      beq #0x5ac148
005ac00c  08 30 93 e5                                      ldr r3, [r3, #8]
005ac010  00 00 53 e3                                      cmp r3, #0
005ac014  4b 00 00 0a                                      beq #0x5ac148
005ac018  00 00 52 e3                                      cmp r2, #0
005ac01c  09 00 a0 03                                      moveq r0, #9
005ac020  15 00 00 ea                                      b #0x5ac07c
005ac024  14 30 8d e5                                      str r3, [sp, #0x14]
005ac028  04 20 93 e5                                      ldr r2, [r3, #4]
005ac02c  10 00 8d e2                                      add r0, sp, #0x10
005ac030  14 c0 8d e2                                      add ip, sp, #0x14
005ac034  01 20 82 e2                                      add r2, r2, #1
005ac038  04 20 83 e5                                      str r2, [r3, #4]
005ac03c  14 40 84 e2                                      add r4, r4, #0x14
005ac040  05 10 a0 e1                                      mov r1, r5
005ac044  06 20 a0 e1                                      mov r2, r6
005ac048  07 30 a0 e1                                      mov r3, r7
005ac04c  00 11 8d e8                                      stm sp, {r8, ip}
005ac050  08 40 8d e5                                      str r4, [sp, #8]
005ac054  5d ff ff eb                                      bl #0x5abdd0
005ac058  10 00 9d e5                                      ldr r0, [sp, #0x10]
005ac05c  00 00 50 e3                                      cmp r0, #0
005ac060  00 00 00 0a                                      beq #0x5ac068
005ac064  46 c5 f5 eb                                      bl #0x31d584
005ac068  14 00 9d e5                                      ldr r0, [sp, #0x14]
005ac06c  00 00 50 e3                                      cmp r0, #0
005ac070  00 00 00 0a                                      beq #0x5ac078
005ac074  42 c5 f5 eb                                      bl #0x31d584
005ac078  04 00 a0 e3                                      mov r0, #4
005ac07c  24 d0 8d e2                                      add sp, sp, #0x24
005ac080  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005ac084  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005ac088  03 00 56 e1                                      cmp r6, r3
005ac08c  d0 ff ff 1a                                      bne #0x5abfd4
005ac090  10 20 94 e5                                      ldr r2, [r4, #0x10]
005ac094  02 00 57 e1                                      cmp r7, r2
005ac098  00 20 a0 13                                      movne r2, #0
005ac09c  01 20 a0 03                                      moveq r2, #1
005ac0a0  cc ff ff ea                                      b #0x5abfd8
005ac0a4  1c a0 8d e2                                      add sl, sp, #0x1c
005ac0a8  04 20 84 e2                                      add r2, r4, #4
005ac0ac  0a 00 a0 e1                                      mov r0, sl
005ac0b0  58 f8 ff eb                                      bl #0x5aa218
005ac0b4  06 20 a0 e1                                      mov r2, r6
005ac0b8  14 c0 84 e2                                      add ip, r4, #0x14
005ac0bc  18 00 8d e2                                      add r0, sp, #0x18
005ac0c0  07 30 a0 e1                                      mov r3, r7
005ac0c4  05 10 a0 e1                                      mov r1, r5
005ac0c8  00 15 8d e8                                      stm sp, {r8, sl, ip}
005ac0cc  0d ff ff eb                                      bl #0x5abd08
005ac0d0  18 30 9d e5                                      ldr r3, [sp, #0x18]
005ac0d4  00 00 53 e3                                      cmp r3, #0
005ac0d8  04 20 93 15                                      ldrne r2, [r3, #4]
005ac0dc  01 20 82 12                                      addne r2, r2, #1
005ac0e0  04 20 83 15                                      strne r2, [r3, #4]
005ac0e4  04 00 94 e5                                      ldr r0, [r4, #4]
005ac0e8  04 30 84 e5                                      str r3, [r4, #4]
005ac0ec  00 00 50 e3                                      cmp r0, #0
005ac0f0  00 00 00 0a                                      beq #0x5ac0f8
005ac0f4  22 c5 f5 eb                                      bl #0x31d584
005ac0f8  18 00 9d e5                                      ldr r0, [sp, #0x18]
005ac0fc  00 00 50 e3                                      cmp r0, #0
005ac100  00 00 00 0a                                      beq #0x5ac108
005ac104  1e c5 f5 eb                                      bl #0x31d584
005ac108  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005ac10c  00 00 50 e3                                      cmp r0, #0
005ac110  00 00 00 0a                                      beq #0x5ac118
005ac114  1a c5 f5 eb                                      bl #0x31d584
005ac118  04 30 94 e5                                      ldr r3, [r4, #4]
005ac11c  00 00 53 e3                                      cmp r3, #0
005ac120  0a 00 00 0a                                      beq #0x5ac150
005ac124  08 20 93 e5                                      ldr r2, [r3, #8]
005ac128  00 00 52 e3                                      cmp r2, #0
005ac12c  04 00 a0 13                                      movne r0, #4
005ac130  06 00 00 0a                                      beq #0x5ac150
005ac134  10 70 84 e5                                      str r7, [r4, #0x10]
005ac138  08 50 84 e5                                      str r5, [r4, #8]
005ac13c  0c 60 84 e5                                      str r6, [r4, #0xc]
005ac140  01 20 a0 e3                                      mov r2, #1
005ac144  ae ff ff ea                                      b #0x5ac004
005ac148  10 00 a0 e3                                      mov r0, #0x10
005ac14c  ca ff ff ea                                      b #0x5ac07c
005ac150  08 00 a0 e3                                      mov r0, #8
005ac154  f6 ff ff ea                                      b #0x5ac134
