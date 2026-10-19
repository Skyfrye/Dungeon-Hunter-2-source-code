; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003ee3ac, declared_size=4, range_size=4, mode=arm
; class-group: QE_PickedUpLiftable
; alias: _ZN19QE_PickedUpLiftableD1Ev
; demangled: QE_PickedUpLiftable::~QE_PickedUpLiftable()
; decoder-mode: arm
003ee3ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ee970, declared_size=52, range_size=52, mode=arm
; class-group: QE_PickedUpLiftable
; alias: _ZN19QE_PickedUpLiftableD0Ev
; demangled: QE_PickedUpLiftable::~QE_PickedUpLiftable()
; decoder-mode: arm
003ee970  24 30 9f e5                                      ldr r3, [pc, #0x24]
003ee974  24 20 9f e5                                      ldr r2, [pc, #0x24]
003ee978  10 40 2d e9                                      push {r4, lr}
003ee97c  03 30 8f e0                                      add r3, pc, r3
003ee980  02 20 93 e7                                      ldr r2, [r3, r2]
003ee984  00 40 a0 e1                                      mov r4, r0
003ee988  08 20 82 e2                                      add r2, r2, #8
003ee98c  00 20 80 e5                                      str r2, [r0]
003ee990  aa 86 fc eb                                      bl #0x310440
003ee994  04 00 a0 e1                                      mov r0, r4
003ee998  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003ee99c  14 61 5a 00 b0 0b 00 00                          .byte 0x14, 0x61, 0x5a, 0x00, 0xb0, 0x0b, 0x00, 0x00
