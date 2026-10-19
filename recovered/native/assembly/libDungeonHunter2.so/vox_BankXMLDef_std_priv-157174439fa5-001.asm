; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088b018, declared_size=156, range_size=156, mode=arm
; class-group: vox::BankXMLDef* std::priv
; alias: _ZNSt4priv7__ucopyIPKN3vox10BankXMLDefEPS2_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: vox::BankXMLDef* std::priv::__ucopy<vox::BankXMLDef const*, vox::BankXMLDef*, int>(vox::BankXMLDef const*, vox::BankXMLDef const*, vox::BankXMLDef*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0088b018  01 30 60 e0                                      rsb r3, r0, r1
0088b01c  c3 31 a0 e1                                      asr r3, r3, #3
0088b020  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088b024  83 70 83 e0                                      add r7, r3, r3, lsl #1
0088b028  00 50 a0 e1                                      mov r5, r0
0088b02c  07 72 87 e0                                      add r7, r7, r7, lsl #4
0088b030  02 80 a0 e1                                      mov r8, r2
0088b034  07 74 87 e0                                      add r7, r7, r7, lsl #8
0088b038  07 78 87 e0                                      add r7, r7, r7, lsl #16
0088b03c  07 71 83 e0                                      add r7, r3, r7, lsl #2
0088b040  00 00 57 e3                                      cmp r7, #0
0088b044  07 60 a0 c1                                      movgt r6, r7
0088b048  02 40 a0 c1                                      movgt r4, r2
0088b04c  01 00 00 ca                                      bgt #0x88b058
0088b050  15 00 00 ea                                      b #0x88b0ac
0088b054  28 50 85 e2                                      add r5, r5, #0x28
0088b058  00 20 95 e5                                      ldr r2, [r5]
0088b05c  10 30 84 e2                                      add r3, r4, #0x10
0088b060  03 00 a0 e1                                      mov r0, r3
0088b064  00 20 84 e5                                      str r2, [r4]
0088b068  04 20 95 e5                                      ldr r2, [r5, #4]
0088b06c  04 20 84 e5                                      str r2, [r4, #4]
0088b070  08 20 95 e5                                      ldr r2, [r5, #8]
0088b074  08 20 84 e5                                      str r2, [r4, #8]
0088b078  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0088b07c  20 30 84 e5                                      str r3, [r4, #0x20]
0088b080  24 30 84 e5                                      str r3, [r4, #0x24]
0088b084  0c 20 84 e5                                      str r2, [r4, #0xc]
0088b088  24 10 95 e5                                      ldr r1, [r5, #0x24]
0088b08c  20 20 95 e5                                      ldr r2, [r5, #0x20]
0088b090  96 90 ff eb                                      bl #0x86f2f0
0088b094  01 60 56 e2                                      subs r6, r6, #1
0088b098  28 40 84 e2                                      add r4, r4, #0x28
0088b09c  ec ff ff 1a                                      bne #0x88b054
0088b0a0  28 00 a0 e3                                      mov r0, #0x28
0088b0a4  90 87 20 e0                                      mla r0, r0, r7, r8
0088b0a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0088b0ac  02 00 a0 e1                                      mov r0, r2
0088b0b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0088b648, declared_size=152, range_size=152, mode=arm
; class-group: vox::BankXMLDef* std::priv
; alias: _ZNSt4priv6__copyIPN3vox10BankXMLDefES3_iEET0_T_S5_S4_RKSt26random_access_iterator_tagPT1_
; demangled: vox::BankXMLDef* std::priv::__copy<vox::BankXMLDef*, vox::BankXMLDef*, int>(vox::BankXMLDef*, vox::BankXMLDef*, vox::BankXMLDef*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0088b648  01 30 60 e0                                      rsb r3, r0, r1
0088b64c  c3 31 a0 e1                                      asr r3, r3, #3
0088b650  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088b654  83 80 83 e0                                      add r8, r3, r3, lsl #1
0088b658  00 40 a0 e1                                      mov r4, r0
0088b65c  08 82 88 e0                                      add r8, r8, r8, lsl #4
0088b660  02 70 a0 e1                                      mov r7, r2
0088b664  08 84 88 e0                                      add r8, r8, r8, lsl #8
0088b668  08 88 88 e0                                      add r8, r8, r8, lsl #16
0088b66c  08 81 83 e0                                      add r8, r3, r8, lsl #2
0088b670  00 00 58 e3                                      cmp r8, #0
0088b674  17 00 00 da                                      ble #0x88b6d8
0088b678  02 50 a0 e1                                      mov r5, r2
0088b67c  08 60 a0 e1                                      mov r6, r8
0088b680  00 00 00 ea                                      b #0x88b688
0088b684  28 40 84 e2                                      add r4, r4, #0x28
0088b688  00 30 94 e5                                      ldr r3, [r4]
0088b68c  10 00 85 e2                                      add r0, r5, #0x10
0088b690  10 20 84 e2                                      add r2, r4, #0x10
0088b694  00 30 85 e5                                      str r3, [r5]
0088b698  04 30 94 e5                                      ldr r3, [r4, #4]
0088b69c  02 00 50 e1                                      cmp r0, r2
0088b6a0  04 30 85 e5                                      str r3, [r5, #4]
0088b6a4  08 30 94 e5                                      ldr r3, [r4, #8]
0088b6a8  08 30 85 e5                                      str r3, [r5, #8]
0088b6ac  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0088b6b0  0c 30 85 e5                                      str r3, [r5, #0xc]
0088b6b4  02 00 00 0a                                      beq #0x88b6c4
0088b6b8  24 10 94 e5                                      ldr r1, [r4, #0x24]
0088b6bc  20 20 94 e5                                      ldr r2, [r4, #0x20]
0088b6c0  2a f5 ff eb                                      bl #0x888b70
0088b6c4  01 60 56 e2                                      subs r6, r6, #1
0088b6c8  28 50 85 e2                                      add r5, r5, #0x28
0088b6cc  ec ff ff 1a                                      bne #0x88b684
0088b6d0  28 30 a0 e3                                      mov r3, #0x28
0088b6d4  93 78 27 e0                                      mla r7, r3, r8, r7
0088b6d8  07 00 a0 e1                                      mov r0, r7
0088b6dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0088b6e0, declared_size=152, range_size=152, mode=arm
; class-group: vox::BankXMLDef* std::priv
; alias: _ZNSt4priv6__copyIPKN3vox10BankXMLDefEPS2_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: vox::BankXMLDef* std::priv::__copy<vox::BankXMLDef const*, vox::BankXMLDef*, int>(vox::BankXMLDef const*, vox::BankXMLDef const*, vox::BankXMLDef*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0088b6e0  01 30 60 e0                                      rsb r3, r0, r1
0088b6e4  c3 31 a0 e1                                      asr r3, r3, #3
0088b6e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088b6ec  83 80 83 e0                                      add r8, r3, r3, lsl #1
0088b6f0  00 40 a0 e1                                      mov r4, r0
0088b6f4  08 82 88 e0                                      add r8, r8, r8, lsl #4
0088b6f8  02 70 a0 e1                                      mov r7, r2
0088b6fc  08 84 88 e0                                      add r8, r8, r8, lsl #8
0088b700  08 88 88 e0                                      add r8, r8, r8, lsl #16
0088b704  08 81 83 e0                                      add r8, r3, r8, lsl #2
0088b708  00 00 58 e3                                      cmp r8, #0
0088b70c  17 00 00 da                                      ble #0x88b770
0088b710  08 60 a0 e1                                      mov r6, r8
0088b714  02 50 a0 e1                                      mov r5, r2
0088b718  00 00 00 ea                                      b #0x88b720
0088b71c  28 40 84 e2                                      add r4, r4, #0x28
0088b720  00 30 94 e5                                      ldr r3, [r4]
0088b724  10 00 85 e2                                      add r0, r5, #0x10
0088b728  10 20 84 e2                                      add r2, r4, #0x10
0088b72c  00 30 85 e5                                      str r3, [r5]
0088b730  04 30 94 e5                                      ldr r3, [r4, #4]
0088b734  02 00 50 e1                                      cmp r0, r2
0088b738  04 30 85 e5                                      str r3, [r5, #4]
0088b73c  08 30 94 e5                                      ldr r3, [r4, #8]
0088b740  08 30 85 e5                                      str r3, [r5, #8]
0088b744  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0088b748  0c 30 85 e5                                      str r3, [r5, #0xc]
0088b74c  02 00 00 0a                                      beq #0x88b75c
0088b750  24 10 94 e5                                      ldr r1, [r4, #0x24]
0088b754  20 20 94 e5                                      ldr r2, [r4, #0x20]
0088b758  04 f5 ff eb                                      bl #0x888b70
0088b75c  01 60 56 e2                                      subs r6, r6, #1
0088b760  28 50 85 e2                                      add r5, r5, #0x28
0088b764  ec ff ff 1a                                      bne #0x88b71c
0088b768  28 30 a0 e3                                      mov r3, #0x28
0088b76c  93 78 27 e0                                      mla r7, r3, r8, r7
0088b770  07 00 a0 e1                                      mov r0, r7
0088b774  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
