; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00824c8c, declared_size=4, range_size=4, mode=arm
; class-group: CEventQueue<_BLUETOOTH_EVENTS, 100u>
; alias: _ZN11CEventQueueI17_BLUETOOTH_EVENTSLj100EE5ClearEv
; demangled: CEventQueue<_BLUETOOTH_EVENTS, 100u>::Clear()
; decoder-mode: arm
00824c8c  e9 65 ff ea                                      b #0x7fe438

; FUNCTION 0x00824dd0, declared_size=60, range_size=60, mode=arm
; class-group: CEventQueue<_BLUETOOTH_EVENTS, 100u>
; alias: _ZN11CEventQueueI17_BLUETOOTH_EVENTSLj100EED1Ev
; demangled: CEventQueue<_BLUETOOTH_EVENTS, 100u>::~CEventQueue()
; decoder-mode: arm
00824dd0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00824dd4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00824dd8  10 40 2d e9                                      push {r4, lr}
00824ddc  03 30 8f e0                                      add r3, pc, r3
00824de0  02 20 93 e7                                      ldr r2, [r3, r2]
00824de4  00 40 a0 e1                                      mov r4, r0
00824de8  08 20 82 e2                                      add r2, r2, #8
00824dec  08 20 80 e4                                      str r2, [r0], #8
00824df0  5e 61 ff eb                                      bl #0x7fd370
00824df4  04 00 84 e2                                      add r0, r4, #4
00824df8  5c a5 ff eb                                      bl #0x80e370
00824dfc  04 00 a0 e1                                      mov r0, r4
00824e00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00824e04  b4 fc 16 00 4c 0a 00 00                          .byte 0xb4, 0xfc, 0x16, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x00824e0c, declared_size=68, range_size=68, mode=arm
; class-group: CEventQueue<_BLUETOOTH_EVENTS, 100u>
; alias: _ZN11CEventQueueI17_BLUETOOTH_EVENTSLj100EED0Ev
; demangled: CEventQueue<_BLUETOOTH_EVENTS, 100u>::~CEventQueue()
; decoder-mode: arm
00824e0c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00824e10  34 20 9f e5                                      ldr r2, [pc, #0x34]
00824e14  10 40 2d e9                                      push {r4, lr}
00824e18  03 30 8f e0                                      add r3, pc, r3
00824e1c  02 20 93 e7                                      ldr r2, [r3, r2]
00824e20  00 40 a0 e1                                      mov r4, r0
00824e24  08 20 82 e2                                      add r2, r2, #8
00824e28  08 20 80 e4                                      str r2, [r0], #8
00824e2c  4f 61 ff eb                                      bl #0x7fd370
00824e30  04 00 84 e2                                      add r0, r4, #4
00824e34  4d a5 ff eb                                      bl #0x80e370
00824e38  04 00 a0 e1                                      mov r0, r4
00824e3c  7f ad eb eb                                      bl #0x310440
00824e40  04 00 a0 e1                                      mov r0, r4
00824e44  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00824e48  78 fc 16 00 4c 0a 00 00                          .byte 0x78, 0xfc, 0x16, 0x00, 0x4c, 0x0a, 0x00, 0x00
