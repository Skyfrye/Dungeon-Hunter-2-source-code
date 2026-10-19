; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0049437c, declared_size=272, range_size=272, mode=arm
; class-group: VectorSet<int>
; alias: _ZN9VectorSetIiE16push_back_uniqueERKi
; demangled: VectorSet<int>::push_back_unique(int const&)
; decoder-mode: arm
0049437c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00494380  00 40 a0 e1                                      mov r4, r0
00494384  0c d0 4d e2                                      sub sp, sp, #0xc
00494388  01 50 a0 e1                                      mov r5, r1
0049438c  04 30 8d e2                                      add r3, sp, #4
00494390  00 00 90 e5                                      ldr r0, [r0]
00494394  04 10 94 e5                                      ldr r1, [r4, #4]
00494398  05 20 a0 e1                                      mov r2, r5
0049439c  eb 53 fb eb                                      bl #0x369350
004943a0  04 30 94 e5                                      ldr r3, [r4, #4]
004943a4  00 60 a0 e1                                      mov r6, r0
004943a8  03 00 50 e1                                      cmp r0, r3
004943ac  01 00 00 0a                                      beq #0x4943b8
004943b0  0c d0 8d e2                                      add sp, sp, #0xc
004943b4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
004943b8  08 30 94 e5                                      ldr r3, [r4, #8]
004943bc  03 00 50 e1                                      cmp r0, r3
004943c0  05 00 00 0a                                      beq #0x4943dc
004943c4  00 30 95 e5                                      ldr r3, [r5]
004943c8  00 30 80 e5                                      str r3, [r0]
004943cc  04 30 94 e5                                      ldr r3, [r4, #4]
004943d0  04 30 83 e2                                      add r3, r3, #4
004943d4  04 30 84 e5                                      str r3, [r4, #4]
004943d8  f4 ff ff ea                                      b #0x4943b0
004943dc  00 30 94 e5                                      ldr r3, [r4]
004943e0  00 30 63 e0                                      rsb r3, r3, r0
004943e4  43 31 a0 e1                                      asr r3, r3, #2
004943e8  01 00 53 e3                                      cmp r3, #1
004943ec  03 10 83 20                                      addhs r1, r3, r3
004943f0  01 10 83 32                                      addlo r1, r3, #1
004943f4  07 01 71 e3                                      cmn r1, #0xc0000001
004943f8  1f 00 00 8a                                      bhi #0x49447c
004943fc  01 00 53 e1                                      cmp r3, r1
00494400  1d 00 00 8a                                      bhi #0x49447c
00494404  08 20 8d e2                                      add r2, sp, #8
00494408  08 10 22 e5                                      str r1, [r2, #-8]!
0049440c  08 00 84 e2                                      add r0, r4, #8
00494410  0d 20 a0 e1                                      mov r2, sp
00494414  50 2e fb eb                                      bl #0x35fd5c
00494418  00 10 94 e5                                      ldr r1, [r4]
0049441c  00 70 a0 e1                                      mov r7, r0
00494420  01 60 56 e0                                      subs r6, r6, r1
00494424  00 60 a0 01                                      moveq r6, r0
00494428  02 00 00 0a                                      beq #0x494438
0049442c  06 20 a0 e1                                      mov r2, r6
00494430  c0 e6 f9 eb                                      bl #0x30df38
00494434  06 60 80 e0                                      add r6, r0, r6
00494438  00 30 95 e5                                      ldr r3, [r5]
0049443c  04 30 86 e4                                      str r3, [r6], #4
00494440  00 00 94 e5                                      ldr r0, [r4]
00494444  08 10 94 e5                                      ldr r1, [r4, #8]
00494448  00 00 50 e3                                      cmp r0, #0
0049444c  04 00 00 0a                                      beq #0x494464
00494450  01 10 60 e0                                      rsb r1, r0, r1
00494454  03 10 c1 e3                                      bic r1, r1, #3
00494458  80 00 51 e3                                      cmp r1, #0x80
0049445c  08 00 00 8a                                      bhi #0x494484
00494460  a6 d2 09 eb                                      bl #0x708f00
00494464  00 30 9d e5                                      ldr r3, [sp]
00494468  00 70 84 e5                                      str r7, [r4]
0049446c  04 60 84 e5                                      str r6, [r4, #4]
00494470  03 71 87 e0                                      add r7, r7, r3, lsl #2
00494474  08 70 84 e5                                      str r7, [r4, #8]
00494478  cc ff ff ea                                      b #0x4943b0
0049447c  03 11 e0 e3                                      mvn r1, #0xc0000000
00494480  df ff ff ea                                      b #0x494404
00494484  ed ef f9 eb                                      bl #0x310440
00494488  f5 ff ff ea                                      b #0x494464
