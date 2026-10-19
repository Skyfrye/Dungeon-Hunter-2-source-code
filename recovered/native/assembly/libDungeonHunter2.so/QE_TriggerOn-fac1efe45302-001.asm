; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00399314, declared_size=4, range_size=4, mode=arm
; class-group: QE_TriggerOn
; alias: _ZN12QE_TriggerOnD1Ev
; demangled: QE_TriggerOn::~QE_TriggerOn()
; decoder-mode: arm
00399314  1e ff 2f e1                                      bx lr

; FUNCTION 0x00399368, declared_size=52, range_size=52, mode=arm
; class-group: QE_TriggerOn
; alias: _ZN12QE_TriggerOnD0Ev
; demangled: QE_TriggerOn::~QE_TriggerOn()
; decoder-mode: arm
00399368  24 30 9f e5                                      ldr r3, [pc, #0x24]
0039936c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00399370  10 40 2d e9                                      push {r4, lr}
00399374  03 30 8f e0                                      add r3, pc, r3
00399378  02 20 93 e7                                      ldr r2, [r3, r2]
0039937c  00 40 a0 e1                                      mov r4, r0
00399380  08 20 82 e2                                      add r2, r2, #8
00399384  00 20 80 e5                                      str r2, [r0]
00399388  2c dc fd eb                                      bl #0x310440
0039938c  04 00 a0 e1                                      mov r0, r4
00399390  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00399394  1c b7 5f 00 b0 0b 00 00                          .byte 0x1c, 0xb7, 0x5f, 0x00, 0xb0, 0x0b, 0x00, 0x00
