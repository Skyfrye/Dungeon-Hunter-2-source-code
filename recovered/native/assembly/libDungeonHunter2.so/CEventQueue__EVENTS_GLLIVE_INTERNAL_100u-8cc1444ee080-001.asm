; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081bcd0, declared_size=4, range_size=4, mode=arm
; class-group: CEventQueue<_EVENTS_GLLIVE_INTERNAL, 100u>
; alias: _ZN11CEventQueueI23_EVENTS_GLLIVE_INTERNALLj100EE5ClearEv
; demangled: CEventQueue<_EVENTS_GLLIVE_INTERNAL, 100u>::Clear()
; decoder-mode: arm
0081bcd0  d8 89 ff ea                                      b #0x7fe438

; FUNCTION 0x0081cd44, declared_size=60, range_size=60, mode=arm
; class-group: CEventQueue<_EVENTS_GLLIVE_INTERNAL, 100u>
; alias: _ZN11CEventQueueI23_EVENTS_GLLIVE_INTERNALLj100EED1Ev
; demangled: CEventQueue<_EVENTS_GLLIVE_INTERNAL, 100u>::~CEventQueue()
; decoder-mode: arm
0081cd44  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0081cd48  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0081cd4c  10 40 2d e9                                      push {r4, lr}
0081cd50  03 30 8f e0                                      add r3, pc, r3
0081cd54  02 20 93 e7                                      ldr r2, [r3, r2]
0081cd58  00 40 a0 e1                                      mov r4, r0
0081cd5c  08 20 82 e2                                      add r2, r2, #8
0081cd60  08 20 80 e4                                      str r2, [r0], #8
0081cd64  81 81 ff eb                                      bl #0x7fd370
0081cd68  04 00 84 e2                                      add r0, r4, #4
0081cd6c  7f c5 ff eb                                      bl #0x80e370
0081cd70  04 00 a0 e1                                      mov r0, r4
0081cd74  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081cd78  40 7d 17 00 4c 0a 00 00                          .byte 0x40, 0x7d, 0x17, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x0081cd80, declared_size=68, range_size=68, mode=arm
; class-group: CEventQueue<_EVENTS_GLLIVE_INTERNAL, 100u>
; alias: _ZN11CEventQueueI23_EVENTS_GLLIVE_INTERNALLj100EED0Ev
; demangled: CEventQueue<_EVENTS_GLLIVE_INTERNAL, 100u>::~CEventQueue()
; decoder-mode: arm
0081cd80  34 30 9f e5                                      ldr r3, [pc, #0x34]
0081cd84  34 20 9f e5                                      ldr r2, [pc, #0x34]
0081cd88  10 40 2d e9                                      push {r4, lr}
0081cd8c  03 30 8f e0                                      add r3, pc, r3
0081cd90  02 20 93 e7                                      ldr r2, [r3, r2]
0081cd94  00 40 a0 e1                                      mov r4, r0
0081cd98  08 20 82 e2                                      add r2, r2, #8
0081cd9c  08 20 80 e4                                      str r2, [r0], #8
0081cda0  72 81 ff eb                                      bl #0x7fd370
0081cda4  04 00 84 e2                                      add r0, r4, #4
0081cda8  70 c5 ff eb                                      bl #0x80e370
0081cdac  04 00 a0 e1                                      mov r0, r4
0081cdb0  a2 cd eb eb                                      bl #0x310440
0081cdb4  04 00 a0 e1                                      mov r0, r4
0081cdb8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081cdbc  04 7d 17 00 4c 0a 00 00                          .byte 0x04, 0x7d, 0x17, 0x00, 0x4c, 0x0a, 0x00, 0x00
