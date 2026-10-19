; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00671894, declared_size=364, range_size=364, mode=arm
; class-group: std::deque<glitch::SEvent, glitch::core::SAllocator<glitch::SEvent, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt5dequeIN6glitch6SEventENS0_4core10SAllocatorIS1_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_push_back_aux_vERKS1_
; demangled: std::deque<glitch::SEvent, glitch::core::SAllocator<glitch::SEvent, (glitch::memory::E_MEMORY_HINT)0> >::_M_push_back_aux_v(glitch::SEvent const&)
; decoder-mode: arm
00671894  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00671898  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
0067189c  20 20 90 e5                                      ldr r2, [r0, #0x20]
006718a0  24 30 90 e5                                      ldr r3, [r0, #0x24]
006718a4  01 50 a0 e1                                      mov r5, r1
006718a8  0a 10 62 e0                                      rsb r1, r2, sl
006718ac  41 11 43 e0                                      sub r1, r3, r1, asr #2
006718b0  01 00 51 e3                                      cmp r1, #1
006718b4  00 40 a0 e1                                      mov r4, r0
006718b8  11 00 00 9a                                      bls #0x671904
006718bc  00 10 a0 e3                                      mov r1, #0
006718c0  78 00 a0 e3                                      mov r0, #0x78
006718c4  27 7b f2 eb                                      bl #0x310568
006718c8  04 00 8a e5                                      str r0, [sl, #4]
006718cc  10 c0 94 e5                                      ldr ip, [r4, #0x10]
006718d0  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
006718d4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
006718d8  03 00 95 e8                                      ldm r5, {r0, r1}
006718dc  03 00 8c e8                                      stm ip, {r0, r1}
006718e0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006718e4  04 20 83 e2                                      add r2, r3, #4
006718e8  1c 20 84 e5                                      str r2, [r4, #0x1c]
006718ec  04 30 93 e5                                      ldr r3, [r3, #4]
006718f0  78 20 83 e2                                      add r2, r3, #0x78
006718f4  10 30 84 e5                                      str r3, [r4, #0x10]
006718f8  18 20 84 e5                                      str r2, [r4, #0x18]
006718fc  14 30 84 e5                                      str r3, [r4, #0x14]
00671900  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00671904  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00671908  0a 70 61 e0                                      rsb r7, r1, sl
0067190c  47 71 a0 e1                                      asr r7, r7, #2
00671910  01 70 87 e2                                      add r7, r7, #1
00671914  01 90 87 e2                                      add sb, r7, #1
00671918  89 00 53 e1                                      cmp r3, sb, lsl #1
0067191c  0a 00 00 9a                                      bls #0x67194c
00671920  03 60 69 e0                                      rsb r6, sb, r3
00671924  a6 60 a0 e1                                      lsr r6, r6, #1
00671928  06 61 82 e0                                      add r6, r2, r6, lsl #2
0067192c  06 00 51 e1                                      cmp r1, r6
00671930  27 00 00 9a                                      bls #0x6719d4
00671934  04 20 8a e2                                      add r2, sl, #4
00671938  01 20 52 e0                                      subs r2, r2, r1
0067193c  17 00 00 0a                                      beq #0x6719a0
00671940  06 00 a0 e1                                      mov r0, r6
00671944  7b 71 f2 eb                                      bl #0x30df38
00671948  14 00 00 ea                                      b #0x6719a0
0067194c  00 00 53 e3                                      cmp r3, #0
00671950  03 20 a0 11                                      movne r2, r3
00671954  01 20 a0 03                                      moveq r2, #1
00671958  02 80 83 e2                                      add r8, r3, #2
0067195c  02 80 88 e0                                      add r8, r8, r2
00671960  00 10 a0 e3                                      mov r1, #0
00671964  08 01 a0 e1                                      lsl r0, r8, #2
00671968  fe 7a f2 eb                                      bl #0x310568
0067196c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00671970  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00671974  08 60 69 e0                                      rsb r6, sb, r8
00671978  a6 60 a0 e1                                      lsr r6, r6, #1
0067197c  04 20 82 e2                                      add r2, r2, #4
00671980  01 20 52 e0                                      subs r2, r2, r1
00671984  00 a0 a0 e1                                      mov sl, r0
00671988  06 61 80 e0                                      add r6, r0, r6, lsl #2
0067198c  18 00 00 1a                                      bne #0x6719f4
00671990  20 00 94 e5                                      ldr r0, [r4, #0x20]
00671994  ad 7a f2 eb                                      bl #0x310450
00671998  20 a0 84 e5                                      str sl, [r4, #0x20]
0067199c  24 80 84 e5                                      str r8, [r4, #0x24]
006719a0  0c 60 84 e5                                      str r6, [r4, #0xc]
006719a4  00 30 96 e5                                      ldr r3, [r6]
006719a8  01 70 47 e2                                      sub r7, r7, #1
006719ac  07 a1 86 e0                                      add sl, r6, r7, lsl #2
006719b0  78 20 83 e2                                      add r2, r3, #0x78
006719b4  08 20 84 e5                                      str r2, [r4, #8]
006719b8  04 30 84 e5                                      str r3, [r4, #4]
006719bc  1c a0 84 e5                                      str sl, [r4, #0x1c]
006719c0  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
006719c4  78 20 83 e2                                      add r2, r3, #0x78
006719c8  18 20 84 e5                                      str r2, [r4, #0x18]
006719cc  14 30 84 e5                                      str r3, [r4, #0x14]
006719d0  b9 ff ff ea                                      b #0x6718bc
006719d4  04 20 8a e2                                      add r2, sl, #4
006719d8  02 20 61 e0                                      rsb r2, r1, r2
006719dc  00 00 52 e3                                      cmp r2, #0
006719e0  ee ff ff da                                      ble #0x6719a0
006719e4  07 01 86 e0                                      add r0, r6, r7, lsl #2
006719e8  00 00 62 e0                                      rsb r0, r2, r0
006719ec  51 71 f2 eb                                      bl #0x30df38
006719f0  ea ff ff ea                                      b #0x6719a0
006719f4  06 00 a0 e1                                      mov r0, r6
006719f8  4e 71 f2 eb                                      bl #0x30df38
006719fc  e3 ff ff ea                                      b #0x671990
