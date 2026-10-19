; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fd370, declared_size=84, range_size=84, mode=arm
; class-group: std::priv::_List_base<CEvent, std::allocator<CEvent> >
; alias: _ZNSt4priv10_List_baseI6CEventSaIS1_EE5clearEv
; demangled: std::priv::_List_base<CEvent, std::allocator<CEvent> >::clear()
; decoder-mode: arm
007fd370  70 40 2d e9                                      push {r4, r5, r6, lr}
007fd374  00 60 90 e5                                      ldr r6, [r0]
007fd378  00 50 a0 e1                                      mov r5, r0
007fd37c  00 00 56 e1                                      cmp r6, r0
007fd380  01 00 00 1a                                      bne #0x7fd38c
007fd384  0b 00 00 ea                                      b #0x7fd3b8
007fd388  04 60 a0 e1                                      mov r6, r4
007fd38c  06 00 a0 e1                                      mov r0, r6
007fd390  08 40 90 e4                                      ldr r4, [r0], #8
007fd394  08 30 96 e5                                      ldr r3, [r6, #8]
007fd398  0f e0 a0 e1                                      mov lr, pc
007fd39c  00 f0 93 e5                                      ldr pc, [r3]
007fd3a0  06 00 a0 e1                                      mov r0, r6
007fd3a4  1c 10 a0 e3                                      mov r1, #0x1c
007fd3a8  e2 03 03 eb                                      bl #0x8be338
007fd3ac  05 00 54 e1                                      cmp r4, r5
007fd3b0  f4 ff ff 1a                                      bne #0x7fd388
007fd3b4  05 60 a0 e1                                      mov r6, r5
007fd3b8  04 60 85 e5                                      str r6, [r5, #4]
007fd3bc  00 60 85 e5                                      str r6, [r5]
007fd3c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
