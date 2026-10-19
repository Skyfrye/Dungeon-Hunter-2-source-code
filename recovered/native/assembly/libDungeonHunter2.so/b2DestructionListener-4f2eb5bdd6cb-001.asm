; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034bc14, declared_size=4, range_size=4, mode=arm
; class-group: b2DestructionListener
; alias: _ZN21b2DestructionListenerD1Ev
; demangled: b2DestructionListener::~b2DestructionListener()
; decoder-mode: arm
0034bc14  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034bd70, declared_size=52, range_size=52, mode=arm
; class-group: b2DestructionListener
; alias: _ZN21b2DestructionListenerD0Ev
; demangled: b2DestructionListener::~b2DestructionListener()
; decoder-mode: arm
0034bd70  24 30 9f e5                                      ldr r3, [pc, #0x24]
0034bd74  24 20 9f e5                                      ldr r2, [pc, #0x24]
0034bd78  10 40 2d e9                                      push {r4, lr}
0034bd7c  03 30 8f e0                                      add r3, pc, r3
0034bd80  02 20 93 e7                                      ldr r2, [r3, r2]
0034bd84  00 40 a0 e1                                      mov r4, r0
0034bd88  08 20 82 e2                                      add r2, r2, #8
0034bd8c  00 20 80 e5                                      str r2, [r0]
0034bd90  aa 11 ff eb                                      bl #0x310440
0034bd94  04 00 a0 e1                                      mov r0, r4
0034bd98  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034bd9c  14 8d 64 00 18 0a 00 00                          .byte 0x14, 0x8d, 0x64, 0x00, 0x18, 0x0a, 0x00, 0x00
