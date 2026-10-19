; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039611c, declared_size=4, range_size=4, mode=arm
; class-group: QuestEvent
; alias: _ZN10QuestEventD1Ev
; demangled: QuestEvent::~QuestEvent()
; decoder-mode: arm
0039611c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00396250, declared_size=52, range_size=52, mode=arm
; class-group: QuestEvent
; alias: _ZN10QuestEventD0Ev
; demangled: QuestEvent::~QuestEvent()
; decoder-mode: arm
00396250  24 30 9f e5                                      ldr r3, [pc, #0x24]
00396254  24 20 9f e5                                      ldr r2, [pc, #0x24]
00396258  10 40 2d e9                                      push {r4, lr}
0039625c  03 30 8f e0                                      add r3, pc, r3
00396260  02 20 93 e7                                      ldr r2, [r3, r2]
00396264  00 40 a0 e1                                      mov r4, r0
00396268  08 20 82 e2                                      add r2, r2, #8
0039626c  00 20 80 e5                                      str r2, [r0]
00396270  72 e8 fd eb                                      bl #0x310440
00396274  04 00 a0 e1                                      mov r0, r4
00396278  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039627c  34 e8 5f 00 b0 0b 00 00                          .byte 0x34, 0xe8, 0x5f, 0x00, 0xb0, 0x0b, 0x00, 0x00
