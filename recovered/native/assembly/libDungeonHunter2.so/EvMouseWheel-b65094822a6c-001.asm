; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031d8f0, declared_size=4, range_size=4, mode=arm
; class-group: EvMouseWheel
; alias: _ZN12EvMouseWheelD1Ev
; demangled: EvMouseWheel::~EvMouseWheel()
; decoder-mode: arm
0031d8f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fcf0, declared_size=52, range_size=52, mode=arm
; class-group: EvMouseWheel
; alias: _ZN12EvMouseWheelD0Ev
; demangled: EvMouseWheel::~EvMouseWheel()
; decoder-mode: arm
0031fcf0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031fcf4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0031fcf8  10 40 2d e9                                      push {r4, lr}
0031fcfc  03 30 8f e0                                      add r3, pc, r3
0031fd00  02 20 93 e7                                      ldr r2, [r3, r2]
0031fd04  00 40 a0 e1                                      mov r4, r0
0031fd08  08 20 82 e2                                      add r2, r2, #8
0031fd0c  00 20 80 e5                                      str r2, [r0]
0031fd10  ca c1 ff eb                                      bl #0x310440
0031fd14  04 00 a0 e1                                      mov r0, r4
0031fd18  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031fd1c  94 4d 67 00 b0 0b 00 00                          .byte 0x94, 0x4d, 0x67, 0x00, 0xb0, 0x0b, 0x00, 0x00
