; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00826a84, declared_size=32, range_size=32, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation11GetInstanceEv
; demangled: CNetworkEmulation::GetInstance()
; decoder-mode: arm
00826a84  10 30 9f e5                                      ldr r3, [pc, #0x10]
00826a88  10 20 9f e5                                      ldr r2, [pc, #0x10]
00826a8c  03 30 8f e0                                      add r3, pc, r3
00826a90  02 20 93 e7                                      ldr r2, [r3, r2]
00826a94  00 00 92 e5                                      ldr r0, [r2]
00826a98  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00826a9c  04 e0 16 00 a4 2b 00 00                          .byte 0x04, 0xe0, 0x16, 0x00, 0xa4, 0x2b, 0x00, 0x00

; FUNCTION 0x00826aa8, declared_size=40, range_size=40, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation13IsInitializedEv
; demangled: CNetworkEmulation::IsInitialized()
; decoder-mode: arm
00826aa8  18 30 9f e5                                      ldr r3, [pc, #0x18]
00826aac  18 20 9f e5                                      ldr r2, [pc, #0x18]
00826ab0  03 30 8f e0                                      add r3, pc, r3
00826ab4  02 20 93 e7                                      ldr r2, [r3, r2]
00826ab8  00 00 92 e5                                      ldr r0, [r2]
00826abc  00 00 50 e3                                      cmp r0, #0
00826ac0  04 00 d0 15                                      ldrbne r0, [r0, #4]
00826ac4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00826ac8  e0 df 16 00 a4 2b 00 00                          .byte 0xe0, 0xdf, 0x16, 0x00, 0xa4, 0x2b, 0x00, 0x00

; FUNCTION 0x00826ad0, declared_size=68, range_size=68, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation9TerminateEv
; demangled: CNetworkEmulation::Terminate()
; decoder-mode: arm
00826ad0  34 30 9f e5                                      ldr r3, [pc, #0x34]
00826ad4  34 20 9f e5                                      ldr r2, [pc, #0x34]
00826ad8  10 40 2d e9                                      push {r4, lr}
00826adc  03 30 8f e0                                      add r3, pc, r3
00826ae0  02 40 93 e7                                      ldr r4, [r3, r2]
00826ae4  00 30 94 e5                                      ldr r3, [r4]
00826ae8  00 00 53 e3                                      cmp r3, #0
00826aec  05 00 00 0a                                      beq #0x826b08
00826af0  03 00 a0 e1                                      mov r0, r3
00826af4  00 30 93 e5                                      ldr r3, [r3]
00826af8  0f e0 a0 e1                                      mov lr, pc
00826afc  04 f0 93 e5                                      ldr pc, [r3, #4]
00826b00  00 30 a0 e3                                      mov r3, #0
00826b04  00 30 84 e5                                      str r3, [r4]
00826b08  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00826b0c  b4 df 16 00 a4 2b 00 00                          .byte 0xb4, 0xdf, 0x16, 0x00, 0xa4, 0x2b, 0x00, 0x00

; FUNCTION 0x00826b14, declared_size=20, range_size=20, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation14SetPacketDelayE18tNET_EMULATION_SETii
; demangled: CNetworkEmulation::SetPacketDelay(tNET_EMULATION_SET, int, int)
; decoder-mode: arm
00826b14  24 c0 a0 e3                                      mov ip, #0x24
00826b18  9c 01 21 e0                                      mla r1, ip, r1, r0
00826b1c  20 30 81 e5                                      str r3, [r1, #0x20]
00826b20  1c 20 81 e5                                      str r2, [r1, #0x1c]
00826b24  1e ff 2f e1                                      bx lr

; FUNCTION 0x00826b28, declared_size=20, range_size=20, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation13SetPacketLossE18tNET_EMULATION_SETff
; demangled: CNetworkEmulation::SetPacketLoss(tNET_EMULATION_SET, float, float)
; decoder-mode: arm
00826b28  24 c0 a0 e3                                      mov ip, #0x24
00826b2c  9c 01 21 e0                                      mla r1, ip, r1, r0
00826b30  28 30 81 e5                                      str r3, [r1, #0x28]
00826b34  24 20 81 e5                                      str r2, [r1, #0x24]
00826b38  1e ff 2f e1                                      bx lr

; FUNCTION 0x00826b3c, declared_size=16, range_size=16, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation20SetPacketDuplicationE18tNET_EMULATION_SETf
; demangled: CNetworkEmulation::SetPacketDuplication(tNET_EMULATION_SET, float)
; decoder-mode: arm
00826b3c  24 30 a0 e3                                      mov r3, #0x24
00826b40  93 01 23 e0                                      mla r3, r3, r1, r0
00826b44  2c 20 83 e5                                      str r2, [r3, #0x2c]
00826b48  1e ff 2f e1                                      bx lr

; FUNCTION 0x00826b4c, declared_size=36, range_size=36, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation19SetPacketReorderingE18tNET_EMULATION_SETffii
; demangled: CNetworkEmulation::SetPacketReordering(tNET_EMULATION_SET, float, float, int, int)
; decoder-mode: arm
00826b4c  24 c0 a0 e3                                      mov ip, #0x24
00826b50  9c 01 21 e0                                      mla r1, ip, r1, r0
00826b54  30 20 81 e5                                      str r2, [r1, #0x30]
00826b58  3c 30 81 e5                                      str r3, [r1, #0x3c]
00826b5c  04 30 9d e5                                      ldr r3, [sp, #4]
00826b60  38 30 81 e5                                      str r3, [r1, #0x38]
00826b64  00 30 9d e5                                      ldr r3, [sp]
00826b68  34 30 81 e5                                      str r3, [r1, #0x34]
00826b6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00826b70, declared_size=28, range_size=28, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation11SetPeakInfoEiii
; demangled: CNetworkEmulation::SetPeakInfo(int, int, int)
; decoder-mode: arm
00826b70  00 c0 a0 e3                                      mov ip, #0
00826b74  18 30 80 e5                                      str r3, [r0, #0x18]
00826b78  0c c0 c0 e5                                      strb ip, [r0, #0xc]
00826b7c  10 10 80 e5                                      str r1, [r0, #0x10]
00826b80  14 20 80 e5                                      str r2, [r0, #0x14]
00826b84  08 c0 80 e5                                      str ip, [r0, #8]
00826b88  1e ff 2f e1                                      bx lr

; FUNCTION 0x00826b8c, declared_size=404, range_size=404, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation21SetNetConditionPresetE18tNET_EMULATION_SET21tNET_CONDITION_PRESET
; demangled: CNetworkEmulation::SetNetConditionPreset(tNET_EMULATION_SET, tNET_CONDITION_PRESET)
; decoder-mode: arm
00826b8c  30 40 2d e9                                      push {r4, r5, lr}
00826b90  02 00 52 e3                                      cmp r2, #2
00826b94  0c d0 4d e2                                      sub sp, sp, #0xc
00826b98  00 50 a0 e1                                      mov r5, r0
00826b9c  01 40 a0 e1                                      mov r4, r1
00826ba0  4b 00 00 0a                                      beq #0x826cd4
00826ba4  03 00 52 e3                                      cmp r2, #3
00826ba8  2f 00 00 0a                                      beq #0x826c6c
00826bac  01 00 52 e3                                      cmp r2, #1
00826bb0  15 00 00 0a                                      beq #0x826c0c
00826bb4  00 20 a0 e3                                      mov r2, #0
00826bb8  02 30 a0 e1                                      mov r3, r2
00826bbc  d4 ff ff eb                                      bl #0x826b14
00826bc0  00 20 a0 e3                                      mov r2, #0
00826bc4  02 30 a0 e1                                      mov r3, r2
00826bc8  05 00 a0 e1                                      mov r0, r5
00826bcc  04 10 a0 e1                                      mov r1, r4
00826bd0  d4 ff ff eb                                      bl #0x826b28
00826bd4  05 00 a0 e1                                      mov r0, r5
00826bd8  04 10 a0 e1                                      mov r1, r4
00826bdc  00 20 a0 e3                                      mov r2, #0
00826be0  d5 ff ff eb                                      bl #0x826b3c
00826be4  00 20 a0 e3                                      mov r2, #0
00826be8  00 c0 a0 e3                                      mov ip, #0
00826bec  05 00 a0 e1                                      mov r0, r5
00826bf0  04 10 a0 e1                                      mov r1, r4
00826bf4  02 30 a0 e1                                      mov r3, r2
00826bf8  04 c0 8d e5                                      str ip, [sp, #4]
00826bfc  00 c0 8d e5                                      str ip, [sp]
00826c00  d1 ff ff eb                                      bl #0x826b4c
00826c04  0c d0 8d e2                                      add sp, sp, #0xc
00826c08  30 80 bd e8                                      pop {r4, r5, pc}
00826c0c  32 20 a0 e3                                      mov r2, #0x32
00826c10  0a 30 a0 e3                                      mov r3, #0xa
00826c14  be ff ff eb                                      bl #0x826b14
00826c18  01 31 a0 e3                                      mov r3, #0x40000000
00826c1c  0a 36 83 e2                                      add r3, r3, #0xa00000
00826c20  05 00 a0 e1                                      mov r0, r5
00826c24  04 10 a0 e1                                      mov r1, r4
00826c28  3f 24 a0 e3                                      mov r2, #0x3f000000
00826c2c  bd ff ff eb                                      bl #0x826b28
00826c30  05 00 a0 e1                                      mov r0, r5
00826c34  04 10 a0 e1                                      mov r1, r4
00826c38  3f 24 a0 e3                                      mov r2, #0x3f000000
00826c3c  be ff ff eb                                      bl #0x826b3c
00826c40  01 31 a0 e3                                      mov r3, #0x40000000
00826c44  05 00 a0 e1                                      mov r0, r5
00826c48  04 10 a0 e1                                      mov r1, r4
00826c4c  3f 24 a0 e3                                      mov r2, #0x3f000000
00826c50  0a 36 83 e2                                      add r3, r3, #0xa00000
00826c54  32 c0 a0 e3                                      mov ip, #0x32
00826c58  00 c0 8d e5                                      str ip, [sp]
00826c5c  19 c0 a0 e3                                      mov ip, #0x19
00826c60  04 c0 8d e5                                      str ip, [sp, #4]
00826c64  b8 ff ff eb                                      bl #0x826b4c
00826c68  e5 ff ff ea                                      b #0x826c04
00826c6c  4b 2f a0 e3                                      mov r2, #0x12c
00826c70  32 30 a0 e3                                      mov r3, #0x32
00826c74  a6 ff ff eb                                      bl #0x826b14
00826c78  41 34 a0 e3                                      mov r3, #0x41000000
00826c7c  41 24 a0 e3                                      mov r2, #0x41000000
00826c80  05 00 a0 e1                                      mov r0, r5
00826c84  04 10 a0 e1                                      mov r1, r4
00826c88  32 37 83 e2                                      add r3, r3, #0xc80000
00826c8c  07 26 82 e2                                      add r2, r2, #0x700000
00826c90  a4 ff ff eb                                      bl #0x826b28
00826c94  01 21 a0 e3                                      mov r2, #0x40000000
00826c98  05 00 a0 e1                                      mov r0, r5
00826c9c  04 10 a0 e1                                      mov r1, r4
00826ca0  0a 26 82 e2                                      add r2, r2, #0xa00000
00826ca4  a4 ff ff eb                                      bl #0x826b3c
00826ca8  01 21 a0 e3                                      mov r2, #0x40000000
00826cac  41 34 a0 e3                                      mov r3, #0x41000000
00826cb0  32 c0 a0 e3                                      mov ip, #0x32
00826cb4  05 00 a0 e1                                      mov r0, r5
00826cb8  04 10 a0 e1                                      mov r1, r4
00826cbc  0a 26 82 e2                                      add r2, r2, #0xa00000
00826cc0  32 37 83 e2                                      add r3, r3, #0xc80000
00826cc4  04 c0 8d e5                                      str ip, [sp, #4]
00826cc8  00 c0 8d e5                                      str ip, [sp]
00826ccc  9e ff ff eb                                      bl #0x826b4c
00826cd0  cb ff ff ea                                      b #0x826c04
00826cd4  5a 20 a0 e3                                      mov r2, #0x5a
00826cd8  0f 30 a0 e3                                      mov r3, #0xf
00826cdc  8c ff ff eb                                      bl #0x826b14
00826ce0  41 34 a0 e3                                      mov r3, #0x41000000
00826ce4  02 36 83 e2                                      add r3, r3, #0x200000
00826ce8  05 00 a0 e1                                      mov r0, r5
00826cec  04 10 a0 e1                                      mov r1, r4
00826cf0  01 21 a0 e3                                      mov r2, #0x40000000
00826cf4  8b ff ff eb                                      bl #0x826b28
00826cf8  05 00 a0 e1                                      mov r0, r5
00826cfc  04 10 a0 e1                                      mov r1, r4
00826d00  fe 25 a0 e3                                      mov r2, #0x3f800000
00826d04  8c ff ff eb                                      bl #0x826b3c
00826d08  41 34 a0 e3                                      mov r3, #0x41000000
00826d0c  05 00 a0 e1                                      mov r0, r5
00826d10  04 10 a0 e1                                      mov r1, r4
00826d14  fe 25 a0 e3                                      mov r2, #0x3f800000
00826d18  07 36 83 e2                                      add r3, r3, #0x700000
00826d1c  cc ff ff ea                                      b #0x826c54

; FUNCTION 0x00826d20, declared_size=52, range_size=52, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation5ClearEv
; demangled: CNetworkEmulation::Clear()
; decoder-mode: arm
00826d20  10 40 2d e9                                      push {r4, lr}
00826d24  00 10 a0 e3                                      mov r1, #0
00826d28  00 40 a0 e1                                      mov r4, r0
00826d2c  48 20 a0 e3                                      mov r2, #0x48
00826d30  1c 00 80 e2                                      add r0, r0, #0x1c
00826d34  c9 9d eb eb                                      bl #0x30e460
00826d38  00 30 a0 e3                                      mov r3, #0
00826d3c  18 30 84 e5                                      str r3, [r4, #0x18]
00826d40  08 30 84 e5                                      str r3, [r4, #8]
00826d44  0c 30 c4 e5                                      strb r3, [r4, #0xc]
00826d48  10 30 84 e5                                      str r3, [r4, #0x10]
00826d4c  14 30 84 e5                                      str r3, [r4, #0x14]
00826d50  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00826d54, declared_size=164, range_size=164, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulationC1Ev
; demangled: CNetworkEmulation::CNetworkEmulation()
; decoder-mode: arm
00826d54  94 30 9f e5                                      ldr r3, [pc, #0x94]
00826d58  94 20 9f e5                                      ldr r2, [pc, #0x94]
00826d5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00826d60  03 30 8f e0                                      add r3, pc, r3
00826d64  02 20 93 e7                                      ldr r2, [r3, r2]
00826d68  00 50 a0 e3                                      mov r5, #0
00826d6c  03 60 a0 e3                                      mov r6, #3
00826d70  08 20 82 e2                                      add r2, r2, #8
00826d74  00 20 80 e5                                      str r2, [r0]
00826d78  1e 20 a0 e3                                      mov r2, #0x1e
00826d7c  10 20 80 e5                                      str r2, [r0, #0x10]
00826d80  0a 20 a0 e3                                      mov r2, #0xa
00826d84  00 40 a0 e1                                      mov r4, r0
00826d88  14 20 80 e5                                      str r2, [r0, #0x14]
00826d8c  04 50 c0 e5                                      strb r5, [r0, #4]
00826d90  08 50 80 e5                                      str r5, [r0, #8]
00826d94  0c 50 c0 e5                                      strb r5, [r0, #0xc]
00826d98  18 60 80 e5                                      str r6, [r0, #0x18]
00826d9c  05 10 a0 e1                                      mov r1, r5
00826da0  48 20 a0 e3                                      mov r2, #0x48
00826da4  1c 00 80 e2                                      add r0, r0, #0x1c
00826da8  ac 9d eb eb                                      bl #0x30e460
00826dac  04 00 a0 e1                                      mov r0, r4
00826db0  05 10 a0 e1                                      mov r1, r5
00826db4  02 20 a0 e3                                      mov r2, #2
00826db8  73 ff ff eb                                      bl #0x826b8c
00826dbc  04 00 a0 e1                                      mov r0, r4
00826dc0  06 20 a0 e1                                      mov r2, r6
00826dc4  01 10 a0 e3                                      mov r1, #1
00826dc8  6f ff ff eb                                      bl #0x826b8c
00826dcc  04 00 a0 e1                                      mov r0, r4
00826dd0  06 30 a0 e1                                      mov r3, r6
00826dd4  2d 10 a0 e3                                      mov r1, #0x2d
00826dd8  0f 20 a0 e3                                      mov r2, #0xf
00826ddc  63 ff ff eb                                      bl #0x826b70
00826de0  01 30 a0 e3                                      mov r3, #1
00826de4  04 30 c4 e5                                      strb r3, [r4, #4]
00826de8  04 00 a0 e1                                      mov r0, r4
00826dec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00826df0  30 dd 16 00 e0 1e 00 00                          .byte 0x30, 0xdd, 0x16, 0x00, 0xe0, 0x1e, 0x00, 0x00

; FUNCTION 0x00826df8, declared_size=164, range_size=164, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulationC2Ev
; demangled: CNetworkEmulation::CNetworkEmulation()
; decoder-mode: arm
00826df8  94 30 9f e5                                      ldr r3, [pc, #0x94]
00826dfc  94 20 9f e5                                      ldr r2, [pc, #0x94]
00826e00  70 40 2d e9                                      push {r4, r5, r6, lr}
00826e04  03 30 8f e0                                      add r3, pc, r3
00826e08  02 20 93 e7                                      ldr r2, [r3, r2]
00826e0c  00 50 a0 e3                                      mov r5, #0
00826e10  03 60 a0 e3                                      mov r6, #3
00826e14  08 20 82 e2                                      add r2, r2, #8
00826e18  00 20 80 e5                                      str r2, [r0]
00826e1c  1e 20 a0 e3                                      mov r2, #0x1e
00826e20  10 20 80 e5                                      str r2, [r0, #0x10]
00826e24  0a 20 a0 e3                                      mov r2, #0xa
00826e28  00 40 a0 e1                                      mov r4, r0
00826e2c  14 20 80 e5                                      str r2, [r0, #0x14]
00826e30  04 50 c0 e5                                      strb r5, [r0, #4]
00826e34  08 50 80 e5                                      str r5, [r0, #8]
00826e38  0c 50 c0 e5                                      strb r5, [r0, #0xc]
00826e3c  18 60 80 e5                                      str r6, [r0, #0x18]
00826e40  05 10 a0 e1                                      mov r1, r5
00826e44  48 20 a0 e3                                      mov r2, #0x48
00826e48  1c 00 80 e2                                      add r0, r0, #0x1c
00826e4c  83 9d eb eb                                      bl #0x30e460
00826e50  04 00 a0 e1                                      mov r0, r4
00826e54  05 10 a0 e1                                      mov r1, r5
00826e58  02 20 a0 e3                                      mov r2, #2
00826e5c  4a ff ff eb                                      bl #0x826b8c
00826e60  04 00 a0 e1                                      mov r0, r4
00826e64  06 20 a0 e1                                      mov r2, r6
00826e68  01 10 a0 e3                                      mov r1, #1
00826e6c  46 ff ff eb                                      bl #0x826b8c
00826e70  04 00 a0 e1                                      mov r0, r4
00826e74  06 30 a0 e1                                      mov r3, r6
00826e78  2d 10 a0 e3                                      mov r1, #0x2d
00826e7c  0f 20 a0 e3                                      mov r2, #0xf
00826e80  3a ff ff eb                                      bl #0x826b70
00826e84  01 30 a0 e3                                      mov r3, #1
00826e88  04 30 c4 e5                                      strb r3, [r4, #4]
00826e8c  04 00 a0 e1                                      mov r0, r4
00826e90  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00826e94  8c dc 16 00 e0 1e 00 00                          .byte 0x8c, 0xdc, 0x16, 0x00, 0xe0, 0x1e, 0x00, 0x00

; FUNCTION 0x00826e9c, declared_size=68, range_size=68, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulationD1Ev
; demangled: CNetworkEmulation::~CNetworkEmulation()
; decoder-mode: arm
00826e9c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00826ea0  34 20 9f e5                                      ldr r2, [pc, #0x34]
00826ea4  00 10 a0 e3                                      mov r1, #0
00826ea8  03 30 8f e0                                      add r3, pc, r3
00826eac  02 20 93 e7                                      ldr r2, [r3, r2]
00826eb0  10 40 2d e9                                      push {r4, lr}
00826eb4  08 20 82 e2                                      add r2, r2, #8
00826eb8  00 40 a0 e1                                      mov r4, r0
00826ebc  04 10 c0 e5                                      strb r1, [r0, #4]
00826ec0  00 20 80 e5                                      str r2, [r0]
00826ec4  48 20 a0 e3                                      mov r2, #0x48
00826ec8  1c 00 80 e2                                      add r0, r0, #0x1c
00826ecc  63 9d eb eb                                      bl #0x30e460
00826ed0  04 00 a0 e1                                      mov r0, r4
00826ed4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00826ed8  e8 db 16 00 e0 1e 00 00                          .byte 0xe8, 0xdb, 0x16, 0x00, 0xe0, 0x1e, 0x00, 0x00

; FUNCTION 0x00826ee0, declared_size=68, range_size=68, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulationD2Ev
; demangled: CNetworkEmulation::~CNetworkEmulation()
; decoder-mode: arm
00826ee0  34 30 9f e5                                      ldr r3, [pc, #0x34]
00826ee4  34 20 9f e5                                      ldr r2, [pc, #0x34]
00826ee8  00 10 a0 e3                                      mov r1, #0
00826eec  03 30 8f e0                                      add r3, pc, r3
00826ef0  02 20 93 e7                                      ldr r2, [r3, r2]
00826ef4  10 40 2d e9                                      push {r4, lr}
00826ef8  08 20 82 e2                                      add r2, r2, #8
00826efc  00 40 a0 e1                                      mov r4, r0
00826f00  04 10 c0 e5                                      strb r1, [r0, #4]
00826f04  00 20 80 e5                                      str r2, [r0]
00826f08  48 20 a0 e3                                      mov r2, #0x48
00826f0c  1c 00 80 e2                                      add r0, r0, #0x1c
00826f10  52 9d eb eb                                      bl #0x30e460
00826f14  04 00 a0 e1                                      mov r0, r4
00826f18  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00826f1c  a4 db 16 00 e0 1e 00 00                          .byte 0xa4, 0xdb, 0x16, 0x00, 0xe0, 0x1e, 0x00, 0x00

; FUNCTION 0x00826f24, declared_size=152, range_size=152, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation14CalcPercentageEfff
; demangled: CNetworkEmulation::CalcPercentage(float, float, float)
; decoder-mode: arm
00826f24  70 40 2d e9                                      push {r4, r5, r6, lr}
00826f28  02 40 a0 e1                                      mov r4, r2
00826f2c  03 60 a0 e1                                      mov r6, r3
00826f30  9c 9f eb eb                                      bl #0x30eda8
00826f34  ad 3b 08 e3                                      movw r3, #0x8bad
00826f38  c0 2f 20 e0                                      eor r2, r0, r0, asr #31
00826f3c  c0 2f 42 e0                                      sub r2, r2, r0, asr #31
00826f40  db 38 46 e3                                      movt r3, #0x68db
00826f44  93 12 c3 e0                                      smull r1, r3, r3, r2
00826f48  c2 1f a0 e1                                      asr r1, r2, #0x1f
00826f4c  43 36 61 e0                                      rsb r3, r1, r3, asr #12
00826f50  10 07 02 e3                                      movw r0, #0x2710
00826f54  90 23 60 e0                                      mls r0, r0, r3, r2
00826f58  81 9e eb eb                                      bl #0x30e964
00826f5c  42 14 a0 e3                                      mov r1, #0x42000000
00826f60  32 17 81 e2                                      add r1, r1, #0xc80000
00826f64  4a 9f eb eb                                      bl #0x30ec94
00826f68  00 50 a0 e1                                      mov r5, r0
00826f6c  42 04 a0 e3                                      mov r0, #0x42000000
00826f70  04 10 a0 e1                                      mov r1, r4
00826f74  32 07 80 e2                                      add r0, r0, #0xc80000
00826f78  0b 9d eb eb                                      bl #0x30e3ac
00826f7c  42 14 a0 e3                                      mov r1, #0x42000000
00826f80  32 17 81 e2                                      add r1, r1, #0xc80000
00826f84  42 9f eb eb                                      bl #0x30ec94
00826f88  05 10 a0 e1                                      mov r1, r5
00826f8c  76 9f eb eb                                      bl #0x30ed6c
00826f90  04 10 a0 e1                                      mov r1, r4
00826f94  00 50 a0 e1                                      mov r5, r0
00826f98  06 00 a0 e1                                      mov r0, r6
00826f9c  72 9f eb eb                                      bl #0x30ed6c
00826fa0  42 14 a0 e3                                      mov r1, #0x42000000
00826fa4  32 17 81 e2                                      add r1, r1, #0xc80000
00826fa8  39 9f eb eb                                      bl #0x30ec94
00826fac  00 10 a0 e1                                      mov r1, r0
00826fb0  05 00 a0 e1                                      mov r0, r5
00826fb4  fa 9e eb eb                                      bl #0x30eba4
00826fb8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00826fbc, declared_size=48, range_size=48, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation9CalcDelayEii
; demangled: CNetworkEmulation::CalcDelay(int, int)
; decoder-mode: arm
00826fbc  70 40 2d e9                                      push {r4, r5, r6, lr}
00826fc0  00 40 52 e2                                      subs r4, r2, #0
00826fc4  01 50 a0 e1                                      mov r5, r1
00826fc8  05 00 00 0a                                      beq #0x826fe4
00826fcc  75 9f eb eb                                      bl #0x30eda8
00826fd0  84 10 a0 e1                                      lsl r1, r4, #1
00826fd4  00 00 50 e3                                      cmp r0, #0
00826fd8  00 00 60 b2                                      rsblt r0, r0, #0
00826fdc  48 9e eb eb                                      bl #0x30e904
00826fe0  01 40 64 e0                                      rsb r4, r4, r1
00826fe4  05 00 84 e0                                      add r0, r4, r5
00826fe8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00826fec, declared_size=152, range_size=152, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation22GetCurrentConditionSetEv
; demangled: CNetworkEmulation::GetCurrentConditionSet()
; decoder-mode: arm
00826fec  70 40 2d e9                                      push {r4, r5, r6, lr}
00826ff0  04 10 d0 e5                                      ldrb r1, [r0, #4]
00826ff4  00 40 a0 e1                                      mov r4, r0
00826ff8  00 00 51 e3                                      cmp r1, #0
00826ffc  16 00 00 0a                                      beq #0x82705c
00827000  e3 59 ff eb                                      bl #0x7fd794
00827004  00 30 90 e5                                      ldr r3, [r0]
00827008  0f e0 a0 e1                                      mov lr, pc
0082700c  00 f0 93 e5                                      ldr pc, [r3]
00827010  10 10 94 e5                                      ldr r1, [r4, #0x10]
00827014  00 50 a0 e1                                      mov r5, r0
00827018  00 00 51 e3                                      cmp r1, #0
0082701c  0c 50 d4 05                                      ldrbeq r5, [r4, #0xc]
00827020  09 00 00 0a                                      beq #0x82704c
00827024  08 00 94 e5                                      ldr r0, [r4, #8]
00827028  18 30 94 e5                                      ldr r3, [r4, #0x18]
0082702c  fa 6f a0 e3                                      mov r6, #0x3e8
00827030  96 03 23 e0                                      mla r3, r6, r3, r0
00827034  05 00 53 e1                                      cmp r3, r5
00827038  0b 00 00 3a                                      blo #0x82706c
0082703c  00 00 55 e1                                      cmp r5, r0
00827040  00 50 a0 93                                      movls r5, #0
00827044  01 50 a0 83                                      movhi r5, #1
00827048  0c 50 c4 e5                                      strb r5, [r4, #0xc]
0082704c  00 00 55 e3                                      cmp r5, #0
00827050  40 00 84 12                                      addne r0, r4, #0x40
00827054  1c 00 84 02                                      addeq r0, r4, #0x1c
00827058  70 80 bd e8                                      pop {r4, r5, r6, pc}
0082705c  01 20 a0 e1                                      mov r2, r1
00827060  c9 fe ff eb                                      bl #0x826b8c
00827064  1c 00 84 e2                                      add r0, r4, #0x1c
00827068  70 80 bd e8                                      pop {r4, r5, r6, pc}
0082706c  04 00 a0 e1                                      mov r0, r4
00827070  14 20 94 e5                                      ldr r2, [r4, #0x14]
00827074  d0 ff ff eb                                      bl #0x826fbc
00827078  96 50 20 e0                                      mla r0, r6, r0, r5
0082707c  08 00 84 e5                                      str r0, [r4, #8]
00827080  ed ff ff ea                                      b #0x82703c

; FUNCTION 0x00827084, declared_size=92, range_size=92, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation15GetReorderDelayEv
; demangled: CNetworkEmulation::GetReorderDelay()
; decoder-mode: arm
00827084  70 40 2d e9                                      push {r4, r5, r6, lr}
00827088  00 60 a0 e1                                      mov r6, r0
0082708c  d6 ff ff eb                                      bl #0x826fec
00827090  44 40 9f e5                                      ldr r4, [pc, #0x44]
00827094  14 10 90 e5                                      ldr r1, [r0, #0x14]
00827098  20 20 90 e5                                      ldr r2, [r0, #0x20]
0082709c  04 40 8f e0                                      add r4, pc, r4
008270a0  00 50 a0 e1                                      mov r5, r0
008270a4  00 30 94 e5                                      ldr r3, [r4]
008270a8  06 00 a0 e1                                      mov r0, r6
008270ac  9c ff ff eb                                      bl #0x826f24
008270b0  00 00 84 e5                                      str r0, [r4]
008270b4  14 10 95 e5                                      ldr r1, [r5, #0x14]
008270b8  93 9d eb eb                                      bl #0x30e70c
008270bc  00 00 50 e3                                      cmp r0, #0
008270c0  00 00 00 1a                                      bne #0x8270c8
008270c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
008270c8  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
008270cc  18 10 95 e5                                      ldr r1, [r5, #0x18]
008270d0  06 00 a0 e1                                      mov r0, r6
008270d4  70 40 bd e8                                      pop {r4, r5, r6, lr}
008270d8  b7 ff ff ea                                      b #0x826fbc
; mapping-symbol data/literal pool
008270dc  78 c8 20 00                                      .byte 0x78, 0xc8, 0x20, 0x00

; FUNCTION 0x008270e0, declared_size=64, range_size=64, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation18IsPacketDuplicatedEv
; demangled: CNetworkEmulation::IsPacketDuplicated()
; decoder-mode: arm
008270e0  70 40 2d e9                                      push {r4, r5, r6, lr}
008270e4  00 50 a0 e1                                      mov r5, r0
008270e8  bf ff ff eb                                      bl #0x826fec
008270ec  00 20 a0 e3                                      mov r2, #0
008270f0  00 40 a0 e1                                      mov r4, r0
008270f4  10 10 94 e5                                      ldr r1, [r4, #0x10]
008270f8  02 30 a0 e1                                      mov r3, r2
008270fc  05 00 a0 e1                                      mov r0, r5
00827100  87 ff ff eb                                      bl #0x826f24
00827104  10 10 94 e5                                      ldr r1, [r4, #0x10]
00827108  7f 9d eb eb                                      bl #0x30e70c
0082710c  00 00 50 e3                                      cmp r0, #0
00827110  00 50 a0 e3                                      mov r5, #0
00827114  01 50 a0 13                                      movne r5, #1
00827118  01 00 05 e2                                      and r0, r5, #1
0082711c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00827120, declared_size=32, range_size=32, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation14GetPacketDelayEv
; demangled: CNetworkEmulation::GetPacketDelay()
; decoder-mode: arm
00827120  10 40 2d e9                                      push {r4, lr}
00827124  00 40 a0 e1                                      mov r4, r0
00827128  af ff ff eb                                      bl #0x826fec
0082712c  00 30 a0 e1                                      mov r3, r0
00827130  06 00 93 e8                                      ldm r3, {r1, r2}
00827134  04 00 a0 e1                                      mov r0, r4
00827138  10 40 bd e8                                      pop {r4, lr}
0082713c  9e ff ff ea                                      b #0x826fbc

; FUNCTION 0x00827140, declared_size=80, range_size=80, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation12IsPacketLostEv
; demangled: CNetworkEmulation::IsPacketLost()
; decoder-mode: arm
00827140  70 40 2d e9                                      push {r4, r5, r6, lr}
00827144  00 60 a0 e1                                      mov r6, r0
00827148  a7 ff ff eb                                      bl #0x826fec
0082714c  38 40 9f e5                                      ldr r4, [pc, #0x38]
00827150  00 50 a0 e1                                      mov r5, r0
00827154  08 10 95 e5                                      ldr r1, [r5, #8]
00827158  04 40 8f e0                                      add r4, pc, r4
0082715c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00827160  04 30 94 e5                                      ldr r3, [r4, #4]
00827164  06 00 a0 e1                                      mov r0, r6
00827168  6d ff ff eb                                      bl #0x826f24
0082716c  04 00 84 e5                                      str r0, [r4, #4]
00827170  08 10 95 e5                                      ldr r1, [r5, #8]
00827174  64 9d eb eb                                      bl #0x30e70c
00827178  00 00 50 e3                                      cmp r0, #0
0082717c  00 00 a0 e3                                      mov r0, #0
00827180  01 00 a0 13                                      movne r0, #1
00827184  01 00 00 e2                                      and r0, r0, #1
00827188  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0082718c  bc c7 20 00                                      .byte 0xbc, 0xc7, 0x20, 0x00

; FUNCTION 0x00827190, declared_size=88, range_size=88, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulation10InitializeEv
; demangled: CNetworkEmulation::Initialize()
; decoder-mode: arm
00827190  48 30 9f e5                                      ldr r3, [pc, #0x48]
00827194  48 20 9f e5                                      ldr r2, [pc, #0x48]
00827198  70 40 2d e9                                      push {r4, r5, r6, lr}
0082719c  03 30 8f e0                                      add r3, pc, r3
008271a0  02 40 93 e7                                      ldr r4, [r3, r2]
008271a4  00 30 94 e5                                      ldr r3, [r4]
008271a8  00 00 53 e3                                      cmp r3, #0
008271ac  01 00 00 0a                                      beq #0x8271b8
008271b0  00 00 a0 e3                                      mov r0, #0
008271b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
008271b8  02 10 a0 e3                                      mov r1, #2
008271bc  64 00 a0 e3                                      mov r0, #0x64
008271c0  ea a4 eb eb                                      bl #0x310570
008271c4  00 50 a0 e1                                      mov r5, r0
008271c8  e1 fe ff eb                                      bl #0x826d54
008271cc  00 00 55 e3                                      cmp r5, #0
008271d0  00 50 84 e5                                      str r5, [r4]
008271d4  f5 ff ff 1a                                      bne #0x8271b0
008271d8  00 00 e0 e3                                      mvn r0, #0
008271dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008271e0  f4 d8 16 00 a4 2b 00 00                          .byte 0xf4, 0xd8, 0x16, 0x00, 0xa4, 0x2b, 0x00, 0x00

; FUNCTION 0x008271e8, declared_size=28, range_size=28, mode=arm
; class-group: CNetworkEmulation
; alias: _ZN17CNetworkEmulationD0Ev
; demangled: CNetworkEmulation::~CNetworkEmulation()
; decoder-mode: arm
008271e8  10 40 2d e9                                      push {r4, lr}
008271ec  00 40 a0 e1                                      mov r4, r0
008271f0  29 ff ff eb                                      bl #0x826e9c
008271f4  04 00 a0 e1                                      mov r0, r4
008271f8  90 a4 eb eb                                      bl #0x310440
008271fc  04 00 a0 e1                                      mov r0, r4
00827200  10 80 bd e8                                      pop {r4, pc}
