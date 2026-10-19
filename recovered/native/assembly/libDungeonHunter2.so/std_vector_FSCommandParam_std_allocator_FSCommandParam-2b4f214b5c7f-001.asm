; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004159f8, declared_size=132, range_size=132, mode=arm
; class-group: std::vector<FSCommandParam, std::allocator<FSCommandParam> >
; alias: _ZNSt6vectorI14FSCommandParamSaIS0_EE19_M_clear_after_moveEv
; demangled: std::vector<FSCommandParam, std::allocator<FSCommandParam> >::_M_clear_after_move()
; decoder-mode: arm
004159f8  70 40 2d e9                                      push {r4, r5, r6, lr}
004159fc  04 40 90 e5                                      ldr r4, [r0, #4]
00415a00  00 50 90 e5                                      ldr r5, [r0]
00415a04  00 60 a0 e1                                      mov r6, r0
00415a08  05 00 54 e1                                      cmp r4, r5
00415a0c  05 00 00 0a                                      beq #0x415a28
00415a10  18 40 44 e2                                      sub r4, r4, #0x18
00415a14  04 00 a0 e1                                      mov r0, r4
00415a18  e5 ff ff eb                                      bl #0x4159b4
00415a1c  04 00 55 e1                                      cmp r5, r4
00415a20  fa ff ff 1a                                      bne #0x415a10
00415a24  00 40 96 e5                                      ldr r4, [r6]
00415a28  00 00 54 e3                                      cmp r4, #0
00415a2c  08 30 96 e5                                      ldr r3, [r6, #8]
00415a30  10 00 00 0a                                      beq #0x415a78
00415a34  03 30 64 e0                                      rsb r3, r4, r3
00415a38  c3 31 a0 e1                                      asr r3, r3, #3
00415a3c  03 11 83 e0                                      add r1, r3, r3, lsl #2
00415a40  01 12 81 e0                                      add r1, r1, r1, lsl #4
00415a44  01 14 81 e0                                      add r1, r1, r1, lsl #8
00415a48  01 18 81 e0                                      add r1, r1, r1, lsl #16
00415a4c  81 30 83 e0                                      add r3, r3, r1, lsl #1
00415a50  18 10 a0 e3                                      mov r1, #0x18
00415a54  91 03 01 e0                                      mul r1, r1, r3
00415a58  80 00 51 e3                                      cmp r1, #0x80
00415a5c  02 00 00 8a                                      bhi #0x415a6c
00415a60  04 00 a0 e1                                      mov r0, r4
00415a64  70 40 bd e8                                      pop {r4, r5, r6, lr}
00415a68  24 cd 0b ea                                      b #0x708f00
00415a6c  04 00 a0 e1                                      mov r0, r4
00415a70  70 40 bd e8                                      pop {r4, r5, r6, lr}
00415a74  71 ea fb ea                                      b #0x310440
00415a78  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00415a7c, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<FSCommandParam, std::allocator<FSCommandParam> >
; alias: _ZNSt6vectorI14FSCommandParamSaIS0_EED1Ev
; demangled: std::vector<FSCommandParam, std::allocator<FSCommandParam> >::~vector()
; decoder-mode: arm
00415a7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00415a80  04 50 90 e5                                      ldr r5, [r0, #4]
00415a84  00 60 90 e5                                      ldr r6, [r0]
00415a88  00 40 a0 e1                                      mov r4, r0
00415a8c  06 00 55 e1                                      cmp r5, r6
00415a90  04 00 00 0a                                      beq #0x415aa8
00415a94  18 50 45 e2                                      sub r5, r5, #0x18
00415a98  05 00 a0 e1                                      mov r0, r5
00415a9c  c4 ff ff eb                                      bl #0x4159b4
00415aa0  05 00 56 e1                                      cmp r6, r5
00415aa4  fa ff ff 1a                                      bne #0x415a94
00415aa8  00 00 94 e5                                      ldr r0, [r4]
00415aac  00 00 50 e3                                      cmp r0, #0
00415ab0  0c 00 00 0a                                      beq #0x415ae8
00415ab4  08 30 94 e5                                      ldr r3, [r4, #8]
00415ab8  03 30 60 e0                                      rsb r3, r0, r3
00415abc  c3 31 a0 e1                                      asr r3, r3, #3
00415ac0  03 11 83 e0                                      add r1, r3, r3, lsl #2
00415ac4  01 12 81 e0                                      add r1, r1, r1, lsl #4
00415ac8  01 14 81 e0                                      add r1, r1, r1, lsl #8
00415acc  01 18 81 e0                                      add r1, r1, r1, lsl #16
00415ad0  81 30 83 e0                                      add r3, r3, r1, lsl #1
00415ad4  18 10 a0 e3                                      mov r1, #0x18
00415ad8  91 03 01 e0                                      mul r1, r1, r3
00415adc  80 00 51 e3                                      cmp r1, #0x80
00415ae0  02 00 00 8a                                      bhi #0x415af0
00415ae4  05 cd 0b eb                                      bl #0x708f00
00415ae8  04 00 a0 e1                                      mov r0, r4
00415aec  70 80 bd e8                                      pop {r4, r5, r6, pc}
00415af0  52 ea fb eb                                      bl #0x310440
00415af4  04 00 a0 e1                                      mov r0, r4
00415af8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00415afc, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<FSCommandParam, std::allocator<FSCommandParam> >
; alias: _ZNSt6vectorI14FSCommandParamSaIS0_EE8_M_eraseEPS0_S3_RKSt12__false_type
; demangled: std::vector<FSCommandParam, std::allocator<FSCommandParam> >::_M_erase(FSCommandParam*, FSCommandParam*, std::__false_type const&)
; decoder-mode: arm
00415afc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00415b00  04 30 90 e5                                      ldr r3, [r0, #4]
00415b04  10 d0 4d e2                                      sub sp, sp, #0x10
00415b08  01 50 a0 e1                                      mov r5, r1
00415b0c  00 40 a0 e1                                      mov r4, r0
00415b10  03 10 a0 e1                                      mov r1, r3
00415b14  02 00 a0 e1                                      mov r0, r2
00415b18  00 c0 a0 e3                                      mov ip, #0
00415b1c  05 20 a0 e1                                      mov r2, r5
00415b20  0c 30 8d e2                                      add r3, sp, #0xc
00415b24  00 c0 8d e5                                      str ip, [sp]
00415b28  f6 fe ff eb                                      bl #0x415708
00415b2c  04 70 94 e5                                      ldr r7, [r4, #4]
00415b30  00 80 a0 e1                                      mov r8, r0
00415b34  00 00 57 e1                                      cmp r7, r0
00415b38  05 00 00 0a                                      beq #0x415b54
00415b3c  00 60 a0 e1                                      mov r6, r0
00415b40  06 00 a0 e1                                      mov r0, r6
00415b44  18 60 86 e2                                      add r6, r6, #0x18
00415b48  99 ff ff eb                                      bl #0x4159b4
00415b4c  06 00 57 e1                                      cmp r7, r6
00415b50  fa ff ff 1a                                      bne #0x415b40
00415b54  04 80 84 e5                                      str r8, [r4, #4]
00415b58  05 00 a0 e1                                      mov r0, r5
00415b5c  10 d0 8d e2                                      add sp, sp, #0x10
00415b60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00415d3c, declared_size=340, range_size=340, mode=arm
; class-group: std::vector<FSCommandParam, std::allocator<FSCommandParam> >
; alias: _ZNSt6vectorI14FSCommandParamSaIS0_EE9push_backERKS0_
; demangled: std::vector<FSCommandParam, std::allocator<FSCommandParam> >::push_back(FSCommandParam const&)
; decoder-mode: arm
00415d3c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00415d40  00 70 a0 e1                                      mov r7, r0
00415d44  08 90 97 e5                                      ldr sb, [r7, #8]
00415d48  04 00 90 e5                                      ldr r0, [r0, #4]
00415d4c  08 d0 4d e2                                      sub sp, sp, #8
00415d50  01 80 a0 e1                                      mov r8, r1
00415d54  09 00 50 e1                                      cmp r0, sb
00415d58  09 00 00 0a                                      beq #0x415d84
00415d5c  10 00 80 e5                                      str r0, [r0, #0x10]
00415d60  14 00 80 e5                                      str r0, [r0, #0x14]
00415d64  10 20 91 e5                                      ldr r2, [r1, #0x10]
00415d68  14 10 91 e5                                      ldr r1, [r1, #0x14]
00415d6c  5d ee fb eb                                      bl #0x3116e8
00415d70  04 30 97 e5                                      ldr r3, [r7, #4]
00415d74  18 30 83 e2                                      add r3, r3, #0x18
00415d78  04 30 87 e5                                      str r3, [r7, #4]
00415d7c  08 d0 8d e2                                      add sp, sp, #8
00415d80  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00415d84  00 20 97 e5                                      ldr r2, [r7]
00415d88  aa 3a 0a e3                                      movw r3, #0xaaaa
00415d8c  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00415d90  09 20 62 e0                                      rsb r2, r2, sb
00415d94  c2 21 a0 e1                                      asr r2, r2, #3
00415d98  02 11 82 e0                                      add r1, r2, r2, lsl #2
00415d9c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00415da0  01 14 81 e0                                      add r1, r1, r1, lsl #8
00415da4  01 18 81 e0                                      add r1, r1, r1, lsl #16
00415da8  81 20 82 e0                                      add r2, r2, r1, lsl #1
00415dac  01 00 52 e3                                      cmp r2, #1
00415db0  02 10 82 20                                      addhs r1, r2, r2
00415db4  01 10 82 32                                      addlo r1, r2, #1
00415db8  03 00 51 e1                                      cmp r1, r3
00415dbc  30 00 00 9a                                      bls #0x415e84
00415dc0  aa 1a 0a e3                                      movw r1, #0xaaaa
00415dc4  01 16 81 e1                                      orr r1, r1, r1, lsl #12
00415dc8  08 20 8d e2                                      add r2, sp, #8
00415dcc  04 10 22 e5                                      str r1, [r2, #-4]!
00415dd0  08 00 87 e2                                      add r0, r7, #8
00415dd4  7c ff ff eb                                      bl #0x415bcc
00415dd8  00 50 97 e5                                      ldr r5, [r7]
00415ddc  00 a0 a0 e1                                      mov sl, r0
00415de0  09 90 65 e0                                      rsb sb, r5, sb
00415de4  c9 31 a0 e1                                      asr r3, sb, #3
00415de8  03 91 83 e0                                      add sb, r3, r3, lsl #2
00415dec  09 92 89 e0                                      add sb, sb, sb, lsl #4
00415df0  09 94 89 e0                                      add sb, sb, sb, lsl #8
00415df4  09 98 89 e0                                      add sb, sb, sb, lsl #16
00415df8  89 90 83 e0                                      add sb, r3, sb, lsl #1
00415dfc  00 00 59 e3                                      cmp sb, #0
00415e00  00 90 a0 d1                                      movle sb, r0
00415e04  0e 00 00 da                                      ble #0x415e44
00415e08  09 60 a0 e1                                      mov r6, sb
00415e0c  00 40 a0 e1                                      mov r4, r0
00415e10  00 00 00 ea                                      b #0x415e18
00415e14  18 50 85 e2                                      add r5, r5, #0x18
00415e18  10 40 84 e5                                      str r4, [r4, #0x10]
00415e1c  14 40 84 e5                                      str r4, [r4, #0x14]
00415e20  04 00 a0 e1                                      mov r0, r4
00415e24  14 10 95 e5                                      ldr r1, [r5, #0x14]
00415e28  10 20 95 e5                                      ldr r2, [r5, #0x10]
00415e2c  2d ee fb eb                                      bl #0x3116e8
00415e30  01 60 56 e2                                      subs r6, r6, #1
00415e34  18 40 84 e2                                      add r4, r4, #0x18
00415e38  f5 ff ff 1a                                      bne #0x415e14
00415e3c  18 30 a0 e3                                      mov r3, #0x18
00415e40  93 a9 29 e0                                      mla sb, r3, sb, sl
00415e44  10 90 89 e5                                      str sb, [sb, #0x10]
00415e48  14 90 89 e5                                      str sb, [sb, #0x14]
00415e4c  10 20 98 e5                                      ldr r2, [r8, #0x10]
00415e50  09 00 a0 e1                                      mov r0, sb
00415e54  14 10 98 e5                                      ldr r1, [r8, #0x14]
00415e58  22 ee fb eb                                      bl #0x3116e8
00415e5c  07 00 a0 e1                                      mov r0, r7
00415e60  e4 fe ff eb                                      bl #0x4159f8
00415e64  04 30 9d e5                                      ldr r3, [sp, #4]
00415e68  18 20 a0 e3                                      mov r2, #0x18
00415e6c  18 90 89 e2                                      add sb, sb, #0x18
00415e70  92 a3 23 e0                                      mla r3, r2, r3, sl
00415e74  00 a0 87 e5                                      str sl, [r7]
00415e78  08 30 87 e5                                      str r3, [r7, #8]
00415e7c  04 90 87 e5                                      str sb, [r7, #4]
00415e80  bd ff ff ea                                      b #0x415d7c
00415e84  01 00 52 e1                                      cmp r2, r1
00415e88  ce ff ff 9a                                      bls #0x415dc8
00415e8c  cb ff ff ea                                      b #0x415dc0
