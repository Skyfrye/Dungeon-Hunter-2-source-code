; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003b38c0, declared_size=52, range_size=52, mode=arm
; class-group: POFaerie
; alias: _ZN8POFaerieD1Ev
; demangled: POFaerie::~POFaerie()
; decoder-mode: arm
003b38c0  24 30 9f e5                                      ldr r3, [pc, #0x24]
003b38c4  24 20 9f e5                                      ldr r2, [pc, #0x24]
003b38c8  10 40 2d e9                                      push {r4, lr}
003b38cc  03 30 8f e0                                      add r3, pc, r3
003b38d0  02 20 93 e7                                      ldr r2, [r3, r2]
003b38d4  00 40 a0 e1                                      mov r4, r0
003b38d8  08 20 82 e2                                      add r2, r2, #8
003b38dc  00 20 80 e5                                      str r2, [r0]
003b38e0  8e ed 02 eb                                      bl #0x46ef20
003b38e4  04 00 a0 e1                                      mov r0, r4
003b38e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003b38ec  c4 11 5e 00 2c 12 00 00                          .byte 0xc4, 0x11, 0x5e, 0x00, 0x2c, 0x12, 0x00, 0x00

; FUNCTION 0x003b44d0, declared_size=60, range_size=60, mode=arm
; class-group: POFaerie
; alias: _ZN8POFaerieD0Ev
; demangled: POFaerie::~POFaerie()
; decoder-mode: arm
003b44d0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003b44d4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003b44d8  10 40 2d e9                                      push {r4, lr}
003b44dc  03 30 8f e0                                      add r3, pc, r3
003b44e0  02 20 93 e7                                      ldr r2, [r3, r2]
003b44e4  00 40 a0 e1                                      mov r4, r0
003b44e8  08 20 82 e2                                      add r2, r2, #8
003b44ec  00 20 80 e5                                      str r2, [r0]
003b44f0  8a ea 02 eb                                      bl #0x46ef20
003b44f4  04 00 a0 e1                                      mov r0, r4
003b44f8  d0 6f fd eb                                      bl #0x310440
003b44fc  04 00 a0 e1                                      mov r0, r4
003b4500  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003b4504  b4 05 5e 00 2c 12 00 00                          .byte 0xb4, 0x05, 0x5e, 0x00, 0x2c, 0x12, 0x00, 0x00
