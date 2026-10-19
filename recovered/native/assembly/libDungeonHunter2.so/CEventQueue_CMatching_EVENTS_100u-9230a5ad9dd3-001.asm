; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fe890, declared_size=4, range_size=4, mode=arm
; class-group: CEventQueue<CMatching::EVENTS, 100u>
; alias: _ZN11CEventQueueIN9CMatching6EVENTSELj100EE5ClearEv
; demangled: CEventQueue<CMatching::EVENTS, 100u>::Clear()
; decoder-mode: arm
007fe890  e8 fe ff ea                                      b #0x7fe438

; FUNCTION 0x007ffb28, declared_size=68, range_size=68, mode=arm
; class-group: CEventQueue<CMatching::EVENTS, 100u>
; alias: _ZN11CEventQueueIN9CMatching6EVENTSELj100EED0Ev
; demangled: CEventQueue<CMatching::EVENTS, 100u>::~CEventQueue()
; decoder-mode: arm
007ffb28  34 30 9f e5                                      ldr r3, [pc, #0x34]
007ffb2c  34 20 9f e5                                      ldr r2, [pc, #0x34]
007ffb30  10 40 2d e9                                      push {r4, lr}
007ffb34  03 30 8f e0                                      add r3, pc, r3
007ffb38  02 20 93 e7                                      ldr r2, [r3, r2]
007ffb3c  00 40 a0 e1                                      mov r4, r0
007ffb40  08 20 82 e2                                      add r2, r2, #8
007ffb44  08 20 80 e4                                      str r2, [r0], #8
007ffb48  08 f6 ff eb                                      bl #0x7fd370
007ffb4c  04 00 84 e2                                      add r0, r4, #4
007ffb50  06 3a 00 eb                                      bl #0x80e370
007ffb54  04 00 a0 e1                                      mov r0, r4
007ffb58  38 42 ec eb                                      bl #0x310440
007ffb5c  04 00 a0 e1                                      mov r0, r4
007ffb60  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007ffb64  5c 4f 19 00 4c 0a 00 00                          .byte 0x5c, 0x4f, 0x19, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x007ffb6c, declared_size=60, range_size=60, mode=arm
; class-group: CEventQueue<CMatching::EVENTS, 100u>
; alias: _ZN11CEventQueueIN9CMatching6EVENTSELj100EED1Ev
; demangled: CEventQueue<CMatching::EVENTS, 100u>::~CEventQueue()
; decoder-mode: arm
007ffb6c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007ffb70  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007ffb74  10 40 2d e9                                      push {r4, lr}
007ffb78  03 30 8f e0                                      add r3, pc, r3
007ffb7c  02 20 93 e7                                      ldr r2, [r3, r2]
007ffb80  00 40 a0 e1                                      mov r4, r0
007ffb84  08 20 82 e2                                      add r2, r2, #8
007ffb88  08 20 80 e4                                      str r2, [r0], #8
007ffb8c  f7 f5 ff eb                                      bl #0x7fd370
007ffb90  04 00 84 e2                                      add r0, r4, #4
007ffb94  f5 39 00 eb                                      bl #0x80e370
007ffb98  04 00 a0 e1                                      mov r0, r4
007ffb9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007ffba0  18 4f 19 00 4c 0a 00 00                          .byte 0x18, 0x4f, 0x19, 0x00, 0x4c, 0x0a, 0x00, 0x00
