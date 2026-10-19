; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008246b4, declared_size=4, range_size=4, mode=arm
; class-group: CEventQueue<EVENTS_SIGNINGLLIVE_INTERNAL, 0u>
; alias: _ZN11CEventQueueI28EVENTS_SIGNINGLLIVE_INTERNALLj0EE5ClearEv
; demangled: CEventQueue<EVENTS_SIGNINGLLIVE_INTERNAL, 0u>::Clear()
; decoder-mode: arm
008246b4  5f 67 ff ea                                      b #0x7fe438

; FUNCTION 0x008247b0, declared_size=60, range_size=60, mode=arm
; class-group: CEventQueue<EVENTS_SIGNINGLLIVE_INTERNAL, 0u>
; alias: _ZN11CEventQueueI28EVENTS_SIGNINGLLIVE_INTERNALLj0EED1Ev
; demangled: CEventQueue<EVENTS_SIGNINGLLIVE_INTERNAL, 0u>::~CEventQueue()
; decoder-mode: arm
008247b0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
008247b4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
008247b8  10 40 2d e9                                      push {r4, lr}
008247bc  03 30 8f e0                                      add r3, pc, r3
008247c0  02 20 93 e7                                      ldr r2, [r3, r2]
008247c4  00 40 a0 e1                                      mov r4, r0
008247c8  08 20 82 e2                                      add r2, r2, #8
008247cc  08 20 80 e4                                      str r2, [r0], #8
008247d0  e6 62 ff eb                                      bl #0x7fd370
008247d4  04 00 84 e2                                      add r0, r4, #4
008247d8  e4 a6 ff eb                                      bl #0x80e370
008247dc  04 00 a0 e1                                      mov r0, r4
008247e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008247e4  d4 02 17 00 4c 0a 00 00                          .byte 0xd4, 0x02, 0x17, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x00824864, declared_size=68, range_size=68, mode=arm
; class-group: CEventQueue<EVENTS_SIGNINGLLIVE_INTERNAL, 0u>
; alias: _ZN11CEventQueueI28EVENTS_SIGNINGLLIVE_INTERNALLj0EED0Ev
; demangled: CEventQueue<EVENTS_SIGNINGLLIVE_INTERNAL, 0u>::~CEventQueue()
; decoder-mode: arm
00824864  34 30 9f e5                                      ldr r3, [pc, #0x34]
00824868  34 20 9f e5                                      ldr r2, [pc, #0x34]
0082486c  10 40 2d e9                                      push {r4, lr}
00824870  03 30 8f e0                                      add r3, pc, r3
00824874  02 20 93 e7                                      ldr r2, [r3, r2]
00824878  00 40 a0 e1                                      mov r4, r0
0082487c  08 20 82 e2                                      add r2, r2, #8
00824880  08 20 80 e4                                      str r2, [r0], #8
00824884  b9 62 ff eb                                      bl #0x7fd370
00824888  04 00 84 e2                                      add r0, r4, #4
0082488c  b7 a6 ff eb                                      bl #0x80e370
00824890  04 00 a0 e1                                      mov r0, r4
00824894  e9 ae eb eb                                      bl #0x310440
00824898  04 00 a0 e1                                      mov r0, r4
0082489c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008248a0  20 02 17 00 4c 0a 00 00                          .byte 0x20, 0x02, 0x17, 0x00, 0x4c, 0x0a, 0x00, 0x00
