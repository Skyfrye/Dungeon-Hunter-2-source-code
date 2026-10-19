; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329e10, declared_size=104, range_size=104, mode=arm
; class-group: std::deque<CharMenuTutorialMsg, std::allocator<CharMenuTutorialMsg> >
; alias: _ZNSt5dequeI19CharMenuTutorialMsgSaIS0_EED1Ev
; demangled: std::deque<CharMenuTutorialMsg, std::allocator<CharMenuTutorialMsg> >::~deque()
; decoder-mode: arm
00329e10  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00329e14  18 c0 90 e5                                      ldr ip, [r0, #0x18]
00329e18  1c e0 90 e5                                      ldr lr, [r0, #0x1c]
00329e1c  e0 02 90 e8                                      ldm r0, {r5, r6, r7, sb}
00329e20  10 a0 90 e5                                      ldr sl, [r0, #0x10]
00329e24  14 80 90 e5                                      ldr r8, [r0, #0x14]
00329e28  28 d0 4d e2                                      sub sp, sp, #0x28
00329e2c  00 40 a0 e1                                      mov r4, r0
00329e30  04 10 8d e2                                      add r1, sp, #4
00329e34  00 20 a0 e3                                      mov r2, #0
00329e38  24 30 8d e2                                      add r3, sp, #0x24
00329e3c  14 00 8d e2                                      add r0, sp, #0x14
00329e40  10 e0 8d e5                                      str lr, [sp, #0x10]
00329e44  0c c0 8d e5                                      str ip, [sp, #0xc]
00329e48  20 90 8d e5                                      str sb, [sp, #0x20]
00329e4c  1c 70 8d e5                                      str r7, [sp, #0x1c]
00329e50  18 60 8d e5                                      str r6, [sp, #0x18]
00329e54  14 50 8d e5                                      str r5, [sp, #0x14]
00329e58  08 80 8d e5                                      str r8, [sp, #8]
00329e5c  04 a0 8d e5                                      str sl, [sp, #4]
00329e60  f4 d7 ff eb                                      bl #0x31fe38
00329e64  04 00 a0 e1                                      mov r0, r4
00329e68  c7 ff ff eb                                      bl #0x329d8c
00329e6c  04 00 a0 e1                                      mov r0, r4
00329e70  28 d0 8d e2                                      add sp, sp, #0x28
00329e74  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00441d58, declared_size=116, range_size=116, mode=arm
; class-group: std::deque<CharMenuTutorialMsg, std::allocator<CharMenuTutorialMsg> >
; alias: _ZNSt5dequeI19CharMenuTutorialMsgSaIS0_EE9pop_frontEv
; demangled: std::deque<CharMenuTutorialMsg, std::allocator<CharMenuTutorialMsg> >::pop_front()
; decoder-mode: arm
00441d58  70 40 2d e9                                      push {r4, r5, r6, lr}
00441d5c  00 50 90 e5                                      ldr r5, [r0]
00441d60  00 40 a0 e1                                      mov r4, r0
00441d64  1c 00 85 e2                                      add r0, r5, #0x1c
00441d68  0f 47 fb eb                                      bl #0x3139ac
00441d6c  04 00 85 e2                                      add r0, r5, #4
00441d70  0d 47 fb eb                                      bl #0x3139ac
00441d74  08 20 94 e5                                      ldr r2, [r4, #8]
00441d78  00 30 94 e5                                      ldr r3, [r4]
00441d7c  34 20 42 e2                                      sub r2, r2, #0x34
00441d80  02 00 53 e1                                      cmp r3, r2
00441d84  02 00 00 0a                                      beq #0x441d94
00441d88  34 30 83 e2                                      add r3, r3, #0x34
00441d8c  00 30 84 e5                                      str r3, [r4]
00441d90  70 80 bd e8                                      pop {r4, r5, r6, pc}
00441d94  04 00 94 e5                                      ldr r0, [r4, #4]
00441d98  00 00 50 e3                                      cmp r0, #0
00441d9c  01 00 00 0a                                      beq #0x441da8
00441da0  68 10 a0 e3                                      mov r1, #0x68
00441da4  55 1c 0b eb                                      bl #0x708f00
00441da8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00441dac  04 20 83 e2                                      add r2, r3, #4
00441db0  0c 20 84 e5                                      str r2, [r4, #0xc]
00441db4  04 30 93 e5                                      ldr r3, [r3, #4]
00441db8  68 20 83 e2                                      add r2, r3, #0x68
00441dbc  00 30 84 e5                                      str r3, [r4]
00441dc0  08 20 84 e5                                      str r2, [r4, #8]
00441dc4  04 30 84 e5                                      str r3, [r4, #4]
00441dc8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0045b674, declared_size=384, range_size=384, mode=arm
; class-group: std::deque<CharMenuTutorialMsg, std::allocator<CharMenuTutorialMsg> >
; alias: _ZNSt5dequeI19CharMenuTutorialMsgSaIS0_EE18_M_push_back_aux_vERKS0_
; demangled: std::deque<CharMenuTutorialMsg, std::allocator<CharMenuTutorialMsg> >::_M_push_back_aux_v(CharMenuTutorialMsg const&)
; decoder-mode: arm
0045b674  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045b678  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
0045b67c  20 20 90 e5                                      ldr r2, [r0, #0x20]
0045b680  24 30 90 e5                                      ldr r3, [r0, #0x24]
0045b684  01 50 a0 e1                                      mov r5, r1
0045b688  0a 10 62 e0                                      rsb r1, r2, sl
0045b68c  41 11 43 e0                                      sub r1, r3, r1, asr #2
0045b690  01 00 51 e3                                      cmp r1, #1
0045b694  00 40 a0 e1                                      mov r4, r0
0045b698  0e 00 00 9a                                      bls #0x45b6d8
0045b69c  24 00 84 e2                                      add r0, r4, #0x24
0045b6a0  eb ff ff eb                                      bl #0x45b654
0045b6a4  04 00 8a e5                                      str r0, [sl, #4]
0045b6a8  05 10 a0 e1                                      mov r1, r5
0045b6ac  10 00 94 e5                                      ldr r0, [r4, #0x10]
0045b6b0  32 fc ff eb                                      bl #0x45a780
0045b6b4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0045b6b8  04 20 83 e2                                      add r2, r3, #4
0045b6bc  1c 20 84 e5                                      str r2, [r4, #0x1c]
0045b6c0  04 30 93 e5                                      ldr r3, [r3, #4]
0045b6c4  68 20 83 e2                                      add r2, r3, #0x68
0045b6c8  10 30 84 e5                                      str r3, [r4, #0x10]
0045b6cc  18 20 84 e5                                      str r2, [r4, #0x18]
0045b6d0  14 30 84 e5                                      str r3, [r4, #0x14]
0045b6d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045b6d8  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0045b6dc  0a 70 61 e0                                      rsb r7, r1, sl
0045b6e0  47 71 a0 e1                                      asr r7, r7, #2
0045b6e4  01 70 87 e2                                      add r7, r7, #1
0045b6e8  01 90 87 e2                                      add sb, r7, #1
0045b6ec  89 00 53 e1                                      cmp r3, sb, lsl #1
0045b6f0  18 00 00 9a                                      bls #0x45b758
0045b6f4  03 60 69 e0                                      rsb r6, sb, r3
0045b6f8  a6 60 a0 e1                                      lsr r6, r6, #1
0045b6fc  06 61 82 e0                                      add r6, r2, r6, lsl #2
0045b700  06 00 51 e1                                      cmp r1, r6
0045b704  34 00 00 8a                                      bhi #0x45b7dc
0045b708  04 a0 8a e2                                      add sl, sl, #4
0045b70c  0a 20 61 e0                                      rsb r2, r1, sl
0045b710  00 00 52 e3                                      cmp r2, #0
0045b714  02 00 00 da                                      ble #0x45b724
0045b718  07 01 86 e0                                      add r0, r6, r7, lsl #2
0045b71c  00 00 62 e0                                      rsb r0, r2, r0
0045b720  04 ca fa eb                                      bl #0x30df38
0045b724  0c 60 84 e5                                      str r6, [r4, #0xc]
0045b728  00 30 96 e5                                      ldr r3, [r6]
0045b72c  01 70 47 e2                                      sub r7, r7, #1
0045b730  07 a1 86 e0                                      add sl, r6, r7, lsl #2
0045b734  68 20 83 e2                                      add r2, r3, #0x68
0045b738  08 20 84 e5                                      str r2, [r4, #8]
0045b73c  04 30 84 e5                                      str r3, [r4, #4]
0045b740  1c a0 84 e5                                      str sl, [r4, #0x1c]
0045b744  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
0045b748  68 20 83 e2                                      add r2, r3, #0x68
0045b74c  18 20 84 e5                                      str r2, [r4, #0x18]
0045b750  14 30 84 e5                                      str r3, [r4, #0x14]
0045b754  d0 ff ff ea                                      b #0x45b69c
0045b758  00 00 53 e3                                      cmp r3, #0
0045b75c  03 20 a0 11                                      movne r2, r3
0045b760  01 20 a0 03                                      moveq r2, #1
0045b764  02 80 83 e2                                      add r8, r3, #2
0045b768  02 80 88 e0                                      add r8, r8, r2
0045b76c  08 10 a0 e1                                      mov r1, r8
0045b770  00 20 a0 e3                                      mov r2, #0
0045b774  20 00 80 e2                                      add r0, r0, #0x20
0045b778  12 37 fb eb                                      bl #0x3293c8
0045b77c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0045b780  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0045b784  08 60 69 e0                                      rsb r6, sb, r8
0045b788  a6 60 a0 e1                                      lsr r6, r6, #1
0045b78c  04 20 82 e2                                      add r2, r2, #4
0045b790  01 20 52 e0                                      subs r2, r2, r1
0045b794  00 a0 a0 e1                                      mov sl, r0
0045b798  06 61 80 e0                                      add r6, r0, r6, lsl #2
0045b79c  01 00 00 0a                                      beq #0x45b7a8
0045b7a0  06 00 a0 e1                                      mov r0, r6
0045b7a4  e3 c9 fa eb                                      bl #0x30df38
0045b7a8  20 00 94 e5                                      ldr r0, [r4, #0x20]
0045b7ac  24 10 94 e5                                      ldr r1, [r4, #0x24]
0045b7b0  00 00 50 e3                                      cmp r0, #0
0045b7b4  03 00 00 0a                                      beq #0x45b7c8
0045b7b8  01 11 a0 e1                                      lsl r1, r1, #2
0045b7bc  80 00 51 e3                                      cmp r1, #0x80
0045b7c0  03 00 00 8a                                      bhi #0x45b7d4
0045b7c4  cd b5 0a eb                                      bl #0x708f00
0045b7c8  20 a0 84 e5                                      str sl, [r4, #0x20]
0045b7cc  24 80 84 e5                                      str r8, [r4, #0x24]
0045b7d0  d3 ff ff ea                                      b #0x45b724
0045b7d4  19 d3 fa eb                                      bl #0x310440
0045b7d8  fa ff ff ea                                      b #0x45b7c8
0045b7dc  04 20 8a e2                                      add r2, sl, #4
0045b7e0  01 20 52 e0                                      subs r2, r2, r1
0045b7e4  ce ff ff 0a                                      beq #0x45b724
0045b7e8  06 00 a0 e1                                      mov r0, r6
0045b7ec  d1 c9 fa eb                                      bl #0x30df38
0045b7f0  cb ff ff ea                                      b #0x45b724

; FUNCTION 0x0045b7f4, declared_size=60, range_size=60, mode=arm
; class-group: std::deque<CharMenuTutorialMsg, std::allocator<CharMenuTutorialMsg> >
; alias: _ZNSt5dequeI19CharMenuTutorialMsgSaIS0_EE9push_backERKS0_
; demangled: std::deque<CharMenuTutorialMsg, std::allocator<CharMenuTutorialMsg> >::push_back(CharMenuTutorialMsg const&)
; decoder-mode: arm
0045b7f4  10 40 2d e9                                      push {r4, lr}
0045b7f8  18 20 90 e5                                      ldr r2, [r0, #0x18]
0045b7fc  10 30 90 e5                                      ldr r3, [r0, #0x10]
0045b800  00 40 a0 e1                                      mov r4, r0
0045b804  34 20 42 e2                                      sub r2, r2, #0x34
0045b808  02 00 53 e1                                      cmp r3, r2
0045b80c  05 00 00 0a                                      beq #0x45b828
0045b810  03 00 a0 e1                                      mov r0, r3
0045b814  d9 fb ff eb                                      bl #0x45a780
0045b818  10 30 94 e5                                      ldr r3, [r4, #0x10]
0045b81c  34 30 83 e2                                      add r3, r3, #0x34
0045b820  10 30 84 e5                                      str r3, [r4, #0x10]
0045b824  10 80 bd e8                                      pop {r4, pc}
0045b828  10 40 bd e8                                      pop {r4, lr}
0045b82c  90 ff ff ea                                      b #0x45b674
