; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d1fdc, declared_size=76, range_size=76, mode=arm
; class-group: Structs::SetActorMaster
; alias: _ZN7Structs14SetActorMaster8finalizeEv
; demangled: Structs::SetActorMaster::finalize()
; decoder-mode: arm
004d1fdc  10 40 2d e9                                      push {r4, lr}
004d1fe0  00 40 a0 e1                                      mov r4, r0
004d1fe4  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d1fe8  00 00 50 e3                                      cmp r0, #0
004d1fec  03 00 00 0a                                      beq #0x4d2000
004d1ff0  12 f9 f8 eb                                      bl #0x310440
004d1ff4  00 30 a0 e3                                      mov r3, #0
004d1ff8  0c 30 84 e5                                      str r3, [r4, #0xc]
004d1ffc  10 30 84 e5                                      str r3, [r4, #0x10]
004d2000  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004d2004  00 00 50 e3                                      cmp r0, #0
004d2008  03 00 00 0a                                      beq #0x4d201c
004d200c  0b f9 f8 eb                                      bl #0x310440
004d2010  00 30 a0 e3                                      mov r3, #0
004d2014  18 30 84 e5                                      str r3, [r4, #0x18]
004d2018  1c 30 84 e5                                      str r3, [r4, #0x1c]
004d201c  04 00 a0 e1                                      mov r0, r4
004d2020  10 40 bd e8                                      pop {r4, lr}
004d2024  0f d3 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d2028, declared_size=88, range_size=88, mode=arm
; class-group: Structs::SetActorMaster
; alias: _ZN7Structs14SetActorMasterD1Ev
; demangled: Structs::SetActorMaster::~SetActorMaster()
; decoder-mode: arm
004d2028  10 40 2d e9                                      push {r4, lr}
004d202c  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d2030  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d2034  00 40 a0 e1                                      mov r4, r0
004d2038  03 30 8f e0                                      add r3, pc, r3
004d203c  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d2040  02 20 93 e7                                      ldr r2, [r3, r2]
004d2044  00 00 50 e3                                      cmp r0, #0
004d2048  08 20 82 e2                                      add r2, r2, #8
004d204c  00 20 84 e5                                      str r2, [r4]
004d2050  00 00 00 0a                                      beq #0x4d2058
004d2054  f9 f8 f8 eb                                      bl #0x310440
004d2058  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004d205c  00 00 50 e3                                      cmp r0, #0
004d2060  00 00 00 0a                                      beq #0x4d2068
004d2064  f5 f8 f8 eb                                      bl #0x310440
004d2068  04 00 a0 e1                                      mov r0, r4
004d206c  fb d2 ff eb                                      bl #0x4c6c60
004d2070  04 00 a0 e1                                      mov r0, r4
004d2074  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2078  58 2a 4c 00 88 2a 00 00                          .byte 0x58, 0x2a, 0x4c, 0x00, 0x88, 0x2a, 0x00, 0x00

; FUNCTION 0x004d2080, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SetActorMaster
; alias: _ZN7Structs14SetActorMasterD0Ev
; demangled: Structs::SetActorMaster::~SetActorMaster()
; decoder-mode: arm
004d2080  10 40 2d e9                                      push {r4, lr}
004d2084  00 40 a0 e1                                      mov r4, r0
004d2088  e6 ff ff eb                                      bl #0x4d2028
004d208c  04 00 a0 e1                                      mov r0, r4
004d2090  ea f8 f8 eb                                      bl #0x310440
004d2094  04 00 a0 e1                                      mov r0, r4
004d2098  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d209c, declared_size=88, range_size=88, mode=arm
; class-group: Structs::SetActorMaster
; alias: _ZN7Structs14SetActorMasterD2Ev
; demangled: Structs::SetActorMaster::~SetActorMaster()
; decoder-mode: arm
004d209c  10 40 2d e9                                      push {r4, lr}
004d20a0  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d20a4  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d20a8  00 40 a0 e1                                      mov r4, r0
004d20ac  03 30 8f e0                                      add r3, pc, r3
004d20b0  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d20b4  02 20 93 e7                                      ldr r2, [r3, r2]
004d20b8  00 00 50 e3                                      cmp r0, #0
004d20bc  08 20 82 e2                                      add r2, r2, #8
004d20c0  00 20 84 e5                                      str r2, [r4]
004d20c4  00 00 00 0a                                      beq #0x4d20cc
004d20c8  dc f8 f8 eb                                      bl #0x310440
004d20cc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004d20d0  00 00 50 e3                                      cmp r0, #0
004d20d4  00 00 00 0a                                      beq #0x4d20dc
004d20d8  d8 f8 f8 eb                                      bl #0x310440
004d20dc  04 00 a0 e1                                      mov r0, r4
004d20e0  de d2 ff eb                                      bl #0x4c6c60
004d20e4  04 00 a0 e1                                      mov r0, r4
004d20e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d20ec  e4 29 4c 00 88 2a 00 00                          .byte 0xe4, 0x29, 0x4c, 0x00, 0x88, 0x2a, 0x00, 0x00

; FUNCTION 0x00500d14, declared_size=380, range_size=380, mode=arm
; class-group: Structs::SetActorMaster
; alias: _ZN7Structs14SetActorMaster4readEP11IStreamBase
; demangled: Structs::SetActorMaster::read(IStreamBase*)
; decoder-mode: arm
00500d14  70 40 2d e9                                      push {r4, r5, r6, lr}
00500d18  00 40 a0 e1                                      mov r4, r0
00500d1c  08 d0 4d e2                                      sub sp, sp, #8
00500d20  01 50 a0 e1                                      mov r5, r1
00500d24  bf fa ff eb                                      bl #0x4ff828
00500d28  05 00 a0 e1                                      mov r0, r5
00500d2c  08 10 84 e2                                      add r1, r4, #8
00500d30  d9 6a ff eb                                      bl #0x4db89c
00500d34  05 00 a0 e1                                      mov r0, r5
00500d38  0c 10 84 e2                                      add r1, r4, #0xc
00500d3c  17 79 fb eb                                      bl #0x3df1a0
00500d40  01 30 a0 e3                                      mov r3, #1
00500d44  00 00 53 e3                                      cmp r3, #0
00500d48  04 30 8d e5                                      str r3, [sp, #4]
00500d4c  0f 00 00 1a                                      bne #0x500d90
00500d50  0d 30 84 e2                                      add r3, r4, #0xd
00500d54  0e 20 84 e2                                      add r2, r4, #0xe
00500d58  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500d5c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500d60  02 00 53 e1                                      cmp r3, r2
00500d64  01 10 20 e0                                      eor r1, r0, r1
00500d68  01 10 43 e5                                      strb r1, [r3, #-1]
00500d6c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500d70  00 10 21 e0                                      eor r1, r1, r0
00500d74  01 10 c2 e5                                      strb r1, [r2, #1]
00500d78  01 00 53 e5                                      ldrb r0, [r3, #-1]
00500d7c  01 20 42 e2                                      sub r2, r2, #1
00500d80  00 10 21 e0                                      eor r1, r1, r0
00500d84  01 10 43 e5                                      strb r1, [r3, #-1]
00500d88  01 30 83 e2                                      add r3, r3, #1
00500d8c  f1 ff ff 3a                                      blo #0x500d58
00500d90  10 00 94 e5                                      ldr r0, [r4, #0x10]
00500d94  00 00 50 e3                                      cmp r0, #0
00500d98  00 00 00 0a                                      beq #0x500da0
00500d9c  a7 3d f8 eb                                      bl #0x310440
00500da0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00500da4  01 10 a0 e3                                      mov r1, #1
00500da8  00 60 a0 e3                                      mov r6, #0
00500dac  01 00 80 e0                                      add r0, r0, r1
00500db0  ed 3d f8 eb                                      bl #0x31056c
00500db4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00500db8  00 10 a0 e1                                      mov r1, r0
00500dbc  10 00 84 e5                                      str r0, [r4, #0x10]
00500dc0  06 30 a0 e1                                      mov r3, r6
00500dc4  05 00 a0 e1                                      mov r0, r5
00500dc8  a1 59 f8 eb                                      bl #0x317454
00500dcc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00500dd0  10 20 94 e5                                      ldr r2, [r4, #0x10]
00500dd4  14 10 84 e2                                      add r1, r4, #0x14
00500dd8  05 00 a0 e1                                      mov r0, r5
00500ddc  03 60 c2 e7                                      strb r6, [r2, r3]
00500de0  ad 6a ff eb                                      bl #0x4db89c
00500de4  05 00 a0 e1                                      mov r0, r5
00500de8  18 10 84 e2                                      add r1, r4, #0x18
00500dec  eb 78 fb eb                                      bl #0x3df1a0
00500df0  01 30 a0 e3                                      mov r3, #1
00500df4  06 00 53 e1                                      cmp r3, r6
00500df8  04 30 8d e5                                      str r3, [sp, #4]
00500dfc  0f 00 00 1a                                      bne #0x500e40
00500e00  19 30 84 e2                                      add r3, r4, #0x19
00500e04  1a 20 84 e2                                      add r2, r4, #0x1a
00500e08  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500e0c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500e10  03 00 52 e1                                      cmp r2, r3
00500e14  01 10 20 e0                                      eor r1, r0, r1
00500e18  01 10 43 e5                                      strb r1, [r3, #-1]
00500e1c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500e20  00 10 21 e0                                      eor r1, r1, r0
00500e24  01 10 c2 e5                                      strb r1, [r2, #1]
00500e28  01 00 53 e5                                      ldrb r0, [r3, #-1]
00500e2c  01 20 42 e2                                      sub r2, r2, #1
00500e30  00 10 21 e0                                      eor r1, r1, r0
00500e34  01 10 43 e5                                      strb r1, [r3, #-1]
00500e38  01 30 83 e2                                      add r3, r3, #1
00500e3c  f1 ff ff 8a                                      bhi #0x500e08
00500e40  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00500e44  00 00 50 e3                                      cmp r0, #0
00500e48  00 00 00 0a                                      beq #0x500e50
00500e4c  7b 3d f8 eb                                      bl #0x310440
00500e50  18 00 94 e5                                      ldr r0, [r4, #0x18]
00500e54  01 10 a0 e3                                      mov r1, #1
00500e58  00 60 a0 e3                                      mov r6, #0
00500e5c  01 00 80 e0                                      add r0, r0, r1
00500e60  c1 3d f8 eb                                      bl #0x31056c
00500e64  18 20 94 e5                                      ldr r2, [r4, #0x18]
00500e68  00 10 a0 e1                                      mov r1, r0
00500e6c  1c 00 84 e5                                      str r0, [r4, #0x1c]
00500e70  06 30 a0 e1                                      mov r3, r6
00500e74  05 00 a0 e1                                      mov r0, r5
00500e78  75 59 f8 eb                                      bl #0x317454
00500e7c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00500e80  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00500e84  03 60 c2 e7                                      strb r6, [r2, r3]
00500e88  08 d0 8d e2                                      add sp, sp, #8
00500e8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
