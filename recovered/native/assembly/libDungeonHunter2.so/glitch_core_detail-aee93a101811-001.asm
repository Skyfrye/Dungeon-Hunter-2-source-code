; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a54d0, declared_size=60, range_size=60, mode=arm
; class-group: glitch::core::detail
; alias: _ZN6glitch4core6detail28registerSharedStringHeapInitEv
; demangled: glitch::core::detail::registerSharedStringHeapInit()
; decoder-mode: arm
006a54d0  10 40 2d e9                                      push {r4, lr}
006a54d4  28 40 9f e5                                      ldr r4, [pc, #0x28]
006a54d8  04 40 8f e0                                      add r4, pc, r4
006a54dc  04 30 d4 e5                                      ldrb r3, [r4, #4]
006a54e0  00 00 53 e3                                      cmp r3, #0
006a54e4  04 00 00 1a                                      bne #0x6a54fc
006a54e8  18 00 9f e5                                      ldr r0, [pc, #0x18]
006a54ec  00 00 8f e0                                      add r0, pc, r0
006a54f0  ee ee ff eb                                      bl #0x6a10b0
006a54f4  01 30 a0 e3                                      mov r3, #1
006a54f8  04 30 c4 e5                                      strb r3, [r4, #4]
006a54fc  00 00 a0 e3                                      mov r0, #0
006a5500  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006a5504  7c 21 35 00 44 00 00 00                          .byte 0x7c, 0x21, 0x35, 0x00, 0x44, 0x00, 0x00, 0x00

; FUNCTION 0x006a5538, declared_size=400, range_size=400, mode=arm
; class-group: glitch::core::detail
; alias: _ZN6glitch4core6detail12_GLOBAL__N_120initSharedStringHeapEb
; demangled: glitch::core::detail::(anonymous namespace)::initSharedStringHeap(bool)
; decoder-mode: arm
006a5538  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a553c  6c 51 9f e5                                      ldr r5, [pc, #0x16c]
006a5540  00 00 50 e3                                      cmp r0, #0
006a5544  05 50 8f e0                                      add r5, pc, r5
006a5548  0f 00 00 1a                                      bne #0x6a558c
006a554c  60 31 9f e5                                      ldr r3, [pc, #0x160]
006a5550  03 40 9f e7                                      ldr r4, [pc, r3]
006a5554  00 00 54 e3                                      cmp r4, #0
006a5558  06 00 00 0a                                      beq #0x6a5578
006a555c  20 30 94 e5                                      ldr r3, [r4, #0x20]
006a5560  00 00 53 e3                                      cmp r3, #0
006a5564  4c 00 00 1a                                      bne #0x6a569c
006a5568  10 00 84 e2                                      add r0, r4, #0x10
006a556c  69 fe ff eb                                      bl #0x6a4f18
006a5570  04 00 a0 e1                                      mov r0, r4
006a5574  4d a3 f1 eb                                      bl #0x30e2b0
006a5578  38 31 9f e5                                      ldr r3, [pc, #0x138]
006a557c  00 20 a0 e3                                      mov r2, #0
006a5580  03 30 8f e0                                      add r3, pc, r3
006a5584  00 20 83 e5                                      str r2, [r3]
006a5588  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a558c  24 00 a0 e3                                      mov r0, #0x24
006a5590  00 10 a0 e3                                      mov r1, #0
006a5594  04 3b fa eb                                      bl #0x5341ac
006a5598  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
006a559c  fe 25 a0 e3                                      mov r2, #0x3f800000
006a55a0  08 20 80 e5                                      str r2, [r0, #8]
006a55a4  06 20 95 e7                                      ldr r2, [r5, r6]
006a55a8  00 30 a0 e3                                      mov r3, #0
006a55ac  00 40 a0 e1                                      mov r4, r0
006a55b0  14 30 80 e5                                      str r3, [r0, #0x14]
006a55b4  04 30 80 e5                                      str r3, [r0, #4]
006a55b8  28 c0 a0 e3                                      mov ip, #0x28
006a55bc  10 00 80 e2                                      add r0, r0, #0x10
006a55c0  cc 30 a0 e1                                      asr r3, ip, #1
006a55c4  03 00 00 ea                                      b #0x6a55d8
006a55c8  00 00 53 e3                                      cmp r3, #0
006a55cc  03 c0 a0 e1                                      mov ip, r3
006a55d0  c3 30 a0 e1                                      asr r3, r3, #1
006a55d4  08 00 00 da                                      ble #0x6a55fc
006a55d8  03 11 92 e7                                      ldr r1, [r2, r3, lsl #2]
006a55dc  03 e1 82 e0                                      add lr, r2, r3, lsl #2
006a55e0  0a 00 51 e3                                      cmp r1, #0xa
006a55e4  f7 ff ff 8a                                      bhi #0x6a55c8
006a55e8  01 c0 4c e2                                      sub ip, ip, #1
006a55ec  0c c0 63 e0                                      rsb ip, r3, ip
006a55f0  00 00 5c e3                                      cmp ip, #0
006a55f4  04 20 8e e2                                      add r2, lr, #4
006a55f8  f0 ff ff ca                                      bgt #0x6a55c0
006a55fc  06 30 95 e7                                      ldr r3, [r5, r6]
006a5600  a0 10 83 e2                                      add r1, r3, #0xa0
006a5604  01 00 52 e1                                      cmp r2, r1
006a5608  9c 20 83 02                                      addeq r2, r3, #0x9c
006a560c  00 20 92 e5                                      ldr r2, [r2]
006a5610  00 30 a0 e3                                      mov r3, #0
006a5614  20 30 84 e5                                      str r3, [r4, #0x20]
006a5618  18 20 84 e5                                      str r2, [r4, #0x18]
006a561c  1c 30 84 e5                                      str r3, [r4, #0x1c]
006a5620  57 fe ff eb                                      bl #0x6a4f84
006a5624  08 00 94 e5                                      ldr r0, [r4, #8]
006a5628  9d a4 f1 eb                                      bl #0x30e8a4
006a562c  00 60 a0 e1                                      mov r6, r0
006a5630  18 00 94 e5                                      ldr r0, [r4, #0x18]
006a5634  01 70 a0 e1                                      mov r7, r1
006a5638  20 a2 f1 eb                                      bl #0x30dec0
006a563c  00 20 a0 e1                                      mov r2, r0
006a5640  01 30 a0 e1                                      mov r3, r1
006a5644  06 00 a0 e1                                      mov r0, r6
006a5648  07 10 a0 e1                                      mov r1, r7
006a564c  18 a5 f1 eb                                      bl #0x30eab4
006a5650  47 a5 f1 eb                                      bl #0x30eb74
006a5654  02 21 a0 e3                                      mov r2, #0x80000000
006a5658  be 34 e0 e3                                      mvn r3, #0xbe000000
006a565c  42 25 a0 e1                                      asr r2, r2, #0xa
006a5660  01 36 43 e2                                      sub r3, r3, #0x100000
006a5664  00 60 a0 e1                                      mov r6, r0
006a5668  01 70 a0 e1                                      mov r7, r1
006a566c  57 a3 f1 eb                                      bl #0x30e3d0
006a5670  00 00 50 e3                                      cmp r0, #0
006a5674  00 00 e0 13                                      mvnne r0, #0
006a5678  02 00 00 1a                                      bne #0x6a5688
006a567c  06 00 a0 e1                                      mov r0, r6
006a5680  07 10 a0 e1                                      mov r1, r7
006a5684  d1 a4 f1 eb                                      bl #0x30e9d0
006a5688  30 30 9f e5                                      ldr r3, [pc, #0x30]
006a568c  0c 00 84 e5                                      str r0, [r4, #0xc]
006a5690  03 30 8f e0                                      add r3, pc, r3
006a5694  00 40 83 e5                                      str r4, [r3]
006a5698  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a569c  20 00 9f e5                                      ldr r0, [pc, #0x20]
006a56a0  03 10 a0 e3                                      mov r1, #3
006a56a4  00 00 8f e0                                      add r0, pc, r0
006a56a8  7c 95 fd eb                                      bl #0x60aca0
006a56ac  ad ff ff ea                                      b #0x6a5568
; mapping-symbol data/literal pool
006a56b0  4c f5 2e 00 04 21 35 00 d4 20 35 00 90 20 00 00  .byte 0x4c, 0xf5, 0x2e, 0x00, 0x04, 0x21, 0x35, 0x00, 0xd4, 0x20, 0x35, 0x00, 0x90, 0x20, 0x00, 0x00
006a56c0  c4 1f 35 00 b4 59 24 00                          .byte 0xc4, 0x1f, 0x35, 0x00, 0xb4, 0x59, 0x24, 0x00
