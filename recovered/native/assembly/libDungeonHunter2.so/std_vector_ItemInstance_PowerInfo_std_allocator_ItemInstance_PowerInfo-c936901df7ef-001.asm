; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003fa2c8, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<ItemInstance::PowerInfo, std::allocator<ItemInstance::PowerInfo> >
; alias: _ZNSt6vectorIN12ItemInstance9PowerInfoESaIS1_EE8_M_eraseEPS1_S4_RKSt12__false_type
; demangled: std::vector<ItemInstance::PowerInfo, std::allocator<ItemInstance::PowerInfo> >::_M_erase(ItemInstance::PowerInfo*, ItemInstance::PowerInfo*, std::__false_type const&)
; decoder-mode: arm
003fa2c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fa2cc  04 30 90 e5                                      ldr r3, [r0, #4]
003fa2d0  10 d0 4d e2                                      sub sp, sp, #0x10
003fa2d4  01 50 a0 e1                                      mov r5, r1
003fa2d8  00 40 a0 e1                                      mov r4, r0
003fa2dc  03 10 a0 e1                                      mov r1, r3
003fa2e0  02 00 a0 e1                                      mov r0, r2
003fa2e4  00 c0 a0 e3                                      mov ip, #0
003fa2e8  05 20 a0 e1                                      mov r2, r5
003fa2ec  0c 30 8d e2                                      add r3, sp, #0xc
003fa2f0  00 c0 8d e5                                      str ip, [sp]
003fa2f4  d7 ff ff eb                                      bl #0x3fa258
003fa2f8  04 70 94 e5                                      ldr r7, [r4, #4]
003fa2fc  00 80 a0 e1                                      mov r8, r0
003fa300  00 00 57 e1                                      cmp r7, r0
003fa304  05 00 00 0a                                      beq #0x3fa320
003fa308  00 60 a0 e1                                      mov r6, r0
003fa30c  08 00 86 e2                                      add r0, r6, #8
003fa310  20 60 86 e2                                      add r6, r6, #0x20
003fa314  a4 65 fc eb                                      bl #0x3139ac
003fa318  06 00 57 e1                                      cmp r7, r6
003fa31c  fa ff ff 1a                                      bne #0x3fa30c
003fa320  04 80 84 e5                                      str r8, [r4, #4]
003fa324  05 00 a0 e1                                      mov r0, r5
003fa328  10 d0 8d e2                                      add sp, sp, #0x10
003fa32c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003fa998, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<ItemInstance::PowerInfo, std::allocator<ItemInstance::PowerInfo> >
; alias: _ZNSt6vectorIN12ItemInstance9PowerInfoESaIS1_EE19_M_clear_after_moveEv
; demangled: std::vector<ItemInstance::PowerInfo, std::allocator<ItemInstance::PowerInfo> >::_M_clear_after_move()
; decoder-mode: arm
003fa998  70 40 2d e9                                      push {r4, r5, r6, lr}
003fa99c  04 40 90 e5                                      ldr r4, [r0, #4]
003fa9a0  00 50 90 e5                                      ldr r5, [r0]
003fa9a4  00 60 a0 e1                                      mov r6, r0
003fa9a8  05 00 54 e1                                      cmp r4, r5
003fa9ac  05 00 00 0a                                      beq #0x3fa9c8
003fa9b0  20 40 44 e2                                      sub r4, r4, #0x20
003fa9b4  08 00 84 e2                                      add r0, r4, #8
003fa9b8  fb 63 fc eb                                      bl #0x3139ac
003fa9bc  04 00 55 e1                                      cmp r5, r4
003fa9c0  fa ff ff 1a                                      bne #0x3fa9b0
003fa9c4  00 40 96 e5                                      ldr r4, [r6]
003fa9c8  00 00 54 e3                                      cmp r4, #0
003fa9cc  08 10 96 e5                                      ldr r1, [r6, #8]
003fa9d0  09 00 00 0a                                      beq #0x3fa9fc
003fa9d4  01 10 64 e0                                      rsb r1, r4, r1
003fa9d8  1f 10 c1 e3                                      bic r1, r1, #0x1f
003fa9dc  80 00 51 e3                                      cmp r1, #0x80
003fa9e0  02 00 00 8a                                      bhi #0x3fa9f0
003fa9e4  04 00 a0 e1                                      mov r0, r4
003fa9e8  70 40 bd e8                                      pop {r4, r5, r6, lr}
003fa9ec  43 39 0c ea                                      b #0x708f00
003fa9f0  04 00 a0 e1                                      mov r0, r4
003fa9f4  70 40 bd e8                                      pop {r4, r5, r6, lr}
003fa9f8  90 56 fc ea                                      b #0x310440
003fa9fc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003faa00, declared_size=100, range_size=100, mode=arm
; class-group: std::vector<ItemInstance::PowerInfo, std::allocator<ItemInstance::PowerInfo> >
; alias: _ZNSt6vectorIN12ItemInstance9PowerInfoESaIS1_EED1Ev
; demangled: std::vector<ItemInstance::PowerInfo, std::allocator<ItemInstance::PowerInfo> >::~vector()
; decoder-mode: arm
003faa00  70 40 2d e9                                      push {r4, r5, r6, lr}
003faa04  04 50 90 e5                                      ldr r5, [r0, #4]
003faa08  00 60 90 e5                                      ldr r6, [r0]
003faa0c  00 40 a0 e1                                      mov r4, r0
003faa10  06 00 55 e1                                      cmp r5, r6
003faa14  04 00 00 0a                                      beq #0x3faa2c
003faa18  20 50 45 e2                                      sub r5, r5, #0x20
003faa1c  08 00 85 e2                                      add r0, r5, #8
003faa20  e1 63 fc eb                                      bl #0x3139ac
003faa24  05 00 56 e1                                      cmp r6, r5
003faa28  fa ff ff 1a                                      bne #0x3faa18
003faa2c  00 00 94 e5                                      ldr r0, [r4]
003faa30  00 00 50 e3                                      cmp r0, #0
003faa34  05 00 00 0a                                      beq #0x3faa50
003faa38  08 10 94 e5                                      ldr r1, [r4, #8]
003faa3c  01 10 60 e0                                      rsb r1, r0, r1
003faa40  1f 10 c1 e3                                      bic r1, r1, #0x1f
003faa44  80 00 51 e3                                      cmp r1, #0x80
003faa48  02 00 00 8a                                      bhi #0x3faa58
003faa4c  2b 39 0c eb                                      bl #0x708f00
003faa50  04 00 a0 e1                                      mov r0, r4
003faa54  70 80 bd e8                                      pop {r4, r5, r6, pc}
003faa58  78 56 fc eb                                      bl #0x310440
003faa5c  04 00 a0 e1                                      mov r0, r4
003faa60  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003fb640, declared_size=276, range_size=276, mode=arm
; class-group: std::vector<ItemInstance::PowerInfo, std::allocator<ItemInstance::PowerInfo> >
; alias: _ZNSt6vectorIN12ItemInstance9PowerInfoESaIS1_EE9push_backERKS1_
; demangled: std::vector<ItemInstance::PowerInfo, std::allocator<ItemInstance::PowerInfo> >::push_back(ItemInstance::PowerInfo const&)
; decoder-mode: arm
003fb640  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003fb644  04 70 90 e5                                      ldr r7, [r0, #4]
003fb648  08 30 90 e5                                      ldr r3, [r0, #8]
003fb64c  14 d0 4d e2                                      sub sp, sp, #0x14
003fb650  00 40 a0 e1                                      mov r4, r0
003fb654  03 00 57 e1                                      cmp r7, r3
003fb658  01 50 a0 e1                                      mov r5, r1
003fb65c  0f 00 00 0a                                      beq #0x3fb6a0
003fb660  00 20 91 e5                                      ldr r2, [r1]
003fb664  08 30 87 e2                                      add r3, r7, #8
003fb668  03 00 a0 e1                                      mov r0, r3
003fb66c  00 20 87 e5                                      str r2, [r7]
003fb670  04 20 91 e5                                      ldr r2, [r1, #4]
003fb674  1c 30 87 e5                                      str r3, [r7, #0x1c]
003fb678  18 30 87 e5                                      str r3, [r7, #0x18]
003fb67c  04 20 87 e5                                      str r2, [r7, #4]
003fb680  18 20 91 e5                                      ldr r2, [r1, #0x18]
003fb684  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
003fb688  16 58 fc eb                                      bl #0x3116e8
003fb68c  04 30 94 e5                                      ldr r3, [r4, #4]
003fb690  20 30 83 e2                                      add r3, r3, #0x20
003fb694  04 30 84 e5                                      str r3, [r4, #4]
003fb698  14 d0 8d e2                                      add sp, sp, #0x14
003fb69c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003fb6a0  00 30 90 e5                                      ldr r3, [r0]
003fb6a4  07 30 63 e0                                      rsb r3, r3, r7
003fb6a8  c3 32 a0 e1                                      asr r3, r3, #5
003fb6ac  01 00 53 e3                                      cmp r3, #1
003fb6b0  03 10 83 20                                      addhs r1, r3, r3
003fb6b4  01 10 83 32                                      addlo r1, r3, #1
003fb6b8  7e 03 71 e3                                      cmn r1, #0xf8000001
003fb6bc  21 00 00 9a                                      bls #0x3fb748
003fb6c0  3e 13 e0 e3                                      mvn r1, #0xf8000000
003fb6c4  10 20 8d e2                                      add r2, sp, #0x10
003fb6c8  08 10 22 e5                                      str r1, [r2, #-8]!
003fb6cc  08 00 84 e2                                      add r0, r4, #8
003fb6d0  43 fd ff eb                                      bl #0x3fabe4
003fb6d4  00 60 a0 e1                                      mov r6, r0
003fb6d8  00 c0 a0 e3                                      mov ip, #0
003fb6dc  07 10 a0 e1                                      mov r1, r7
003fb6e0  06 20 a0 e1                                      mov r2, r6
003fb6e4  00 00 94 e5                                      ldr r0, [r4]
003fb6e8  0c 30 8d e2                                      add r3, sp, #0xc
003fb6ec  00 c0 8d e5                                      str ip, [sp]
003fb6f0  81 ff ff eb                                      bl #0x3fb4fc
003fb6f4  00 20 95 e5                                      ldr r2, [r5]
003fb6f8  00 70 a0 e1                                      mov r7, r0
003fb6fc  08 30 80 e2                                      add r3, r0, #8
003fb700  00 20 87 e5                                      str r2, [r7]
003fb704  04 20 95 e5                                      ldr r2, [r5, #4]
003fb708  18 30 87 e5                                      str r3, [r7, #0x18]
003fb70c  1c 30 87 e5                                      str r3, [r7, #0x1c]
003fb710  04 20 87 e5                                      str r2, [r7, #4]
003fb714  03 00 a0 e1                                      mov r0, r3
003fb718  18 20 95 e5                                      ldr r2, [r5, #0x18]
003fb71c  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
003fb720  f0 57 fc eb                                      bl #0x3116e8
003fb724  04 00 a0 e1                                      mov r0, r4
003fb728  9a fc ff eb                                      bl #0x3fa998
003fb72c  08 30 9d e5                                      ldr r3, [sp, #8]
003fb730  20 70 87 e2                                      add r7, r7, #0x20
003fb734  00 60 84 e5                                      str r6, [r4]
003fb738  83 62 86 e0                                      add r6, r6, r3, lsl #5
003fb73c  08 60 84 e5                                      str r6, [r4, #8]
003fb740  04 70 84 e5                                      str r7, [r4, #4]
003fb744  d3 ff ff ea                                      b #0x3fb698
003fb748  01 00 53 e1                                      cmp r3, r1
003fb74c  dc ff ff 9a                                      bls #0x3fb6c4
003fb750  da ff ff ea                                      b #0x3fb6c0
