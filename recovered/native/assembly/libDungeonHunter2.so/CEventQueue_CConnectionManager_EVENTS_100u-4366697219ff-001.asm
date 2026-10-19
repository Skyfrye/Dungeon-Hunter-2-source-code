; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fcd00, declared_size=4, range_size=4, mode=arm
; class-group: CEventQueue<CConnectionManager::EVENTS, 100u>
; alias: _ZN11CEventQueueIN18CConnectionManager6EVENTSELj100EE5ClearEv
; demangled: CEventQueue<CConnectionManager::EVENTS, 100u>::Clear()
; decoder-mode: arm
007fcd00  cc 05 00 ea                                      b #0x7fe438

; FUNCTION 0x007fd3c4, declared_size=60, range_size=60, mode=arm
; class-group: CEventQueue<CConnectionManager::EVENTS, 100u>
; alias: _ZN11CEventQueueIN18CConnectionManager6EVENTSELj100EED1Ev
; demangled: CEventQueue<CConnectionManager::EVENTS, 100u>::~CEventQueue()
; decoder-mode: arm
007fd3c4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007fd3c8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007fd3cc  10 40 2d e9                                      push {r4, lr}
007fd3d0  03 30 8f e0                                      add r3, pc, r3
007fd3d4  02 20 93 e7                                      ldr r2, [r3, r2]
007fd3d8  00 40 a0 e1                                      mov r4, r0
007fd3dc  08 20 82 e2                                      add r2, r2, #8
007fd3e0  08 20 80 e4                                      str r2, [r0], #8
007fd3e4  e1 ff ff eb                                      bl #0x7fd370
007fd3e8  04 00 84 e2                                      add r0, r4, #4
007fd3ec  df 43 00 eb                                      bl #0x80e370
007fd3f0  04 00 a0 e1                                      mov r0, r4
007fd3f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fd3f8  c0 76 19 00 4c 0a 00 00                          .byte 0xc0, 0x76, 0x19, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x007fd470, declared_size=68, range_size=68, mode=arm
; class-group: CEventQueue<CConnectionManager::EVENTS, 100u>
; alias: _ZN11CEventQueueIN18CConnectionManager6EVENTSELj100EED0Ev
; demangled: CEventQueue<CConnectionManager::EVENTS, 100u>::~CEventQueue()
; decoder-mode: arm
007fd470  34 30 9f e5                                      ldr r3, [pc, #0x34]
007fd474  34 20 9f e5                                      ldr r2, [pc, #0x34]
007fd478  10 40 2d e9                                      push {r4, lr}
007fd47c  03 30 8f e0                                      add r3, pc, r3
007fd480  02 20 93 e7                                      ldr r2, [r3, r2]
007fd484  00 40 a0 e1                                      mov r4, r0
007fd488  08 20 82 e2                                      add r2, r2, #8
007fd48c  08 20 80 e4                                      str r2, [r0], #8
007fd490  b6 ff ff eb                                      bl #0x7fd370
007fd494  04 00 84 e2                                      add r0, r4, #4
007fd498  b4 43 00 eb                                      bl #0x80e370
007fd49c  04 00 a0 e1                                      mov r0, r4
007fd4a0  e6 4b ec eb                                      bl #0x310440
007fd4a4  04 00 a0 e1                                      mov r0, r4
007fd4a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fd4ac  14 76 19 00 4c 0a 00 00                          .byte 0x14, 0x76, 0x19, 0x00, 0x4c, 0x0a, 0x00, 0x00
