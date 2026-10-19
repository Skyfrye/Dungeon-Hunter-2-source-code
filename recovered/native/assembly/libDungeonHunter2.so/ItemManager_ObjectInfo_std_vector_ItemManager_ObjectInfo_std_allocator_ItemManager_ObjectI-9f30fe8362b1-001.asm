; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003eb068, declared_size=88, range_size=88, mode=arm
; class-group: ItemManager::ObjectInfo* std::vector<ItemManager::ObjectInfo, std::allocator<ItemManager::ObjectInfo> >
; alias: _ZNSt6vectorIN11ItemManager10ObjectInfoESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_RjT_S9_
; demangled: ItemManager::ObjectInfo* std::vector<ItemManager::ObjectInfo, std::allocator<ItemManager::ObjectInfo> >::_M_allocate_and_copy<ItemManager::ObjectInfo const*>(unsigned int&, ItemManager::ObjectInfo const*, ItemManager::ObjectInfo const*)
; decoder-mode: arm
003eb068  70 40 2d e9                                      push {r4, r5, r6, lr}
003eb06c  02 40 a0 e1                                      mov r4, r2
003eb070  03 50 a0 e1                                      mov r5, r3
003eb074  05 50 64 e0                                      rsb r5, r4, r5
003eb078  01 20 a0 e1                                      mov r2, r1
003eb07c  08 00 80 e2                                      add r0, r0, #8
003eb080  00 10 91 e5                                      ldr r1, [r1]
003eb084  c5 51 a0 e1                                      asr r5, r5, #3
003eb088  da ff ff eb                                      bl #0x3eaff8
003eb08c  00 00 55 e3                                      cmp r5, #0
003eb090  09 00 00 da                                      ble #0x3eb0bc
003eb094  00 10 a0 e3                                      mov r1, #0
003eb098  04 20 a0 e1                                      mov r2, r4
003eb09c  01 c0 b2 e7                                      ldr ip, [r2, r1]!
003eb0a0  00 30 a0 e1                                      mov r3, r0
003eb0a4  01 50 55 e2                                      subs r5, r5, #1
003eb0a8  01 c0 a3 e7                                      str ip, [r3, r1]!
003eb0ac  04 20 d2 e5                                      ldrb r2, [r2, #4]
003eb0b0  08 10 81 e2                                      add r1, r1, #8
003eb0b4  04 20 c3 e5                                      strb r2, [r3, #4]
003eb0b8  f6 ff ff 1a                                      bne #0x3eb098
003eb0bc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003eb1c0, declared_size=88, range_size=88, mode=arm
; class-group: ItemManager::ObjectInfo* std::vector<ItemManager::ObjectInfo, std::allocator<ItemManager::ObjectInfo> >
; alias: _ZNSt6vectorIN11ItemManager10ObjectInfoESaIS1_EE20_M_allocate_and_copyIPS1_EES5_RjT_S7_
; demangled: ItemManager::ObjectInfo* std::vector<ItemManager::ObjectInfo, std::allocator<ItemManager::ObjectInfo> >::_M_allocate_and_copy<ItemManager::ObjectInfo*>(unsigned int&, ItemManager::ObjectInfo*, ItemManager::ObjectInfo*)
; decoder-mode: arm
003eb1c0  70 40 2d e9                                      push {r4, r5, r6, lr}
003eb1c4  02 40 a0 e1                                      mov r4, r2
003eb1c8  03 50 a0 e1                                      mov r5, r3
003eb1cc  05 50 64 e0                                      rsb r5, r4, r5
003eb1d0  01 20 a0 e1                                      mov r2, r1
003eb1d4  08 00 80 e2                                      add r0, r0, #8
003eb1d8  00 10 91 e5                                      ldr r1, [r1]
003eb1dc  c5 51 a0 e1                                      asr r5, r5, #3
003eb1e0  84 ff ff eb                                      bl #0x3eaff8
003eb1e4  00 00 55 e3                                      cmp r5, #0
003eb1e8  09 00 00 da                                      ble #0x3eb214
003eb1ec  00 10 a0 e3                                      mov r1, #0
003eb1f0  04 20 a0 e1                                      mov r2, r4
003eb1f4  01 c0 b2 e7                                      ldr ip, [r2, r1]!
003eb1f8  00 30 a0 e1                                      mov r3, r0
003eb1fc  01 50 55 e2                                      subs r5, r5, #1
003eb200  01 c0 a3 e7                                      str ip, [r3, r1]!
003eb204  04 20 d2 e5                                      ldrb r2, [r2, #4]
003eb208  08 10 81 e2                                      add r1, r1, #8
003eb20c  04 20 c3 e5                                      strb r2, [r3, #4]
003eb210  f6 ff ff 1a                                      bne #0x3eb1f0
003eb214  70 80 bd e8                                      pop {r4, r5, r6, pc}
