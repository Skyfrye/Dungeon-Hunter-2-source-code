; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6c24, declared_size=4, range_size=4, mode=arm
; class-group: Structs::TileOffset
; alias: _ZN7Structs10TileOffsetD2Ev
; demangled: Structs::TileOffset::~TileOffset()
; decoder-mode: arm
004c6c24  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c28, declared_size=4, range_size=4, mode=arm
; class-group: Structs::TileOffset
; alias: _ZN7Structs10TileOffsetD1Ev
; demangled: Structs::TileOffset::~TileOffset()
; decoder-mode: arm
004c6c28  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c2c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::TileOffset
; alias: _ZN7Structs10TileOffset8finalizeEv
; demangled: Structs::TileOffset::finalize()
; decoder-mode: arm
004c6c2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce1d0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::TileOffset
; alias: _ZN7Structs10TileOffsetD0Ev
; demangled: Structs::TileOffset::~TileOffset()
; decoder-mode: arm
004ce1d0  10 40 2d e9                                      push {r4, lr}
004ce1d4  00 40 a0 e1                                      mov r4, r0
004ce1d8  92 e2 ff eb                                      bl #0x4c6c28
004ce1dc  04 00 a0 e1                                      mov r0, r4
004ce1e0  96 08 f9 eb                                      bl #0x310440
004ce1e4  04 00 a0 e1                                      mov r0, r4
004ce1e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004dbbcc, declared_size=208, range_size=208, mode=arm
; class-group: Structs::TileOffset
; alias: _ZN7Structs10TileOffset4readEP11IStreamBase
; demangled: Structs::TileOffset::read(IStreamBase*)
; decoder-mode: arm
004dbbcc  70 40 2d e9                                      push {r4, r5, r6, lr}
004dbbd0  04 60 80 e2                                      add r6, r0, #4
004dbbd4  08 d0 4d e2                                      sub sp, sp, #8
004dbbd8  00 40 a0 e1                                      mov r4, r0
004dbbdc  01 50 a0 e1                                      mov r5, r1
004dbbe0  01 00 a0 e1                                      mov r0, r1
004dbbe4  06 10 a0 e1                                      mov r1, r6
004dbbe8  af ff ff eb                                      bl #0x4dbaac
004dbbec  01 30 a0 e3                                      mov r3, #1
004dbbf0  00 00 53 e3                                      cmp r3, #0
004dbbf4  04 30 8d e5                                      str r3, [sp, #4]
004dbbf8  0e 00 00 1a                                      bne #0x4dbc38
004dbbfc  05 30 84 e2                                      add r3, r4, #5
004dbc00  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dbc04  01 20 53 e5                                      ldrb r2, [r3, #-1]
004dbc08  06 00 53 e1                                      cmp r3, r6
004dbc0c  02 20 21 e0                                      eor r2, r1, r2
004dbc10  01 20 43 e5                                      strb r2, [r3, #-1]
004dbc14  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dbc18  01 20 22 e0                                      eor r2, r2, r1
004dbc1c  01 20 c6 e5                                      strb r2, [r6, #1]
004dbc20  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dbc24  01 60 46 e2                                      sub r6, r6, #1
004dbc28  01 20 22 e0                                      eor r2, r2, r1
004dbc2c  01 20 43 e5                                      strb r2, [r3, #-1]
004dbc30  01 30 83 e2                                      add r3, r3, #1
004dbc34  f1 ff ff 3a                                      blo #0x4dbc00
004dbc38  06 60 84 e2                                      add r6, r4, #6
004dbc3c  05 00 a0 e1                                      mov r0, r5
004dbc40  06 10 a0 e1                                      mov r1, r6
004dbc44  98 ff ff eb                                      bl #0x4dbaac
004dbc48  01 30 a0 e3                                      mov r3, #1
004dbc4c  00 00 53 e3                                      cmp r3, #0
004dbc50  04 30 8d e5                                      str r3, [sp, #4]
004dbc54  0e 00 00 1a                                      bne #0x4dbc94
004dbc58  07 40 84 e2                                      add r4, r4, #7
004dbc5c  01 20 d6 e5                                      ldrb r2, [r6, #1]
004dbc60  01 30 54 e5                                      ldrb r3, [r4, #-1]
004dbc64  04 00 56 e1                                      cmp r6, r4
004dbc68  03 30 22 e0                                      eor r3, r2, r3
004dbc6c  01 30 44 e5                                      strb r3, [r4, #-1]
004dbc70  01 20 d6 e5                                      ldrb r2, [r6, #1]
004dbc74  02 30 23 e0                                      eor r3, r3, r2
004dbc78  01 30 c6 e5                                      strb r3, [r6, #1]
004dbc7c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004dbc80  01 60 46 e2                                      sub r6, r6, #1
004dbc84  02 30 23 e0                                      eor r3, r3, r2
004dbc88  01 30 44 e5                                      strb r3, [r4, #-1]
004dbc8c  01 40 84 e2                                      add r4, r4, #1
004dbc90  f1 ff ff 8a                                      bhi #0x4dbc5c
004dbc94  08 d0 8d e2                                      add sp, sp, #8
004dbc98  70 80 bd e8                                      pop {r4, r5, r6, pc}
