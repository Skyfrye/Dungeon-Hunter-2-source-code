; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0046124c, declared_size=392, range_size=392, mode=arm
; class-group: std::deque<TutorialMsg, std::allocator<TutorialMsg> >
; alias: _ZNSt5dequeI11TutorialMsgSaIS0_EE18_M_push_back_aux_vERKS0_
; demangled: std::deque<TutorialMsg, std::allocator<TutorialMsg> >::_M_push_back_aux_v(TutorialMsg const&)
; decoder-mode: arm
0046124c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00461250  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
00461254  20 20 90 e5                                      ldr r2, [r0, #0x20]
00461258  24 30 90 e5                                      ldr r3, [r0, #0x24]
0046125c  01 50 a0 e1                                      mov r5, r1
00461260  0a 10 62 e0                                      rsb r1, r2, sl
00461264  41 11 43 e0                                      sub r1, r3, r1, asr #2
00461268  01 00 51 e3                                      cmp r1, #1
0046126c  00 40 a0 e1                                      mov r4, r0
00461270  10 00 00 9a                                      bls #0x4612b8
00461274  24 00 84 e2                                      add r0, r4, #0x24
00461278  e5 e8 ff eb                                      bl #0x45b614
0046127c  04 00 8a e5                                      str r0, [sl, #4]
00461280  00 20 95 e5                                      ldr r2, [r5]
00461284  10 30 94 e5                                      ldr r3, [r4, #0x10]
00461288  00 20 83 e5                                      str r2, [r3]
0046128c  04 20 95 e5                                      ldr r2, [r5, #4]
00461290  04 20 83 e5                                      str r2, [r3, #4]
00461294  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00461298  04 20 83 e2                                      add r2, r3, #4
0046129c  1c 20 84 e5                                      str r2, [r4, #0x1c]
004612a0  04 30 93 e5                                      ldr r3, [r3, #4]
004612a4  80 20 83 e2                                      add r2, r3, #0x80
004612a8  10 30 84 e5                                      str r3, [r4, #0x10]
004612ac  18 20 84 e5                                      str r2, [r4, #0x18]
004612b0  14 30 84 e5                                      str r3, [r4, #0x14]
004612b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
004612b8  0c 10 90 e5                                      ldr r1, [r0, #0xc]
004612bc  0a 70 61 e0                                      rsb r7, r1, sl
004612c0  47 71 a0 e1                                      asr r7, r7, #2
004612c4  01 70 87 e2                                      add r7, r7, #1
004612c8  01 90 87 e2                                      add sb, r7, #1
004612cc  89 00 53 e1                                      cmp r3, sb, lsl #1
004612d0  18 00 00 9a                                      bls #0x461338
004612d4  03 60 69 e0                                      rsb r6, sb, r3
004612d8  a6 60 a0 e1                                      lsr r6, r6, #1
004612dc  06 61 82 e0                                      add r6, r2, r6, lsl #2
004612e0  06 00 51 e1                                      cmp r1, r6
004612e4  34 00 00 8a                                      bhi #0x4613bc
004612e8  04 a0 8a e2                                      add sl, sl, #4
004612ec  0a 20 61 e0                                      rsb r2, r1, sl
004612f0  00 00 52 e3                                      cmp r2, #0
004612f4  02 00 00 da                                      ble #0x461304
004612f8  07 01 86 e0                                      add r0, r6, r7, lsl #2
004612fc  00 00 62 e0                                      rsb r0, r2, r0
00461300  0c b3 fa eb                                      bl #0x30df38
00461304  0c 60 84 e5                                      str r6, [r4, #0xc]
00461308  00 30 96 e5                                      ldr r3, [r6]
0046130c  01 70 47 e2                                      sub r7, r7, #1
00461310  07 a1 86 e0                                      add sl, r6, r7, lsl #2
00461314  80 20 83 e2                                      add r2, r3, #0x80
00461318  08 20 84 e5                                      str r2, [r4, #8]
0046131c  04 30 84 e5                                      str r3, [r4, #4]
00461320  1c a0 84 e5                                      str sl, [r4, #0x1c]
00461324  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
00461328  80 20 83 e2                                      add r2, r3, #0x80
0046132c  18 20 84 e5                                      str r2, [r4, #0x18]
00461330  14 30 84 e5                                      str r3, [r4, #0x14]
00461334  ce ff ff ea                                      b #0x461274
00461338  00 00 53 e3                                      cmp r3, #0
0046133c  03 20 a0 11                                      movne r2, r3
00461340  01 20 a0 03                                      moveq r2, #1
00461344  02 80 83 e2                                      add r8, r3, #2
00461348  02 80 88 e0                                      add r8, r8, r2
0046134c  08 10 a0 e1                                      mov r1, r8
00461350  00 20 a0 e3                                      mov r2, #0
00461354  20 00 80 e2                                      add r0, r0, #0x20
00461358  9c 20 fb eb                                      bl #0x3295d0
0046135c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00461360  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00461364  08 60 69 e0                                      rsb r6, sb, r8
00461368  a6 60 a0 e1                                      lsr r6, r6, #1
0046136c  04 20 82 e2                                      add r2, r2, #4
00461370  01 20 52 e0                                      subs r2, r2, r1
00461374  00 a0 a0 e1                                      mov sl, r0
00461378  06 61 80 e0                                      add r6, r0, r6, lsl #2
0046137c  01 00 00 0a                                      beq #0x461388
00461380  06 00 a0 e1                                      mov r0, r6
00461384  eb b2 fa eb                                      bl #0x30df38
00461388  20 00 94 e5                                      ldr r0, [r4, #0x20]
0046138c  24 10 94 e5                                      ldr r1, [r4, #0x24]
00461390  00 00 50 e3                                      cmp r0, #0
00461394  03 00 00 0a                                      beq #0x4613a8
00461398  01 11 a0 e1                                      lsl r1, r1, #2
0046139c  80 00 51 e3                                      cmp r1, #0x80
004613a0  03 00 00 8a                                      bhi #0x4613b4
004613a4  d5 9e 0a eb                                      bl #0x708f00
004613a8  20 a0 84 e5                                      str sl, [r4, #0x20]
004613ac  24 80 84 e5                                      str r8, [r4, #0x24]
004613b0  d3 ff ff ea                                      b #0x461304
004613b4  21 bc fa eb                                      bl #0x310440
004613b8  fa ff ff ea                                      b #0x4613a8
004613bc  04 20 8a e2                                      add r2, sl, #4
004613c0  01 20 52 e0                                      subs r2, r2, r1
004613c4  ce ff ff 0a                                      beq #0x461304
004613c8  06 00 a0 e1                                      mov r0, r6
004613cc  d9 b2 fa eb                                      bl #0x30df38
004613d0  cb ff ff ea                                      b #0x461304
