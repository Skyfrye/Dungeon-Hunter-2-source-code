; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fd6cc, declared_size=4, range_size=4, mode=arm
; class-group: CEventQueue<COnline::EVENTS, 0u>
; alias: _ZN11CEventQueueIN7COnline6EVENTSELj0EE5ClearEv
; demangled: CEventQueue<COnline::EVENTS, 0u>::Clear()
; decoder-mode: arm
007fd6cc  59 03 00 ea                                      b #0x7fe438

; FUNCTION 0x007fd8d8, declared_size=60, range_size=60, mode=arm
; class-group: CEventQueue<COnline::EVENTS, 0u>
; alias: _ZN11CEventQueueIN7COnline6EVENTSELj0EED1Ev
; demangled: CEventQueue<COnline::EVENTS, 0u>::~CEventQueue()
; decoder-mode: arm
007fd8d8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007fd8dc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007fd8e0  10 40 2d e9                                      push {r4, lr}
007fd8e4  03 30 8f e0                                      add r3, pc, r3
007fd8e8  02 20 93 e7                                      ldr r2, [r3, r2]
007fd8ec  00 40 a0 e1                                      mov r4, r0
007fd8f0  08 20 82 e2                                      add r2, r2, #8
007fd8f4  08 20 80 e4                                      str r2, [r0], #8
007fd8f8  9c fe ff eb                                      bl #0x7fd370
007fd8fc  04 00 84 e2                                      add r0, r4, #4
007fd900  9a 42 00 eb                                      bl #0x80e370
007fd904  04 00 a0 e1                                      mov r0, r4
007fd908  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fd90c  ac 71 19 00 4c 0a 00 00                          .byte 0xac, 0x71, 0x19, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x007fdb14, declared_size=68, range_size=68, mode=arm
; class-group: CEventQueue<COnline::EVENTS, 0u>
; alias: _ZN11CEventQueueIN7COnline6EVENTSELj0EED0Ev
; demangled: CEventQueue<COnline::EVENTS, 0u>::~CEventQueue()
; decoder-mode: arm
007fdb14  34 30 9f e5                                      ldr r3, [pc, #0x34]
007fdb18  34 20 9f e5                                      ldr r2, [pc, #0x34]
007fdb1c  10 40 2d e9                                      push {r4, lr}
007fdb20  03 30 8f e0                                      add r3, pc, r3
007fdb24  02 20 93 e7                                      ldr r2, [r3, r2]
007fdb28  00 40 a0 e1                                      mov r4, r0
007fdb2c  08 20 82 e2                                      add r2, r2, #8
007fdb30  08 20 80 e4                                      str r2, [r0], #8
007fdb34  0d fe ff eb                                      bl #0x7fd370
007fdb38  04 00 84 e2                                      add r0, r4, #4
007fdb3c  0b 42 00 eb                                      bl #0x80e370
007fdb40  04 00 a0 e1                                      mov r0, r4
007fdb44  3d 4a ec eb                                      bl #0x310440
007fdb48  04 00 a0 e1                                      mov r0, r4
007fdb4c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fdb50  70 6f 19 00 4c 0a 00 00                          .byte 0x70, 0x6f, 0x19, 0x00, 0x4c, 0x0a, 0x00, 0x00
