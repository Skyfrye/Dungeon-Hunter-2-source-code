; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081ce48, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<tFriendInfo, std::allocator<tFriendInfo> >
; alias: _ZNSt6vectorI11tFriendInfoSaIS0_EED1Ev
; demangled: std::vector<tFriendInfo, std::allocator<tFriendInfo> >::~vector()
; decoder-mode: arm
0081ce48  70 40 2d e9                                      push {r4, r5, r6, lr}
0081ce4c  04 50 90 e5                                      ldr r5, [r0, #4]
0081ce50  00 60 90 e5                                      ldr r6, [r0]
0081ce54  00 40 a0 e1                                      mov r4, r0
0081ce58  06 00 55 e1                                      cmp r5, r6
0081ce5c  04 00 00 0a                                      beq #0x81ce74
0081ce60  68 50 45 e2                                      sub r5, r5, #0x68
0081ce64  05 00 a0 e1                                      mov r0, r5
0081ce68  ea ff ff eb                                      bl #0x81ce18
0081ce6c  05 00 56 e1                                      cmp r6, r5
0081ce70  fa ff ff 1a                                      bne #0x81ce60
0081ce74  00 00 94 e5                                      ldr r0, [r4]
0081ce78  00 00 50 e3                                      cmp r0, #0
0081ce7c  0a 00 00 0a                                      beq #0x81ceac
0081ce80  08 10 94 e5                                      ldr r1, [r4, #8]
0081ce84  c5 3e 04 e3                                      movw r3, #0x4ec5
0081ce88  ec 34 4c e3                                      movt r3, #0xc4ec
0081ce8c  01 10 60 e0                                      rsb r1, r0, r1
0081ce90  c1 11 a0 e1                                      asr r1, r1, #3
0081ce94  93 01 03 e0                                      mul r3, r3, r1
0081ce98  68 10 a0 e3                                      mov r1, #0x68
0081ce9c  91 03 01 e0                                      mul r1, r1, r3
0081cea0  80 00 51 e3                                      cmp r1, #0x80
0081cea4  02 00 00 8a                                      bhi #0x81ceb4
0081cea8  22 85 02 eb                                      bl #0x8be338
0081ceac  04 00 a0 e1                                      mov r0, r4
0081ceb0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081ceb4  61 cd eb eb                                      bl #0x310440
0081ceb8  04 00 a0 e1                                      mov r0, r4
0081cebc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0081cffc, declared_size=124, range_size=124, mode=arm
; class-group: std::vector<tFriendInfo, std::allocator<tFriendInfo> >
; alias: _ZNSt6vectorI11tFriendInfoSaIS0_EE19_M_clear_after_moveEv
; demangled: std::vector<tFriendInfo, std::allocator<tFriendInfo> >::_M_clear_after_move()
; decoder-mode: arm
0081cffc  70 40 2d e9                                      push {r4, r5, r6, lr}
0081d000  04 40 90 e5                                      ldr r4, [r0, #4]
0081d004  00 50 90 e5                                      ldr r5, [r0]
0081d008  00 60 a0 e1                                      mov r6, r0
0081d00c  05 00 54 e1                                      cmp r4, r5
0081d010  05 00 00 0a                                      beq #0x81d02c
0081d014  68 40 44 e2                                      sub r4, r4, #0x68
0081d018  04 00 a0 e1                                      mov r0, r4
0081d01c  7d ff ff eb                                      bl #0x81ce18
0081d020  04 00 55 e1                                      cmp r5, r4
0081d024  fa ff ff 1a                                      bne #0x81d014
0081d028  00 40 96 e5                                      ldr r4, [r6]
0081d02c  00 00 54 e3                                      cmp r4, #0
0081d030  08 30 96 e5                                      ldr r3, [r6, #8]
0081d034  0e 00 00 0a                                      beq #0x81d074
0081d038  03 10 64 e0                                      rsb r1, r4, r3
0081d03c  c5 3e 04 e3                                      movw r3, #0x4ec5
0081d040  c1 11 a0 e1                                      asr r1, r1, #3
0081d044  ec 34 4c e3                                      movt r3, #0xc4ec
0081d048  93 01 03 e0                                      mul r3, r3, r1
0081d04c  68 10 a0 e3                                      mov r1, #0x68
0081d050  91 03 01 e0                                      mul r1, r1, r3
0081d054  80 00 51 e3                                      cmp r1, #0x80
0081d058  02 00 00 8a                                      bhi #0x81d068
0081d05c  04 00 a0 e1                                      mov r0, r4
0081d060  70 40 bd e8                                      pop {r4, r5, r6, lr}
0081d064  b3 84 02 ea                                      b #0x8be338
0081d068  04 00 a0 e1                                      mov r0, r4
0081d06c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0081d070  f2 cc eb ea                                      b #0x310440
0081d074  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0081e070, declared_size=276, range_size=276, mode=arm
; class-group: std::vector<tFriendInfo, std::allocator<tFriendInfo> >
; alias: _ZNSt6vectorI11tFriendInfoSaIS0_EE9push_backERKS0_
; demangled: std::vector<tFriendInfo, std::allocator<tFriendInfo> >::push_back(tFriendInfo const&)
; decoder-mode: arm
0081e070  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0081e074  00 40 a0 e1                                      mov r4, r0
0081e078  08 50 94 e5                                      ldr r5, [r4, #8]
0081e07c  04 00 90 e5                                      ldr r0, [r0, #4]
0081e080  08 d0 4d e2                                      sub sp, sp, #8
0081e084  01 60 a0 e1                                      mov r6, r1
0081e088  05 00 50 e1                                      cmp r0, r5
0081e08c  05 00 00 0a                                      beq #0x81e0a8
0081e090  e3 ff ff eb                                      bl #0x81e024
0081e094  04 30 94 e5                                      ldr r3, [r4, #4]
0081e098  68 30 83 e2                                      add r3, r3, #0x68
0081e09c  04 30 84 e5                                      str r3, [r4, #4]
0081e0a0  08 d0 8d e2                                      add sp, sp, #8
0081e0a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0081e0a8  00 20 94 e5                                      ldr r2, [r4]
0081e0ac  c5 3e 04 e3                                      movw r3, #0x4ec5
0081e0b0  ec 34 4c e3                                      movt r3, #0xc4ec
0081e0b4  05 20 62 e0                                      rsb r2, r2, r5
0081e0b8  c2 21 a0 e1                                      asr r2, r2, #3
0081e0bc  93 02 02 e0                                      mul r2, r3, r2
0081e0c0  62 37 02 e3                                      movw r3, #0x2762
0081e0c4  01 00 52 e3                                      cmp r2, #1
0081e0c8  02 10 82 20                                      addhs r1, r2, r2
0081e0cc  01 10 82 32                                      addlo r1, r2, #1
0081e0d0  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0081e0d4  03 00 51 e1                                      cmp r1, r3
0081e0d8  26 00 00 9a                                      bls #0x81e178
0081e0dc  62 17 02 e3                                      movw r1, #0x2762
0081e0e0  01 16 81 e1                                      orr r1, r1, r1, lsl #12
0081e0e4  08 20 8d e2                                      add r2, sp, #8
0081e0e8  04 10 22 e5                                      str r1, [r2, #-4]!
0081e0ec  08 00 84 e2                                      add r0, r4, #8
0081e0f0  b5 fa ff eb                                      bl #0x81cbcc
0081e0f4  00 90 94 e5                                      ldr sb, [r4]
0081e0f8  c5 3e 04 e3                                      movw r3, #0x4ec5
0081e0fc  ec 34 4c e3                                      movt r3, #0xc4ec
0081e100  05 50 69 e0                                      rsb r5, sb, r5
0081e104  c5 51 a0 e1                                      asr r5, r5, #3
0081e108  93 05 05 e0                                      mul r5, r3, r5
0081e10c  00 a0 a0 e1                                      mov sl, r0
0081e110  00 00 55 e3                                      cmp r5, #0
0081e114  00 50 a0 d1                                      movle r5, r0
0081e118  09 00 00 da                                      ble #0x81e144
0081e11c  05 80 a0 e1                                      mov r8, r5
0081e120  00 70 a0 e3                                      mov r7, #0
0081e124  07 00 8a e0                                      add r0, sl, r7
0081e128  07 10 89 e0                                      add r1, sb, r7
0081e12c  bc ff ff eb                                      bl #0x81e024
0081e130  01 80 58 e2                                      subs r8, r8, #1
0081e134  68 70 87 e2                                      add r7, r7, #0x68
0081e138  f9 ff ff 1a                                      bne #0x81e124
0081e13c  68 30 a0 e3                                      mov r3, #0x68
0081e140  93 a5 25 e0                                      mla r5, r3, r5, sl
0081e144  06 10 a0 e1                                      mov r1, r6
0081e148  05 00 a0 e1                                      mov r0, r5
0081e14c  b4 ff ff eb                                      bl #0x81e024
0081e150  04 00 a0 e1                                      mov r0, r4
0081e154  a8 fb ff eb                                      bl #0x81cffc
0081e158  04 30 9d e5                                      ldr r3, [sp, #4]
0081e15c  68 20 a0 e3                                      mov r2, #0x68
0081e160  68 50 85 e2                                      add r5, r5, #0x68
0081e164  92 a3 23 e0                                      mla r3, r2, r3, sl
0081e168  00 a0 84 e5                                      str sl, [r4]
0081e16c  08 30 84 e5                                      str r3, [r4, #8]
0081e170  04 50 84 e5                                      str r5, [r4, #4]
0081e174  c9 ff ff ea                                      b #0x81e0a0
0081e178  01 00 52 e1                                      cmp r2, r1
0081e17c  d8 ff ff 9a                                      bls #0x81e0e4
0081e180  d5 ff ff ea                                      b #0x81e0dc
