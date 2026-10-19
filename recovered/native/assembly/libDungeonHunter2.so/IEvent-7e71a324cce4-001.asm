; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031d8d8, declared_size=4, range_size=4, mode=arm
; class-group: IEvent
; alias: _ZN6IEventD1Ev
; demangled: IEvent::~IEvent()
; decoder-mode: arm
0031d8d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d8dc, declared_size=8, range_size=8, mode=arm
; class-group: IEvent
; alias: _ZNK6IEvent10getEventIDEv
; demangled: IEvent::getEventID() const
; decoder-mode: arm
0031d8dc  04 00 90 e5                                      ldr r0, [r0, #4]
0031d8e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fc20, declared_size=52, range_size=52, mode=arm
; class-group: IEvent
; alias: _ZN6IEventD0Ev
; demangled: IEvent::~IEvent()
; decoder-mode: arm
0031fc20  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031fc24  24 20 9f e5                                      ldr r2, [pc, #0x24]
0031fc28  10 40 2d e9                                      push {r4, lr}
0031fc2c  03 30 8f e0                                      add r3, pc, r3
0031fc30  02 20 93 e7                                      ldr r2, [r3, r2]
0031fc34  00 40 a0 e1                                      mov r4, r0
0031fc38  08 20 82 e2                                      add r2, r2, #8
0031fc3c  00 20 80 e5                                      str r2, [r0]
0031fc40  fe c1 ff eb                                      bl #0x310440
0031fc44  04 00 a0 e1                                      mov r0, r4
0031fc48  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031fc4c  64 4e 67 00 b0 0b 00 00                          .byte 0x64, 0x4e, 0x67, 0x00, 0xb0, 0x0b, 0x00, 0x00
