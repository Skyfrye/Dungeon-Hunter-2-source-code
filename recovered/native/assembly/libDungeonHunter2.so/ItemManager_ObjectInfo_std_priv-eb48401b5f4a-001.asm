; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003eaec8, declared_size=84, range_size=84, mode=arm
; class-group: ItemManager::ObjectInfo* std::priv
; alias: _ZNSt4priv6__copyIPKN11ItemManager10ObjectInfoEPS2_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: ItemManager::ObjectInfo* std::priv::__copy<ItemManager::ObjectInfo const*, ItemManager::ObjectInfo*, int>(ItemManager::ObjectInfo const*, ItemManager::ObjectInfo const*, ItemManager::ObjectInfo*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
003eaec8  01 10 60 e0                                      rsb r1, r0, r1
003eaecc  c1 11 a0 e1                                      asr r1, r1, #3
003eaed0  00 00 51 e3                                      cmp r1, #0
003eaed4  30 00 2d e9                                      push {r4, r5}
003eaed8  00 30 a0 e1                                      mov r3, r0
003eaedc  0b 00 00 da                                      ble #0x3eaf10
003eaee0  01 40 a0 e1                                      mov r4, r1
003eaee4  00 c0 a0 e3                                      mov ip, #0
003eaee8  0c 50 93 e7                                      ldr r5, [r3, ip]
003eaeec  0c 00 83 e0                                      add r0, r3, ip
003eaef0  01 40 54 e2                                      subs r4, r4, #1
003eaef4  0c 50 82 e7                                      str r5, [r2, ip]
003eaef8  04 50 d0 e5                                      ldrb r5, [r0, #4]
003eaefc  0c 00 82 e0                                      add r0, r2, ip
003eaf00  08 c0 8c e2                                      add ip, ip, #8
003eaf04  04 50 c0 e5                                      strb r5, [r0, #4]
003eaf08  f6 ff ff 1a                                      bne #0x3eaee8
003eaf0c  81 21 82 e0                                      add r2, r2, r1, lsl #3
003eaf10  02 00 a0 e1                                      mov r0, r2
003eaf14  30 00 bd e8                                      pop {r4, r5}
003eaf18  1e ff 2f e1                                      bx lr
