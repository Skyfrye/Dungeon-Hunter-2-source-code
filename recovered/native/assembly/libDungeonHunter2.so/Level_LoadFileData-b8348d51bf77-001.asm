; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003f0310, declared_size=52, range_size=52, mode=arm
; class-group: Level::LoadFileData
; alias: _ZN5Level12LoadFileDataD1Ev
; demangled: Level::LoadFileData::~LoadFileData()
; decoder-mode: arm
003f0310  24 30 9f e5                                      ldr r3, [pc, #0x24]
003f0314  24 20 9f e5                                      ldr r2, [pc, #0x24]
003f0318  10 40 2d e9                                      push {r4, lr}
003f031c  03 30 8f e0                                      add r3, pc, r3
003f0320  02 20 93 e7                                      ldr r2, [r3, r2]
003f0324  00 40 a0 e1                                      mov r4, r0
003f0328  08 20 82 e2                                      add r2, r2, #8
003f032c  08 20 80 e4                                      str r2, [r0], #8
003f0330  a3 99 fc eb                                      bl #0x3169c4
003f0334  04 00 a0 e1                                      mov r0, r4
003f0338  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003f033c  74 47 5a 00 20 22 00 00                          .byte 0x74, 0x47, 0x5a, 0x00, 0x20, 0x22, 0x00, 0x00

; FUNCTION 0x003f03ec, declared_size=60, range_size=60, mode=arm
; class-group: Level::LoadFileData
; alias: _ZN5Level12LoadFileDataD0Ev
; demangled: Level::LoadFileData::~LoadFileData()
; decoder-mode: arm
003f03ec  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003f03f0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003f03f4  10 40 2d e9                                      push {r4, lr}
003f03f8  03 30 8f e0                                      add r3, pc, r3
003f03fc  02 20 93 e7                                      ldr r2, [r3, r2]
003f0400  00 40 a0 e1                                      mov r4, r0
003f0404  08 20 82 e2                                      add r2, r2, #8
003f0408  08 20 80 e4                                      str r2, [r0], #8
003f040c  6c 99 fc eb                                      bl #0x3169c4
003f0410  04 00 a0 e1                                      mov r0, r4
003f0414  09 80 fc eb                                      bl #0x310440
003f0418  04 00 a0 e1                                      mov r0, r4
003f041c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003f0420  98 46 5a 00 20 22 00 00                          .byte 0x98, 0x46, 0x5a, 0x00, 0x20, 0x22, 0x00, 0x00
