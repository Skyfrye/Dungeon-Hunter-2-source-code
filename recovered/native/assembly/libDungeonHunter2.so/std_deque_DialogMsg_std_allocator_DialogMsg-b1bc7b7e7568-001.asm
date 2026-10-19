; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329f9c, declared_size=76, range_size=76, mode=arm
; class-group: std::deque<DialogMsg, std::allocator<DialogMsg> >
; alias: _ZNSt5dequeI9DialogMsgSaIS0_EED1Ev
; demangled: std::deque<DialogMsg, std::allocator<DialogMsg> >::~deque()
; decoder-mode: arm
00329f9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00329fa0  00 70 a0 e1                                      mov r7, r0
00329fa4  00 40 90 e5                                      ldr r4, [r0]
00329fa8  08 50 90 e5                                      ldr r5, [r0, #8]
00329fac  10 60 90 e5                                      ldr r6, [r0, #0x10]
00329fb0  0c 80 90 e5                                      ldr r8, [r0, #0xc]
00329fb4  05 00 00 ea                                      b #0x329fd0
00329fb8  04 00 a0 e1                                      mov r0, r4
00329fbc  4c 40 84 e2                                      add r4, r4, #0x4c
00329fc0  ba d7 ff eb                                      bl #0x31feb0
00329fc4  05 00 54 e1                                      cmp r4, r5
00329fc8  04 40 b8 05                                      ldreq r4, [r8, #4]!
00329fcc  4c 50 84 02                                      addeq r5, r4, #0x4c
00329fd0  06 00 54 e1                                      cmp r4, r6
00329fd4  f7 ff ff 1a                                      bne #0x329fb8
00329fd8  07 00 a0 e1                                      mov r0, r7
00329fdc  cd ff ff eb                                      bl #0x329f18
00329fe0  07 00 a0 e1                                      mov r0, r7
00329fe4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00383e40, declared_size=104, range_size=104, mode=arm
; class-group: std::deque<DialogMsg, std::allocator<DialogMsg> >
; alias: _ZNSt5dequeI9DialogMsgSaIS0_EE9pop_frontEv
; demangled: std::deque<DialogMsg, std::allocator<DialogMsg> >::pop_front()
; decoder-mode: arm
00383e40  10 40 2d e9                                      push {r4, lr}
00383e44  00 40 a0 e1                                      mov r4, r0
00383e48  00 00 90 e5                                      ldr r0, [r0]
00383e4c  17 70 fe eb                                      bl #0x31feb0
00383e50  08 20 94 e5                                      ldr r2, [r4, #8]
00383e54  00 30 94 e5                                      ldr r3, [r4]
00383e58  4c 20 42 e2                                      sub r2, r2, #0x4c
00383e5c  02 00 53 e1                                      cmp r3, r2
00383e60  02 00 00 0a                                      beq #0x383e70
00383e64  4c 30 83 e2                                      add r3, r3, #0x4c
00383e68  00 30 84 e5                                      str r3, [r4]
00383e6c  10 80 bd e8                                      pop {r4, pc}
00383e70  04 00 94 e5                                      ldr r0, [r4, #4]
00383e74  00 00 50 e3                                      cmp r0, #0
00383e78  01 00 00 0a                                      beq #0x383e84
00383e7c  4c 10 a0 e3                                      mov r1, #0x4c
00383e80  1e 14 0e eb                                      bl #0x708f00
00383e84  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00383e88  04 20 83 e2                                      add r2, r3, #4
00383e8c  0c 20 84 e5                                      str r2, [r4, #0xc]
00383e90  04 30 93 e5                                      ldr r3, [r3, #4]
00383e94  4c 20 83 e2                                      add r2, r3, #0x4c
00383e98  00 30 84 e5                                      str r3, [r4]
00383e9c  08 20 84 e5                                      str r2, [r4, #8]
00383ea0  04 30 84 e5                                      str r3, [r4, #4]
00383ea4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00460c30, declared_size=384, range_size=384, mode=arm
; class-group: std::deque<DialogMsg, std::allocator<DialogMsg> >
; alias: _ZNSt5dequeI9DialogMsgSaIS0_EE18_M_push_back_aux_vERKS0_
; demangled: std::deque<DialogMsg, std::allocator<DialogMsg> >::_M_push_back_aux_v(DialogMsg const&)
; decoder-mode: arm
00460c30  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00460c34  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
00460c38  20 20 90 e5                                      ldr r2, [r0, #0x20]
00460c3c  24 30 90 e5                                      ldr r3, [r0, #0x24]
00460c40  01 50 a0 e1                                      mov r5, r1
00460c44  0a 10 62 e0                                      rsb r1, r2, sl
00460c48  41 11 43 e0                                      sub r1, r3, r1, asr #2
00460c4c  01 00 51 e3                                      cmp r1, #1
00460c50  00 40 a0 e1                                      mov r4, r0
00460c54  0e 00 00 9a                                      bls #0x460c94
00460c58  24 00 84 e2                                      add r0, r4, #0x24
00460c5c  74 ea ff eb                                      bl #0x45b634
00460c60  04 00 8a e5                                      str r0, [sl, #4]
00460c64  05 10 a0 e1                                      mov r1, r5
00460c68  10 00 94 e5                                      ldr r0, [r4, #0x10]
00460c6c  ca 4b ff eb                                      bl #0x433b9c
00460c70  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00460c74  04 20 83 e2                                      add r2, r3, #4
00460c78  1c 20 84 e5                                      str r2, [r4, #0x1c]
00460c7c  04 30 93 e5                                      ldr r3, [r3, #4]
00460c80  4c 20 83 e2                                      add r2, r3, #0x4c
00460c84  10 30 84 e5                                      str r3, [r4, #0x10]
00460c88  18 20 84 e5                                      str r2, [r4, #0x18]
00460c8c  14 30 84 e5                                      str r3, [r4, #0x14]
00460c90  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00460c94  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00460c98  0a 70 61 e0                                      rsb r7, r1, sl
00460c9c  47 71 a0 e1                                      asr r7, r7, #2
00460ca0  01 70 87 e2                                      add r7, r7, #1
00460ca4  01 90 87 e2                                      add sb, r7, #1
00460ca8  89 00 53 e1                                      cmp r3, sb, lsl #1
00460cac  18 00 00 9a                                      bls #0x460d14
00460cb0  03 60 69 e0                                      rsb r6, sb, r3
00460cb4  a6 60 a0 e1                                      lsr r6, r6, #1
00460cb8  06 61 82 e0                                      add r6, r2, r6, lsl #2
00460cbc  06 00 51 e1                                      cmp r1, r6
00460cc0  34 00 00 8a                                      bhi #0x460d98
00460cc4  04 a0 8a e2                                      add sl, sl, #4
00460cc8  0a 20 61 e0                                      rsb r2, r1, sl
00460ccc  00 00 52 e3                                      cmp r2, #0
00460cd0  02 00 00 da                                      ble #0x460ce0
00460cd4  07 01 86 e0                                      add r0, r6, r7, lsl #2
00460cd8  00 00 62 e0                                      rsb r0, r2, r0
00460cdc  95 b4 fa eb                                      bl #0x30df38
00460ce0  0c 60 84 e5                                      str r6, [r4, #0xc]
00460ce4  00 30 96 e5                                      ldr r3, [r6]
00460ce8  01 70 47 e2                                      sub r7, r7, #1
00460cec  07 a1 86 e0                                      add sl, r6, r7, lsl #2
00460cf0  4c 20 83 e2                                      add r2, r3, #0x4c
00460cf4  08 20 84 e5                                      str r2, [r4, #8]
00460cf8  04 30 84 e5                                      str r3, [r4, #4]
00460cfc  1c a0 84 e5                                      str sl, [r4, #0x1c]
00460d00  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
00460d04  4c 20 83 e2                                      add r2, r3, #0x4c
00460d08  18 20 84 e5                                      str r2, [r4, #0x18]
00460d0c  14 30 84 e5                                      str r3, [r4, #0x14]
00460d10  d0 ff ff ea                                      b #0x460c58
00460d14  00 00 53 e3                                      cmp r3, #0
00460d18  03 20 a0 11                                      movne r2, r3
00460d1c  01 20 a0 03                                      moveq r2, #1
00460d20  02 80 83 e2                                      add r8, r3, #2
00460d24  02 80 88 e0                                      add r8, r8, r2
00460d28  08 10 a0 e1                                      mov r1, r8
00460d2c  00 20 a0 e3                                      mov r2, #0
00460d30  20 00 80 e2                                      add r0, r0, #0x20
00460d34  8b 21 fb eb                                      bl #0x329368
00460d38  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00460d3c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00460d40  08 60 69 e0                                      rsb r6, sb, r8
00460d44  a6 60 a0 e1                                      lsr r6, r6, #1
00460d48  04 20 82 e2                                      add r2, r2, #4
00460d4c  01 20 52 e0                                      subs r2, r2, r1
00460d50  00 a0 a0 e1                                      mov sl, r0
00460d54  06 61 80 e0                                      add r6, r0, r6, lsl #2
00460d58  01 00 00 0a                                      beq #0x460d64
00460d5c  06 00 a0 e1                                      mov r0, r6
00460d60  74 b4 fa eb                                      bl #0x30df38
00460d64  20 00 94 e5                                      ldr r0, [r4, #0x20]
00460d68  24 10 94 e5                                      ldr r1, [r4, #0x24]
00460d6c  00 00 50 e3                                      cmp r0, #0
00460d70  03 00 00 0a                                      beq #0x460d84
00460d74  01 11 a0 e1                                      lsl r1, r1, #2
00460d78  80 00 51 e3                                      cmp r1, #0x80
00460d7c  03 00 00 8a                                      bhi #0x460d90
00460d80  5e a0 0a eb                                      bl #0x708f00
00460d84  20 a0 84 e5                                      str sl, [r4, #0x20]
00460d88  24 80 84 e5                                      str r8, [r4, #0x24]
00460d8c  d3 ff ff ea                                      b #0x460ce0
00460d90  aa bd fa eb                                      bl #0x310440
00460d94  fa ff ff ea                                      b #0x460d84
00460d98  04 20 8a e2                                      add r2, sl, #4
00460d9c  01 20 52 e0                                      subs r2, r2, r1
00460da0  ce ff ff 0a                                      beq #0x460ce0
00460da4  06 00 a0 e1                                      mov r0, r6
00460da8  62 b4 fa eb                                      bl #0x30df38
00460dac  cb ff ff ea                                      b #0x460ce0

; FUNCTION 0x00460db0, declared_size=60, range_size=60, mode=arm
; class-group: std::deque<DialogMsg, std::allocator<DialogMsg> >
; alias: _ZNSt5dequeI9DialogMsgSaIS0_EE9push_backERKS0_
; demangled: std::deque<DialogMsg, std::allocator<DialogMsg> >::push_back(DialogMsg const&)
; decoder-mode: arm
00460db0  10 40 2d e9                                      push {r4, lr}
00460db4  18 20 90 e5                                      ldr r2, [r0, #0x18]
00460db8  10 30 90 e5                                      ldr r3, [r0, #0x10]
00460dbc  00 40 a0 e1                                      mov r4, r0
00460dc0  4c 20 42 e2                                      sub r2, r2, #0x4c
00460dc4  02 00 53 e1                                      cmp r3, r2
00460dc8  05 00 00 0a                                      beq #0x460de4
00460dcc  03 00 a0 e1                                      mov r0, r3
00460dd0  71 4b ff eb                                      bl #0x433b9c
00460dd4  10 30 94 e5                                      ldr r3, [r4, #0x10]
00460dd8  4c 30 83 e2                                      add r3, r3, #0x4c
00460ddc  10 30 84 e5                                      str r3, [r4, #0x10]
00460de0  10 80 bd e8                                      pop {r4, pc}
00460de4  10 40 bd e8                                      pop {r4, lr}
00460de8  90 ff ff ea                                      b #0x460c30
