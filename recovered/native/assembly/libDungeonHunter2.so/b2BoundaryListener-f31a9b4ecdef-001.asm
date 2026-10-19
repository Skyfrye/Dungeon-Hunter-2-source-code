; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034bc18, declared_size=4, range_size=4, mode=arm
; class-group: b2BoundaryListener
; alias: _ZN18b2BoundaryListenerD1Ev
; demangled: b2BoundaryListener::~b2BoundaryListener()
; decoder-mode: arm
0034bc18  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034bdd8, declared_size=52, range_size=52, mode=arm
; class-group: b2BoundaryListener
; alias: _ZN18b2BoundaryListenerD0Ev
; demangled: b2BoundaryListener::~b2BoundaryListener()
; decoder-mode: arm
0034bdd8  24 30 9f e5                                      ldr r3, [pc, #0x24]
0034bddc  24 20 9f e5                                      ldr r2, [pc, #0x24]
0034bde0  10 40 2d e9                                      push {r4, lr}
0034bde4  03 30 8f e0                                      add r3, pc, r3
0034bde8  02 20 93 e7                                      ldr r2, [r3, r2]
0034bdec  00 40 a0 e1                                      mov r4, r0
0034bdf0  08 20 82 e2                                      add r2, r2, #8
0034bdf4  00 20 80 e5                                      str r2, [r0]
0034bdf8  90 11 ff eb                                      bl #0x310440
0034bdfc  04 00 a0 e1                                      mov r0, r4
0034be00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034be04  ac 8c 64 00 78 1f 00 00                          .byte 0xac, 0x8c, 0x64, 0x00, 0x78, 0x1f, 0x00, 0x00
