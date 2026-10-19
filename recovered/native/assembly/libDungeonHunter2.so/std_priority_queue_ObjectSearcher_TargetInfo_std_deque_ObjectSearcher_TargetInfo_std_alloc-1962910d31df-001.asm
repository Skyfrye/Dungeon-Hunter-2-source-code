; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038fb18, declared_size=160, range_size=160, mode=arm
; class-group: std::priority_queue<ObjectSearcher::TargetInfo, std::deque<ObjectSearcher::TargetInfo, std::allocator<ObjectSearcher::TargetInfo> >, ObjectSearcher::TargetSorter>
; alias: _ZNSt14priority_queueIN14ObjectSearcher10TargetInfoESt5dequeIS1_SaIS1_EENS0_12TargetSorterEE3popEv
; demangled: std::priority_queue<ObjectSearcher::TargetInfo, std::deque<ObjectSearcher::TargetInfo, std::allocator<ObjectSearcher::TargetInfo> >, ObjectSearcher::TargetSorter>::pop()
; decoder-mode: arm
0038fb18  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0038fb1c  e0 00 90 e8                                      ldm r0, {r5, r6, r7}
0038fb20  14 80 80 e2                                      add r8, r0, #0x14
0038fb24  00 51 98 e8                                      ldm r8, {r8, ip, lr}
0038fb28  10 a0 90 e5                                      ldr sl, [r0, #0x10]
0038fb2c  0c 90 90 e5                                      ldr sb, [r0, #0xc]
0038fb30  20 d0 4d e2                                      sub sp, sp, #0x20
0038fb34  28 30 90 e5                                      ldr r3, [r0, #0x28]
0038fb38  00 40 a0 e1                                      mov r4, r0
0038fb3c  10 10 8d e2                                      add r1, sp, #0x10
0038fb40  0d 00 a0 e1                                      mov r0, sp
0038fb44  00 20 a0 e3                                      mov r2, #0
0038fb48  e0 02 8d e8                                      stm sp, {r5, r6, r7, sb}
0038fb4c  1c e0 8d e5                                      str lr, [sp, #0x1c]
0038fb50  18 c0 8d e5                                      str ip, [sp, #0x18]
0038fb54  14 80 8d e5                                      str r8, [sp, #0x14]
0038fb58  10 a0 8d e5                                      str sl, [sp, #0x10]
0038fb5c  bc ff ff eb                                      bl #0x38fa54
0038fb60  10 00 94 e5                                      ldr r0, [r4, #0x10]
0038fb64  14 30 94 e5                                      ldr r3, [r4, #0x14]
0038fb68  03 00 50 e1                                      cmp r0, r3
0038fb6c  14 00 40 12                                      subne r0, r0, #0x14
0038fb70  10 00 84 15                                      strne r0, [r4, #0x10]
0038fb74  01 00 00 0a                                      beq #0x38fb80
0038fb78  20 d0 8d e2                                      add sp, sp, #0x20
0038fb7c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0038fb80  00 00 50 e3                                      cmp r0, #0
0038fb84  01 00 00 0a                                      beq #0x38fb90
0038fb88  78 10 a0 e3                                      mov r1, #0x78
0038fb8c  db e4 0d eb                                      bl #0x708f00
0038fb90  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0038fb94  04 20 43 e2                                      sub r2, r3, #4
0038fb98  1c 20 84 e5                                      str r2, [r4, #0x1c]
0038fb9c  04 30 13 e5                                      ldr r3, [r3, #-4]
0038fba0  64 10 83 e2                                      add r1, r3, #0x64
0038fba4  78 20 83 e2                                      add r2, r3, #0x78
0038fba8  10 10 84 e5                                      str r1, [r4, #0x10]
0038fbac  18 20 84 e5                                      str r2, [r4, #0x18]
0038fbb0  14 30 84 e5                                      str r3, [r4, #0x14]
0038fbb4  ef ff ff ea                                      b #0x38fb78

; FUNCTION 0x004a2440, declared_size=164, range_size=164, mode=arm
; class-group: std::priority_queue<ObjectSearcher::TargetInfo, std::deque<ObjectSearcher::TargetInfo, std::allocator<ObjectSearcher::TargetInfo> >, ObjectSearcher::TargetSorter>
; alias: _ZNSt14priority_queueIN14ObjectSearcher10TargetInfoESt5dequeIS1_SaIS1_EENS0_12TargetSorterEE4pushERKS1_
; demangled: std::priority_queue<ObjectSearcher::TargetInfo, std::deque<ObjectSearcher::TargetInfo, std::allocator<ObjectSearcher::TargetInfo> >, ObjectSearcher::TargetSorter>::push(ObjectSearcher::TargetInfo const&)
; decoder-mode: arm
004a2440  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004a2444  18 30 90 e5                                      ldr r3, [r0, #0x18]
004a2448  10 c0 90 e5                                      ldr ip, [r0, #0x10]
004a244c  28 d0 4d e2                                      sub sp, sp, #0x28
004a2450  14 30 43 e2                                      sub r3, r3, #0x14
004a2454  03 00 5c e1                                      cmp ip, r3
004a2458  00 40 a0 e1                                      mov r4, r0
004a245c  01 e0 a0 e1                                      mov lr, r1
004a2460  1c 00 00 0a                                      beq #0x4a24d8
004a2464  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
004a2468  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
004a246c  00 20 9e e5                                      ldr r2, [lr]
004a2470  00 20 8c e5                                      str r2, [ip]
004a2474  10 c0 94 e5                                      ldr ip, [r4, #0x10]
004a2478  14 c0 8c e2                                      add ip, ip, #0x14
004a247c  10 c0 84 e5                                      str ip, [r4, #0x10]
004a2480  e0 00 94 e9                                      ldmib r4, {r5, r6, r7}
004a2484  00 e0 94 e5                                      ldr lr, [r4]
004a2488  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
004a248c  18 a0 94 e5                                      ldr sl, [r4, #0x18]
004a2490  14 90 94 e5                                      ldr sb, [r4, #0x14]
004a2494  28 20 94 e5                                      ldr r2, [r4, #0x28]
004a2498  00 40 a0 e3                                      mov r4, #0
004a249c  04 30 a0 e1                                      mov r3, r4
004a24a0  08 00 8d e2                                      add r0, sp, #8
004a24a4  18 10 8d e2                                      add r1, sp, #0x18
004a24a8  14 70 8d e5                                      str r7, [sp, #0x14]
004a24ac  10 60 8d e5                                      str r6, [sp, #0x10]
004a24b0  0c 50 8d e5                                      str r5, [sp, #0xc]
004a24b4  08 e0 8d e5                                      str lr, [sp, #8]
004a24b8  24 80 8d e5                                      str r8, [sp, #0x24]
004a24bc  20 a0 8d e5                                      str sl, [sp, #0x20]
004a24c0  1c 90 8d e5                                      str sb, [sp, #0x1c]
004a24c4  18 c0 8d e5                                      str ip, [sp, #0x18]
004a24c8  00 40 8d e5                                      str r4, [sp]
004a24cc  97 fe ff eb                                      bl #0x4a1f30
004a24d0  28 d0 8d e2                                      add sp, sp, #0x28
004a24d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
004a24d8  75 ff ff eb                                      bl #0x4a22b4
004a24dc  10 c0 94 e5                                      ldr ip, [r4, #0x10]
004a24e0  e6 ff ff ea                                      b #0x4a2480
