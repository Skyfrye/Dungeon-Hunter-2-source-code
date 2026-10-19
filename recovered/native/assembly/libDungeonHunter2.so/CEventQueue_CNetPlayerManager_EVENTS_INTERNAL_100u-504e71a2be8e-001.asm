; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00810b78, declared_size=4, range_size=4, mode=arm
; class-group: CEventQueue<CNetPlayerManager::EVENTS_INTERNAL, 100u>
; alias: _ZN11CEventQueueIN17CNetPlayerManager15EVENTS_INTERNALELj100EE5ClearEv
; demangled: CEventQueue<CNetPlayerManager::EVENTS_INTERNAL, 100u>::Clear()
; decoder-mode: arm
00810b78  2e b6 ff ea                                      b #0x7fe438

; FUNCTION 0x00810ff4, declared_size=60, range_size=60, mode=arm
; class-group: CEventQueue<CNetPlayerManager::EVENTS_INTERNAL, 100u>
; alias: _ZN11CEventQueueIN17CNetPlayerManager15EVENTS_INTERNALELj100EED1Ev
; demangled: CEventQueue<CNetPlayerManager::EVENTS_INTERNAL, 100u>::~CEventQueue()
; decoder-mode: arm
00810ff4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00810ff8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00810ffc  10 40 2d e9                                      push {r4, lr}
00811000  03 30 8f e0                                      add r3, pc, r3
00811004  02 20 93 e7                                      ldr r2, [r3, r2]
00811008  00 40 a0 e1                                      mov r4, r0
0081100c  08 20 82 e2                                      add r2, r2, #8
00811010  08 20 80 e4                                      str r2, [r0], #8
00811014  d5 b0 ff eb                                      bl #0x7fd370
00811018  04 00 84 e2                                      add r0, r4, #4
0081101c  d3 f4 ff eb                                      bl #0x80e370
00811020  04 00 a0 e1                                      mov r0, r4
00811024  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00811028  90 3a 18 00 4c 0a 00 00                          .byte 0x90, 0x3a, 0x18, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x00811030, declared_size=68, range_size=68, mode=arm
; class-group: CEventQueue<CNetPlayerManager::EVENTS_INTERNAL, 100u>
; alias: _ZN11CEventQueueIN17CNetPlayerManager15EVENTS_INTERNALELj100EED0Ev
; demangled: CEventQueue<CNetPlayerManager::EVENTS_INTERNAL, 100u>::~CEventQueue()
; decoder-mode: arm
00811030  34 30 9f e5                                      ldr r3, [pc, #0x34]
00811034  34 20 9f e5                                      ldr r2, [pc, #0x34]
00811038  10 40 2d e9                                      push {r4, lr}
0081103c  03 30 8f e0                                      add r3, pc, r3
00811040  02 20 93 e7                                      ldr r2, [r3, r2]
00811044  00 40 a0 e1                                      mov r4, r0
00811048  08 20 82 e2                                      add r2, r2, #8
0081104c  08 20 80 e4                                      str r2, [r0], #8
00811050  c6 b0 ff eb                                      bl #0x7fd370
00811054  04 00 84 e2                                      add r0, r4, #4
00811058  c4 f4 ff eb                                      bl #0x80e370
0081105c  04 00 a0 e1                                      mov r0, r4
00811060  f6 fc eb eb                                      bl #0x310440
00811064  04 00 a0 e1                                      mov r0, r4
00811068  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081106c  54 3a 18 00 4c 0a 00 00                          .byte 0x54, 0x3a, 0x18, 0x00, 0x4c, 0x0a, 0x00, 0x00
