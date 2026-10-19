; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033b438, declared_size=4, range_size=4, mode=arm
; class-group: Rct<short>
; alias: _ZN3RctIsED1Ev
; demangled: Rct<short>::~Rct()
; decoder-mode: arm
0033b438  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033b4a4, declared_size=52, range_size=52, mode=arm
; class-group: Rct<short>
; alias: _ZN3RctIsED0Ev
; demangled: Rct<short>::~Rct()
; decoder-mode: arm
0033b4a4  24 30 9f e5                                      ldr r3, [pc, #0x24]
0033b4a8  24 20 9f e5                                      ldr r2, [pc, #0x24]
0033b4ac  10 40 2d e9                                      push {r4, lr}
0033b4b0  03 30 8f e0                                      add r3, pc, r3
0033b4b4  02 20 93 e7                                      ldr r2, [r3, r2]
0033b4b8  00 40 a0 e1                                      mov r4, r0
0033b4bc  08 20 82 e2                                      add r2, r2, #8
0033b4c0  00 20 80 e5                                      str r2, [r0]
0033b4c4  dd 53 ff eb                                      bl #0x310440
0033b4c8  04 00 a0 e1                                      mov r0, r4
0033b4cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033b4d0  e0 95 65 00 84 3d 00 00                          .byte 0xe0, 0x95, 0x65, 0x00, 0x84, 0x3d, 0x00, 0x00
