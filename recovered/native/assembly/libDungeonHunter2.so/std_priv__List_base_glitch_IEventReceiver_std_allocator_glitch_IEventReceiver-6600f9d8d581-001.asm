; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00328f00, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_List_base<glitch::IEventReceiver*, std::allocator<glitch::IEventReceiver*> >
; alias: _ZNSt4priv10_List_baseIPN6glitch14IEventReceiverESaIS3_EE5clearEv
; demangled: std::priv::_List_base<glitch::IEventReceiver*, std::allocator<glitch::IEventReceiver*> >::clear()
; decoder-mode: arm
00328f00  70 40 2d e9                                      push {r4, r5, r6, lr}
00328f04  00 50 a0 e1                                      mov r5, r0
00328f08  00 00 90 e5                                      ldr r0, [r0]
00328f0c  05 00 50 e1                                      cmp r0, r5
00328f10  01 00 00 1a                                      bne #0x328f1c
00328f14  06 00 00 ea                                      b #0x328f34
00328f18  04 00 a0 e1                                      mov r0, r4
00328f1c  00 40 90 e5                                      ldr r4, [r0]
00328f20  0c 10 a0 e3                                      mov r1, #0xc
00328f24  f5 7f 0f eb                                      bl #0x708f00
00328f28  05 00 54 e1                                      cmp r4, r5
00328f2c  f9 ff ff 1a                                      bne #0x328f18
00328f30  05 00 a0 e1                                      mov r0, r5
00328f34  04 00 85 e5                                      str r0, [r5, #4]
00328f38  00 00 85 e5                                      str r0, [r5]
00328f3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
