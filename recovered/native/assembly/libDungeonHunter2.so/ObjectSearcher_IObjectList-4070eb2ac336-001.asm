; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038aabc, declared_size=4, range_size=4, mode=arm
; class-group: ObjectSearcher::IObjectList
; alias: _ZN14ObjectSearcher11IObjectListD1Ev
; demangled: ObjectSearcher::IObjectList::~IObjectList()
; decoder-mode: arm
0038aabc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038b2cc, declared_size=52, range_size=52, mode=arm
; class-group: ObjectSearcher::IObjectList
; alias: _ZN14ObjectSearcher11IObjectListD0Ev
; demangled: ObjectSearcher::IObjectList::~IObjectList()
; decoder-mode: arm
0038b2cc  24 30 9f e5                                      ldr r3, [pc, #0x24]
0038b2d0  24 20 9f e5                                      ldr r2, [pc, #0x24]
0038b2d4  10 40 2d e9                                      push {r4, lr}
0038b2d8  03 30 8f e0                                      add r3, pc, r3
0038b2dc  02 20 93 e7                                      ldr r2, [r3, r2]
0038b2e0  00 40 a0 e1                                      mov r4, r0
0038b2e4  08 20 82 e2                                      add r2, r2, #8
0038b2e8  00 20 80 e5                                      str r2, [r0]
0038b2ec  53 14 fe eb                                      bl #0x310440
0038b2f0  04 00 a0 e1                                      mov r0, r4
0038b2f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0038b2f8  b8 97 60 00 b8 28 00 00                          .byte 0xb8, 0x97, 0x60, 0x00, 0xb8, 0x28, 0x00, 0x00
