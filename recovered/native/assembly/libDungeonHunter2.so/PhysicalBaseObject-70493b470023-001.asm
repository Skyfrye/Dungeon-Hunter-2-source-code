; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0046e6b0, declared_size=4, range_size=4, mode=arm
; class-group: PhysicalBaseObject
; alias: _ZN18PhysicalBaseObjectD1Ev
; demangled: PhysicalBaseObject::~PhysicalBaseObject()
; decoder-mode: arm
0046e6b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0046e9a0, declared_size=52, range_size=52, mode=arm
; class-group: PhysicalBaseObject
; alias: _ZN18PhysicalBaseObjectD0Ev
; demangled: PhysicalBaseObject::~PhysicalBaseObject()
; decoder-mode: arm
0046e9a0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0046e9a4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0046e9a8  10 40 2d e9                                      push {r4, lr}
0046e9ac  03 30 8f e0                                      add r3, pc, r3
0046e9b0  02 20 93 e7                                      ldr r2, [r3, r2]
0046e9b4  00 40 a0 e1                                      mov r4, r0
0046e9b8  08 20 82 e2                                      add r2, r2, #8
0046e9bc  00 20 80 e5                                      str r2, [r0]
0046e9c0  9e 86 fa eb                                      bl #0x310440
0046e9c4  04 00 a0 e1                                      mov r0, r4
0046e9c8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0046e9cc  e4 60 52 00 c4 42 00 00                          .byte 0xe4, 0x60, 0x52, 0x00, 0xc4, 0x42, 0x00, 0x00
