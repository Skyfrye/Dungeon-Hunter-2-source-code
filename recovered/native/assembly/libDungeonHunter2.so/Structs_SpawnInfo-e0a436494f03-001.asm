; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7ca4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SpawnInfo
; alias: _ZN7Structs9SpawnInfoD2Ev
; demangled: Structs::SpawnInfo::~SpawnInfo()
; decoder-mode: arm
004c7ca4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c7ca8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SpawnInfo
; alias: _ZN7Structs9SpawnInfoD1Ev
; demangled: Structs::SpawnInfo::~SpawnInfo()
; decoder-mode: arm
004c7ca8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c7cac, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SpawnInfo
; alias: _ZN7Structs9SpawnInfo8finalizeEv
; demangled: Structs::SpawnInfo::finalize()
; decoder-mode: arm
004c7cac  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cdc90, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SpawnInfo
; alias: _ZN7Structs9SpawnInfoD0Ev
; demangled: Structs::SpawnInfo::~SpawnInfo()
; decoder-mode: arm
004cdc90  10 40 2d e9                                      push {r4, lr}
004cdc94  00 40 a0 e1                                      mov r4, r0
004cdc98  02 e8 ff eb                                      bl #0x4c7ca8
004cdc9c  04 00 a0 e1                                      mov r0, r4
004cdca0  e6 09 f9 eb                                      bl #0x310440
004cdca4  04 00 a0 e1                                      mov r0, r4
004cdca8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00502c98, declared_size=300, range_size=300, mode=arm
; class-group: Structs::SpawnInfo
; alias: _ZN7Structs9SpawnInfo4readEP11IStreamBase
; demangled: Structs::SpawnInfo::read(IStreamBase*)
; decoder-mode: arm
00502c98  30 40 2d e9                                      push {r4, r5, lr}
00502c9c  00 40 a0 e1                                      mov r4, r0
00502ca0  0c d0 4d e2                                      sub sp, sp, #0xc
00502ca4  01 00 a0 e1                                      mov r0, r1
00502ca8  01 50 a0 e1                                      mov r5, r1
00502cac  04 10 84 e2                                      add r1, r4, #4
00502cb0  f6 58 fd eb                                      bl #0x459090
00502cb4  01 30 a0 e3                                      mov r3, #1
00502cb8  00 00 53 e3                                      cmp r3, #0
00502cbc  04 30 8d e5                                      str r3, [sp, #4]
00502cc0  0f 00 00 1a                                      bne #0x502d04
00502cc4  05 30 84 e2                                      add r3, r4, #5
00502cc8  06 20 84 e2                                      add r2, r4, #6
00502ccc  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502cd0  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502cd4  02 00 53 e1                                      cmp r3, r2
00502cd8  01 10 20 e0                                      eor r1, r0, r1
00502cdc  01 10 43 e5                                      strb r1, [r3, #-1]
00502ce0  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502ce4  00 10 21 e0                                      eor r1, r1, r0
00502ce8  01 10 c2 e5                                      strb r1, [r2, #1]
00502cec  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502cf0  01 20 42 e2                                      sub r2, r2, #1
00502cf4  00 10 21 e0                                      eor r1, r1, r0
00502cf8  01 10 43 e5                                      strb r1, [r3, #-1]
00502cfc  01 30 83 e2                                      add r3, r3, #1
00502d00  f1 ff ff 3a                                      blo #0x502ccc
00502d04  05 00 a0 e1                                      mov r0, r5
00502d08  08 10 84 e2                                      add r1, r4, #8
00502d0c  df 58 fd eb                                      bl #0x459090
00502d10  01 30 a0 e3                                      mov r3, #1
00502d14  00 00 53 e3                                      cmp r3, #0
00502d18  04 30 8d e5                                      str r3, [sp, #4]
00502d1c  0f 00 00 1a                                      bne #0x502d60
00502d20  09 30 84 e2                                      add r3, r4, #9
00502d24  0a 20 84 e2                                      add r2, r4, #0xa
00502d28  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502d2c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502d30  03 00 52 e1                                      cmp r2, r3
00502d34  01 10 20 e0                                      eor r1, r0, r1
00502d38  01 10 43 e5                                      strb r1, [r3, #-1]
00502d3c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502d40  00 10 21 e0                                      eor r1, r1, r0
00502d44  01 10 c2 e5                                      strb r1, [r2, #1]
00502d48  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502d4c  01 20 42 e2                                      sub r2, r2, #1
00502d50  00 10 21 e0                                      eor r1, r1, r0
00502d54  01 10 43 e5                                      strb r1, [r3, #-1]
00502d58  01 30 83 e2                                      add r3, r3, #1
00502d5c  f1 ff ff 8a                                      bhi #0x502d28
00502d60  05 00 a0 e1                                      mov r0, r5
00502d64  0c 10 84 e2                                      add r1, r4, #0xc
00502d68  c8 58 fd eb                                      bl #0x459090
00502d6c  01 30 a0 e3                                      mov r3, #1
00502d70  00 00 53 e3                                      cmp r3, #0
00502d74  04 30 8d e5                                      str r3, [sp, #4]
00502d78  0f 00 00 1a                                      bne #0x502dbc
00502d7c  0e 30 84 e2                                      add r3, r4, #0xe
00502d80  0d 40 84 e2                                      add r4, r4, #0xd
00502d84  01 10 d3 e5                                      ldrb r1, [r3, #1]
00502d88  01 20 54 e5                                      ldrb r2, [r4, #-1]
00502d8c  03 00 54 e1                                      cmp r4, r3
00502d90  02 20 21 e0                                      eor r2, r1, r2
00502d94  01 20 44 e5                                      strb r2, [r4, #-1]
00502d98  01 10 d3 e5                                      ldrb r1, [r3, #1]
00502d9c  01 20 22 e0                                      eor r2, r2, r1
00502da0  01 20 c3 e5                                      strb r2, [r3, #1]
00502da4  01 10 54 e5                                      ldrb r1, [r4, #-1]
00502da8  01 30 43 e2                                      sub r3, r3, #1
00502dac  01 20 22 e0                                      eor r2, r2, r1
00502db0  01 20 44 e5                                      strb r2, [r4, #-1]
00502db4  01 40 84 e2                                      add r4, r4, #1
00502db8  f1 ff ff 3a                                      blo #0x502d84
00502dbc  0c d0 8d e2                                      add sp, sp, #0xc
00502dc0  30 80 bd e8                                      pop {r4, r5, pc}
