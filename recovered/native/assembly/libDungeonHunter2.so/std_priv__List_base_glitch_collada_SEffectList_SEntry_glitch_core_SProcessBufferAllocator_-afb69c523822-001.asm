; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00631a7c, declared_size=72, range_size=72, mode=arm
; class-group: std::priv::_List_base<glitch::collada::SEffectList::SEntry, glitch::core::SProcessBufferAllocator<glitch::collada::SEffectList::SEntry> >
; alias: _ZNSt4priv10_List_baseIN6glitch7collada11SEffectList6SEntryENS1_4core23SProcessBufferAllocatorIS4_EEE5clearEv
; demangled: std::priv::_List_base<glitch::collada::SEffectList::SEntry, glitch::core::SProcessBufferAllocator<glitch::collada::SEffectList::SEntry> >::clear()
; decoder-mode: arm
00631a7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00631a80  00 40 90 e5                                      ldr r4, [r0]
00631a84  00 60 a0 e1                                      mov r6, r0
00631a88  00 00 54 e1                                      cmp r4, r0
00631a8c  01 00 00 1a                                      bne #0x631a98
00631a90  08 00 00 ea                                      b #0x631ab8
00631a94  05 40 a0 e1                                      mov r4, r5
00631a98  04 00 a0 e1                                      mov r0, r4
00631a9c  08 50 90 e4                                      ldr r5, [r0], #8
00631aa0  73 9e ff eb                                      bl #0x619474
00631aa4  04 00 a0 e1                                      mov r0, r4
00631aa8  f6 0a fc eb                                      bl #0x534688
00631aac  06 00 55 e1                                      cmp r5, r6
00631ab0  f7 ff ff 1a                                      bne #0x631a94
00631ab4  06 40 a0 e1                                      mov r4, r6
00631ab8  04 40 86 e5                                      str r4, [r6, #4]
00631abc  00 40 86 e5                                      str r4, [r6]
00631ac0  70 80 bd e8                                      pop {r4, r5, r6, pc}
