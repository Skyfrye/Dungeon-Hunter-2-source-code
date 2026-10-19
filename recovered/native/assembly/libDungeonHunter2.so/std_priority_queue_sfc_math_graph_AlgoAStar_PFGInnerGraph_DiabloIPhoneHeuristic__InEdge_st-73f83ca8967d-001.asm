; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052a890, declared_size=500, range_size=500, mode=arm
; class-group: std::priority_queue<sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge, std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge, std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_EComp>
; alias: _ZNSt14priority_queueIN3sfc4math5graph9AlgoAStarI13PFGInnerGraph21DiabloIPhoneHeuristicE7_InEdgeESt6vectorIS7_SaIS7_EENS6_6_ECompEE4pushERKS7_
; demangled: std::priority_queue<sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge, std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge, std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_EComp>::push(sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge const&)
; decoder-mode: arm
0052a890  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0052a894  48 00 90 e9                                      ldmib r0, {r3, r6}
0052a898  14 d0 4d e2                                      sub sp, sp, #0x14
0052a89c  00 40 a0 e1                                      mov r4, r0
0052a8a0  06 00 53 e1                                      cmp r3, r6
0052a8a4  01 50 a0 e1                                      mov r5, r1
0052a8a8  12 00 00 0a                                      beq #0x52a8f8
0052a8ac  00 20 91 e5                                      ldr r2, [r1]
0052a8b0  00 20 83 e5                                      str r2, [r3]
0052a8b4  04 20 91 e5                                      ldr r2, [r1, #4]
0052a8b8  04 20 83 e5                                      str r2, [r3, #4]
0052a8bc  08 20 91 e5                                      ldr r2, [r1, #8]
0052a8c0  08 20 83 e5                                      str r2, [r3, #8]
0052a8c4  04 60 90 e5                                      ldr r6, [r0, #4]
0052a8c8  00 70 90 e5                                      ldr r7, [r0]
0052a8cc  0c 60 86 e2                                      add r6, r6, #0xc
0052a8d0  04 60 80 e5                                      str r6, [r0, #4]
0052a8d4  00 c0 a0 e3                                      mov ip, #0
0052a8d8  07 00 a0 e1                                      mov r0, r7
0052a8dc  06 10 a0 e1                                      mov r1, r6
0052a8e0  0c 30 a0 e1                                      mov r3, ip
0052a8e4  00 20 a0 e3                                      mov r2, #0
0052a8e8  00 c0 8d e5                                      str ip, [sp]
0052a8ec  26 fb ff eb                                      bl #0x52958c
0052a8f0  14 d0 8d e2                                      add sp, sp, #0x14
0052a8f4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0052a8f8  00 20 90 e5                                      ldr r2, [r0]
0052a8fc  55 35 05 e3                                      movw r3, #0x5555
0052a900  03 37 83 e1                                      orr r3, r3, r3, lsl #14
0052a904  06 20 62 e0                                      rsb r2, r2, r6
0052a908  42 21 a0 e1                                      asr r2, r2, #2
0052a90c  02 11 82 e0                                      add r1, r2, r2, lsl #2
0052a910  01 12 81 e0                                      add r1, r1, r1, lsl #4
0052a914  01 14 81 e0                                      add r1, r1, r1, lsl #8
0052a918  01 18 81 e0                                      add r1, r1, r1, lsl #16
0052a91c  81 20 82 e0                                      add r2, r2, r1, lsl #1
0052a920  01 00 52 e3                                      cmp r2, #1
0052a924  02 10 82 20                                      addhs r1, r2, r2
0052a928  01 10 82 32                                      addlo r1, r2, #1
0052a92c  03 00 51 e1                                      cmp r1, r3
0052a930  4e 00 00 8a                                      bhi #0x52aa70
0052a934  01 00 52 e1                                      cmp r2, r1
0052a938  4c 00 00 8a                                      bhi #0x52aa70
0052a93c  10 20 8d e2                                      add r2, sp, #0x10
0052a940  04 10 22 e5                                      str r1, [r2, #-4]!
0052a944  08 00 84 e2                                      add r0, r4, #8
0052a948  d5 fd ff eb                                      bl #0x52a0a4
0052a94c  00 30 94 e5                                      ldr r3, [r4]
0052a950  00 70 a0 e1                                      mov r7, r0
0052a954  06 60 63 e0                                      rsb r6, r3, r6
0052a958  46 61 a0 e1                                      asr r6, r6, #2
0052a95c  06 21 86 e0                                      add r2, r6, r6, lsl #2
0052a960  02 22 82 e0                                      add r2, r2, r2, lsl #4
0052a964  02 24 82 e0                                      add r2, r2, r2, lsl #8
0052a968  02 28 82 e0                                      add r2, r2, r2, lsl #16
0052a96c  82 60 86 e0                                      add r6, r6, r2, lsl #1
0052a970  00 00 56 e3                                      cmp r6, #0
0052a974  00 30 a0 d1                                      movle r3, r0
0052a978  0d 00 00 da                                      ble #0x52a9b4
0052a97c  06 10 a0 e1                                      mov r1, r6
0052a980  00 20 a0 e1                                      mov r2, r0
0052a984  00 00 93 e5                                      ldr r0, [r3]
0052a988  01 10 51 e2                                      subs r1, r1, #1
0052a98c  00 00 82 e5                                      str r0, [r2]
0052a990  04 00 93 e5                                      ldr r0, [r3, #4]
0052a994  04 00 82 e5                                      str r0, [r2, #4]
0052a998  08 00 93 e5                                      ldr r0, [r3, #8]
0052a99c  0c 30 83 e2                                      add r3, r3, #0xc
0052a9a0  08 00 82 e5                                      str r0, [r2, #8]
0052a9a4  0c 20 82 e2                                      add r2, r2, #0xc
0052a9a8  f5 ff ff 1a                                      bne #0x52a984
0052a9ac  0c 30 a0 e3                                      mov r3, #0xc
0052a9b0  93 76 23 e0                                      mla r3, r3, r6, r7
0052a9b4  00 20 95 e5                                      ldr r2, [r5]
0052a9b8  0c 60 83 e2                                      add r6, r3, #0xc
0052a9bc  00 20 83 e5                                      str r2, [r3]
0052a9c0  04 20 95 e5                                      ldr r2, [r5, #4]
0052a9c4  04 20 83 e5                                      str r2, [r3, #4]
0052a9c8  08 20 95 e5                                      ldr r2, [r5, #8]
0052a9cc  08 20 83 e5                                      str r2, [r3, #8]
0052a9d0  09 00 94 e8                                      ldm r4, {r0, r3}
0052a9d4  00 00 53 e1                                      cmp r3, r0
0052a9d8  0e 00 00 0a                                      beq #0x52aa18
0052a9dc  0c 20 43 e2                                      sub r2, r3, #0xc
0052a9e0  02 20 60 e0                                      rsb r2, r0, r2
0052a9e4  22 21 a0 e1                                      lsr r2, r2, #2
0052a9e8  02 11 82 e0                                      add r1, r2, r2, lsl #2
0052a9ec  81 12 81 e0                                      add r1, r1, r1, lsl #5
0052a9f0  81 10 82 e0                                      add r1, r2, r1, lsl #1
0052a9f4  81 12 81 e0                                      add r1, r1, r1, lsl #5
0052a9f8  81 c7 a0 e1                                      lsl ip, r1, #0xf
0052a9fc  0c 10 61 e0                                      rsb r1, r1, ip
0052aa00  81 20 82 e0                                      add r2, r2, r1, lsl #1
0052aa04  03 21 c2 e3                                      bic r2, r2, #0xc0000000
0052aa08  0b 10 e0 e3                                      mvn r1, #0xb
0052aa0c  91 02 02 e0                                      mul r2, r1, r2
0052aa10  01 20 82 e0                                      add r2, r2, r1
0052aa14  02 30 83 e0                                      add r3, r3, r2
0052aa18  00 00 53 e3                                      cmp r3, #0
0052aa1c  08 20 94 e5                                      ldr r2, [r4, #8]
0052aa20  0b 00 00 0a                                      beq #0x52aa54
0052aa24  02 30 63 e0                                      rsb r3, r3, r2
0052aa28  43 31 a0 e1                                      asr r3, r3, #2
0052aa2c  03 11 83 e0                                      add r1, r3, r3, lsl #2
0052aa30  01 12 81 e0                                      add r1, r1, r1, lsl #4
0052aa34  01 14 81 e0                                      add r1, r1, r1, lsl #8
0052aa38  01 18 81 e0                                      add r1, r1, r1, lsl #16
0052aa3c  81 30 83 e0                                      add r3, r3, r1, lsl #1
0052aa40  0c 10 a0 e3                                      mov r1, #0xc
0052aa44  91 03 01 e0                                      mul r1, r1, r3
0052aa48  80 00 51 e3                                      cmp r1, #0x80
0052aa4c  0a 00 00 8a                                      bhi #0x52aa7c
0052aa50  2a 79 07 eb                                      bl #0x708f00
0052aa54  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0052aa58  0c 20 a0 e3                                      mov r2, #0xc
0052aa5c  00 70 84 e5                                      str r7, [r4]
0052aa60  92 73 23 e0                                      mla r3, r2, r3, r7
0052aa64  04 60 84 e5                                      str r6, [r4, #4]
0052aa68  08 30 84 e5                                      str r3, [r4, #8]
0052aa6c  98 ff ff ea                                      b #0x52a8d4
0052aa70  55 15 05 e3                                      movw r1, #0x5555
0052aa74  01 17 81 e1                                      orr r1, r1, r1, lsl #14
0052aa78  af ff ff ea                                      b #0x52a93c
0052aa7c  6f 96 f7 eb                                      bl #0x310440
0052aa80  f3 ff ff ea                                      b #0x52aa54
