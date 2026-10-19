; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00338374, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_List_base<IEvent const*, std::allocator<IEvent const*> >
; alias: _ZNSt4priv10_List_baseIPK6IEventSaIS3_EE5clearEv
; demangled: std::priv::_List_base<IEvent const*, std::allocator<IEvent const*> >::clear()
; decoder-mode: arm
00338374  70 40 2d e9                                      push {r4, r5, r6, lr}
00338378  00 50 a0 e1                                      mov r5, r0
0033837c  00 00 90 e5                                      ldr r0, [r0]
00338380  05 00 50 e1                                      cmp r0, r5
00338384  01 00 00 1a                                      bne #0x338390
00338388  06 00 00 ea                                      b #0x3383a8
0033838c  04 00 a0 e1                                      mov r0, r4
00338390  00 40 90 e5                                      ldr r4, [r0]
00338394  0c 10 a0 e3                                      mov r1, #0xc
00338398  d8 42 0f eb                                      bl #0x708f00
0033839c  05 00 54 e1                                      cmp r4, r5
003383a0  f9 ff ff 1a                                      bne #0x33838c
003383a4  05 00 a0 e1                                      mov r0, r5
003383a8  04 00 85 e5                                      str r0, [r5, #4]
003383ac  00 00 85 e5                                      str r0, [r5]
003383b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
