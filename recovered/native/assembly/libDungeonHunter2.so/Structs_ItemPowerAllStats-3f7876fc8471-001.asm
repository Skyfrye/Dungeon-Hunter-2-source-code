; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d68ec, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerAllStats
; alias: _ZN7Structs17ItemPowerAllStats8finalizeEv
; demangled: Structs::ItemPowerAllStats::finalize()
; decoder-mode: arm
004d68ec  70 40 2d e9                                      push {r4, r5, r6, lr}
004d68f0  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d68f4  00 50 a0 e1                                      mov r5, r0
004d68f8  00 00 53 e3                                      cmp r3, #0
004d68fc  12 00 00 0a                                      beq #0x4d694c
004d6900  04 00 13 e5                                      ldr r0, [r3, #-4]
004d6904  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d6908  00 00 53 e1                                      cmp r3, r0
004d690c  01 00 00 1a                                      bne #0x4d6918
004d6910  08 00 00 ea                                      b #0x4d6938
004d6914  04 00 a0 e1                                      mov r0, r4
004d6918  10 40 40 e2                                      sub r4, r0, #0x10
004d691c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6920  04 00 a0 e1                                      mov r0, r4
004d6924  0f e0 a0 e1                                      mov lr, pc
004d6928  00 f0 93 e5                                      ldr pc, [r3]
004d692c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6930  04 00 50 e1                                      cmp r0, r4
004d6934  f6 ff ff 1a                                      bne #0x4d6914
004d6938  08 00 40 e2                                      sub r0, r0, #8
004d693c  bf e6 f8 eb                                      bl #0x310440
004d6940  00 30 a0 e3                                      mov r3, #0
004d6944  0c 30 85 e5                                      str r3, [r5, #0xc]
004d6948  10 30 85 e5                                      str r3, [r5, #0x10]
004d694c  05 00 a0 e1                                      mov r0, r5
004d6950  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d6954  78 fb ff ea                                      b #0x4d573c

; FUNCTION 0x004d9930, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerAllStats
; alias: _ZN7Structs17ItemPowerAllStatsD1Ev
; demangled: Structs::ItemPowerAllStats::~ItemPowerAllStats()
; decoder-mode: arm
004d9930  70 40 2d e9                                      push {r4, r5, r6, lr}
004d9934  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d9938  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d993c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d9940  03 30 8f e0                                      add r3, pc, r3
004d9944  02 20 93 e7                                      ldr r2, [r3, r2]
004d9948  00 00 51 e3                                      cmp r1, #0
004d994c  00 50 a0 e1                                      mov r5, r0
004d9950  08 20 82 e2                                      add r2, r2, #8
004d9954  00 20 80 e5                                      str r2, [r0]
004d9958  0f 00 00 0a                                      beq #0x4d999c
004d995c  04 00 11 e5                                      ldr r0, [r1, #-4]
004d9960  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d9964  00 00 51 e1                                      cmp r1, r0
004d9968  01 00 00 1a                                      bne #0x4d9974
004d996c  08 00 00 ea                                      b #0x4d9994
004d9970  04 00 a0 e1                                      mov r0, r4
004d9974  10 40 40 e2                                      sub r4, r0, #0x10
004d9978  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d997c  04 00 a0 e1                                      mov r0, r4
004d9980  0f e0 a0 e1                                      mov lr, pc
004d9984  00 f0 93 e5                                      ldr pc, [r3]
004d9988  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d998c  04 00 50 e1                                      cmp r0, r4
004d9990  f6 ff ff 1a                                      bne #0x4d9970
004d9994  08 00 40 e2                                      sub r0, r0, #8
004d9998  a8 da f8 eb                                      bl #0x310440
004d999c  05 00 a0 e1                                      mov r0, r5
004d99a0  12 f4 ff eb                                      bl #0x4d69f0
004d99a4  05 00 a0 e1                                      mov r0, r5
004d99a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d99ac  50 b1 4b 00 b8 34 00 00                          .byte 0x50, 0xb1, 0x4b, 0x00, 0xb8, 0x34, 0x00, 0x00

; FUNCTION 0x004d99b4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerAllStats
; alias: _ZN7Structs17ItemPowerAllStatsD0Ev
; demangled: Structs::ItemPowerAllStats::~ItemPowerAllStats()
; decoder-mode: arm
004d99b4  10 40 2d e9                                      push {r4, lr}
004d99b8  00 40 a0 e1                                      mov r4, r0
004d99bc  db ff ff eb                                      bl #0x4d9930
004d99c0  04 00 a0 e1                                      mov r0, r4
004d99c4  9d da f8 eb                                      bl #0x310440
004d99c8  04 00 a0 e1                                      mov r0, r4
004d99cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d99d0, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerAllStats
; alias: _ZN7Structs17ItemPowerAllStatsD2Ev
; demangled: Structs::ItemPowerAllStats::~ItemPowerAllStats()
; decoder-mode: arm
004d99d0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d99d4  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d99d8  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d99dc  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d99e0  03 30 8f e0                                      add r3, pc, r3
004d99e4  02 20 93 e7                                      ldr r2, [r3, r2]
004d99e8  00 00 51 e3                                      cmp r1, #0
004d99ec  00 50 a0 e1                                      mov r5, r0
004d99f0  08 20 82 e2                                      add r2, r2, #8
004d99f4  00 20 80 e5                                      str r2, [r0]
004d99f8  0f 00 00 0a                                      beq #0x4d9a3c
004d99fc  04 00 11 e5                                      ldr r0, [r1, #-4]
004d9a00  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d9a04  00 00 51 e1                                      cmp r1, r0
004d9a08  01 00 00 1a                                      bne #0x4d9a14
004d9a0c  08 00 00 ea                                      b #0x4d9a34
004d9a10  04 00 a0 e1                                      mov r0, r4
004d9a14  10 40 40 e2                                      sub r4, r0, #0x10
004d9a18  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d9a1c  04 00 a0 e1                                      mov r0, r4
004d9a20  0f e0 a0 e1                                      mov lr, pc
004d9a24  00 f0 93 e5                                      ldr pc, [r3]
004d9a28  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d9a2c  04 00 50 e1                                      cmp r0, r4
004d9a30  f6 ff ff 1a                                      bne #0x4d9a10
004d9a34  08 00 40 e2                                      sub r0, r0, #8
004d9a38  80 da f8 eb                                      bl #0x310440
004d9a3c  05 00 a0 e1                                      mov r0, r5
004d9a40  ea f3 ff eb                                      bl #0x4d69f0
004d9a44  05 00 a0 e1                                      mov r0, r5
004d9a48  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d9a4c  b0 b0 4b 00 b8 34 00 00                          .byte 0xb0, 0xb0, 0x4b, 0x00, 0xb8, 0x34, 0x00, 0x00

; FUNCTION 0x004ed1fc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerAllStats
; alias: _ZN7Structs17ItemPowerAllStats4readEP11IStreamBase
; demangled: Structs::ItemPowerAllStats::read(IStreamBase*)
; decoder-mode: arm
004ed1fc  f1 fe ff ea                                      b #0x4ecdc8
