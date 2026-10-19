; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081a588, declared_size=4, range_size=4, mode=arm
; class-group: CEventQueue<_tSignInEvent, 100u>
; alias: _ZN11CEventQueueI13_tSignInEventLj100EE5ClearEv
; demangled: CEventQueue<_tSignInEvent, 100u>::Clear()
; decoder-mode: arm
0081a588  aa 8f ff ea                                      b #0x7fe438

; FUNCTION 0x0081a778, declared_size=60, range_size=60, mode=arm
; class-group: CEventQueue<_tSignInEvent, 100u>
; alias: _ZN11CEventQueueI13_tSignInEventLj100EED1Ev
; demangled: CEventQueue<_tSignInEvent, 100u>::~CEventQueue()
; decoder-mode: arm
0081a778  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0081a77c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0081a780  10 40 2d e9                                      push {r4, lr}
0081a784  03 30 8f e0                                      add r3, pc, r3
0081a788  02 20 93 e7                                      ldr r2, [r3, r2]
0081a78c  00 40 a0 e1                                      mov r4, r0
0081a790  08 20 82 e2                                      add r2, r2, #8
0081a794  08 20 80 e4                                      str r2, [r0], #8
0081a798  f4 8a ff eb                                      bl #0x7fd370
0081a79c  04 00 84 e2                                      add r0, r4, #4
0081a7a0  f2 ce ff eb                                      bl #0x80e370
0081a7a4  04 00 a0 e1                                      mov r0, r4
0081a7a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081a7ac  0c a3 17 00 4c 0a 00 00                          .byte 0x0c, 0xa3, 0x17, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x0081a870, declared_size=68, range_size=68, mode=arm
; class-group: CEventQueue<_tSignInEvent, 100u>
; alias: _ZN11CEventQueueI13_tSignInEventLj100EED0Ev
; demangled: CEventQueue<_tSignInEvent, 100u>::~CEventQueue()
; decoder-mode: arm
0081a870  34 30 9f e5                                      ldr r3, [pc, #0x34]
0081a874  34 20 9f e5                                      ldr r2, [pc, #0x34]
0081a878  10 40 2d e9                                      push {r4, lr}
0081a87c  03 30 8f e0                                      add r3, pc, r3
0081a880  02 20 93 e7                                      ldr r2, [r3, r2]
0081a884  00 40 a0 e1                                      mov r4, r0
0081a888  08 20 82 e2                                      add r2, r2, #8
0081a88c  08 20 80 e4                                      str r2, [r0], #8
0081a890  b6 8a ff eb                                      bl #0x7fd370
0081a894  04 00 84 e2                                      add r0, r4, #4
0081a898  b4 ce ff eb                                      bl #0x80e370
0081a89c  04 00 a0 e1                                      mov r0, r4
0081a8a0  e6 d6 eb eb                                      bl #0x310440
0081a8a4  04 00 a0 e1                                      mov r0, r4
0081a8a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081a8ac  14 a2 17 00 4c 0a 00 00                          .byte 0x14, 0xa2, 0x17, 0x00, 0x4c, 0x0a, 0x00, 0x00
