; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003bffdc, declared_size=4, range_size=4, mode=arm
; class-group: CharState
; alias: _ZN9CharStateD1Ev
; demangled: CharState::~CharState()
; decoder-mode: arm
003bffdc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0684, declared_size=52, range_size=52, mode=arm
; class-group: CharState
; alias: _ZN9CharStateD0Ev
; demangled: CharState::~CharState()
; decoder-mode: arm
003c0684  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c0688  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c068c  10 40 2d e9                                      push {r4, lr}
003c0690  03 30 8f e0                                      add r3, pc, r3
003c0694  02 20 93 e7                                      ldr r2, [r3, r2]
003c0698  00 40 a0 e1                                      mov r4, r0
003c069c  08 20 82 e2                                      add r2, r2, #8
003c06a0  00 20 80 e5                                      str r2, [r0]
003c06a4  65 3f fd eb                                      bl #0x310440
003c06a8  04 00 a0 e1                                      mov r0, r4
003c06ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c06b0  00 44 5d 00 08 2a 00 00                          .byte 0x00, 0x44, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00
