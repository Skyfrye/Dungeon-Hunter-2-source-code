; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fd5f4, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_List_base<COnline::tTimeSyncMsg, std::allocator<COnline::tTimeSyncMsg> >
; alias: _ZNSt4priv10_List_baseIN7COnline12tTimeSyncMsgESaIS2_EE5clearEv
; demangled: std::priv::_List_base<COnline::tTimeSyncMsg, std::allocator<COnline::tTimeSyncMsg> >::clear()
; decoder-mode: arm
007fd5f4  70 40 2d e9                                      push {r4, r5, r6, lr}
007fd5f8  00 50 a0 e1                                      mov r5, r0
007fd5fc  00 00 90 e5                                      ldr r0, [r0]
007fd600  05 00 50 e1                                      cmp r0, r5
007fd604  01 00 00 1a                                      bne #0x7fd610
007fd608  06 00 00 ea                                      b #0x7fd628
007fd60c  04 00 a0 e1                                      mov r0, r4
007fd610  00 40 90 e5                                      ldr r4, [r0]
007fd614  14 10 a0 e3                                      mov r1, #0x14
007fd618  46 03 03 eb                                      bl #0x8be338
007fd61c  05 00 54 e1                                      cmp r4, r5
007fd620  f9 ff ff 1a                                      bne #0x7fd60c
007fd624  05 00 a0 e1                                      mov r0, r5
007fd628  04 00 85 e5                                      str r0, [r5, #4]
007fd62c  00 00 85 e5                                      str r0, [r5]
007fd630  70 80 bd e8                                      pop {r4, r5, r6, pc}
