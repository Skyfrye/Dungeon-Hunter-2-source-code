; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080e69c, declared_size=12, range_size=12, mode=arm
; class-group: NetBitStreamArray
; alias: _ZN17NetBitStreamArray9GetStreamEi
; demangled: NetBitStreamArray::GetStream(int)
; decoder-mode: arm
0080e69c  00 30 90 e5                                      ldr r3, [r0]
0080e6a0  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
0080e6a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080e6a8, declared_size=116, range_size=116, mode=arm
; class-group: NetBitStreamArray
; alias: _ZN17NetBitStreamArrayD1Ev
; demangled: NetBitStreamArray::~NetBitStreamArray()
; decoder-mode: arm
0080e6a8  70 40 2d e9                                      push {r4, r5, r6, lr}
0080e6ac  04 20 90 e5                                      ldr r2, [r0, #4]
0080e6b0  00 50 a0 e1                                      mov r5, r0
0080e6b4  00 00 52 e3                                      cmp r2, #0
0080e6b8  00 00 90 d5                                      ldrle r0, [r0]
0080e6bc  0f 00 00 da                                      ble #0x80e700
0080e6c0  00 00 95 e5                                      ldr r0, [r5]
0080e6c4  00 40 a0 e3                                      mov r4, #0
0080e6c8  04 60 a0 e1                                      mov r6, r4
0080e6cc  04 31 90 e7                                      ldr r3, [r0, r4, lsl #2]
0080e6d0  00 00 53 e3                                      cmp r3, #0
0080e6d4  06 00 00 0a                                      beq #0x80e6f4
0080e6d8  03 00 a0 e1                                      mov r0, r3
0080e6dc  00 30 93 e5                                      ldr r3, [r3]
0080e6e0  0f e0 a0 e1                                      mov lr, pc
0080e6e4  04 f0 93 e5                                      ldr pc, [r3, #4]
0080e6e8  00 30 95 e5                                      ldr r3, [r5]
0080e6ec  04 61 83 e7                                      str r6, [r3, r4, lsl #2]
0080e6f0  05 00 95 e8                                      ldm r5, {r0, r2}
0080e6f4  01 40 84 e2                                      add r4, r4, #1
0080e6f8  04 00 52 e1                                      cmp r2, r4
0080e6fc  f2 ff ff ca                                      bgt #0x80e6cc
0080e700  00 00 50 e3                                      cmp r0, #0
0080e704  02 00 00 0a                                      beq #0x80e714
0080e708  4c 07 ec eb                                      bl #0x310440
0080e70c  00 30 a0 e3                                      mov r3, #0
0080e710  00 30 85 e5                                      str r3, [r5]
0080e714  05 00 a0 e1                                      mov r0, r5
0080e718  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0080e71c, declared_size=116, range_size=116, mode=arm
; class-group: NetBitStreamArray
; alias: _ZN17NetBitStreamArrayD2Ev
; demangled: NetBitStreamArray::~NetBitStreamArray()
; decoder-mode: arm
0080e71c  70 40 2d e9                                      push {r4, r5, r6, lr}
0080e720  04 20 90 e5                                      ldr r2, [r0, #4]
0080e724  00 50 a0 e1                                      mov r5, r0
0080e728  00 00 52 e3                                      cmp r2, #0
0080e72c  00 00 90 d5                                      ldrle r0, [r0]
0080e730  0f 00 00 da                                      ble #0x80e774
0080e734  00 00 95 e5                                      ldr r0, [r5]
0080e738  00 40 a0 e3                                      mov r4, #0
0080e73c  04 60 a0 e1                                      mov r6, r4
0080e740  04 31 90 e7                                      ldr r3, [r0, r4, lsl #2]
0080e744  00 00 53 e3                                      cmp r3, #0
0080e748  06 00 00 0a                                      beq #0x80e768
0080e74c  03 00 a0 e1                                      mov r0, r3
0080e750  00 30 93 e5                                      ldr r3, [r3]
0080e754  0f e0 a0 e1                                      mov lr, pc
0080e758  04 f0 93 e5                                      ldr pc, [r3, #4]
0080e75c  00 30 95 e5                                      ldr r3, [r5]
0080e760  04 61 83 e7                                      str r6, [r3, r4, lsl #2]
0080e764  05 00 95 e8                                      ldm r5, {r0, r2}
0080e768  01 40 84 e2                                      add r4, r4, #1
0080e76c  04 00 52 e1                                      cmp r2, r4
0080e770  f2 ff ff ca                                      bgt #0x80e740
0080e774  00 00 50 e3                                      cmp r0, #0
0080e778  02 00 00 0a                                      beq #0x80e788
0080e77c  2f 07 ec eb                                      bl #0x310440
0080e780  00 30 a0 e3                                      mov r3, #0
0080e784  00 30 85 e5                                      str r3, [r5]
0080e788  05 00 a0 e1                                      mov r0, r5
0080e78c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0080e8d0, declared_size=56, range_size=56, mode=arm
; class-group: NetBitStreamArray
; alias: _ZN17NetBitStreamArray15ClearAllStreamsEv
; demangled: NetBitStreamArray::ClearAllStreams()
; decoder-mode: arm
0080e8d0  70 40 2d e9                                      push {r4, r5, r6, lr}
0080e8d4  04 30 90 e5                                      ldr r3, [r0, #4]
0080e8d8  00 50 a0 e1                                      mov r5, r0
0080e8dc  00 00 53 e3                                      cmp r3, #0
0080e8e0  07 00 00 da                                      ble #0x80e904
0080e8e4  00 40 a0 e3                                      mov r4, #0
0080e8e8  00 30 95 e5                                      ldr r3, [r5]
0080e8ec  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0080e8f0  e9 ff ff eb                                      bl #0x80e89c
0080e8f4  04 30 95 e5                                      ldr r3, [r5, #4]
0080e8f8  01 40 84 e2                                      add r4, r4, #1
0080e8fc  04 00 53 e1                                      cmp r3, r4
0080e900  f8 ff ff ca                                      bgt #0x80e8e8
0080e904  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0080e980, declared_size=104, range_size=104, mode=arm
; class-group: NetBitStreamArray
; alias: _ZN17NetBitStreamArrayC1Eii
; demangled: NetBitStreamArray::NetBitStreamArray(int, int)
; decoder-mode: arm
0080e980  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080e984  00 40 a0 e1                                      mov r4, r0
0080e988  04 10 80 e5                                      str r1, [r0, #4]
0080e98c  01 01 a0 e1                                      lsl r0, r1, #2
0080e990  02 10 a0 e3                                      mov r1, #2
0080e994  02 70 a0 e1                                      mov r7, r2
0080e998  f3 06 ec eb                                      bl #0x31056c
0080e99c  04 30 94 e5                                      ldr r3, [r4, #4]
0080e9a0  00 00 84 e5                                      str r0, [r4]
0080e9a4  00 00 53 e3                                      cmp r3, #0
0080e9a8  0c 00 00 da                                      ble #0x80e9e0
0080e9ac  00 50 a0 e3                                      mov r5, #0
0080e9b0  02 10 a0 e3                                      mov r1, #2
0080e9b4  20 00 a0 e3                                      mov r0, #0x20
0080e9b8  ec 06 ec eb                                      bl #0x310570
0080e9bc  07 10 a0 e1                                      mov r1, r7
0080e9c0  00 60 a0 e1                                      mov r6, r0
0080e9c4  cf ff ff eb                                      bl #0x80e908
0080e9c8  00 30 94 e5                                      ldr r3, [r4]
0080e9cc  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
0080e9d0  04 30 94 e5                                      ldr r3, [r4, #4]
0080e9d4  01 50 85 e2                                      add r5, r5, #1
0080e9d8  05 00 53 e1                                      cmp r3, r5
0080e9dc  f3 ff ff ca                                      bgt #0x80e9b0
0080e9e0  04 00 a0 e1                                      mov r0, r4
0080e9e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0080e9e8, declared_size=104, range_size=104, mode=arm
; class-group: NetBitStreamArray
; alias: _ZN17NetBitStreamArrayC2Eii
; demangled: NetBitStreamArray::NetBitStreamArray(int, int)
; decoder-mode: arm
0080e9e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080e9ec  00 40 a0 e1                                      mov r4, r0
0080e9f0  04 10 80 e5                                      str r1, [r0, #4]
0080e9f4  01 01 a0 e1                                      lsl r0, r1, #2
0080e9f8  02 10 a0 e3                                      mov r1, #2
0080e9fc  02 70 a0 e1                                      mov r7, r2
0080ea00  d9 06 ec eb                                      bl #0x31056c
0080ea04  04 30 94 e5                                      ldr r3, [r4, #4]
0080ea08  00 00 84 e5                                      str r0, [r4]
0080ea0c  00 00 53 e3                                      cmp r3, #0
0080ea10  0c 00 00 da                                      ble #0x80ea48
0080ea14  00 50 a0 e3                                      mov r5, #0
0080ea18  02 10 a0 e3                                      mov r1, #2
0080ea1c  20 00 a0 e3                                      mov r0, #0x20
0080ea20  d2 06 ec eb                                      bl #0x310570
0080ea24  07 10 a0 e1                                      mov r1, r7
0080ea28  00 60 a0 e1                                      mov r6, r0
0080ea2c  b5 ff ff eb                                      bl #0x80e908
0080ea30  00 30 94 e5                                      ldr r3, [r4]
0080ea34  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
0080ea38  04 30 94 e5                                      ldr r3, [r4, #4]
0080ea3c  01 50 85 e2                                      add r5, r5, #1
0080ea40  05 00 53 e1                                      cmp r3, r5
0080ea44  f3 ff ff ca                                      bgt #0x80ea18
0080ea48  04 00 a0 e1                                      mov r0, r4
0080ea4c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0080ed60, declared_size=72, range_size=72, mode=arm
; class-group: NetBitStreamArray
; alias: _ZN17NetBitStreamArray14CopyAllStreamsER12NetBitStream
; demangled: NetBitStreamArray::CopyAllStreams(NetBitStream&)
; decoder-mode: arm
0080ed60  70 40 2d e9                                      push {r4, r5, r6, lr}
0080ed64  04 30 90 e5                                      ldr r3, [r0, #4]
0080ed68  00 50 a0 e1                                      mov r5, r0
0080ed6c  01 60 a0 e1                                      mov r6, r1
0080ed70  00 00 53 e3                                      cmp r3, #0
0080ed74  0a 00 00 da                                      ble #0x80eda4
0080ed78  00 40 a0 e3                                      mov r4, #0
0080ed7c  04 10 a0 e1                                      mov r1, r4
0080ed80  05 00 a0 e1                                      mov r0, r5
0080ed84  44 fe ff eb                                      bl #0x80e69c
0080ed88  00 10 a0 e1                                      mov r1, r0
0080ed8c  06 00 a0 e1                                      mov r0, r6
0080ed90  ef ff ff eb                                      bl #0x80ed54
0080ed94  04 30 95 e5                                      ldr r3, [r5, #4]
0080ed98  01 40 84 e2                                      add r4, r4, #1
0080ed9c  04 00 53 e1                                      cmp r3, r4
0080eda0  f5 ff ff ca                                      bgt #0x80ed7c
0080eda4  70 80 bd e8                                      pop {r4, r5, r6, pc}
