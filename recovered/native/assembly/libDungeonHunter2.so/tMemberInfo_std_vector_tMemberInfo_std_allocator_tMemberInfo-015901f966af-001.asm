; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00822020, declared_size=200, range_size=200, mode=arm
; class-group: tMemberInfo* std::vector<tMemberInfo, std::allocator<tMemberInfo> >
; alias: _ZNSt6vectorI11tMemberInfoSaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_RjT_S8_
; demangled: tMemberInfo* std::vector<tMemberInfo, std::allocator<tMemberInfo> >::_M_allocate_and_copy<tMemberInfo const*>(unsigned int&, tMemberInfo const*, tMemberInfo const*)
; decoder-mode: arm
00822020  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00822024  08 00 80 e2                                      add r0, r0, #8
00822028  02 60 a0 e1                                      mov r6, r2
0082202c  01 20 a0 e1                                      mov r2, r1
00822030  00 10 91 e5                                      ldr r1, [r1]
00822034  03 70 a0 e1                                      mov r7, r3
00822038  ae ea ff eb                                      bl #0x81caf8
0082203c  07 70 66 e0                                      rsb r7, r6, r7
00822040  3d 3f 0c e3                                      movw r3, #0xcf3d
00822044  47 71 a0 e1                                      asr r7, r7, #2
00822048  f3 3c 43 e3                                      movt r3, #0x3cf3
0082204c  93 07 07 e0                                      mul r7, r3, r7
00822050  00 80 a0 e1                                      mov r8, r0
00822054  00 00 57 e3                                      cmp r7, #0
00822058  20 00 00 da                                      ble #0x8220e0
0082205c  00 50 a0 e1                                      mov r5, r0
00822060  00 00 00 ea                                      b #0x822068
00822064  54 50 85 e2                                      add r5, r5, #0x54
00822068  00 20 96 e5                                      ldr r2, [r6]
0082206c  0c 30 85 e2                                      add r3, r5, #0xc
00822070  03 00 a0 e1                                      mov r0, r3
00822074  00 20 85 e5                                      str r2, [r5]
00822078  04 20 96 e5                                      ldr r2, [r6, #4]
0082207c  28 40 86 e2                                      add r4, r6, #0x28
00822080  04 20 85 e5                                      str r2, [r5, #4]
00822084  08 20 96 e5                                      ldr r2, [r6, #8]
00822088  1c 30 85 e5                                      str r3, [r5, #0x1c]
0082208c  20 30 85 e5                                      str r3, [r5, #0x20]
00822090  08 20 85 e5                                      str r2, [r5, #8]
00822094  20 10 96 e5                                      ldr r1, [r6, #0x20]
00822098  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
0082209c  91 bd eb eb                                      bl #0x3116e8
008220a0  24 30 96 e5                                      ldr r3, [r6, #0x24]
008220a4  28 c0 85 e2                                      add ip, r5, #0x28
008220a8  01 70 57 e2                                      subs r7, r7, #1
008220ac  24 30 85 e5                                      str r3, [r5, #0x24]
008220b0  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
008220b4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
008220b8  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
008220bc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
008220c0  00 30 94 e5                                      ldr r3, [r4]
008220c4  00 30 cc e5                                      strb r3, [ip]
008220c8  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
008220cc  4c 30 85 e5                                      str r3, [r5, #0x4c]
008220d0  50 30 d6 e5                                      ldrb r3, [r6, #0x50]
008220d4  54 60 86 e2                                      add r6, r6, #0x54
008220d8  50 30 c5 e5                                      strb r3, [r5, #0x50]
008220dc  e0 ff ff 1a                                      bne #0x822064
008220e0  08 00 a0 e1                                      mov r0, r8
008220e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
