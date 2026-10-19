; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a1630, declared_size=4, range_size=4, mode=arm
; class-group: QE_OpenGameObject
; alias: _ZN17QE_OpenGameObjectD1Ev
; demangled: QE_OpenGameObject::~QE_OpenGameObject()
; decoder-mode: arm
003a1630  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a16d4, declared_size=52, range_size=52, mode=arm
; class-group: QE_OpenGameObject
; alias: _ZN17QE_OpenGameObjectD0Ev
; demangled: QE_OpenGameObject::~QE_OpenGameObject()
; decoder-mode: arm
003a16d4  24 30 9f e5                                      ldr r3, [pc, #0x24]
003a16d8  24 20 9f e5                                      ldr r2, [pc, #0x24]
003a16dc  10 40 2d e9                                      push {r4, lr}
003a16e0  03 30 8f e0                                      add r3, pc, r3
003a16e4  02 20 93 e7                                      ldr r2, [r3, r2]
003a16e8  00 40 a0 e1                                      mov r4, r0
003a16ec  08 20 82 e2                                      add r2, r2, #8
003a16f0  00 20 80 e5                                      str r2, [r0]
003a16f4  51 bb fd eb                                      bl #0x310440
003a16f8  04 00 a0 e1                                      mov r0, r4
003a16fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a1700  b0 33 5f 00 b0 0b 00 00                          .byte 0xb0, 0x33, 0x5f, 0x00, 0xb0, 0x0b, 0x00, 0x00
