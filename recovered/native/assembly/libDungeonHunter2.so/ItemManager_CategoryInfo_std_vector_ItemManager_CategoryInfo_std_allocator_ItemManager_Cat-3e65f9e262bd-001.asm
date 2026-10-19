; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003eb160, declared_size=96, range_size=96, mode=arm
; class-group: ItemManager::CategoryInfo* std::vector<ItemManager::CategoryInfo, std::allocator<ItemManager::CategoryInfo> >
; alias: _ZNSt6vectorIN11ItemManager12CategoryInfoESaIS1_EE20_M_allocate_and_copyIPS1_EES5_RjT_S7_
; demangled: ItemManager::CategoryInfo* std::vector<ItemManager::CategoryInfo, std::allocator<ItemManager::CategoryInfo> >::_M_allocate_and_copy<ItemManager::CategoryInfo*>(unsigned int&, ItemManager::CategoryInfo*, ItemManager::CategoryInfo*)
; decoder-mode: arm
003eb160  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003eb164  08 00 80 e2                                      add r0, r0, #8
003eb168  02 40 a0 e1                                      mov r4, r2
003eb16c  01 20 a0 e1                                      mov r2, r1
003eb170  00 10 91 e5                                      ldr r1, [r1]
003eb174  03 50 a0 e1                                      mov r5, r3
003eb178  36 ff ff eb                                      bl #0x3eae58
003eb17c  05 50 64 e0                                      rsb r5, r4, r5
003eb180  45 52 a0 e1                                      asr r5, r5, #4
003eb184  00 00 55 e3                                      cmp r5, #0
003eb188  00 70 a0 e1                                      mov r7, r0
003eb18c  09 00 00 da                                      ble #0x3eb1b8
003eb190  00 60 a0 e1                                      mov r6, r0
003eb194  06 00 a0 e1                                      mov r0, r6
003eb198  04 10 a0 e1                                      mov r1, r4
003eb19c  c7 ff ff eb                                      bl #0x3eb0c0
003eb1a0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003eb1a4  01 50 55 e2                                      subs r5, r5, #1
003eb1a8  10 40 84 e2                                      add r4, r4, #0x10
003eb1ac  0c 30 86 e5                                      str r3, [r6, #0xc]
003eb1b0  10 60 86 e2                                      add r6, r6, #0x10
003eb1b4  f6 ff ff 1a                                      bne #0x3eb194
003eb1b8  07 00 a0 e1                                      mov r0, r7
003eb1bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
