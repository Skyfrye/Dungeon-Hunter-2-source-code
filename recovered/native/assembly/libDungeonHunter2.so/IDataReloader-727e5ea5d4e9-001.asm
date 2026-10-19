; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a37d0, declared_size=4, range_size=4, mode=arm
; class-group: IDataReloader
; alias: _ZN13IDataReloaderD1Ev
; demangled: IDataReloader::~IDataReloader()
; decoder-mode: arm
004a37d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a37d4, declared_size=52, range_size=52, mode=arm
; class-group: IDataReloader
; alias: _ZN13IDataReloaderD0Ev
; demangled: IDataReloader::~IDataReloader()
; decoder-mode: arm
004a37d4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004a37d8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004a37dc  10 40 2d e9                                      push {r4, lr}
004a37e0  03 30 8f e0                                      add r3, pc, r3
004a37e4  02 20 93 e7                                      ldr r2, [r3, r2]
004a37e8  00 40 a0 e1                                      mov r4, r0
004a37ec  08 20 82 e2                                      add r2, r2, #8
004a37f0  00 20 80 e5                                      str r2, [r0]
004a37f4  11 b3 f9 eb                                      bl #0x310440
004a37f8  04 00 a0 e1                                      mov r0, r4
004a37fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004a3800  b0 12 4f 00 e8 25 00 00                          .byte 0xb0, 0x12, 0x4f, 0x00, 0xe8, 0x25, 0x00, 0x00
