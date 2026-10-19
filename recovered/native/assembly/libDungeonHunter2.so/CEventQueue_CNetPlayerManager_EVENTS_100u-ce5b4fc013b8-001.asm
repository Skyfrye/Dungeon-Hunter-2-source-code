; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00810b74, declared_size=4, range_size=4, mode=arm
; class-group: CEventQueue<CNetPlayerManager::EVENTS, 100u>
; alias: _ZN11CEventQueueIN17CNetPlayerManager6EVENTSELj100EE5ClearEv
; demangled: CEventQueue<CNetPlayerManager::EVENTS, 100u>::Clear()
; decoder-mode: arm
00810b74  2f b6 ff ea                                      b #0x7fe438

; FUNCTION 0x00810fb8, declared_size=60, range_size=60, mode=arm
; class-group: CEventQueue<CNetPlayerManager::EVENTS, 100u>
; alias: _ZN11CEventQueueIN17CNetPlayerManager6EVENTSELj100EED1Ev
; demangled: CEventQueue<CNetPlayerManager::EVENTS, 100u>::~CEventQueue()
; decoder-mode: arm
00810fb8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00810fbc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00810fc0  10 40 2d e9                                      push {r4, lr}
00810fc4  03 30 8f e0                                      add r3, pc, r3
00810fc8  02 20 93 e7                                      ldr r2, [r3, r2]
00810fcc  00 40 a0 e1                                      mov r4, r0
00810fd0  08 20 82 e2                                      add r2, r2, #8
00810fd4  08 20 80 e4                                      str r2, [r0], #8
00810fd8  e4 b0 ff eb                                      bl #0x7fd370
00810fdc  04 00 84 e2                                      add r0, r4, #4
00810fe0  e2 f4 ff eb                                      bl #0x80e370
00810fe4  04 00 a0 e1                                      mov r0, r4
00810fe8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00810fec  cc 3a 18 00 4c 0a 00 00                          .byte 0xcc, 0x3a, 0x18, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x00811074, declared_size=68, range_size=68, mode=arm
; class-group: CEventQueue<CNetPlayerManager::EVENTS, 100u>
; alias: _ZN11CEventQueueIN17CNetPlayerManager6EVENTSELj100EED0Ev
; demangled: CEventQueue<CNetPlayerManager::EVENTS, 100u>::~CEventQueue()
; decoder-mode: arm
00811074  34 30 9f e5                                      ldr r3, [pc, #0x34]
00811078  34 20 9f e5                                      ldr r2, [pc, #0x34]
0081107c  10 40 2d e9                                      push {r4, lr}
00811080  03 30 8f e0                                      add r3, pc, r3
00811084  02 20 93 e7                                      ldr r2, [r3, r2]
00811088  00 40 a0 e1                                      mov r4, r0
0081108c  08 20 82 e2                                      add r2, r2, #8
00811090  08 20 80 e4                                      str r2, [r0], #8
00811094  b5 b0 ff eb                                      bl #0x7fd370
00811098  04 00 84 e2                                      add r0, r4, #4
0081109c  b3 f4 ff eb                                      bl #0x80e370
008110a0  04 00 a0 e1                                      mov r0, r4
008110a4  e5 fc eb eb                                      bl #0x310440
008110a8  04 00 a0 e1                                      mov r0, r4
008110ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008110b0  10 3a 18 00 4c 0a 00 00                          .byte 0x10, 0x3a, 0x18, 0x00, 0x4c, 0x0a, 0x00, 0x00
