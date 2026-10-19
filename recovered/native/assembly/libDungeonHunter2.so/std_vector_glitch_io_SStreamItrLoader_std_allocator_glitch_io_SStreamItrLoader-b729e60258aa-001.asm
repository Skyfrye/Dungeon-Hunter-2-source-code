; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b6654, declared_size=196, range_size=196, mode=arm
; class-group: std::vector<glitch::io::SStreamItrLoader, std::allocator<glitch::io::SStreamItrLoader> >
; alias: _ZNSt6vectorIN6glitch2io16SStreamItrLoaderESaIS2_EE19_M_clear_after_moveEv
; demangled: std::vector<glitch::io::SStreamItrLoader, std::allocator<glitch::io::SStreamItrLoader> >::_M_clear_after_move()
; decoder-mode: arm
006b6654  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006b6658  04 40 90 e5                                      ldr r4, [r0, #4]
006b665c  00 60 90 e5                                      ldr r6, [r0]
006b6660  00 70 a0 e1                                      mov r7, r0
006b6664  06 00 54 e1                                      cmp r4, r6
006b6668  1c 00 00 0a                                      beq #0x6b66e0
006b666c  00 80 a0 e3                                      mov r8, #0
006b6670  09 00 00 ea                                      b #0x6b669c
006b6674  01 20 42 e2                                      sub r2, r2, #1
006b6678  1f 30 c3 e3                                      bic r3, r3, #0x1f
006b667c  03 30 82 e1                                      orr r3, r2, r3
006b6680  13 30 c5 e5                                      strb r3, [r5, #0x13]
006b6684  08 00 94 e5                                      ldr r0, [r4, #8]
006b6688  00 00 50 e3                                      cmp r0, #0
006b668c  00 00 00 0a                                      beq #0x6b6694
006b6690  bb 9b f1 eb                                      bl #0x31d584
006b6694  04 00 56 e1                                      cmp r6, r4
006b6698  0f 00 00 0a                                      beq #0x6b66dc
006b669c  20 40 44 e2                                      sub r4, r4, #0x20
006b66a0  08 50 94 e5                                      ldr r5, [r4, #8]
006b66a4  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
006b66a8  1f 20 03 e2                                      and r2, r3, #0x1f
006b66ac  01 00 52 e3                                      cmp r2, #1
006b66b0  ef ff ff 8a                                      bhi #0x6b6674
006b66b4  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
006b66b8  20 00 13 e3                                      tst r3, #0x20
006b66bc  13 80 c5 05                                      strbeq r8, [r5, #0x13]
006b66c0  ef ff ff 0a                                      beq #0x6b6684
006b66c4  05 00 a0 e1                                      mov r0, r5
006b66c8  00 30 95 e5                                      ldr r3, [r5]
006b66cc  0f e0 a0 e1                                      mov lr, pc
006b66d0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b66d4  13 80 c5 e5                                      strb r8, [r5, #0x13]
006b66d8  e9 ff ff ea                                      b #0x6b6684
006b66dc  00 40 97 e5                                      ldr r4, [r7]
006b66e0  00 00 54 e3                                      cmp r4, #0
006b66e4  08 10 97 e5                                      ldr r1, [r7, #8]
006b66e8  09 00 00 0a                                      beq #0x6b6714
006b66ec  01 10 64 e0                                      rsb r1, r4, r1
006b66f0  1f 10 c1 e3                                      bic r1, r1, #0x1f
006b66f4  80 00 51 e3                                      cmp r1, #0x80
006b66f8  02 00 00 8a                                      bhi #0x6b6708
006b66fc  04 00 a0 e1                                      mov r0, r4
006b6700  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
006b6704  fd 49 01 ea                                      b #0x708f00
006b6708  04 00 a0 e1                                      mov r0, r4
006b670c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
006b6710  e6 5e f1 ea                                      b #0x30e2b0
006b6714  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006b6774, declared_size=192, range_size=192, mode=arm
; class-group: std::vector<glitch::io::SStreamItrLoader, std::allocator<glitch::io::SStreamItrLoader> >
; alias: _ZNSt6vectorIN6glitch2io16SStreamItrLoaderESaIS2_EED1Ev
; demangled: std::vector<glitch::io::SStreamItrLoader, std::allocator<glitch::io::SStreamItrLoader> >::~vector()
; decoder-mode: arm
006b6774  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006b6778  04 50 90 e5                                      ldr r5, [r0, #4]
006b677c  00 70 90 e5                                      ldr r7, [r0]
006b6780  00 40 a0 e1                                      mov r4, r0
006b6784  07 00 55 e1                                      cmp r5, r7
006b6788  1b 00 00 0a                                      beq #0x6b67fc
006b678c  00 80 a0 e3                                      mov r8, #0
006b6790  09 00 00 ea                                      b #0x6b67bc
006b6794  01 20 42 e2                                      sub r2, r2, #1
006b6798  1f 30 c3 e3                                      bic r3, r3, #0x1f
006b679c  03 30 82 e1                                      orr r3, r2, r3
006b67a0  13 30 c6 e5                                      strb r3, [r6, #0x13]
006b67a4  08 00 95 e5                                      ldr r0, [r5, #8]
006b67a8  00 00 50 e3                                      cmp r0, #0
006b67ac  00 00 00 0a                                      beq #0x6b67b4
006b67b0  73 9b f1 eb                                      bl #0x31d584
006b67b4  05 00 57 e1                                      cmp r7, r5
006b67b8  0f 00 00 0a                                      beq #0x6b67fc
006b67bc  20 50 45 e2                                      sub r5, r5, #0x20
006b67c0  08 60 95 e5                                      ldr r6, [r5, #8]
006b67c4  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
006b67c8  1f 20 03 e2                                      and r2, r3, #0x1f
006b67cc  01 00 52 e3                                      cmp r2, #1
006b67d0  ef ff ff 8a                                      bhi #0x6b6794
006b67d4  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006b67d8  20 00 13 e3                                      tst r3, #0x20
006b67dc  13 80 c6 05                                      strbeq r8, [r6, #0x13]
006b67e0  ef ff ff 0a                                      beq #0x6b67a4
006b67e4  06 00 a0 e1                                      mov r0, r6
006b67e8  00 30 96 e5                                      ldr r3, [r6]
006b67ec  0f e0 a0 e1                                      mov lr, pc
006b67f0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b67f4  13 80 c6 e5                                      strb r8, [r6, #0x13]
006b67f8  e9 ff ff ea                                      b #0x6b67a4
006b67fc  00 00 94 e5                                      ldr r0, [r4]
006b6800  00 00 50 e3                                      cmp r0, #0
006b6804  05 00 00 0a                                      beq #0x6b6820
006b6808  08 10 94 e5                                      ldr r1, [r4, #8]
006b680c  01 10 60 e0                                      rsb r1, r0, r1
006b6810  1f 10 c1 e3                                      bic r1, r1, #0x1f
006b6814  80 00 51 e3                                      cmp r1, #0x80
006b6818  02 00 00 8a                                      bhi #0x6b6828
006b681c  b7 49 01 eb                                      bl #0x708f00
006b6820  04 00 a0 e1                                      mov r0, r4
006b6824  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006b6828  a0 5e f1 eb                                      bl #0x30e2b0
006b682c  04 00 a0 e1                                      mov r0, r4
006b6830  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006b68e4, declared_size=420, range_size=420, mode=arm
; class-group: std::vector<glitch::io::SStreamItrLoader, std::allocator<glitch::io::SStreamItrLoader> >
; alias: _ZNSt6vectorIN6glitch2io16SStreamItrLoaderESaIS2_EE9push_backERKS2_
; demangled: std::vector<glitch::io::SStreamItrLoader, std::allocator<glitch::io::SStreamItrLoader> >::push_back(glitch::io::SStreamItrLoader const&)
; decoder-mode: arm
006b68e4  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
006b68e8  48 00 90 e9                                      ldmib r0, {r3, r6}
006b68ec  0c d0 4d e2                                      sub sp, sp, #0xc
006b68f0  00 50 a0 e1                                      mov r5, r0
006b68f4  06 00 53 e1                                      cmp r3, r6
006b68f8  01 40 a0 e1                                      mov r4, r1
006b68fc  16 00 00 0a                                      beq #0x6b695c
006b6900  d0 00 c1 e1                                      ldrd r0, r1, [r1]
006b6904  f0 00 c3 e1                                      strd r0, r1, [r3]
006b6908  08 20 94 e5                                      ldr r2, [r4, #8]
006b690c  08 20 83 e5                                      str r2, [r3, #8]
006b6910  00 00 52 e3                                      cmp r2, #0
006b6914  04 10 92 15                                      ldrne r1, [r2, #4]
006b6918  01 10 81 12                                      addne r1, r1, #1
006b691c  04 10 82 15                                      strne r1, [r2, #4]
006b6920  0c 20 d4 e5                                      ldrb r2, [r4, #0xc]
006b6924  0c 20 c3 e5                                      strb r2, [r3, #0xc]
006b6928  10 20 94 e5                                      ldr r2, [r4, #0x10]
006b692c  10 20 83 e5                                      str r2, [r3, #0x10]
006b6930  b4 11 d4 e1                                      ldrh r1, [r4, #0x14]
006b6934  b4 11 c3 e1                                      strh r1, [r3, #0x14]
006b6938  b6 21 d4 e1                                      ldrh r2, [r4, #0x16]
006b693c  b6 21 c3 e1                                      strh r2, [r3, #0x16]
006b6940  b8 41 d4 e1                                      ldrh r4, [r4, #0x18]
006b6944  b8 41 c3 e1                                      strh r4, [r3, #0x18]
006b6948  04 30 95 e5                                      ldr r3, [r5, #4]
006b694c  20 30 83 e2                                      add r3, r3, #0x20
006b6950  04 30 85 e5                                      str r3, [r5, #4]
006b6954  0c d0 8d e2                                      add sp, sp, #0xc
006b6958  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
006b695c  00 30 90 e5                                      ldr r3, [r0]
006b6960  06 30 63 e0                                      rsb r3, r3, r6
006b6964  c3 32 a0 e1                                      asr r3, r3, #5
006b6968  01 00 53 e3                                      cmp r3, #1
006b696c  03 10 83 20                                      addhs r1, r3, r3
006b6970  01 10 83 32                                      addlo r1, r3, #1
006b6974  7e 03 71 e3                                      cmn r1, #0xf8000001
006b6978  3f 00 00 9a                                      bls #0x6b6a7c
006b697c  3e 13 e0 e3                                      mvn r1, #0xf8000000
006b6980  08 20 8d e2                                      add r2, sp, #8
006b6984  04 10 22 e5                                      str r1, [r2, #-4]!
006b6988  08 00 85 e2                                      add r0, r5, #8
006b698c  b8 ff ff eb                                      bl #0x6b6874
006b6990  00 20 95 e5                                      ldr r2, [r5]
006b6994  00 70 a0 e1                                      mov r7, r0
006b6998  06 60 62 e0                                      rsb r6, r2, r6
006b699c  c6 62 a0 e1                                      asr r6, r6, #5
006b69a0  00 00 56 e3                                      cmp r6, #0
006b69a4  00 60 a0 d1                                      movle r6, r0
006b69a8  19 00 00 da                                      ble #0x6b6a14
006b69ac  06 00 a0 e1                                      mov r0, r6
006b69b0  07 30 a0 e1                                      mov r3, r7
006b69b4  00 00 00 ea                                      b #0x6b69bc
006b69b8  20 20 82 e2                                      add r2, r2, #0x20
006b69bc  d0 80 c2 e1                                      ldrd r8, sb, [r2]
006b69c0  f0 80 c3 e1                                      strd r8, sb, [r3]
006b69c4  08 10 92 e5                                      ldr r1, [r2, #8]
006b69c8  08 10 83 e5                                      str r1, [r3, #8]
006b69cc  00 00 51 e3                                      cmp r1, #0
006b69d0  04 c0 91 15                                      ldrne ip, [r1, #4]
006b69d4  01 c0 8c 12                                      addne ip, ip, #1
006b69d8  04 c0 81 15                                      strne ip, [r1, #4]
006b69dc  0c 10 d2 e5                                      ldrb r1, [r2, #0xc]
006b69e0  01 00 50 e2                                      subs r0, r0, #1
006b69e4  0c 10 c3 e5                                      strb r1, [r3, #0xc]
006b69e8  10 10 92 e5                                      ldr r1, [r2, #0x10]
006b69ec  10 10 83 e5                                      str r1, [r3, #0x10]
006b69f0  b4 11 d2 e1                                      ldrh r1, [r2, #0x14]
006b69f4  b4 11 c3 e1                                      strh r1, [r3, #0x14]
006b69f8  b6 11 d2 e1                                      ldrh r1, [r2, #0x16]
006b69fc  b6 11 c3 e1                                      strh r1, [r3, #0x16]
006b6a00  b8 11 d2 e1                                      ldrh r1, [r2, #0x18]
006b6a04  b8 11 c3 e1                                      strh r1, [r3, #0x18]
006b6a08  20 30 83 e2                                      add r3, r3, #0x20
006b6a0c  e9 ff ff 1a                                      bne #0x6b69b8
006b6a10  86 62 87 e0                                      add r6, r7, r6, lsl #5
006b6a14  d0 20 c4 e1                                      ldrd r2, r3, [r4]
006b6a18  f0 20 c6 e1                                      strd r2, r3, [r6]
006b6a1c  08 30 94 e5                                      ldr r3, [r4, #8]
006b6a20  05 00 a0 e1                                      mov r0, r5
006b6a24  08 30 86 e5                                      str r3, [r6, #8]
006b6a28  00 00 53 e3                                      cmp r3, #0
006b6a2c  04 20 93 15                                      ldrne r2, [r3, #4]
006b6a30  01 20 82 12                                      addne r2, r2, #1
006b6a34  04 20 83 15                                      strne r2, [r3, #4]
006b6a38  0c 30 d4 e5                                      ldrb r3, [r4, #0xc]
006b6a3c  0c 30 c6 e5                                      strb r3, [r6, #0xc]
006b6a40  10 30 94 e5                                      ldr r3, [r4, #0x10]
006b6a44  10 30 86 e5                                      str r3, [r6, #0x10]
006b6a48  b4 21 d4 e1                                      ldrh r2, [r4, #0x14]
006b6a4c  b4 21 c6 e1                                      strh r2, [r6, #0x14]
006b6a50  b6 31 d4 e1                                      ldrh r3, [r4, #0x16]
006b6a54  b6 31 c6 e1                                      strh r3, [r6, #0x16]
006b6a58  b8 41 d4 e1                                      ldrh r4, [r4, #0x18]
006b6a5c  b8 41 c6 e1                                      strh r4, [r6, #0x18]
006b6a60  fb fe ff eb                                      bl #0x6b6654
006b6a64  04 30 9d e5                                      ldr r3, [sp, #4]
006b6a68  20 60 86 e2                                      add r6, r6, #0x20
006b6a6c  00 70 85 e5                                      str r7, [r5]
006b6a70  83 72 87 e0                                      add r7, r7, r3, lsl #5
006b6a74  c0 00 85 e9                                      stmib r5, {r6, r7}
006b6a78  b5 ff ff ea                                      b #0x6b6954
006b6a7c  01 00 53 e1                                      cmp r3, r1
006b6a80  be ff ff 9a                                      bls #0x6b6980
006b6a84  bc ff ff ea                                      b #0x6b697c
