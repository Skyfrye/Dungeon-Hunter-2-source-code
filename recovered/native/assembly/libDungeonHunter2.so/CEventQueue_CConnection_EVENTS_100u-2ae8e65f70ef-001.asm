; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008259a4, declared_size=4, range_size=4, mode=arm
; class-group: CEventQueue<CConnection::EVENTS, 100u>
; alias: _ZN11CEventQueueIN11CConnection6EVENTSELj100EE5ClearEv
; demangled: CEventQueue<CConnection::EVENTS, 100u>::Clear()
; decoder-mode: arm
008259a4  a3 62 ff ea                                      b #0x7fe438

; FUNCTION 0x00826020, declared_size=60, range_size=60, mode=arm
; class-group: CEventQueue<CConnection::EVENTS, 100u>
; alias: _ZN11CEventQueueIN11CConnection6EVENTSELj100EED1Ev
; demangled: CEventQueue<CConnection::EVENTS, 100u>::~CEventQueue()
; decoder-mode: arm
00826020  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00826024  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00826028  10 40 2d e9                                      push {r4, lr}
0082602c  03 30 8f e0                                      add r3, pc, r3
00826030  02 20 93 e7                                      ldr r2, [r3, r2]
00826034  00 40 a0 e1                                      mov r4, r0
00826038  08 20 82 e2                                      add r2, r2, #8
0082603c  08 20 80 e4                                      str r2, [r0], #8
00826040  ca 5c ff eb                                      bl #0x7fd370
00826044  04 00 84 e2                                      add r0, r4, #4
00826048  c8 a0 ff eb                                      bl #0x80e370
0082604c  04 00 a0 e1                                      mov r0, r4
00826050  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00826054  64 ea 16 00 4c 0a 00 00                          .byte 0x64, 0xea, 0x16, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x00826494, declared_size=68, range_size=68, mode=arm
; class-group: CEventQueue<CConnection::EVENTS, 100u>
; alias: _ZN11CEventQueueIN11CConnection6EVENTSELj100EED0Ev
; demangled: CEventQueue<CConnection::EVENTS, 100u>::~CEventQueue()
; decoder-mode: arm
00826494  34 30 9f e5                                      ldr r3, [pc, #0x34]
00826498  34 20 9f e5                                      ldr r2, [pc, #0x34]
0082649c  10 40 2d e9                                      push {r4, lr}
008264a0  03 30 8f e0                                      add r3, pc, r3
008264a4  02 20 93 e7                                      ldr r2, [r3, r2]
008264a8  00 40 a0 e1                                      mov r4, r0
008264ac  08 20 82 e2                                      add r2, r2, #8
008264b0  08 20 80 e4                                      str r2, [r0], #8
008264b4  ad 5b ff eb                                      bl #0x7fd370
008264b8  04 00 84 e2                                      add r0, r4, #4
008264bc  ab 9f ff eb                                      bl #0x80e370
008264c0  04 00 a0 e1                                      mov r0, r4
008264c4  dd a7 eb eb                                      bl #0x310440
008264c8  04 00 a0 e1                                      mov r0, r4
008264cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008264d0  f0 e5 16 00 4c 0a 00 00                          .byte 0xf0, 0xe5, 0x16, 0x00, 0x4c, 0x0a, 0x00, 0x00
