; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fe88c, declared_size=4, range_size=4, mode=arm
; class-group: CEventQueue<CMatching::EVENTS_INTERNAL, 100u>
; alias: _ZN11CEventQueueIN9CMatching15EVENTS_INTERNALELj100EE5ClearEv
; demangled: CEventQueue<CMatching::EVENTS_INTERNAL, 100u>::Clear()
; decoder-mode: arm
007fe88c  e9 fe ff ea                                      b #0x7fe438

; FUNCTION 0x007ffba8, declared_size=60, range_size=60, mode=arm
; class-group: CEventQueue<CMatching::EVENTS_INTERNAL, 100u>
; alias: _ZN11CEventQueueIN9CMatching15EVENTS_INTERNALELj100EED1Ev
; demangled: CEventQueue<CMatching::EVENTS_INTERNAL, 100u>::~CEventQueue()
; decoder-mode: arm
007ffba8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007ffbac  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007ffbb0  10 40 2d e9                                      push {r4, lr}
007ffbb4  03 30 8f e0                                      add r3, pc, r3
007ffbb8  02 20 93 e7                                      ldr r2, [r3, r2]
007ffbbc  00 40 a0 e1                                      mov r4, r0
007ffbc0  08 20 82 e2                                      add r2, r2, #8
007ffbc4  08 20 80 e4                                      str r2, [r0], #8
007ffbc8  e8 f5 ff eb                                      bl #0x7fd370
007ffbcc  04 00 84 e2                                      add r0, r4, #4
007ffbd0  e6 39 00 eb                                      bl #0x80e370
007ffbd4  04 00 a0 e1                                      mov r0, r4
007ffbd8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007ffbdc  dc 4e 19 00 4c 0a 00 00                          .byte 0xdc, 0x4e, 0x19, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x007ffbe4, declared_size=68, range_size=68, mode=arm
; class-group: CEventQueue<CMatching::EVENTS_INTERNAL, 100u>
; alias: _ZN11CEventQueueIN9CMatching15EVENTS_INTERNALELj100EED0Ev
; demangled: CEventQueue<CMatching::EVENTS_INTERNAL, 100u>::~CEventQueue()
; decoder-mode: arm
007ffbe4  34 30 9f e5                                      ldr r3, [pc, #0x34]
007ffbe8  34 20 9f e5                                      ldr r2, [pc, #0x34]
007ffbec  10 40 2d e9                                      push {r4, lr}
007ffbf0  03 30 8f e0                                      add r3, pc, r3
007ffbf4  02 20 93 e7                                      ldr r2, [r3, r2]
007ffbf8  00 40 a0 e1                                      mov r4, r0
007ffbfc  08 20 82 e2                                      add r2, r2, #8
007ffc00  08 20 80 e4                                      str r2, [r0], #8
007ffc04  d9 f5 ff eb                                      bl #0x7fd370
007ffc08  04 00 84 e2                                      add r0, r4, #4
007ffc0c  d7 39 00 eb                                      bl #0x80e370
007ffc10  04 00 a0 e1                                      mov r0, r4
007ffc14  09 42 ec eb                                      bl #0x310440
007ffc18  04 00 a0 e1                                      mov r0, r4
007ffc1c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007ffc20  a0 4e 19 00 4c 0a 00 00                          .byte 0xa0, 0x4e, 0x19, 0x00, 0x4c, 0x0a, 0x00, 0x00
