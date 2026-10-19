; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060b6d8, declared_size=244, range_size=244, mode=arm
; class-group: std::vector<glitch::collada::CAnimationBlock*, glitch::core::SAllocator<glitch::collada::CAnimationBlock*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch7collada15CAnimationBlockENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type.clone.3
; demangled: std::vector<glitch::collada::CAnimationBlock*, glitch::core::SAllocator<glitch::collada::CAnimationBlock*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::collada::CAnimationBlock**, unsigned int, glitch::collada::CAnimationBlock* const&, std::__false_type const&) [clone .clone.3]
; decoder-mode: arm
0060b6d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060b6dc  00 30 90 e5                                      ldr r3, [r0]
0060b6e0  08 d0 4d e2                                      sub sp, sp, #8
0060b6e4  00 70 a0 e1                                      mov r7, r0
0060b6e8  02 00 53 e1                                      cmp r3, r2
0060b6ec  02 40 a0 e1                                      mov r4, r2
0060b6f0  01 60 a0 e1                                      mov r6, r1
0060b6f4  07 00 00 8a                                      bhi #0x60b718
0060b6f8  04 50 90 e5                                      ldr r5, [r0, #4]
0060b6fc  05 00 52 e1                                      cmp r2, r5
0060b700  05 00 00 2a                                      bhs #0x60b71c
0060b704  00 30 92 e5                                      ldr r3, [r2]
0060b708  08 20 8d e2                                      add r2, sp, #8
0060b70c  04 30 22 e5                                      str r3, [r2, #-4]!
0060b710  f0 ff ff eb                                      bl #0x60b6d8
0060b714  14 00 00 ea                                      b #0x60b76c
0060b718  04 50 90 e5                                      ldr r5, [r0, #4]
0060b71c  05 20 66 e0                                      rsb r2, r6, r5
0060b720  42 81 a0 e1                                      asr r8, r2, #2
0060b724  01 00 58 e3                                      cmp r8, #1
0060b728  11 00 00 9a                                      bls #0x60b774
0060b72c  04 80 45 e2                                      sub r8, r5, #4
0060b730  04 20 a0 e3                                      mov r2, #4
0060b734  05 00 a0 e1                                      mov r0, r5
0060b738  08 10 a0 e1                                      mov r1, r8
0060b73c  49 0c f4 eb                                      bl #0x30e868
0060b740  04 30 97 e5                                      ldr r3, [r7, #4]
0060b744  08 20 66 e0                                      rsb r2, r6, r8
0060b748  00 00 52 e3                                      cmp r2, #0
0060b74c  04 30 83 e2                                      add r3, r3, #4
0060b750  04 30 87 e5                                      str r3, [r7, #4]
0060b754  02 00 00 da                                      ble #0x60b764
0060b758  05 00 62 e0                                      rsb r0, r2, r5
0060b75c  06 10 a0 e1                                      mov r1, r6
0060b760  f4 09 f4 eb                                      bl #0x30df38
0060b764  00 30 94 e5                                      ldr r3, [r4]
0060b768  00 30 86 e5                                      str r3, [r6]
0060b76c  08 d0 8d e2                                      add sp, sp, #8
0060b770  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0060b774  01 00 68 e2                                      rsb r0, r8, #1
0060b778  50 c0 bd e7                                      sbfx ip, r0, #0, #0x1e
0060b77c  00 00 5c e3                                      cmp ip, #0
0060b780  00 01 85 e0                                      add r0, r5, r0, lsl #2
0060b784  05 00 00 da                                      ble #0x60b7a0
0060b788  00 30 a0 e3                                      mov r3, #0
0060b78c  00 10 94 e5                                      ldr r1, [r4]
0060b790  03 11 85 e7                                      str r1, [r5, r3, lsl #2]
0060b794  01 30 83 e2                                      add r3, r3, #1
0060b798  0c 00 53 e1                                      cmp r3, ip
0060b79c  fa ff ff 1a                                      bne #0x60b78c
0060b7a0  05 00 56 e1                                      cmp r6, r5
0060b7a4  04 00 87 e5                                      str r0, [r7, #4]
0060b7a8  02 00 00 0a                                      beq #0x60b7b8
0060b7ac  06 10 a0 e1                                      mov r1, r6
0060b7b0  2c 0c f4 eb                                      bl #0x30e868
0060b7b4  04 00 97 e5                                      ldr r0, [r7, #4]
0060b7b8  01 00 58 e3                                      cmp r8, #1
0060b7bc  08 81 80 e0                                      add r8, r0, r8, lsl #2
0060b7c0  04 80 87 e5                                      str r8, [r7, #4]
0060b7c4  e8 ff ff 1a                                      bne #0x60b76c
0060b7c8  e5 ff ff ea                                      b #0x60b764
