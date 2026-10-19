; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a4ccc, declared_size=344, range_size=344, mode=arm
; class-group: std::priority_queue<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance, std::vector<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance, std::allocator<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance> >, std::less<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance> >
; alias: _ZNSt14priority_queueIN6glitch4core7CKdTreeISt4pairIjNS1_8aabbox3dIfEEEE11SKdDistanceESt6vectorIS8_SaIS8_EESt4lessIS8_EE4pushERKS8_
; demangled: std::priority_queue<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance, std::vector<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance, std::allocator<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance> >, std::less<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance> >::push(glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance const&)
; decoder-mode: arm
005a4ccc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005a4cd0  48 00 90 e9                                      ldmib r0, {r3, r6}
005a4cd4  14 d0 4d e2                                      sub sp, sp, #0x14
005a4cd8  00 40 a0 e1                                      mov r4, r0
005a4cdc  06 00 53 e1                                      cmp r3, r6
005a4ce0  01 50 a0 e1                                      mov r5, r1
005a4ce4  10 00 00 0a                                      beq #0x5a4d2c
005a4ce8  00 20 91 e5                                      ldr r2, [r1]
005a4cec  00 20 83 e5                                      str r2, [r3]
005a4cf0  04 20 91 e5                                      ldr r2, [r1, #4]
005a4cf4  04 20 83 e5                                      str r2, [r3, #4]
005a4cf8  04 60 90 e5                                      ldr r6, [r0, #4]
005a4cfc  00 70 90 e5                                      ldr r7, [r0]
005a4d00  08 60 86 e2                                      add r6, r6, #8
005a4d04  04 60 80 e5                                      str r6, [r0, #4]
005a4d08  00 c0 a0 e3                                      mov ip, #0
005a4d0c  07 00 a0 e1                                      mov r0, r7
005a4d10  06 10 a0 e1                                      mov r1, r6
005a4d14  0c 30 a0 e1                                      mov r3, ip
005a4d18  0c 20 8d e2                                      add r2, sp, #0xc
005a4d1c  00 c0 8d e5                                      str ip, [sp]
005a4d20  ab fa ff eb                                      bl #0x5a37d4
005a4d24  14 d0 8d e2                                      add sp, sp, #0x14
005a4d28  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005a4d2c  00 30 90 e5                                      ldr r3, [r0]
005a4d30  06 30 63 e0                                      rsb r3, r3, r6
005a4d34  c3 31 a0 e1                                      asr r3, r3, #3
005a4d38  01 00 53 e3                                      cmp r3, #1
005a4d3c  03 10 83 20                                      addhs r1, r3, r3
005a4d40  01 10 83 32                                      addlo r1, r3, #1
005a4d44  1e 02 71 e3                                      cmn r1, #0xe0000001
005a4d48  30 00 00 9a                                      bls #0x5a4e10
005a4d4c  0e 12 e0 e3                                      mvn r1, #0xe0000000
005a4d50  10 20 8d e2                                      add r2, sp, #0x10
005a4d54  08 10 22 e5                                      str r1, [r2, #-8]!
005a4d58  08 00 84 e2                                      add r0, r4, #8
005a4d5c  be ff ff eb                                      bl #0x5a4c5c
005a4d60  00 e0 94 e5                                      ldr lr, [r4]
005a4d64  00 70 a0 e1                                      mov r7, r0
005a4d68  06 60 6e e0                                      rsb r6, lr, r6
005a4d6c  c6 61 a0 e1                                      asr r6, r6, #3
005a4d70  00 00 56 e3                                      cmp r6, #0
005a4d74  00 30 a0 d1                                      movle r3, r0
005a4d78  0b 00 00 da                                      ble #0x5a4dac
005a4d7c  06 10 a0 e1                                      mov r1, r6
005a4d80  00 00 a0 e3                                      mov r0, #0
005a4d84  0e 20 a0 e1                                      mov r2, lr
005a4d88  00 c0 b2 e7                                      ldr ip, [r2, r0]!
005a4d8c  07 30 a0 e1                                      mov r3, r7
005a4d90  01 10 51 e2                                      subs r1, r1, #1
005a4d94  00 c0 a3 e7                                      str ip, [r3, r0]!
005a4d98  04 20 92 e5                                      ldr r2, [r2, #4]
005a4d9c  08 00 80 e2                                      add r0, r0, #8
005a4da0  04 20 83 e5                                      str r2, [r3, #4]
005a4da4  f6 ff ff 1a                                      bne #0x5a4d84
005a4da8  86 31 87 e0                                      add r3, r7, r6, lsl #3
005a4dac  00 20 95 e5                                      ldr r2, [r5]
005a4db0  08 60 83 e2                                      add r6, r3, #8
005a4db4  00 20 83 e5                                      str r2, [r3]
005a4db8  04 20 95 e5                                      ldr r2, [r5, #4]
005a4dbc  04 20 83 e5                                      str r2, [r3, #4]
005a4dc0  09 00 94 e8                                      ldm r4, {r0, r3}
005a4dc4  08 10 94 e5                                      ldr r1, [r4, #8]
005a4dc8  00 00 53 e1                                      cmp r3, r0
005a4dcc  08 20 43 12                                      subne r2, r3, #8
005a4dd0  02 20 60 10                                      rsbne r2, r0, r2
005a4dd4  a2 21 e0 11                                      mvnne r2, r2, lsr #3
005a4dd8  82 31 83 10                                      addne r3, r3, r2, lsl #3
005a4ddc  00 00 53 e3                                      cmp r3, #0
005a4de0  04 00 00 0a                                      beq #0x5a4df8
005a4de4  01 10 63 e0                                      rsb r1, r3, r1
005a4de8  07 10 c1 e3                                      bic r1, r1, #7
005a4dec  80 00 51 e3                                      cmp r1, #0x80
005a4df0  09 00 00 8a                                      bhi #0x5a4e1c
005a4df4  41 90 05 eb                                      bl #0x708f00
005a4df8  08 30 9d e5                                      ldr r3, [sp, #8]
005a4dfc  00 70 84 e5                                      str r7, [r4]
005a4e00  04 60 84 e5                                      str r6, [r4, #4]
005a4e04  83 31 87 e0                                      add r3, r7, r3, lsl #3
005a4e08  08 30 84 e5                                      str r3, [r4, #8]
005a4e0c  bd ff ff ea                                      b #0x5a4d08
005a4e10  01 00 53 e1                                      cmp r3, r1
005a4e14  cd ff ff 9a                                      bls #0x5a4d50
005a4e18  cb ff ff ea                                      b #0x5a4d4c
005a4e1c  23 a5 f5 eb                                      bl #0x30e2b0
005a4e20  f4 ff ff ea                                      b #0x5a4df8
