; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003383b4, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_List_base<EventManager::DelayedDetachInfo, std::allocator<EventManager::DelayedDetachInfo> >
; alias: _ZNSt4priv10_List_baseIN12EventManager17DelayedDetachInfoESaIS2_EE5clearEv
; demangled: std::priv::_List_base<EventManager::DelayedDetachInfo, std::allocator<EventManager::DelayedDetachInfo> >::clear()
; decoder-mode: arm
003383b4  70 40 2d e9                                      push {r4, r5, r6, lr}
003383b8  00 50 a0 e1                                      mov r5, r0
003383bc  00 00 90 e5                                      ldr r0, [r0]
003383c0  05 00 50 e1                                      cmp r0, r5
003383c4  01 00 00 1a                                      bne #0x3383d0
003383c8  06 00 00 ea                                      b #0x3383e8
003383cc  04 00 a0 e1                                      mov r0, r4
003383d0  00 40 90 e5                                      ldr r4, [r0]
003383d4  10 10 a0 e3                                      mov r1, #0x10
003383d8  c8 42 0f eb                                      bl #0x708f00
003383dc  05 00 54 e1                                      cmp r4, r5
003383e0  f9 ff ff 1a                                      bne #0x3383cc
003383e4  05 00 a0 e1                                      mov r0, r5
003383e8  04 00 85 e5                                      str r0, [r5, #4]
003383ec  00 00 85 e5                                      str r0, [r5]
003383f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
