; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00819b2c, declared_size=124, range_size=124, mode=arm
; class-group: CRoomSearchFilter::tSearchFilterInt* std::vector<CRoomSearchFilter::tSearchFilterInt, std::allocator<CRoomSearchFilter::tSearchFilterInt> >
; alias: _ZNSt6vectorIN17CRoomSearchFilter16tSearchFilterIntESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_RjT_S9_
; demangled: CRoomSearchFilter::tSearchFilterInt* std::vector<CRoomSearchFilter::tSearchFilterInt, std::allocator<CRoomSearchFilter::tSearchFilterInt> >::_M_allocate_and_copy<CRoomSearchFilter::tSearchFilterInt const*>(unsigned int&, CRoomSearchFilter::tSearchFilterInt const*, CRoomSearchFilter::tSearchFilterInt const*)
; decoder-mode: arm
00819b2c  70 40 2d e9                                      push {r4, r5, r6, lr}
00819b30  03 50 a0 e1                                      mov r5, r3
00819b34  02 40 a0 e1                                      mov r4, r2
00819b38  05 50 64 e0                                      rsb r5, r4, r5
00819b3c  01 20 a0 e1                                      mov r2, r1
00819b40  08 00 80 e2                                      add r0, r0, #8
00819b44  00 10 91 e5                                      ldr r1, [r1]
00819b48  d5 ff ff eb                                      bl #0x819aa4
00819b4c  45 31 a0 e1                                      asr r3, r5, #2
00819b50  03 51 83 e0                                      add r5, r3, r3, lsl #2
00819b54  05 52 85 e0                                      add r5, r5, r5, lsl #4
00819b58  05 54 85 e0                                      add r5, r5, r5, lsl #8
00819b5c  05 58 85 e0                                      add r5, r5, r5, lsl #16
00819b60  85 50 83 e0                                      add r5, r3, r5, lsl #1
00819b64  00 00 55 e3                                      cmp r5, #0
00819b68  0d 00 00 da                                      ble #0x819ba4
00819b6c  00 30 a0 e3                                      mov r3, #0
00819b70  03 20 94 e7                                      ldr r2, [r4, r3]
00819b74  03 10 84 e0                                      add r1, r4, r3
00819b78  04 10 81 e2                                      add r1, r1, #4
00819b7c  03 20 80 e7                                      str r2, [r0, r3]
00819b80  04 c0 91 e4                                      ldr ip, [r1], #4
00819b84  03 20 80 e0                                      add r2, r0, r3
00819b88  04 20 82 e2                                      add r2, r2, #4
00819b8c  04 c0 82 e4                                      str ip, [r2], #4
00819b90  00 10 91 e5                                      ldr r1, [r1]
00819b94  01 50 55 e2                                      subs r5, r5, #1
00819b98  0c 30 83 e2                                      add r3, r3, #0xc
00819b9c  00 10 82 e5                                      str r1, [r2]
00819ba0  f2 ff ff 1a                                      bne #0x819b70
00819ba4  70 80 bd e8                                      pop {r4, r5, r6, pc}
