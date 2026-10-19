; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031d8cc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::IEventReceiver
; alias: _ZN6glitch14IEventReceiverD1Ev
; demangled: glitch::IEventReceiver::~IEventReceiver()
; decoder-mode: arm
0031d8cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fd8c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::IEventReceiver
; alias: _ZN6glitch14IEventReceiverD0Ev
; demangled: glitch::IEventReceiver::~IEventReceiver()
; decoder-mode: arm
0031fd8c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031fd90  24 20 9f e5                                      ldr r2, [pc, #0x24]
0031fd94  10 40 2d e9                                      push {r4, lr}
0031fd98  03 30 8f e0                                      add r3, pc, r3
0031fd9c  02 20 93 e7                                      ldr r2, [r3, r2]
0031fda0  00 40 a0 e1                                      mov r4, r0
0031fda4  08 20 82 e2                                      add r2, r2, #8
0031fda8  00 20 80 e5                                      str r2, [r0]
0031fdac  a3 c1 ff eb                                      bl #0x310440
0031fdb0  04 00 a0 e1                                      mov r0, r4
0031fdb4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031fdb8  f8 4c 67 00 4c 27 00 00                          .byte 0xf8, 0x4c, 0x67, 0x00, 0x4c, 0x27, 0x00, 0x00
