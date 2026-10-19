; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a1684, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<glitch::core::SQuantizationOpData, std::allocator<glitch::core::SQuantizationOpData> >
; alias: _ZNSt6vectorIN6glitch4core19SQuantizationOpDataESaIS2_EED1Ev
; demangled: std::vector<glitch::core::SQuantizationOpData, std::allocator<glitch::core::SQuantizationOpData> >::~vector()
; decoder-mode: arm
006a1684  70 40 2d e9                                      push {r4, r5, r6, lr}
006a1688  04 50 90 e5                                      ldr r5, [r0, #4]
006a168c  00 60 90 e5                                      ldr r6, [r0]
006a1690  00 40 a0 e1                                      mov r4, r0
006a1694  06 00 55 e1                                      cmp r5, r6
006a1698  06 00 00 0a                                      beq #0x6a16b8
006a169c  10 00 15 e5                                      ldr r0, [r5, #-0x10]
006a16a0  14 50 45 e2                                      sub r5, r5, #0x14
006a16a4  00 00 50 e3                                      cmp r0, #0
006a16a8  00 00 00 0a                                      beq #0x6a16b0
006a16ac  b4 ef f1 eb                                      bl #0x31d584
006a16b0  05 00 56 e1                                      cmp r6, r5
006a16b4  f8 ff ff 1a                                      bne #0x6a169c
006a16b8  00 00 94 e5                                      ldr r0, [r4]
006a16bc  00 00 50 e3                                      cmp r0, #0
006a16c0  0c 00 00 0a                                      beq #0x6a16f8
006a16c4  08 30 94 e5                                      ldr r3, [r4, #8]
006a16c8  03 30 60 e0                                      rsb r3, r0, r3
006a16cc  43 31 a0 e1                                      asr r3, r3, #2
006a16d0  83 10 83 e0                                      add r1, r3, r3, lsl #1
006a16d4  01 12 81 e0                                      add r1, r1, r1, lsl #4
006a16d8  01 14 81 e0                                      add r1, r1, r1, lsl #8
006a16dc  01 18 81 e0                                      add r1, r1, r1, lsl #16
006a16e0  01 31 83 e0                                      add r3, r3, r1, lsl #2
006a16e4  14 10 a0 e3                                      mov r1, #0x14
006a16e8  91 03 01 e0                                      mul r1, r1, r3
006a16ec  80 00 51 e3                                      cmp r1, #0x80
006a16f0  02 00 00 8a                                      bhi #0x6a1700
006a16f4  01 9e 01 eb                                      bl #0x708f00
006a16f8  04 00 a0 e1                                      mov r0, r4
006a16fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
006a1700  ea b2 f1 eb                                      bl #0x30e2b0
006a1704  04 00 a0 e1                                      mov r0, r4
006a1708  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a182c, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<glitch::core::SQuantizationOpData, std::allocator<glitch::core::SQuantizationOpData> >
; alias: _ZNSt6vectorIN6glitch4core19SQuantizationOpDataESaIS2_EE19_M_clear_after_moveEv
; demangled: std::vector<glitch::core::SQuantizationOpData, std::allocator<glitch::core::SQuantizationOpData> >::_M_clear_after_move()
; decoder-mode: arm
006a182c  70 40 2d e9                                      push {r4, r5, r6, lr}
006a1830  00 60 a0 e1                                      mov r6, r0
006a1834  00 50 96 e5                                      ldr r5, [r6]
006a1838  04 00 90 e5                                      ldr r0, [r0, #4]
006a183c  05 00 50 e1                                      cmp r0, r5
006a1840  08 00 00 0a                                      beq #0x6a1868
006a1844  00 40 a0 e1                                      mov r4, r0
006a1848  10 00 14 e5                                      ldr r0, [r4, #-0x10]
006a184c  14 40 44 e2                                      sub r4, r4, #0x14
006a1850  00 00 50 e3                                      cmp r0, #0
006a1854  00 00 00 0a                                      beq #0x6a185c
006a1858  49 ef f1 eb                                      bl #0x31d584
006a185c  04 00 55 e1                                      cmp r5, r4
006a1860  f8 ff ff 1a                                      bne #0x6a1848
006a1864  00 00 96 e5                                      ldr r0, [r6]
006a1868  00 00 50 e3                                      cmp r0, #0
006a186c  08 30 96 e5                                      ldr r3, [r6, #8]
006a1870  0e 00 00 0a                                      beq #0x6a18b0
006a1874  03 30 60 e0                                      rsb r3, r0, r3
006a1878  43 31 a0 e1                                      asr r3, r3, #2
006a187c  83 10 83 e0                                      add r1, r3, r3, lsl #1
006a1880  01 12 81 e0                                      add r1, r1, r1, lsl #4
006a1884  01 14 81 e0                                      add r1, r1, r1, lsl #8
006a1888  01 18 81 e0                                      add r1, r1, r1, lsl #16
006a188c  01 31 83 e0                                      add r3, r3, r1, lsl #2
006a1890  14 10 a0 e3                                      mov r1, #0x14
006a1894  91 03 01 e0                                      mul r1, r1, r3
006a1898  80 00 51 e3                                      cmp r1, #0x80
006a189c  01 00 00 8a                                      bhi #0x6a18a8
006a18a0  70 40 bd e8                                      pop {r4, r5, r6, lr}
006a18a4  95 9d 01 ea                                      b #0x708f00
006a18a8  70 40 bd e8                                      pop {r4, r5, r6, lr}
006a18ac  7f b2 f1 ea                                      b #0x30e2b0
006a18b0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a2b10, declared_size=460, range_size=460, mode=arm
; class-group: std::vector<glitch::core::SQuantizationOpData, std::allocator<glitch::core::SQuantizationOpData> >
; alias: _ZNSt6vectorIN6glitch4core19SQuantizationOpDataESaIS2_EE9push_backERKS2_
; demangled: std::vector<glitch::core::SQuantizationOpData, std::allocator<glitch::core::SQuantizationOpData> >::push_back(glitch::core::SQuantizationOpData const&)
; decoder-mode: arm
006a2b10  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006a2b14  48 00 90 e9                                      ldmib r0, {r3, r6}
006a2b18  0c d0 4d e2                                      sub sp, sp, #0xc
006a2b1c  00 50 a0 e1                                      mov r5, r0
006a2b20  06 00 53 e1                                      cmp r3, r6
006a2b24  01 40 a0 e1                                      mov r4, r1
006a2b28  14 00 00 0a                                      beq #0x6a2b80
006a2b2c  00 20 91 e5                                      ldr r2, [r1]
006a2b30  00 20 83 e5                                      str r2, [r3]
006a2b34  04 20 91 e5                                      ldr r2, [r1, #4]
006a2b38  04 20 83 e5                                      str r2, [r3, #4]
006a2b3c  00 00 52 e3                                      cmp r2, #0
006a2b40  04 10 92 15                                      ldrne r1, [r2, #4]
006a2b44  01 10 81 12                                      addne r1, r1, #1
006a2b48  04 10 82 15                                      strne r1, [r2, #4]
006a2b4c  08 20 94 e5                                      ldr r2, [r4, #8]
006a2b50  08 20 83 e5                                      str r2, [r3, #8]
006a2b54  0c 20 94 e5                                      ldr r2, [r4, #0xc]
006a2b58  0c 20 83 e5                                      str r2, [r3, #0xc]
006a2b5c  b0 11 d4 e1                                      ldrh r1, [r4, #0x10]
006a2b60  b0 11 c3 e1                                      strh r1, [r3, #0x10]
006a2b64  b2 41 d4 e1                                      ldrh r4, [r4, #0x12]
006a2b68  b2 41 c3 e1                                      strh r4, [r3, #0x12]
006a2b6c  04 30 90 e5                                      ldr r3, [r0, #4]
006a2b70  14 30 83 e2                                      add r3, r3, #0x14
006a2b74  04 30 80 e5                                      str r3, [r0, #4]
006a2b78  0c d0 8d e2                                      add sp, sp, #0xc
006a2b7c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006a2b80  00 20 90 e5                                      ldr r2, [r0]
006a2b84  cc 3c 0c e3                                      movw r3, #0xcccc
006a2b88  03 36 83 e1                                      orr r3, r3, r3, lsl #12
006a2b8c  06 20 62 e0                                      rsb r2, r2, r6
006a2b90  42 21 a0 e1                                      asr r2, r2, #2
006a2b94  82 10 82 e0                                      add r1, r2, r2, lsl #1
006a2b98  01 12 81 e0                                      add r1, r1, r1, lsl #4
006a2b9c  01 14 81 e0                                      add r1, r1, r1, lsl #8
006a2ba0  01 18 81 e0                                      add r1, r1, r1, lsl #16
006a2ba4  01 21 82 e0                                      add r2, r2, r1, lsl #2
006a2ba8  01 00 52 e3                                      cmp r2, #1
006a2bac  02 10 82 20                                      addhs r1, r2, r2
006a2bb0  01 10 82 32                                      addlo r1, r2, #1
006a2bb4  03 00 51 e1                                      cmp r1, r3
006a2bb8  44 00 00 9a                                      bls #0x6a2cd0
006a2bbc  cc 1c 0c e3                                      movw r1, #0xcccc
006a2bc0  01 16 81 e1                                      orr r1, r1, r1, lsl #12
006a2bc4  08 20 8d e2                                      add r2, sp, #8
006a2bc8  04 10 22 e5                                      str r1, [r2, #-4]!
006a2bcc  08 00 85 e2                                      add r0, r5, #8
006a2bd0  ac ff ff eb                                      bl #0x6a2a88
006a2bd4  00 20 95 e5                                      ldr r2, [r5]
006a2bd8  00 70 a0 e1                                      mov r7, r0
006a2bdc  06 60 62 e0                                      rsb r6, r2, r6
006a2be0  46 61 a0 e1                                      asr r6, r6, #2
006a2be4  86 30 86 e0                                      add r3, r6, r6, lsl #1
006a2be8  03 32 83 e0                                      add r3, r3, r3, lsl #4
006a2bec  03 34 83 e0                                      add r3, r3, r3, lsl #8
006a2bf0  03 38 83 e0                                      add r3, r3, r3, lsl #16
006a2bf4  03 61 86 e0                                      add r6, r6, r3, lsl #2
006a2bf8  00 00 56 e3                                      cmp r6, #0
006a2bfc  00 60 a0 d1                                      movle r6, r0
006a2c00  18 00 00 da                                      ble #0x6a2c68
006a2c04  14 30 80 e2                                      add r3, r0, #0x14
006a2c08  14 20 82 e2                                      add r2, r2, #0x14
006a2c0c  06 00 a0 e1                                      mov r0, r6
006a2c10  14 10 12 e5                                      ldr r1, [r2, #-0x14]
006a2c14  14 10 03 e5                                      str r1, [r3, #-0x14]
006a2c18  10 10 12 e5                                      ldr r1, [r2, #-0x10]
006a2c1c  10 10 03 e5                                      str r1, [r3, #-0x10]
006a2c20  00 00 51 e3                                      cmp r1, #0
006a2c24  04 c0 91 15                                      ldrne ip, [r1, #4]
006a2c28  01 c0 8c 12                                      addne ip, ip, #1
006a2c2c  04 c0 81 15                                      strne ip, [r1, #4]
006a2c30  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
006a2c34  01 00 50 e2                                      subs r0, r0, #1
006a2c38  0c 10 03 e5                                      str r1, [r3, #-0xc]
006a2c3c  08 10 12 e5                                      ldr r1, [r2, #-8]
006a2c40  08 10 03 e5                                      str r1, [r3, #-8]
006a2c44  b4 10 52 e1                                      ldrh r1, [r2, #-4]
006a2c48  b4 10 43 e1                                      strh r1, [r3, #-4]
006a2c4c  b2 10 52 e1                                      ldrh r1, [r2, #-2]
006a2c50  14 20 82 e2                                      add r2, r2, #0x14
006a2c54  b2 10 43 e1                                      strh r1, [r3, #-2]
006a2c58  14 30 83 e2                                      add r3, r3, #0x14
006a2c5c  eb ff ff 1a                                      bne #0x6a2c10
006a2c60  14 30 a0 e3                                      mov r3, #0x14
006a2c64  93 76 26 e0                                      mla r6, r3, r6, r7
006a2c68  00 30 94 e5                                      ldr r3, [r4]
006a2c6c  05 00 a0 e1                                      mov r0, r5
006a2c70  00 30 86 e5                                      str r3, [r6]
006a2c74  04 30 94 e5                                      ldr r3, [r4, #4]
006a2c78  04 30 86 e5                                      str r3, [r6, #4]
006a2c7c  00 00 53 e3                                      cmp r3, #0
006a2c80  04 20 93 15                                      ldrne r2, [r3, #4]
006a2c84  01 20 82 12                                      addne r2, r2, #1
006a2c88  04 20 83 15                                      strne r2, [r3, #4]
006a2c8c  08 30 94 e5                                      ldr r3, [r4, #8]
006a2c90  08 30 86 e5                                      str r3, [r6, #8]
006a2c94  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006a2c98  0c 30 86 e5                                      str r3, [r6, #0xc]
006a2c9c  b0 21 d4 e1                                      ldrh r2, [r4, #0x10]
006a2ca0  b0 21 c6 e1                                      strh r2, [r6, #0x10]
006a2ca4  b2 41 d4 e1                                      ldrh r4, [r4, #0x12]
006a2ca8  b2 41 c6 e1                                      strh r4, [r6, #0x12]
006a2cac  de fa ff eb                                      bl #0x6a182c
006a2cb0  04 30 9d e5                                      ldr r3, [sp, #4]
006a2cb4  14 20 a0 e3                                      mov r2, #0x14
006a2cb8  14 60 86 e2                                      add r6, r6, #0x14
006a2cbc  92 73 23 e0                                      mla r3, r2, r3, r7
006a2cc0  00 70 85 e5                                      str r7, [r5]
006a2cc4  08 30 85 e5                                      str r3, [r5, #8]
006a2cc8  04 60 85 e5                                      str r6, [r5, #4]
006a2ccc  a9 ff ff ea                                      b #0x6a2b78
006a2cd0  01 00 52 e1                                      cmp r2, r1
006a2cd4  ba ff ff 9a                                      bls #0x6a2bc4
006a2cd8  b7 ff ff ea                                      b #0x6a2bbc
