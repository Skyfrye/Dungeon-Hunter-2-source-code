; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0041a9fc, declared_size=60, range_size=60, mode=arm
; class-group: DebugCachedCharacter
; alias: _ZN20DebugCachedCharacterD1Ev
; demangled: DebugCachedCharacter::~DebugCachedCharacter()
; decoder-mode: arm
0041a9fc  10 40 2d e9                                      push {r4, lr}
0041aa00  00 40 a0 e1                                      mov r4, r0
0041aa04  28 00 90 e5                                      ldr r0, [r0, #0x28]
0041aa08  00 00 50 e3                                      cmp r0, #0
0041aa0c  05 00 00 0a                                      beq #0x41aa28
0041aa10  00 10 90 e5                                      ldr r1, [r0]
0041aa14  01 10 41 e2                                      sub r1, r1, #1
0041aa18  00 00 51 e3                                      cmp r1, #0
0041aa1c  00 10 80 e5                                      str r1, [r0]
0041aa20  00 00 00 1a                                      bne #0x41aa28
0041aa24  43 e0 0c eb                                      bl #0x752b38
0041aa28  08 00 84 e2                                      add r0, r4, #8
0041aa2c  de e3 fb eb                                      bl #0x3139ac
0041aa30  04 00 a0 e1                                      mov r0, r4
0041aa34  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0041aeec, declared_size=48, range_size=48, mode=arm
; class-group: DebugCachedCharacter
; alias: _ZN20DebugCachedCharacterC1Ev
; demangled: DebugCachedCharacter::DebugCachedCharacter()
; decoder-mode: arm
0041aeec  00 20 a0 e3                                      mov r2, #0
0041aef0  08 10 80 e2                                      add r1, r0, #8
0041aef4  2c 20 80 e5                                      str r2, [r0, #0x2c]
0041aef8  1c 10 80 e5                                      str r1, [r0, #0x1c]
0041aefc  00 20 c0 e5                                      strb r2, [r0]
0041af00  04 20 80 e5                                      str r2, [r0, #4]
0041af04  18 10 80 e5                                      str r1, [r0, #0x18]
0041af08  08 20 c0 e5                                      strb r2, [r0, #8]
0041af0c  20 20 80 e5                                      str r2, [r0, #0x20]
0041af10  24 20 80 e5                                      str r2, [r0, #0x24]
0041af14  28 20 80 e5                                      str r2, [r0, #0x28]
0041af18  1e ff 2f e1                                      bx lr

; FUNCTION 0x00427c44, declared_size=92, range_size=92, mode=arm
; class-group: DebugCachedCharacter
; alias: _ZN20DebugCachedCharacter12RefreshCacheEPN7gameswf9characterEP6MenuFXS2_
; demangled: DebugCachedCharacter::RefreshCache(gameswf::character*, MenuFX*, gameswf::character*)
; decoder-mode: arm
00427c44  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00427c48  00 60 51 e2                                      subs r6, r1, #0
00427c4c  00 40 a0 e1                                      mov r4, r0
00427c50  02 50 a0 e1                                      mov r5, r2
00427c54  03 70 a0 e1                                      mov r7, r3
00427c58  0f 00 00 0a                                      beq #0x427c9c
00427c5c  28 00 80 e2                                      add r0, r0, #0x28
00427c60  d0 ff ff eb                                      bl #0x427ba8
00427c64  44 80 96 e5                                      ldr r8, [r6, #0x44]
00427c68  08 60 84 e2                                      add r6, r4, #8
00427c6c  d0 30 d8 e1                                      ldrsb r3, [r8]
00427c70  01 00 73 e3                                      cmn r3, #1
00427c74  0c 80 98 05                                      ldreq r8, [r8, #0xc]
00427c78  01 80 88 12                                      addne r8, r8, #1
00427c7c  08 00 a0 e1                                      mov r0, r8
00427c80  73 98 fb eb                                      bl #0x30de54
00427c84  08 10 a0 e1                                      mov r1, r8
00427c88  00 20 88 e0                                      add r2, r8, r0
00427c8c  06 00 a0 e1                                      mov r0, r6
00427c90  52 a3 fb eb                                      bl #0x3109e0
00427c94  24 70 84 e5                                      str r7, [r4, #0x24]
00427c98  20 50 84 e5                                      str r5, [r4, #0x20]
00427c9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00427ca0, declared_size=176, range_size=176, mode=arm
; class-group: DebugCachedCharacter
; alias: _ZN20DebugCachedCharacter12RefreshCacheEPKcP6MenuFXPN7gameswf9characterE
; demangled: DebugCachedCharacter::RefreshCache(char const*, MenuFX*, gameswf::character*)
; decoder-mode: arm
00427ca0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00427ca4  00 70 53 e2                                      subs r7, r3, #0
00427ca8  00 40 a0 e1                                      mov r4, r0
00427cac  02 60 a0 e1                                      mov r6, r2
00427cb0  01 50 a0 e1                                      mov r5, r1
00427cb4  1f 00 00 0a                                      beq #0x427d38
00427cb8  02 00 a0 e1                                      mov r0, r2
00427cbc  07 20 a0 e1                                      mov r2, r7
00427cc0  6f 03 0e eb                                      bl #0x7a8a84
00427cc4  00 10 a0 e1                                      mov r1, r0
00427cc8  28 00 84 e2                                      add r0, r4, #0x28
00427ccc  b5 ff ff eb                                      bl #0x427ba8
00427cd0  05 00 a0 e1                                      mov r0, r5
00427cd4  5e 98 fb eb                                      bl #0x30de54
00427cd8  05 10 a0 e1                                      mov r1, r5
00427cdc  00 20 85 e0                                      add r2, r5, r0
00427ce0  08 00 84 e2                                      add r0, r4, #8
00427ce4  3d a3 fb eb                                      bl #0x3109e0
00427ce8  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00427cec  20 60 84 e5                                      str r6, [r4, #0x20]
00427cf0  24 70 84 e5                                      str r7, [r4, #0x24]
00427cf4  00 00 53 e3                                      cmp r3, #0
00427cf8  03 00 00 0a                                      beq #0x427d0c
00427cfc  28 00 94 e5                                      ldr r0, [r4, #0x28]
00427d00  04 30 d0 e5                                      ldrb r3, [r0, #4]
00427d04  00 00 53 e3                                      cmp r3, #0
00427d08  00 00 00 0a                                      beq #0x427d10
00427d0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00427d10  00 10 90 e5                                      ldr r1, [r0]
00427d14  01 10 41 e2                                      sub r1, r1, #1
00427d18  00 00 51 e3                                      cmp r1, #0
00427d1c  00 10 80 e5                                      str r1, [r0]
00427d20  00 00 00 1a                                      bne #0x427d28
00427d24  83 ab 0c eb                                      bl #0x752b38
00427d28  00 30 a0 e3                                      mov r3, #0
00427d2c  2c 30 84 e5                                      str r3, [r4, #0x2c]
00427d30  28 30 84 e5                                      str r3, [r4, #0x28]
00427d34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00427d38  02 00 a0 e1                                      mov r0, r2
00427d3c  07 05 0e eb                                      bl #0x7a9160
00427d40  00 10 a0 e1                                      mov r1, r0
00427d44  28 00 84 e2                                      add r0, r4, #0x28
00427d48  96 ff ff eb                                      bl #0x427ba8
00427d4c  df ff ff ea                                      b #0x427cd0

; FUNCTION 0x00427d50, declared_size=648, range_size=648, mode=arm
; class-group: DebugCachedCharacter
; alias: _ZN20DebugCachedCharacter7GetCharEv
; demangled: DebugCachedCharacter::GetChar()
; decoder-mode: arm
00427d50  70 40 2d e9                                      push {r4, r5, r6, lr}
00427d54  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
00427d58  60 62 9f e5                                      ldr r6, [pc, #0x260]
00427d5c  08 d0 4d e2                                      sub sp, sp, #8
00427d60  00 00 55 e3                                      cmp r5, #0
00427d64  00 40 a0 e1                                      mov r4, r0
00427d68  06 60 8f e0                                      add r6, pc, r6
00427d6c  52 00 00 0a                                      beq #0x427ebc
00427d70  28 00 90 e5                                      ldr r0, [r0, #0x28]
00427d74  04 30 d0 e5                                      ldrb r3, [r0, #4]
00427d78  00 00 53 e3                                      cmp r3, #0
00427d7c  46 00 00 0a                                      beq #0x427e9c
00427d80  00 30 d4 e5                                      ldrb r3, [r4]
00427d84  00 00 53 e3                                      cmp r3, #0
00427d88  05 00 a0 01                                      moveq r0, r5
00427d8c  3c 00 00 1a                                      bne #0x427e84
00427d90  00 00 50 e3                                      cmp r0, #0
00427d94  03 00 00 0a                                      beq #0x427da8
00427d98  28 30 94 e5                                      ldr r3, [r4, #0x28]
00427d9c  04 20 d3 e5                                      ldrb r2, [r3, #4]
00427da0  00 00 52 e3                                      cmp r2, #0
00427da4  76 00 00 0a                                      beq #0x427f84
00427da8  05 00 50 e1                                      cmp r0, r5
00427dac  16 00 00 0a                                      beq #0x427e0c
00427db0  04 30 94 e5                                      ldr r3, [r4, #4]
00427db4  2c 50 94 e5                                      ldr r5, [r4, #0x2c]
00427db8  01 30 83 e2                                      add r3, r3, #1
00427dbc  00 00 55 e3                                      cmp r5, #0
00427dc0  04 30 84 e5                                      str r3, [r4, #4]
00427dc4  05 60 a0 e1                                      mov r6, r5
00427dc8  2b 00 00 0a                                      beq #0x427e7c
00427dcc  28 00 94 e5                                      ldr r0, [r4, #0x28]
00427dd0  04 30 d0 e5                                      ldrb r3, [r0, #4]
00427dd4  00 00 53 e3                                      cmp r3, #0
00427dd8  1e 00 00 0a                                      beq #0x427e58
00427ddc  40 30 96 e5                                      ldr r3, [r6, #0x40]
00427de0  00 00 53 e3                                      cmp r3, #0
00427de4  07 00 00 0a                                      beq #0x427e08
00427de8  3c 00 96 e5                                      ldr r0, [r6, #0x3c]
00427dec  04 20 d0 e5                                      ldrb r2, [r0, #4]
00427df0  00 00 52 e3                                      cmp r2, #0
00427df4  0c 00 00 0a                                      beq #0x427e2c
00427df8  03 60 a0 e1                                      mov r6, r3
00427dfc  40 30 96 e5                                      ldr r3, [r6, #0x40]
00427e00  00 00 53 e3                                      cmp r3, #0
00427e04  f7 ff ff 1a                                      bne #0x427de8
00427e08  05 00 a0 e1                                      mov r0, r5
00427e0c  00 00 50 e3                                      cmp r0, #0
00427e10  03 00 00 0a                                      beq #0x427e24
00427e14  28 30 94 e5                                      ldr r3, [r4, #0x28]
00427e18  04 20 d3 e5                                      ldrb r2, [r3, #4]
00427e1c  00 00 52 e3                                      cmp r2, #0
00427e20  4a 00 00 0a                                      beq #0x427f50
00427e24  08 d0 8d e2                                      add sp, sp, #8
00427e28  70 80 bd e8                                      pop {r4, r5, r6, pc}
00427e2c  00 10 90 e5                                      ldr r1, [r0]
00427e30  01 10 41 e2                                      sub r1, r1, #1
00427e34  00 00 51 e3                                      cmp r1, #0
00427e38  00 10 80 e5                                      str r1, [r0]
00427e3c  00 00 00 1a                                      bne #0x427e44
00427e40  3c ab 0c eb                                      bl #0x752b38
00427e44  00 30 a0 e3                                      mov r3, #0
00427e48  40 30 86 e5                                      str r3, [r6, #0x40]
00427e4c  3c 30 86 e5                                      str r3, [r6, #0x3c]
00427e50  2c 50 94 e5                                      ldr r5, [r4, #0x2c]
00427e54  eb ff ff ea                                      b #0x427e08
00427e58  00 10 90 e5                                      ldr r1, [r0]
00427e5c  01 10 41 e2                                      sub r1, r1, #1
00427e60  00 00 51 e3                                      cmp r1, #0
00427e64  00 10 80 e5                                      str r1, [r0]
00427e68  00 00 00 1a                                      bne #0x427e70
00427e6c  31 ab 0c eb                                      bl #0x752b38
00427e70  00 50 a0 e3                                      mov r5, #0
00427e74  2c 50 84 e5                                      str r5, [r4, #0x2c]
00427e78  28 50 84 e5                                      str r5, [r4, #0x28]
00427e7c  05 00 a0 e1                                      mov r0, r5
00427e80  e7 ff ff ea                                      b #0x427e24
00427e84  04 00 a0 e1                                      mov r0, r4
00427e88  1c 10 84 e2                                      add r1, r4, #0x1c
00427e8c  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
00427e90  82 ff ff eb                                      bl #0x427ca0
00427e94  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00427e98  bc ff ff ea                                      b #0x427d90
00427e9c  00 10 90 e5                                      ldr r1, [r0]
00427ea0  01 10 41 e2                                      sub r1, r1, #1
00427ea4  00 00 51 e3                                      cmp r1, #0
00427ea8  00 10 80 e5                                      str r1, [r0]
00427eac  32 00 00 0a                                      beq #0x427f7c
00427eb0  00 30 a0 e3                                      mov r3, #0
00427eb4  2c 30 84 e5                                      str r3, [r4, #0x2c]
00427eb8  28 30 84 e5                                      str r3, [r4, #0x28]
00427ebc  00 31 9f e5                                      ldr r3, [pc, #0x100]
00427ec0  03 30 96 e7                                      ldr r3, [r6, r3]
00427ec4  00 30 93 e5                                      ldr r3, [r3]
00427ec8  02 00 53 e3                                      cmp r3, #2
00427ecc  37 00 00 0a                                      beq #0x427fb0
00427ed0  01 00 53 e3                                      cmp r3, #1
00427ed4  2c 50 94 15                                      ldrne r5, [r4, #0x2c]
00427ed8  a8 ff ff 1a                                      bne #0x427d80
00427edc  e4 00 9f e5                                      ldr r0, [pc, #0xe4]
00427ee0  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
00427ee4  e4 20 9f e5                                      ldr r2, [pc, #0xe4]
00427ee8  00 00 96 e7                                      ldr r0, [r6, r0]
00427eec  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
00427ef0  32 c0 a0 e3                                      mov ip, #0x32
00427ef4  01 10 8f e0                                      add r1, pc, r1
00427ef8  a8 00 80 e2                                      add r0, r0, #0xa8
00427efc  02 20 8f e0                                      add r2, pc, r2
00427f00  03 30 8f e0                                      add r3, pc, r3
00427f04  00 c0 8d e5                                      str ip, [sp]
00427f08  3d 98 fb eb                                      bl #0x30e004
00427f0c  2c 50 94 e5                                      ldr r5, [r4, #0x2c]
00427f10  00 00 55 e3                                      cmp r5, #0
00427f14  99 ff ff 0a                                      beq #0x427d80
00427f18  28 00 94 e5                                      ldr r0, [r4, #0x28]
00427f1c  04 30 d0 e5                                      ldrb r3, [r0, #4]
00427f20  00 00 53 e3                                      cmp r3, #0
00427f24  95 ff ff 1a                                      bne #0x427d80
00427f28  00 10 90 e5                                      ldr r1, [r0]
00427f2c  01 10 41 e2                                      sub r1, r1, #1
00427f30  00 00 51 e3                                      cmp r1, #0
00427f34  00 10 80 e5                                      str r1, [r0]
00427f38  00 00 00 1a                                      bne #0x427f40
00427f3c  fd aa 0c eb                                      bl #0x752b38
00427f40  00 50 a0 e3                                      mov r5, #0
00427f44  28 50 84 e5                                      str r5, [r4, #0x28]
00427f48  2c 50 84 e5                                      str r5, [r4, #0x2c]
00427f4c  8b ff ff ea                                      b #0x427d80
00427f50  00 10 93 e5                                      ldr r1, [r3]
00427f54  01 10 41 e2                                      sub r1, r1, #1
00427f58  00 00 51 e3                                      cmp r1, #0
00427f5c  00 10 83 e5                                      str r1, [r3]
00427f60  01 00 00 1a                                      bne #0x427f6c
00427f64  03 00 a0 e1                                      mov r0, r3
00427f68  f2 aa 0c eb                                      bl #0x752b38
00427f6c  00 00 a0 e3                                      mov r0, #0
00427f70  2c 00 84 e5                                      str r0, [r4, #0x2c]
00427f74  28 00 84 e5                                      str r0, [r4, #0x28]
00427f78  a9 ff ff ea                                      b #0x427e24
00427f7c  ed aa 0c eb                                      bl #0x752b38
00427f80  ca ff ff ea                                      b #0x427eb0
00427f84  00 10 93 e5                                      ldr r1, [r3]
00427f88  01 10 41 e2                                      sub r1, r1, #1
00427f8c  00 00 51 e3                                      cmp r1, #0
00427f90  00 10 83 e5                                      str r1, [r3]
00427f94  01 00 00 1a                                      bne #0x427fa0
00427f98  03 00 a0 e1                                      mov r0, r3
00427f9c  e5 aa 0c eb                                      bl #0x752b38
00427fa0  00 00 a0 e3                                      mov r0, #0
00427fa4  28 00 84 e5                                      str r0, [r4, #0x28]
00427fa8  2c 00 84 e5                                      str r0, [r4, #0x2c]
00427fac  7d ff ff ea                                      b #0x427da8
00427fb0  00 30 a0 e3                                      mov r3, #0
00427fb4  00 30 83 e5                                      str r3, [r3]
00427fb8  2c 50 94 e5                                      ldr r5, [r4, #0x2c]
00427fbc  6f ff ff ea                                      b #0x427d80
; mapping-symbol data/literal pool
00427fc0  28 cd 56 00 c0 39 00 00 c0 19 00 00 e4 64 49 00  .byte 0x28, 0xcd, 0x56, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xe4, 0x64, 0x49, 0x00
00427fd0  f4 16 4a 00 10 17 4a 00                          .byte 0xf4, 0x16, 0x4a, 0x00, 0x10, 0x17, 0x4a, 0x00

; FUNCTION 0x00431428, declared_size=80, range_size=80, mode=arm
; class-group: DebugCachedCharacter
; alias: _ZN20DebugCachedCharacterC1EPN7gameswf9characterE.clone.2
; demangled: DebugCachedCharacter::DebugCachedCharacter(gameswf::character*) [clone .clone.2]
; decoder-mode: arm
00431428  70 40 2d e9                                      push {r4, r5, r6, lr}
0043142c  08 30 80 e2                                      add r3, r0, #8
00431430  00 40 a0 e1                                      mov r4, r0
00431434  00 50 a0 e3                                      mov r5, #0
00431438  03 00 a0 e1                                      mov r0, r3
0043143c  18 30 84 e5                                      str r3, [r4, #0x18]
00431440  1c 30 84 e5                                      str r3, [r4, #0x1c]
00431444  10 10 a0 e3                                      mov r1, #0x10
00431448  04 50 84 e5                                      str r5, [r4, #4]
0043144c  8a 80 fb eb                                      bl #0x31167c
00431450  18 30 94 e5                                      ldr r3, [r4, #0x18]
00431454  28 00 84 e2                                      add r0, r4, #0x28
00431458  00 50 c3 e5                                      strb r5, [r3]
0043145c  2c 50 84 e5                                      str r5, [r4, #0x2c]
00431460  20 50 84 e5                                      str r5, [r4, #0x20]
00431464  24 50 84 e5                                      str r5, [r4, #0x24]
00431468  28 50 84 e5                                      str r5, [r4, #0x28]
0043146c  89 f1 ff eb                                      bl #0x42da98
00431470  04 00 a0 e1                                      mov r0, r4
00431474  70 80 bd e8                                      pop {r4, r5, r6, pc}
