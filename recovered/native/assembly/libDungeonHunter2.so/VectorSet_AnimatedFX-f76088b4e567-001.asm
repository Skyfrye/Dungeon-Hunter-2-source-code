; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00494550, declared_size=272, range_size=272, mode=arm
; class-group: VectorSet<AnimatedFX*>
; alias: _ZN9VectorSetIP10AnimatedFXE16push_back_uniqueERKS1_
; demangled: VectorSet<AnimatedFX*>::push_back_unique(AnimatedFX* const&)
; decoder-mode: arm
00494550  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00494554  00 40 a0 e1                                      mov r4, r0
00494558  0c d0 4d e2                                      sub sp, sp, #0xc
0049455c  01 50 a0 e1                                      mov r5, r1
00494560  04 30 8d e2                                      add r3, sp, #4
00494564  00 00 90 e5                                      ldr r0, [r0]
00494568  04 10 94 e5                                      ldr r1, [r4, #4]
0049456c  05 20 a0 e1                                      mov r2, r5
00494570  c4 fb ff eb                                      bl #0x493488
00494574  04 30 94 e5                                      ldr r3, [r4, #4]
00494578  00 60 a0 e1                                      mov r6, r0
0049457c  03 00 50 e1                                      cmp r0, r3
00494580  01 00 00 0a                                      beq #0x49458c
00494584  0c d0 8d e2                                      add sp, sp, #0xc
00494588  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0049458c  08 30 94 e5                                      ldr r3, [r4, #8]
00494590  03 00 50 e1                                      cmp r0, r3
00494594  05 00 00 0a                                      beq #0x4945b0
00494598  00 30 95 e5                                      ldr r3, [r5]
0049459c  00 30 80 e5                                      str r3, [r0]
004945a0  04 30 94 e5                                      ldr r3, [r4, #4]
004945a4  04 30 83 e2                                      add r3, r3, #4
004945a8  04 30 84 e5                                      str r3, [r4, #4]
004945ac  f4 ff ff ea                                      b #0x494584
004945b0  00 30 94 e5                                      ldr r3, [r4]
004945b4  00 30 63 e0                                      rsb r3, r3, r0
004945b8  43 31 a0 e1                                      asr r3, r3, #2
004945bc  01 00 53 e3                                      cmp r3, #1
004945c0  03 10 83 20                                      addhs r1, r3, r3
004945c4  01 10 83 32                                      addlo r1, r3, #1
004945c8  07 01 71 e3                                      cmn r1, #0xc0000001
004945cc  1f 00 00 8a                                      bhi #0x494650
004945d0  01 00 53 e1                                      cmp r3, r1
004945d4  1d 00 00 8a                                      bhi #0x494650
004945d8  08 20 8d e2                                      add r2, sp, #8
004945dc  08 10 22 e5                                      str r1, [r2, #-8]!
004945e0  08 00 84 e2                                      add r0, r4, #8
004945e4  0d 20 a0 e1                                      mov r2, sp
004945e8  f6 fc ff eb                                      bl #0x4939c8
004945ec  00 10 94 e5                                      ldr r1, [r4]
004945f0  00 70 a0 e1                                      mov r7, r0
004945f4  01 60 56 e0                                      subs r6, r6, r1
004945f8  00 60 a0 01                                      moveq r6, r0
004945fc  02 00 00 0a                                      beq #0x49460c
00494600  06 20 a0 e1                                      mov r2, r6
00494604  4b e6 f9 eb                                      bl #0x30df38
00494608  06 60 80 e0                                      add r6, r0, r6
0049460c  00 30 95 e5                                      ldr r3, [r5]
00494610  04 30 86 e4                                      str r3, [r6], #4
00494614  00 00 94 e5                                      ldr r0, [r4]
00494618  08 10 94 e5                                      ldr r1, [r4, #8]
0049461c  00 00 50 e3                                      cmp r0, #0
00494620  04 00 00 0a                                      beq #0x494638
00494624  01 10 60 e0                                      rsb r1, r0, r1
00494628  03 10 c1 e3                                      bic r1, r1, #3
0049462c  80 00 51 e3                                      cmp r1, #0x80
00494630  08 00 00 8a                                      bhi #0x494658
00494634  31 d2 09 eb                                      bl #0x708f00
00494638  00 30 9d e5                                      ldr r3, [sp]
0049463c  00 70 84 e5                                      str r7, [r4]
00494640  04 60 84 e5                                      str r6, [r4, #4]
00494644  03 71 87 e0                                      add r7, r7, r3, lsl #2
00494648  08 70 84 e5                                      str r7, [r4, #8]
0049464c  cc ff ff ea                                      b #0x494584
00494650  03 11 e0 e3                                      mvn r1, #0xc0000000
00494654  df ff ff ea                                      b #0x4945d8
00494658  78 ef f9 eb                                      bl #0x310440
0049465c  f5 ff ff ea                                      b #0x494638
