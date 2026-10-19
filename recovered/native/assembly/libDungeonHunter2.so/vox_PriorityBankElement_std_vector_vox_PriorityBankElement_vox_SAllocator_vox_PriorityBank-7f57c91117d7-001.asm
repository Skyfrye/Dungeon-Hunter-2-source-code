; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00863d00, declared_size=88, range_size=88, mode=arm
; class-group: vox::PriorityBankElement* std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox19PriorityBankElementENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE20_M_allocate_and_copyIPS1_EES7_RjT_S9_
; demangled: vox::PriorityBankElement* std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> >::_M_allocate_and_copy<vox::PriorityBankElement*>(unsigned int&, vox::PriorityBankElement*, vox::PriorityBankElement*)
; decoder-mode: arm
00863d00  70 40 2d e9                                      push {r4, r5, r6, lr}
00863d04  00 00 91 e5                                      ldr r0, [r1]
00863d08  02 40 a0 e1                                      mov r4, r2
00863d0c  03 50 a0 e1                                      mov r5, r3
00863d10  05 50 64 e0                                      rsb r5, r4, r5
00863d14  80 01 a0 e1                                      lsl r0, r0, #3
00863d18  00 10 a0 e3                                      mov r1, #0
00863d1c  c5 51 a0 e1                                      asr r5, r5, #3
00863d20  48 b2 ea eb                                      bl #0x310648
00863d24  00 00 55 e3                                      cmp r5, #0
00863d28  09 00 00 da                                      ble #0x863d54
00863d2c  00 10 a0 e3                                      mov r1, #0
00863d30  04 20 a0 e1                                      mov r2, r4
00863d34  01 c0 b2 e7                                      ldr ip, [r2, r1]!
00863d38  00 30 a0 e1                                      mov r3, r0
00863d3c  01 50 55 e2                                      subs r5, r5, #1
00863d40  01 c0 a3 e7                                      str ip, [r3, r1]!
00863d44  04 20 92 e5                                      ldr r2, [r2, #4]
00863d48  08 10 81 e2                                      add r1, r1, #8
00863d4c  04 20 83 e5                                      str r2, [r3, #4]
00863d50  f6 ff ff 1a                                      bne #0x863d30
00863d54  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00863ed4, declared_size=88, range_size=88, mode=arm
; class-group: vox::PriorityBankElement* std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox19PriorityBankElementENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE20_M_allocate_and_copyIPKS1_EEPS1_RjT_SB_
; demangled: vox::PriorityBankElement* std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> >::_M_allocate_and_copy<vox::PriorityBankElement const*>(unsigned int&, vox::PriorityBankElement const*, vox::PriorityBankElement const*)
; decoder-mode: arm
00863ed4  70 40 2d e9                                      push {r4, r5, r6, lr}
00863ed8  00 00 91 e5                                      ldr r0, [r1]
00863edc  02 40 a0 e1                                      mov r4, r2
00863ee0  03 50 a0 e1                                      mov r5, r3
00863ee4  05 50 64 e0                                      rsb r5, r4, r5
00863ee8  80 01 a0 e1                                      lsl r0, r0, #3
00863eec  00 10 a0 e3                                      mov r1, #0
00863ef0  c5 51 a0 e1                                      asr r5, r5, #3
00863ef4  d3 b1 ea eb                                      bl #0x310648
00863ef8  00 00 55 e3                                      cmp r5, #0
00863efc  09 00 00 da                                      ble #0x863f28
00863f00  00 10 a0 e3                                      mov r1, #0
00863f04  04 20 a0 e1                                      mov r2, r4
00863f08  01 c0 b2 e7                                      ldr ip, [r2, r1]!
00863f0c  00 30 a0 e1                                      mov r3, r0
00863f10  01 50 55 e2                                      subs r5, r5, #1
00863f14  01 c0 a3 e7                                      str ip, [r3, r1]!
00863f18  04 20 92 e5                                      ldr r2, [r2, #4]
00863f1c  08 10 81 e2                                      add r1, r1, #8
00863f20  04 20 83 e5                                      str r2, [r3, #4]
00863f24  f6 ff ff 1a                                      bne #0x863f04
00863f28  70 80 bd e8                                      pop {r4, r5, r6, pc}
