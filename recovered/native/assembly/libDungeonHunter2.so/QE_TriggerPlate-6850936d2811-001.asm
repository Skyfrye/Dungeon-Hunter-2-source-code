; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039a390, declared_size=4, range_size=4, mode=arm
; class-group: QE_TriggerPlate
; alias: _ZN15QE_TriggerPlateD1Ev
; demangled: QE_TriggerPlate::~QE_TriggerPlate()
; decoder-mode: arm
0039a390  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039a4dc, declared_size=52, range_size=52, mode=arm
; class-group: QE_TriggerPlate
; alias: _ZN15QE_TriggerPlateD0Ev
; demangled: QE_TriggerPlate::~QE_TriggerPlate()
; decoder-mode: arm
0039a4dc  24 30 9f e5                                      ldr r3, [pc, #0x24]
0039a4e0  24 20 9f e5                                      ldr r2, [pc, #0x24]
0039a4e4  10 40 2d e9                                      push {r4, lr}
0039a4e8  03 30 8f e0                                      add r3, pc, r3
0039a4ec  02 20 93 e7                                      ldr r2, [r3, r2]
0039a4f0  00 40 a0 e1                                      mov r4, r0
0039a4f4  08 20 82 e2                                      add r2, r2, #8
0039a4f8  00 20 80 e5                                      str r2, [r0]
0039a4fc  cf d7 fd eb                                      bl #0x310440
0039a500  04 00 a0 e1                                      mov r0, r4
0039a504  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039a508  a8 a5 5f 00 b0 0b 00 00                          .byte 0xa8, 0xa5, 0x5f, 0x00, 0xb0, 0x0b, 0x00, 0x00
