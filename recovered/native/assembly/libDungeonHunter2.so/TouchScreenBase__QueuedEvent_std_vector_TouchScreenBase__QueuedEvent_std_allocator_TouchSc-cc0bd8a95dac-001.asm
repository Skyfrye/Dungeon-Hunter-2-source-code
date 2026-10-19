; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033bf2c, declared_size=124, range_size=124, mode=arm
; class-group: TouchScreenBase::_QueuedEvent* std::vector<TouchScreenBase::_QueuedEvent, std::allocator<TouchScreenBase::_QueuedEvent> >
; alias: _ZNSt6vectorIN15TouchScreenBase12_QueuedEventESaIS1_EE20_M_allocate_and_copyIPS1_EES5_RjT_S7_
; demangled: TouchScreenBase::_QueuedEvent* std::vector<TouchScreenBase::_QueuedEvent, std::allocator<TouchScreenBase::_QueuedEvent> >::_M_allocate_and_copy<TouchScreenBase::_QueuedEvent*>(unsigned int&, TouchScreenBase::_QueuedEvent*, TouchScreenBase::_QueuedEvent*)
; decoder-mode: arm
0033bf2c  70 40 2d e9                                      push {r4, r5, r6, lr}
0033bf30  03 50 a0 e1                                      mov r5, r3
0033bf34  02 40 a0 e1                                      mov r4, r2
0033bf38  05 50 64 e0                                      rsb r5, r4, r5
0033bf3c  01 20 a0 e1                                      mov r2, r1
0033bf40  08 00 80 e2                                      add r0, r0, #8
0033bf44  00 10 91 e5                                      ldr r1, [r1]
0033bf48  d5 ff ff eb                                      bl #0x33bea4
0033bf4c  45 31 a0 e1                                      asr r3, r5, #2
0033bf50  03 51 83 e0                                      add r5, r3, r3, lsl #2
0033bf54  05 52 85 e0                                      add r5, r5, r5, lsl #4
0033bf58  05 54 85 e0                                      add r5, r5, r5, lsl #8
0033bf5c  05 58 85 e0                                      add r5, r5, r5, lsl #16
0033bf60  85 50 83 e0                                      add r5, r3, r5, lsl #1
0033bf64  00 00 55 e3                                      cmp r5, #0
0033bf68  0d 00 00 da                                      ble #0x33bfa4
0033bf6c  0c 40 84 e2                                      add r4, r4, #0xc
0033bf70  0c 30 80 e2                                      add r3, r0, #0xc
0033bf74  0c 20 14 e5                                      ldr r2, [r4, #-0xc]
0033bf78  01 50 55 e2                                      subs r5, r5, #1
0033bf7c  0c 20 03 e5                                      str r2, [r3, #-0xc]
0033bf80  b8 20 54 e1                                      ldrh r2, [r4, #-8]
0033bf84  b8 20 43 e1                                      strh r2, [r3, #-8]
0033bf88  b6 20 54 e1                                      ldrh r2, [r4, #-6]
0033bf8c  b6 20 43 e1                                      strh r2, [r3, #-6]
0033bf90  04 20 14 e5                                      ldr r2, [r4, #-4]
0033bf94  0c 40 84 e2                                      add r4, r4, #0xc
0033bf98  04 20 03 e5                                      str r2, [r3, #-4]
0033bf9c  0c 30 83 e2                                      add r3, r3, #0xc
0033bfa0  f3 ff ff 1a                                      bne #0x33bf74
0033bfa4  70 80 bd e8                                      pop {r4, r5, r6, pc}
