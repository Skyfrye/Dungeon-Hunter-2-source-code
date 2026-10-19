; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0032fdbc, declared_size=4, range_size=4, mode=arm
; class-group: IEventReceiver
; alias: _ZN14IEventReceiverD1Ev
; demangled: IEventReceiver::~IEventReceiver()
; decoder-mode: arm
0032fdbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00330674, declared_size=52, range_size=52, mode=arm
; class-group: IEventReceiver
; alias: _ZN14IEventReceiverD0Ev
; demangled: IEventReceiver::~IEventReceiver()
; decoder-mode: arm
00330674  24 30 9f e5                                      ldr r3, [pc, #0x24]
00330678  24 20 9f e5                                      ldr r2, [pc, #0x24]
0033067c  10 40 2d e9                                      push {r4, lr}
00330680  03 30 8f e0                                      add r3, pc, r3
00330684  02 20 93 e7                                      ldr r2, [r3, r2]
00330688  00 40 a0 e1                                      mov r4, r0
0033068c  08 20 82 e2                                      add r2, r2, #8
00330690  00 20 80 e5                                      str r2, [r0]
00330694  69 7f ff eb                                      bl #0x310440
00330698  04 00 a0 e1                                      mov r0, r4
0033069c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003306a0  10 44 66 00 40 0b 00 00                          .byte 0x10, 0x44, 0x66, 0x00, 0x40, 0x0b, 0x00, 0x00
