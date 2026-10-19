; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0032fc60, declared_size=64, range_size=64, mode=arm
; class-group: std::list<glitch::IEventReceiver*, std::allocator<glitch::IEventReceiver*> >
; alias: _ZNSt4listIPN6glitch14IEventReceiverESaIS2_EE6resizeEjRKS2_.clone.30
; demangled: std::list<glitch::IEventReceiver*, std::allocator<glitch::IEventReceiver*> >::resize(unsigned int, glitch::IEventReceiver* const&) [clone .clone.30]
; decoder-mode: arm
0032fc60  70 40 2d e9                                      push {r4, r5, r6, lr}
0032fc64  00 50 a0 e1                                      mov r5, r0
0032fc68  00 00 90 e5                                      ldr r0, [r0]
0032fc6c  05 00 50 e1                                      cmp r0, r5
0032fc70  09 00 00 0a                                      beq #0x32fc9c
0032fc74  00 00 00 ea                                      b #0x32fc7c
0032fc78  04 00 a0 e1                                      mov r0, r4
0032fc7c  00 40 90 e5                                      ldr r4, [r0]
0032fc80  04 30 90 e5                                      ldr r3, [r0, #4]
0032fc84  0c 10 a0 e3                                      mov r1, #0xc
0032fc88  00 40 83 e5                                      str r4, [r3]
0032fc8c  04 30 84 e5                                      str r3, [r4, #4]
0032fc90  9a 64 0f eb                                      bl #0x708f00
0032fc94  04 00 55 e1                                      cmp r5, r4
0032fc98  f6 ff ff 1a                                      bne #0x32fc78
0032fc9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
