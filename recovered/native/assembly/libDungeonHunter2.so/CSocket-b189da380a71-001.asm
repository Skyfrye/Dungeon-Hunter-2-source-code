; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00827b5c, declared_size=84, range_size=84, mode=arm
; class-group: CSocket
; alias: _ZN7CSocketC2Ev
; demangled: CSocket::CSocket()
; decoder-mode: arm
00827b5c  44 10 9f e5                                      ldr r1, [pc, #0x44]
00827b60  44 c0 9f e5                                      ldr ip, [pc, #0x44]
00827b64  00 20 a0 e3                                      mov r2, #0
00827b68  01 10 8f e0                                      add r1, pc, r1
00827b6c  0c c0 91 e7                                      ldr ip, [r1, ip]
00827b70  04 40 2d e5                                      str r4, [sp, #-4]!
00827b74  08 c0 8c e2                                      add ip, ip, #8
00827b78  00 40 e0 e3                                      mvn r4, #0
00827b7c  00 c0 80 e5                                      str ip, [r0]
00827b80  01 c0 a0 e3                                      mov ip, #1
00827b84  b0 21 c0 e1                                      strh r2, [r0, #0x10]
00827b88  04 40 80 e5                                      str r4, [r0, #4]
00827b8c  09 c0 c0 e5                                      strb ip, [r0, #9]
00827b90  08 20 c0 e5                                      strb r2, [r0, #8]
00827b94  0a 20 c0 e5                                      strb r2, [r0, #0xa]
00827b98  0b 20 c0 e5                                      strb r2, [r0, #0xb]
00827b9c  0c 20 80 e5                                      str r2, [r0, #0xc]
00827ba0  10 00 bd e8                                      ldm sp!, {r4}
00827ba4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00827ba8  28 cf 16 00 0c 45 00 00                          .byte 0x28, 0xcf, 0x16, 0x00, 0x0c, 0x45, 0x00, 0x00

; FUNCTION 0x00827bb0, declared_size=84, range_size=84, mode=arm
; class-group: CSocket
; alias: _ZN7CSocketC1Ev
; demangled: CSocket::CSocket()
; decoder-mode: arm
00827bb0  44 10 9f e5                                      ldr r1, [pc, #0x44]
00827bb4  44 c0 9f e5                                      ldr ip, [pc, #0x44]
00827bb8  00 20 a0 e3                                      mov r2, #0
00827bbc  01 10 8f e0                                      add r1, pc, r1
00827bc0  0c c0 91 e7                                      ldr ip, [r1, ip]
00827bc4  04 40 2d e5                                      str r4, [sp, #-4]!
00827bc8  08 c0 8c e2                                      add ip, ip, #8
00827bcc  00 40 e0 e3                                      mvn r4, #0
00827bd0  00 c0 80 e5                                      str ip, [r0]
00827bd4  01 c0 a0 e3                                      mov ip, #1
00827bd8  b0 21 c0 e1                                      strh r2, [r0, #0x10]
00827bdc  04 40 80 e5                                      str r4, [r0, #4]
00827be0  09 c0 c0 e5                                      strb ip, [r0, #9]
00827be4  08 20 c0 e5                                      strb r2, [r0, #8]
00827be8  0a 20 c0 e5                                      strb r2, [r0, #0xa]
00827bec  0b 20 c0 e5                                      strb r2, [r0, #0xb]
00827bf0  0c 20 80 e5                                      str r2, [r0, #0xc]
00827bf4  10 00 bd e8                                      ldm sp!, {r4}
00827bf8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00827bfc  d4 ce 16 00 0c 45 00 00                          .byte 0xd4, 0xce, 0x16, 0x00, 0x0c, 0x45, 0x00, 0x00

; FUNCTION 0x00827c04, declared_size=216, range_size=216, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket11IsConnectedEv
; demangled: CSocket::IsConnected()
; decoder-mode: arm
00827c04  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00827c08  11 de 4d e2                                      sub sp, sp, #0x110
00827c0c  00 40 a0 e3                                      mov r4, #0
00827c10  08 70 8d e2                                      add r7, sp, #8
00827c14  00 60 a0 e1                                      mov r6, r0
00827c18  04 10 a0 e1                                      mov r1, r4
00827c1c  80 20 a0 e3                                      mov r2, #0x80
00827c20  07 00 a0 e1                                      mov r0, r7
00827c24  08 41 8d e5                                      str r4, [sp, #0x108]
00827c28  0c 41 8d e5                                      str r4, [sp, #0x10c]
00827c2c  0b 9a eb eb                                      bl #0x30e460
00827c30  04 c0 96 e5                                      ldr ip, [r6, #4]
00827c34  11 1e 8d e2                                      add r1, sp, #0x110
00827c38  01 50 a0 e3                                      mov r5, #1
00827c3c  cc 32 a0 e1                                      asr r3, ip, #5
00827c40  1f c0 0c e2                                      and ip, ip, #0x1f
00827c44  03 31 81 e0                                      add r3, r1, r3, lsl #2
00827c48  08 01 13 e5                                      ldr r0, [r3, #-0x108]
00827c4c  88 80 8d e2                                      add r8, sp, #0x88
00827c50  04 10 a0 e1                                      mov r1, r4
00827c54  15 cc 80 e1                                      orr ip, r0, r5, lsl ip
00827c58  80 20 a0 e3                                      mov r2, #0x80
00827c5c  08 c1 03 e5                                      str ip, [r3, #-0x108]
00827c60  08 00 a0 e1                                      mov r0, r8
00827c64  fd 99 eb eb                                      bl #0x30e460
00827c68  04 00 96 e5                                      ldr r0, [r6, #4]
00827c6c  11 3e 8d e2                                      add r3, sp, #0x110
00827c70  08 10 a0 e1                                      mov r1, r8
00827c74  c0 c2 a0 e1                                      asr ip, r0, #5
00827c78  1f e0 00 e2                                      and lr, r0, #0x1f
00827c7c  0c c1 83 e0                                      add ip, r3, ip, lsl #2
00827c80  88 30 1c e5                                      ldr r3, [ip, #-0x88]
00827c84  07 20 a0 e1                                      mov r2, r7
00827c88  05 00 80 e0                                      add r0, r0, r5
00827c8c  15 ee 83 e1                                      orr lr, r3, r5, lsl lr
00827c90  04 30 a0 e1                                      mov r3, r4
00827c94  88 e0 0c e5                                      str lr, [ip, #-0x88]
00827c98  42 cf 8d e2                                      add ip, sp, #0x108
00827c9c  00 c0 8d e5                                      str ip, [sp]
00827ca0  71 98 eb eb                                      bl #0x30de6c
00827ca4  04 00 50 e1                                      cmp r0, r4
00827ca8  04 00 a0 d1                                      movle r0, r4
00827cac  08 00 00 da                                      ble #0x827cd4
00827cb0  04 30 96 e5                                      ldr r3, [r6, #4]
00827cb4  11 1e 8d e2                                      add r1, sp, #0x110
00827cb8  c3 22 a0 e1                                      asr r2, r3, #5
00827cbc  1f 30 03 e2                                      and r3, r3, #0x1f
00827cc0  02 21 81 e0                                      add r2, r1, r2, lsl #2
00827cc4  08 21 12 e5                                      ldr r2, [r2, #-0x108]
00827cc8  15 23 12 e0                                      ands r2, r2, r5, lsl r3
00827ccc  00 00 a0 03                                      moveq r0, #0
00827cd0  01 00 a0 13                                      movne r0, #1
00827cd4  11 de 8d e2                                      add sp, sp, #0x110
00827cd8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00827cdc, declared_size=196, range_size=196, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket13DataAvailableEi
; demangled: CSocket::DataAvailable(int)
; decoder-mode: arm
00827cdc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00827ce0  90 d0 4d e2                                      sub sp, sp, #0x90
00827ce4  08 70 8d e2                                      add r7, sp, #8
00827ce8  01 60 a0 e1                                      mov r6, r1
00827cec  00 40 a0 e1                                      mov r4, r0
00827cf0  80 20 a0 e3                                      mov r2, #0x80
00827cf4  00 10 a0 e3                                      mov r1, #0
00827cf8  07 00 a0 e1                                      mov r0, r7
00827cfc  d7 99 eb eb                                      bl #0x30e460
00827d00  04 00 94 e5                                      ldr r0, [r4, #4]
00827d04  90 10 8d e2                                      add r1, sp, #0x90
00827d08  01 50 a0 e3                                      mov r5, #1
00827d0c  c0 e2 a0 e1                                      asr lr, r0, #5
00827d10  1f 80 00 e2                                      and r8, r0, #0x1f
00827d14  0e e1 81 e0                                      add lr, r1, lr, lsl #2
00827d18  88 30 1e e5                                      ldr r3, [lr, #-0x88]
00827d1c  83 ce 0d e3                                      movw ip, #0xde83
00827d20  1b c3 44 e3                                      movt ip, #0x431b
00827d24  15 88 83 e1                                      orr r8, r3, r5, lsl r8
00827d28  9c 26 cc e0                                      smull r2, ip, ip, r6
00827d2c  3d 39 a0 e3                                      mov r3, #0xf4000
00827d30  c6 2f a0 e1                                      asr r2, r6, #0x1f
00827d34  4c c9 62 e0                                      rsb ip, r2, ip, asr #18
00827d38  09 3d 83 e2                                      add r3, r3, #0x240
00827d3c  93 6c 66 e0                                      mls r6, r3, ip, r6
00827d40  00 20 a0 e3                                      mov r2, #0
00827d44  02 30 a0 e1                                      mov r3, r2
00827d48  88 80 0e e5                                      str r8, [lr, #-0x88]
00827d4c  07 10 a0 e1                                      mov r1, r7
00827d50  88 e0 8d e2                                      add lr, sp, #0x88
00827d54  05 00 80 e0                                      add r0, r0, r5
00827d58  8c 60 8d e5                                      str r6, [sp, #0x8c]
00827d5c  00 e0 8d e5                                      str lr, [sp]
00827d60  88 c0 8d e5                                      str ip, [sp, #0x88]
00827d64  40 98 eb eb                                      bl #0x30de6c
00827d68  04 30 94 e5                                      ldr r3, [r4, #4]
00827d6c  90 10 8d e2                                      add r1, sp, #0x90
00827d70  00 00 50 e3                                      cmp r0, #0
00827d74  c3 22 a0 e1                                      asr r2, r3, #5
00827d78  00 00 a0 d3                                      movle r0, #0
00827d7c  02 21 81 e0                                      add r2, r1, r2, lsl #2
00827d80  88 20 12 e5                                      ldr r2, [r2, #-0x88]
00827d84  03 00 00 da                                      ble #0x827d98
00827d88  1f 30 03 e2                                      and r3, r3, #0x1f
00827d8c  15 33 12 e0                                      ands r3, r2, r5, lsl r3
00827d90  00 00 a0 03                                      moveq r0, #0
00827d94  01 00 a0 13                                      movne r0, #1
00827d98  90 d0 8d e2                                      add sp, sp, #0x90
00827d9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00827da0, declared_size=320, range_size=320, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket15GetLocalAddressEv
; demangled: CSocket::GetLocalAddress()
; decoder-mode: arm
00827da0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00827da4  28 71 9f e5                                      ldr r7, [pc, #0x128]
00827da8  28 a1 9f e5                                      ldr sl, [pc, #0x128]
00827dac  fb de 4d e2                                      sub sp, sp, #0xfb0
00827db0  07 70 8f e0                                      add r7, pc, r7
00827db4  0a 30 97 e7                                      ldr r3, [r7, sl]
00827db8  04 d0 4d e2                                      sub sp, sp, #4
00827dbc  02 00 a0 e3                                      mov r0, #2
00827dc0  00 30 93 e5                                      ldr r3, [r3]
00827dc4  00 90 a0 e3                                      mov sb, #0
00827dc8  10 40 8d e2                                      add r4, sp, #0x10
00827dcc  ac 3f 8d e5                                      str r3, [sp, #0xfac]
00827dd0  04 50 44 e2                                      sub r5, r4, #4
00827dd4  fa 3e a0 e3                                      mov r3, #0xfa0
00827dd8  00 10 a0 e1                                      mov r1, r0
00827ddc  09 20 a0 e1                                      mov r2, sb
00827de0  28 00 8d e9                                      stmib sp, {r3, r5}
00827de4  29 9b eb eb                                      bl #0x30ea90
00827de8  01 00 70 e3                                      cmn r0, #1
00827dec  00 80 a0 e1                                      mov r8, r0
00827df0  2d 00 00 0a                                      beq #0x827eac
00827df4  0c 20 44 e2                                      sub r2, r4, #0xc
00827df8  12 19 08 e3                                      movw r1, #0x8912
00827dfc  f2 98 eb eb                                      bl #0x30e1cc
00827e00  09 00 50 e1                                      cmp r0, sb
00827e04  28 00 00 ba                                      blt #0x827eac
00827e08  04 30 9d e5                                      ldr r3, [sp, #4]
00827e0c  c8 b0 9f e5                                      ldr fp, [pc, #0xc8]
00827e10  05 40 a0 e1                                      mov r4, r5
00827e14  03 30 85 e0                                      add r3, r5, r3
00827e18  03 00 54 e1                                      cmp r4, r3
00827e1c  0b b0 8f e0                                      add fp, pc, fp
00827e20  0a 00 00 2a                                      bhs #0x827e50
00827e24  14 00 94 e5                                      ldr r0, [r4, #0x14]
00827e28  77 99 eb eb                                      bl #0x30e40c
00827e2c  b0 31 d4 e1                                      ldrh r3, [r4, #0x10]
00827e30  00 60 a0 e1                                      mov r6, r0
00827e34  02 00 53 e3                                      cmp r3, #2
00827e38  07 00 00 0a                                      beq #0x827e5c
00827e3c  04 30 9d e5                                      ldr r3, [sp, #4]
00827e40  20 40 84 e2                                      add r4, r4, #0x20
00827e44  03 30 85 e0                                      add r3, r5, r3
00827e48  03 00 54 e1                                      cmp r4, r3
00827e4c  f4 ff ff 3a                                      blo #0x827e24
00827e50  08 00 a0 e1                                      mov r0, r8
00827e54  4c 9b eb eb                                      bl #0x30eb8c
00827e58  14 00 00 ea                                      b #0x827eb0
00827e5c  3a 10 a0 e3                                      mov r1, #0x3a
00827e60  04 00 a0 e1                                      mov r0, r4
00827e64  6f 9b eb eb                                      bl #0x30ec28
00827e68  00 00 50 e3                                      cmp r0, #0
00827e6c  00 90 c0 15                                      strbne sb, [r0]
00827e70  13 19 08 e3                                      movw r1, #0x8913
00827e74  08 00 a0 e1                                      mov r0, r8
00827e78  04 20 a0 e1                                      mov r2, r4
00827e7c  d2 98 eb eb                                      bl #0x30e1cc
00827e80  b0 31 d4 e1                                      ldrh r3, [r4, #0x10]
00827e84  01 00 13 e3                                      tst r3, #1
00827e88  eb ff ff 0a                                      beq #0x827e3c
00827e8c  06 00 a0 e1                                      mov r0, r6
00827e90  0b 10 a0 e1                                      mov r1, fp
00827e94  20 99 eb eb                                      bl #0x30e31c
00827e98  00 00 50 e3                                      cmp r0, #0
00827e9c  e6 ff ff 0a                                      beq #0x827e3c
00827ea0  06 00 a0 e1                                      mov r0, r6
00827ea4  22 99 eb eb                                      bl #0x30e334
00827ea8  00 00 00 ea                                      b #0x827eb0
00827eac  00 00 a0 e3                                      mov r0, #0
00827eb0  0a 30 97 e7                                      ldr r3, [r7, sl]
00827eb4  ac 2f 9d e5                                      ldr r2, [sp, #0xfac]
00827eb8  00 30 93 e5                                      ldr r3, [r3]
00827ebc  03 00 52 e1                                      cmp r2, r3
00827ec0  02 00 00 1a                                      bne #0x827ed0
00827ec4  ed df 8d e2                                      add sp, sp, #0x3b4
00827ec8  03 db 8d e2                                      add sp, sp, #0xc00
00827ecc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00827ed0  0e 99 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00827ed4  e0 cc 16 00 ac 40 00 00 94 45 0e 00              .byte 0xe0, 0xcc, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x94, 0x45, 0x0e, 0x00

; FUNCTION 0x00827ee0, declared_size=92, range_size=92, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket5CloseEv
; demangled: CSocket::Close()
; decoder-mode: arm
00827ee0  70 40 2d e9                                      push {r4, r5, r6, lr}
00827ee4  00 40 a0 e1                                      mov r4, r0
00827ee8  04 00 90 e5                                      ldr r0, [r0, #4]
00827eec  00 50 a0 e3                                      mov r5, #0
00827ef0  08 50 c4 e5                                      strb r5, [r4, #8]
00827ef4  05 00 50 e1                                      cmp r0, r5
00827ef8  0b 50 c4 e5                                      strb r5, [r4, #0xb]
00827efc  02 00 00 ba                                      blt #0x827f0c
00827f00  21 9b eb eb                                      bl #0x30eb8c
00827f04  00 50 50 e2                                      subs r5, r0, #0
00827f08  03 00 00 ba                                      blt #0x827f1c
00827f0c  00 30 e0 e3                                      mvn r3, #0
00827f10  04 30 84 e5                                      str r3, [r4, #4]
00827f14  05 00 a0 e1                                      mov r0, r5
00827f18  70 80 bd e8                                      pop {r4, r5, r6, pc}
00827f1c  00 30 94 e5                                      ldr r3, [r4]
00827f20  04 00 a0 e1                                      mov r0, r4
00827f24  0f e0 a0 e1                                      mov lr, pc
00827f28  04 f0 93 e5                                      ldr pc, [r3, #4]
00827f2c  00 30 e0 e3                                      mvn r3, #0
00827f30  04 30 84 e5                                      str r3, [r4, #4]
00827f34  05 00 a0 e1                                      mov r0, r5
00827f38  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00827f3c, declared_size=52, range_size=52, mode=arm
; class-group: CSocket
; alias: _ZN7CSocketD1Ev
; demangled: CSocket::~CSocket()
; decoder-mode: arm
00827f3c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00827f40  24 20 9f e5                                      ldr r2, [pc, #0x24]
00827f44  10 40 2d e9                                      push {r4, lr}
00827f48  03 30 8f e0                                      add r3, pc, r3
00827f4c  02 20 93 e7                                      ldr r2, [r3, r2]
00827f50  00 40 a0 e1                                      mov r4, r0
00827f54  08 20 82 e2                                      add r2, r2, #8
00827f58  00 20 80 e5                                      str r2, [r0]
00827f5c  df ff ff eb                                      bl #0x827ee0
00827f60  04 00 a0 e1                                      mov r0, r4
00827f64  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00827f68  48 cb 16 00 0c 45 00 00                          .byte 0x48, 0xcb, 0x16, 0x00, 0x0c, 0x45, 0x00, 0x00

; FUNCTION 0x00827f70, declared_size=52, range_size=52, mode=arm
; class-group: CSocket
; alias: _ZN7CSocketD2Ev
; demangled: CSocket::~CSocket()
; decoder-mode: arm
00827f70  24 30 9f e5                                      ldr r3, [pc, #0x24]
00827f74  24 20 9f e5                                      ldr r2, [pc, #0x24]
00827f78  10 40 2d e9                                      push {r4, lr}
00827f7c  03 30 8f e0                                      add r3, pc, r3
00827f80  02 20 93 e7                                      ldr r2, [r3, r2]
00827f84  00 40 a0 e1                                      mov r4, r0
00827f88  08 20 82 e2                                      add r2, r2, #8
00827f8c  00 20 80 e5                                      str r2, [r0]
00827f90  d2 ff ff eb                                      bl #0x827ee0
00827f94  04 00 a0 e1                                      mov r0, r4
00827f98  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00827f9c  14 cb 16 00 0c 45 00 00                          .byte 0x14, 0xcb, 0x16, 0x00, 0x0c, 0x45, 0x00, 0x00

; FUNCTION 0x00827fa4, declared_size=148, range_size=148, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket12GetLocalPortEv
; demangled: CSocket::GetLocalPort()
; decoder-mode: arm
00827fa4  70 40 2d e9                                      push {r4, r5, r6, lr}
00827fa8  80 40 9f e5                                      ldr r4, [pc, #0x80]
00827fac  80 50 9f e5                                      ldr r5, [pc, #0x80]
00827fb0  18 d0 4d e2                                      sub sp, sp, #0x18
00827fb4  04 40 8f e0                                      add r4, pc, r4
00827fb8  05 30 94 e7                                      ldr r3, [r4, r5]
00827fbc  00 60 a0 e1                                      mov r6, r0
00827fc0  04 10 8d e2                                      add r1, sp, #4
00827fc4  00 30 93 e5                                      ldr r3, [r3]
00827fc8  04 00 90 e5                                      ldr r0, [r0, #4]
00827fcc  0d 20 a0 e1                                      mov r2, sp
00827fd0  14 30 8d e5                                      str r3, [sp, #0x14]
00827fd4  10 30 a0 e3                                      mov r3, #0x10
00827fd8  00 30 8d e5                                      str r3, [sp]
00827fdc  9a 99 eb eb                                      bl #0x30e64c
00827fe0  00 00 50 e3                                      cmp r0, #0
00827fe4  0a 00 00 ba                                      blt #0x828014
00827fe8  b6 30 dd e1                                      ldrh r3, [sp, #6]
00827fec  23 04 a0 e1                                      lsr r0, r3, #8
00827ff0  03 34 80 e1                                      orr r3, r0, r3, lsl #8
00827ff4  73 00 ff e6                                      uxth r0, r3
00827ff8  05 30 94 e7                                      ldr r3, [r4, r5]
00827ffc  14 20 9d e5                                      ldr r2, [sp, #0x14]
00828000  00 30 93 e5                                      ldr r3, [r3]
00828004  03 00 52 e1                                      cmp r2, r3
00828008  07 00 00 1a                                      bne #0x82802c
0082800c  18 d0 8d e2                                      add sp, sp, #0x18
00828010  70 80 bd e8                                      pop {r4, r5, r6, pc}
00828014  06 00 a0 e1                                      mov r0, r6
00828018  00 30 96 e5                                      ldr r3, [r6]
0082801c  0f e0 a0 e1                                      mov lr, pc
00828020  04 f0 93 e5                                      ldr pc, [r3, #4]
00828024  00 00 a0 e3                                      mov r0, #0
00828028  f2 ff ff ea                                      b #0x827ff8
0082802c  b7 98 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00828030  dc ca 16 00 ac 40 00 00                          .byte 0xdc, 0xca, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00828038, declared_size=28, range_size=28, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket10WouldBlockEv
; demangled: CSocket::WouldBlock()
; decoder-mode: arm
00828038  10 40 2d e9                                      push {r4, lr}
0082803c  63 97 eb eb                                      bl #0x30ddd0
00828040  00 00 90 e5                                      ldr r0, [r0]
00828044  0b 00 50 e3                                      cmp r0, #0xb
00828048  00 00 a0 13                                      movne r0, #0
0082804c  01 00 a0 03                                      moveq r0, #1
00828050  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00828054, declared_size=16, range_size=16, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket14GetSocketErrorEv
; demangled: CSocket::GetSocketError()
; decoder-mode: arm
00828054  10 40 2d e9                                      push {r4, lr}
00828058  5c 97 eb eb                                      bl #0x30ddd0
0082805c  00 00 90 e5                                      ldr r0, [r0]
00828060  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00828064, declared_size=168, range_size=168, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket14GetPeerAddressEv
; demangled: CSocket::GetPeerAddress()
; decoder-mode: arm
00828064  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00828068  94 40 9f e5                                      ldr r4, [pc, #0x94]
0082806c  94 50 9f e5                                      ldr r5, [pc, #0x94]
00828070  47 df 4d e2                                      sub sp, sp, #0x11c
00828074  04 40 8f e0                                      add r4, pc, r4
00828078  05 30 94 e7                                      ldr r3, [r4, r5]
0082807c  00 60 a0 e1                                      mov r6, r0
00828080  41 1f 8d e2                                      add r1, sp, #0x104
00828084  00 30 93 e5                                      ldr r3, [r3]
00828088  04 00 90 e5                                      ldr r0, [r0, #4]
0082808c  0d 20 a0 e1                                      mov r2, sp
00828090  14 31 8d e5                                      str r3, [sp, #0x114]
00828094  10 30 a0 e3                                      mov r3, #0x10
00828098  00 30 8d e5                                      str r3, [sp]
0082809c  02 98 eb eb                                      bl #0x30e0ac
008280a0  00 00 50 e3                                      cmp r0, #0
008280a4  08 71 9d a5                                      ldrge r7, [sp, #0x108]
008280a8  07 00 00 ba                                      blt #0x8280cc
008280ac  05 30 94 e7                                      ldr r3, [r4, r5]
008280b0  14 21 9d e5                                      ldr r2, [sp, #0x114]
008280b4  07 00 a0 e1                                      mov r0, r7
008280b8  00 30 93 e5                                      ldr r3, [r3]
008280bc  03 00 52 e1                                      cmp r2, r3
008280c0  0e 00 00 1a                                      bne #0x828100
008280c4  47 df 8d e2                                      add sp, sp, #0x11c
008280c8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
008280cc  3f 97 eb eb                                      bl #0x30ddd0
008280d0  04 10 8d e2                                      add r1, sp, #4
008280d4  01 2c a0 e3                                      mov r2, #0x100
008280d8  00 00 90 e5                                      ldr r0, [r0]
008280dc  07 9b eb eb                                      bl #0x30ed00
008280e0  00 30 96 e5                                      ldr r3, [r6]
008280e4  06 00 a0 e1                                      mov r0, r6
008280e8  0c 70 96 e5                                      ldr r7, [r6, #0xc]
008280ec  0f e0 a0 e1                                      mov lr, pc
008280f0  04 f0 93 e5                                      ldr pc, [r3, #4]
008280f4  0c 00 96 e5                                      ldr r0, [r6, #0xc]
008280f8  c3 98 eb eb                                      bl #0x30e40c
008280fc  ea ff ff ea                                      b #0x8280ac
00828100  82 98 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00828104  1c ca 16 00 ac 40 00 00                          .byte 0x1c, 0xca, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0082810c, declared_size=156, range_size=156, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket11GetPeerPortEv
; demangled: CSocket::GetPeerPort()
; decoder-mode: arm
0082810c  70 40 2d e9                                      push {r4, r5, r6, lr}
00828110  88 40 9f e5                                      ldr r4, [pc, #0x88]
00828114  88 50 9f e5                                      ldr r5, [pc, #0x88]
00828118  46 df 4d e2                                      sub sp, sp, #0x118
0082811c  04 40 8f e0                                      add r4, pc, r4
00828120  05 30 94 e7                                      ldr r3, [r4, r5]
00828124  00 60 a0 e1                                      mov r6, r0
00828128  41 1f 8d e2                                      add r1, sp, #0x104
0082812c  00 30 93 e5                                      ldr r3, [r3]
00828130  04 00 90 e5                                      ldr r0, [r0, #4]
00828134  0d 20 a0 e1                                      mov r2, sp
00828138  14 31 8d e5                                      str r3, [sp, #0x114]
0082813c  10 30 a0 e3                                      mov r3, #0x10
00828140  00 30 8d e5                                      str r3, [sp]
00828144  d8 97 eb eb                                      bl #0x30e0ac
00828148  00 00 50 e3                                      cmp r0, #0
0082814c  0b 00 00 ba                                      blt #0x828180
00828150  01 2c 8d e2                                      add r2, sp, #0x100
00828154  b6 30 d2 e1                                      ldrh r3, [r2, #6]
00828158  23 04 a0 e1                                      lsr r0, r3, #8
0082815c  03 34 80 e1                                      orr r3, r0, r3, lsl #8
00828160  73 00 ff e6                                      uxth r0, r3
00828164  05 30 94 e7                                      ldr r3, [r4, r5]
00828168  14 21 9d e5                                      ldr r2, [sp, #0x114]
0082816c  00 30 93 e5                                      ldr r3, [r3]
00828170  03 00 52 e1                                      cmp r2, r3
00828174  08 00 00 1a                                      bne #0x82819c
00828178  46 df 8d e2                                      add sp, sp, #0x118
0082817c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00828180  12 97 eb eb                                      bl #0x30ddd0
00828184  04 10 8d e2                                      add r1, sp, #4
00828188  00 00 90 e5                                      ldr r0, [r0]
0082818c  01 2c a0 e3                                      mov r2, #0x100
00828190  da 9a eb eb                                      bl #0x30ed00
00828194  b0 01 d6 e1                                      ldrh r0, [r6, #0x10]
00828198  f1 ff ff ea                                      b #0x828164
0082819c  5b 98 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008281a0  74 c9 16 00 ac 40 00 00                          .byte 0x74, 0xc9, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008281a8, declared_size=260, range_size=260, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket11ReceiveFromER7in_addrRtPci
; demangled: CSocket::ReceiveFrom(in_addr&, unsigned short&, char*, int)
; decoder-mode: arm
008281a8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008281ac  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
008281b0  f0 50 9f e5                                      ldr r5, [pc, #0xf0]
008281b4  00 60 a0 e1                                      mov r6, r0
008281b8  04 40 8f e0                                      add r4, pc, r4
008281bc  05 c0 94 e7                                      ldr ip, [r4, r5]
008281c0  08 00 d0 e5                                      ldrb r0, [r0, #8]
008281c4  01 80 a0 e1                                      mov r8, r1
008281c8  00 10 9c e5                                      ldr r1, [ip]
008281cc  20 d0 4d e2                                      sub sp, sp, #0x20
008281d0  00 00 50 e3                                      cmp r0, #0
008281d4  02 70 a0 e1                                      mov r7, r2
008281d8  1c 10 8d e5                                      str r1, [sp, #0x1c]
008281dc  00 90 e0 03                                      mvneq sb, #0
008281e0  07 00 00 1a                                      bne #0x828204
008281e4  05 30 94 e7                                      ldr r3, [r4, r5]
008281e8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
008281ec  09 00 a0 e1                                      mov r0, sb
008281f0  00 30 93 e5                                      ldr r3, [r3]
008281f4  03 00 52 e1                                      cmp r2, r3
008281f8  28 00 00 1a                                      bne #0x8282a0
008281fc  20 d0 8d e2                                      add sp, sp, #0x20
00828200  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00828204  00 a0 a0 e3                                      mov sl, #0
00828208  00 a0 88 e5                                      str sl, [r8]
0082820c  10 c0 a0 e3                                      mov ip, #0x10
00828210  b0 a0 c2 e1                                      strh sl, [r2]
00828214  04 00 96 e5                                      ldr r0, [r6, #4]
00828218  08 c0 8d e5                                      str ip, [sp, #8]
0082821c  0c c0 8d e2                                      add ip, sp, #0xc
00828220  03 10 a0 e1                                      mov r1, r3
00828224  00 c0 8d e5                                      str ip, [sp]
00828228  40 20 9d e5                                      ldr r2, [sp, #0x40]
0082822c  08 c0 8d e2                                      add ip, sp, #8
00828230  0a 30 a0 e1                                      mov r3, sl
00828234  04 c0 8d e5                                      str ip, [sp, #4]
00828238  5c 9a eb eb                                      bl #0x30ebb0
0082823c  00 90 50 e2                                      subs sb, r0, #0
00828240  0a 00 00 ba                                      blt #0x828270
00828244  00 90 88 05                                      streq sb, [r8]
00828248  09 30 a0 01                                      moveq r3, sb
0082824c  05 00 00 0a                                      beq #0x828268
00828250  be 30 dd e1                                      ldrh r3, [sp, #0xe]
00828254  23 24 a0 e1                                      lsr r2, r3, #8
00828258  03 34 82 e1                                      orr r3, r2, r3, lsl #8
0082825c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00828260  73 30 ff e6                                      uxth r3, r3
00828264  00 20 88 e5                                      str r2, [r8]
00828268  b0 30 c7 e1                                      strh r3, [r7]
0082826c  dc ff ff ea                                      b #0x8281e4
00828270  00 30 96 e5                                      ldr r3, [r6]
00828274  06 00 a0 e1                                      mov r0, r6
00828278  0f e0 a0 e1                                      mov lr, pc
0082827c  08 f0 93 e5                                      ldr pc, [r3, #8]
00828280  0a 00 50 e1                                      cmp r0, sl
00828284  0a 90 a0 11                                      movne sb, sl
00828288  d5 ff ff 1a                                      bne #0x8281e4
0082828c  06 00 a0 e1                                      mov r0, r6
00828290  00 30 96 e5                                      ldr r3, [r6]
00828294  0f e0 a0 e1                                      mov lr, pc
00828298  04 f0 93 e5                                      ldr pc, [r3, #4]
0082829c  d0 ff ff ea                                      b #0x8281e4
008282a0  1a 98 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008282a4  d8 c8 16 00 ac 40 00 00                          .byte 0xd8, 0xc8, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008282ac, declared_size=212, range_size=212, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket7ReceiveEPci
; demangled: CSocket::Receive(char*, int)
; decoder-mode: arm
008282ac  30 40 2d e9                                      push {r4, r5, lr}
008282b0  08 30 d0 e5                                      ldrb r3, [r0, #8]
008282b4  0c d0 4d e2                                      sub sp, sp, #0xc
008282b8  00 40 a0 e1                                      mov r4, r0
008282bc  00 00 53 e3                                      cmp r3, #0
008282c0  01 50 a0 e1                                      mov r5, r1
008282c4  03 00 00 1a                                      bne #0x8282d8
008282c8  00 50 e0 e3                                      mvn r5, #0
008282cc  05 00 a0 e1                                      mov r0, r5
008282d0  0c d0 8d e2                                      add sp, sp, #0xc
008282d4  30 80 bd e8                                      pop {r4, r5, pc}
008282d8  00 30 90 e5                                      ldr r3, [r0]
008282dc  04 20 8d e5                                      str r2, [sp, #4]
008282e0  0f e0 a0 e1                                      mov lr, pc
008282e4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008282e8  00 00 50 e3                                      cmp r0, #0
008282ec  04 20 9d e5                                      ldr r2, [sp, #4]
008282f0  f4 ff ff 0a                                      beq #0x8282c8
008282f4  01 30 a0 e3                                      mov r3, #1
008282f8  0a 30 c4 e5                                      strb r3, [r4, #0xa]
008282fc  04 00 a0 e1                                      mov r0, r4
00828300  00 10 a0 e3                                      mov r1, #0
00828304  04 20 8d e5                                      str r2, [sp, #4]
00828308  73 fe ff eb                                      bl #0x827cdc
0082830c  00 00 50 e3                                      cmp r0, #0
00828310  04 20 9d e5                                      ldr r2, [sp, #4]
00828314  00 50 a0 01                                      moveq r5, r0
00828318  05 00 00 1a                                      bne #0x828334
0082831c  58 30 9f e5                                      ldr r3, [pc, #0x58]
00828320  03 30 8f e0                                      add r3, pc, r3
00828324  00 20 93 e5                                      ldr r2, [r3]
00828328  01 20 82 e2                                      add r2, r2, #1
0082832c  00 20 83 e5                                      str r2, [r3]
00828330  e5 ff ff ea                                      b #0x8282cc
00828334  05 10 a0 e1                                      mov r1, r5
00828338  04 00 94 e5                                      ldr r0, [r4, #4]
0082833c  00 30 a0 e3                                      mov r3, #0
00828340  28 98 eb eb                                      bl #0x30e3e8
00828344  00 50 50 e2                                      subs r5, r0, #0
00828348  f3 ff ff aa                                      bge #0x82831c
0082834c  00 30 94 e5                                      ldr r3, [r4]
00828350  04 00 a0 e1                                      mov r0, r4
00828354  0f e0 a0 e1                                      mov lr, pc
00828358  08 f0 93 e5                                      ldr pc, [r3, #8]
0082835c  00 00 50 e3                                      cmp r0, #0
00828360  00 50 a0 13                                      movne r5, #0
00828364  d8 ff ff 1a                                      bne #0x8282cc
00828368  04 00 a0 e1                                      mov r0, r4
0082836c  00 30 94 e5                                      ldr r3, [r4]
00828370  0f e0 a0 e1                                      mov lr, pc
00828374  04 f0 93 e5                                      ldr pc, [r3, #4]
00828378  d3 ff ff ea                                      b #0x8282cc
; mapping-symbol data/literal pool
0082837c  08 b6 20 00                                      .byte 0x08, 0xb6, 0x20, 0x00

; FUNCTION 0x00828380, declared_size=204, range_size=204, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket6SendToERK7in_addrtPvi
; demangled: CSocket::SendTo(in_addr const&, unsigned short, void*, int)
; decoder-mode: arm
00828380  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00828384  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
00828388  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
0082838c  00 60 a0 e1                                      mov r6, r0
00828390  04 40 8f e0                                      add r4, pc, r4
00828394  05 c0 94 e7                                      ldr ip, [r4, r5]
00828398  08 00 d0 e5                                      ldrb r0, [r0, #8]
0082839c  24 d0 4d e2                                      sub sp, sp, #0x24
008283a0  00 c0 9c e5                                      ldr ip, [ip]
008283a4  00 00 50 e3                                      cmp r0, #0
008283a8  00 70 e0 03                                      mvneq r7, #0
008283ac  1c c0 8d e5                                      str ip, [sp, #0x1c]
008283b0  07 00 00 1a                                      bne #0x8283d4
008283b4  05 30 94 e7                                      ldr r3, [r4, r5]
008283b8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
008283bc  07 00 a0 e1                                      mov r0, r7
008283c0  00 30 93 e5                                      ldr r3, [r3]
008283c4  03 00 52 e1                                      cmp r2, r3
008283c8  1c 00 00 1a                                      bne #0x828440
008283cc  24 d0 8d e2                                      add sp, sp, #0x24
008283d0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
008283d4  0c 80 8d e2                                      add r8, sp, #0xc
008283d8  00 e0 a0 e3                                      mov lr, #0
008283dc  08 c0 88 e2                                      add ip, r8, #8
008283e0  00 a0 91 e5                                      ldr sl, [r1]
008283e4  04 00 96 e5                                      ldr r0, [r6, #4]
008283e8  04 e0 8c e4                                      str lr, [ip], #4
008283ec  00 e0 8c e5                                      str lr, [ip]
008283f0  22 74 a0 e1                                      lsr r7, r2, #8
008283f4  10 c0 a0 e3                                      mov ip, #0x10
008283f8  02 74 87 e1                                      orr r7, r7, r2, lsl #8
008283fc  03 10 a0 e1                                      mov r1, r3
00828400  04 c0 8d e5                                      str ip, [sp, #4]
00828404  40 20 9d e5                                      ldr r2, [sp, #0x40]
00828408  02 c0 a0 e3                                      mov ip, #2
0082840c  0e 30 a0 e1                                      mov r3, lr
00828410  be 70 cd e1                                      strh r7, [sp, #0xe]
00828414  10 a0 8d e5                                      str sl, [sp, #0x10]
00828418  00 80 8d e5                                      str r8, [sp]
0082841c  bc c0 cd e1                                      strh ip, [sp, #0xc]
00828420  8b 99 eb eb                                      bl #0x30ea54
00828424  00 70 50 e2                                      subs r7, r0, #0
00828428  e1 ff ff aa                                      bge #0x8283b4
0082842c  06 00 a0 e1                                      mov r0, r6
00828430  00 30 96 e5                                      ldr r3, [r6]
00828434  0f e0 a0 e1                                      mov lr, pc
00828438  04 f0 93 e5                                      ldr pc, [r3, #4]
0082843c  dc ff ff ea                                      b #0x8283b4
00828440  b2 97 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00828444  00 c7 16 00 ac 40 00 00                          .byte 0x00, 0xc7, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0082844c, declared_size=124, range_size=124, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket4SendEPvi
; demangled: CSocket::Send(void*, int)
; decoder-mode: arm
0082844c  30 40 2d e9                                      push {r4, r5, lr}
00828450  08 30 d0 e5                                      ldrb r3, [r0, #8]
00828454  0c d0 4d e2                                      sub sp, sp, #0xc
00828458  00 40 a0 e1                                      mov r4, r0
0082845c  00 00 53 e3                                      cmp r3, #0
00828460  03 00 00 1a                                      bne #0x828474
00828464  00 50 e0 e3                                      mvn r5, #0
00828468  05 00 a0 e1                                      mov r0, r5
0082846c  0c d0 8d e2                                      add sp, sp, #0xc
00828470  30 80 bd e8                                      pop {r4, r5, pc}
00828474  00 30 90 e5                                      ldr r3, [r0]
00828478  04 10 8d e5                                      str r1, [sp, #4]
0082847c  00 20 8d e5                                      str r2, [sp]
00828480  0f e0 a0 e1                                      mov lr, pc
00828484  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00828488  00 00 50 e3                                      cmp r0, #0
0082848c  04 10 9d e5                                      ldr r1, [sp, #4]
00828490  00 20 9d e5                                      ldr r2, [sp]
00828494  f2 ff ff 0a                                      beq #0x828464
00828498  01 30 a0 e3                                      mov r3, #1
0082849c  0a 30 c4 e5                                      strb r3, [r4, #0xa]
008284a0  04 00 94 e5                                      ldr r0, [r4, #4]
008284a4  00 30 a0 e3                                      mov r3, #0
008284a8  68 97 eb eb                                      bl #0x30e250
008284ac  00 50 50 e2                                      subs r5, r0, #0
008284b0  ec ff ff aa                                      bge #0x828468
008284b4  04 00 a0 e1                                      mov r0, r4
008284b8  00 30 94 e5                                      ldr r3, [r4]
008284bc  0f e0 a0 e1                                      mov lr, pc
008284c0  04 f0 93 e5                                      ldr pc, [r3, #4]
008284c4  e7 ff ff ea                                      b #0x828468

; FUNCTION 0x008284c8, declared_size=292, range_size=292, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket16SetSocketOptionsEj
; demangled: CSocket::SetSocketOptions(unsigned int)
; decoder-mode: arm
008284c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008284cc  10 41 9f e5                                      ldr r4, [pc, #0x110]
008284d0  10 61 9f e5                                      ldr r6, [pc, #0x110]
008284d4  01 50 a0 e1                                      mov r5, r1
008284d8  04 40 8f e0                                      add r4, pc, r4
008284dc  06 30 94 e7                                      ldr r3, [r4, r6]
008284e0  11 de 4d e2                                      sub sp, sp, #0x110
008284e4  01 10 a0 e3                                      mov r1, #1
008284e8  00 30 93 e5                                      ldr r3, [r3]
008284ec  02 80 15 e2                                      ands r8, r5, #2
008284f0  00 70 a0 e1                                      mov r7, r0
008284f4  08 10 8d e5                                      str r1, [sp, #8]
008284f8  0c 31 8d e5                                      str r3, [sp, #0x10c]
008284fc  0b 00 00 1a                                      bne #0x828530
00828500  01 00 15 e3                                      tst r5, #1
00828504  1b 00 00 1a                                      bne #0x828578
00828508  04 00 15 e3                                      tst r5, #4
0082850c  28 00 00 1a                                      bne #0x8285b4
00828510  06 30 94 e7                                      ldr r3, [r4, r6]
00828514  0c 21 9d e5                                      ldr r2, [sp, #0x10c]
00828518  08 00 a0 e1                                      mov r0, r8
0082851c  00 30 93 e5                                      ldr r3, [r3]
00828520  03 00 52 e1                                      cmp r2, r3
00828524  2d 00 00 1a                                      bne #0x8285e0
00828528  11 de 8d e2                                      add sp, sp, #0x110
0082852c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00828530  04 00 90 e5                                      ldr r0, [r0, #4]
00828534  04 c0 a0 e3                                      mov ip, #4
00828538  02 20 a0 e3                                      mov r2, #2
0082853c  08 30 8d e2                                      add r3, sp, #8
00828540  00 c0 8d e5                                      str ip, [sp]
00828544  4b 99 eb eb                                      bl #0x30ea78
00828548  00 80 50 e2                                      subs r8, r0, #0
0082854c  eb ff ff aa                                      bge #0x828500
00828550  1e 96 eb eb                                      bl #0x30ddd0
00828554  0c 10 8d e2                                      add r1, sp, #0xc
00828558  01 2c a0 e3                                      mov r2, #0x100
0082855c  00 00 90 e5                                      ldr r0, [r0]
00828560  e6 99 eb eb                                      bl #0x30ed00
00828564  07 00 a0 e1                                      mov r0, r7
00828568  00 30 97 e5                                      ldr r3, [r7]
0082856c  0f e0 a0 e1                                      mov lr, pc
00828570  04 f0 93 e5                                      ldr pc, [r3, #4]
00828574  e5 ff ff ea                                      b #0x828510
00828578  01 10 a0 e3                                      mov r1, #1
0082857c  11 3e 8d e2                                      add r3, sp, #0x110
00828580  04 00 97 e5                                      ldr r0, [r7, #4]
00828584  04 c0 a0 e3                                      mov ip, #4
00828588  08 11 23 e5                                      str r1, [r3, #-0x108]!
0082858c  06 20 a0 e3                                      mov r2, #6
00828590  00 c0 8d e5                                      str ip, [sp]
00828594  37 99 eb eb                                      bl #0x30ea78
00828598  00 80 50 e2                                      subs r8, r0, #0
0082859c  d9 ff ff aa                                      bge #0x828508
008285a0  07 00 a0 e1                                      mov r0, r7
008285a4  00 30 97 e5                                      ldr r3, [r7]
008285a8  0f e0 a0 e1                                      mov lr, pc
008285ac  04 f0 93 e5                                      ldr pc, [r3, #4]
008285b0  d6 ff ff ea                                      b #0x828510
008285b4  01 20 a0 e3                                      mov r2, #1
008285b8  11 3e 8d e2                                      add r3, sp, #0x110
008285bc  04 00 97 e5                                      ldr r0, [r7, #4]
008285c0  04 c0 a0 e3                                      mov ip, #4
008285c4  08 21 23 e5                                      str r2, [r3, #-0x108]!
008285c8  06 10 a0 e3                                      mov r1, #6
008285cc  00 c0 8d e5                                      str ip, [sp]
008285d0  28 99 eb eb                                      bl #0x30ea78
008285d4  00 80 50 e2                                      subs r8, r0, #0
008285d8  cc ff ff aa                                      bge #0x828510
008285dc  ef ff ff ea                                      b #0x8285a0
008285e0  4a 97 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008285e4  b8 c5 16 00 ac 40 00 00                          .byte 0xb8, 0xc5, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008285ec, declared_size=248, range_size=248, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket6AcceptER7in_addrRt
; demangled: CSocket::Accept(in_addr&, unsigned short&)
; decoder-mode: arm
008285ec  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
008285f0  e4 40 9f e5                                      ldr r4, [pc, #0xe4]
008285f4  e4 50 9f e5                                      ldr r5, [pc, #0xe4]
008285f8  47 df 4d e2                                      sub sp, sp, #0x11c
008285fc  04 40 8f e0                                      add r4, pc, r4
00828600  05 30 94 e7                                      ldr r3, [r4, r5]
00828604  01 a0 a0 e1                                      mov sl, r1
00828608  00 10 a0 e3                                      mov r1, #0
0082860c  00 30 93 e5                                      ldr r3, [r3]
00828610  02 80 a0 e1                                      mov r8, r2
00828614  00 60 a0 e1                                      mov r6, r0
00828618  14 31 8d e5                                      str r3, [sp, #0x114]
0082861c  ae fd ff eb                                      bl #0x827cdc
00828620  00 70 50 e2                                      subs r7, r0, #0
00828624  07 00 00 1a                                      bne #0x828648
00828628  05 30 94 e7                                      ldr r3, [r4, r5]
0082862c  14 21 9d e5                                      ldr r2, [sp, #0x114]
00828630  07 00 a0 e1                                      mov r0, r7
00828634  00 30 93 e5                                      ldr r3, [r3]
00828638  03 00 52 e1                                      cmp r2, r3
0082863c  25 00 00 1a                                      bne #0x8286d8
00828640  47 df 8d e2                                      add sp, sp, #0x11c
00828644  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00828648  04 00 96 e5                                      ldr r0, [r6, #4]
0082864c  10 30 a0 e3                                      mov r3, #0x10
00828650  41 1f 8d e2                                      add r1, sp, #0x104
00828654  0d 20 a0 e1                                      mov r2, sp
00828658  00 30 8d e5                                      str r3, [sp]
0082865c  92 99 eb eb                                      bl #0x30ecac
00828660  00 70 50 e2                                      subs r7, r0, #0
00828664  13 00 00 ba                                      blt #0x8286b8
00828668  03 10 a0 e3                                      mov r1, #3
0082866c  00 20 a0 e3                                      mov r2, #0
00828670  04 00 96 e5                                      ldr r0, [r6, #4]
00828674  b9 96 eb eb                                      bl #0x30e160
00828678  04 10 a0 e3                                      mov r1, #4
0082867c  02 2b 80 e3                                      orr r2, r0, #0x800
00828680  04 00 96 e5                                      ldr r0, [r6, #4]
00828684  b5 96 eb eb                                      bl #0x30e160
00828688  08 01 9d e5                                      ldr r0, [sp, #0x108]
0082868c  5e 97 eb eb                                      bl #0x30e40c
00828690  08 31 9d e5                                      ldr r3, [sp, #0x108]
00828694  00 30 8a e5                                      str r3, [sl]
00828698  01 3c 8d e2                                      add r3, sp, #0x100
0082869c  b6 30 d3 e1                                      ldrh r3, [r3, #6]
008286a0  b0 30 c8 e1                                      strh r3, [r8]
008286a4  00 30 9a e5                                      ldr r3, [sl]
008286a8  0c 30 86 e5                                      str r3, [r6, #0xc]
008286ac  b0 80 d8 e1                                      ldrh r8, [r8]
008286b0  b0 81 c6 e1                                      strh r8, [r6, #0x10]
008286b4  db ff ff ea                                      b #0x828628
008286b8  c4 95 eb eb                                      bl #0x30ddd0
008286bc  04 10 8d e2                                      add r1, sp, #4
008286c0  01 2c a0 e3                                      mov r2, #0x100
008286c4  00 00 90 e5                                      ldr r0, [r0]
008286c8  8c 99 eb eb                                      bl #0x30ed00
008286cc  08 01 9d e5                                      ldr r0, [sp, #0x108]
008286d0  4d 97 eb eb                                      bl #0x30e40c
008286d4  d3 ff ff ea                                      b #0x828628
008286d8  0c 97 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008286dc  94 c4 16 00 ac 40 00 00                          .byte 0x94, 0xc4, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008286e4, declared_size=84, range_size=84, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket6ListenEv
; demangled: CSocket::Listen()
; decoder-mode: arm
008286e4  10 40 2d e9                                      push {r4, lr}
008286e8  0b 30 d0 e5                                      ldrb r3, [r0, #0xb]
008286ec  00 40 a0 e1                                      mov r4, r0
008286f0  00 00 53 e3                                      cmp r3, #0
008286f4  01 00 00 0a                                      beq #0x828700
008286f8  00 00 a0 e3                                      mov r0, #0
008286fc  10 80 bd e8                                      pop {r4, pc}
00828700  04 00 90 e5                                      ldr r0, [r0, #4]
00828704  0a 10 a0 e3                                      mov r1, #0xa
00828708  60 97 eb eb                                      bl #0x30e490
0082870c  00 00 50 e3                                      cmp r0, #0
00828710  03 00 00 1a                                      bne #0x828724
00828714  01 30 a0 e3                                      mov r3, #1
00828718  0b 30 c4 e5                                      strb r3, [r4, #0xb]
0082871c  00 00 a0 e3                                      mov r0, #0
00828720  10 80 bd e8                                      pop {r4, pc}
00828724  00 30 94 e5                                      ldr r3, [r4]
00828728  04 00 a0 e1                                      mov r0, r4
0082872c  0f e0 a0 e1                                      mov lr, pc
00828730  04 f0 93 e5                                      ldr pc, [r3, #4]
00828734  f6 ff ff ea                                      b #0x828714

; FUNCTION 0x00828738, declared_size=304, range_size=304, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket7ConnectERK7in_addrt
; demangled: CSocket::Connect(in_addr const&, unsigned short)
; decoder-mode: arm
00828738  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0082873c  1c 41 9f e5                                      ldr r4, [pc, #0x11c]
00828740  1c 51 9f e5                                      ldr r5, [pc, #0x11c]
00828744  47 df 4d e2                                      sub sp, sp, #0x11c
00828748  04 40 8f e0                                      add r4, pc, r4
0082874c  05 30 94 e7                                      ldr r3, [r4, r5]
00828750  41 6f 8d e2                                      add r6, sp, #0x104
00828754  00 c0 a0 e3                                      mov ip, #0
00828758  00 e0 93 e5                                      ldr lr, [r3]
0082875c  08 30 86 e2                                      add r3, r6, #8
00828760  22 74 a0 e1                                      lsr r7, r2, #8
00828764  14 e1 8d e5                                      str lr, [sp, #0x114]
00828768  04 c0 83 e4                                      str ip, [r3], #4
0082876c  00 c0 83 e5                                      str ip, [r3]
00828770  02 24 87 e1                                      orr r2, r7, r2, lsl #8
00828774  01 3c 8d e2                                      add r3, sp, #0x100
00828778  b6 20 c3 e1                                      strh r2, [r3, #6]
0082877c  02 20 a0 e3                                      mov r2, #2
00828780  b4 20 c3 e1                                      strh r2, [r3, #4]
00828784  00 30 91 e5                                      ldr r3, [r1]
00828788  00 70 a0 e1                                      mov r7, r0
0082878c  03 00 a0 e1                                      mov r0, r3
00828790  08 31 8d e5                                      str r3, [sp, #0x108]
00828794  1c 97 eb eb                                      bl #0x30e40c
00828798  06 10 a0 e1                                      mov r1, r6
0082879c  04 00 97 e5                                      ldr r0, [r7, #4]
008287a0  10 20 a0 e3                                      mov r2, #0x10
008287a4  98 95 eb eb                                      bl #0x30de0c
008287a8  00 00 50 e3                                      cmp r0, #0
008287ac  07 00 00 ba                                      blt #0x8287d0
008287b0  00 00 a0 e3                                      mov r0, #0
008287b4  05 30 94 e7                                      ldr r3, [r4, r5]
008287b8  14 21 9d e5                                      ldr r2, [sp, #0x114]
008287bc  00 30 93 e5                                      ldr r3, [r3]
008287c0  03 00 52 e1                                      cmp r2, r3
008287c4  24 00 00 1a                                      bne #0x82885c
008287c8  47 df 8d e2                                      add sp, sp, #0x11c
008287cc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
008287d0  00 30 97 e5                                      ldr r3, [r7]
008287d4  07 00 a0 e1                                      mov r0, r7
008287d8  0f e0 a0 e1                                      mov lr, pc
008287dc  08 f0 93 e5                                      ldr pc, [r3, #8]
008287e0  00 00 50 e3                                      cmp r0, #0
008287e4  f1 ff ff 1a                                      bne #0x8287b0
008287e8  00 30 97 e5                                      ldr r3, [r7]
008287ec  07 00 a0 e1                                      mov r0, r7
008287f0  0f e0 a0 e1                                      mov lr, pc
008287f4  04 f0 93 e5                                      ldr pc, [r3, #4]
008287f8  6a 00 50 e3                                      cmp r0, #0x6a
008287fc  eb ff ff 0a                                      beq #0x8287b0
00828800  00 30 97 e5                                      ldr r3, [r7]
00828804  07 00 a0 e1                                      mov r0, r7
00828808  0f e0 a0 e1                                      mov lr, pc
0082880c  04 f0 93 e5                                      ldr pc, [r3, #4]
00828810  73 00 50 e3                                      cmp r0, #0x73
00828814  01 00 a0 03                                      moveq r0, #1
00828818  0a 00 c7 05                                      strbeq r0, [r7, #0xa]
0082881c  e4 ff ff 0a                                      beq #0x8287b4
00828820  6a 95 eb eb                                      bl #0x30ddd0
00828824  04 10 8d e2                                      add r1, sp, #4
00828828  01 2c a0 e3                                      mov r2, #0x100
0082882c  00 00 90 e5                                      ldr r0, [r0]
00828830  32 99 eb eb                                      bl #0x30ed00
00828834  00 30 97 e5                                      ldr r3, [r7]
00828838  07 00 a0 e1                                      mov r0, r7
0082883c  0f e0 a0 e1                                      mov lr, pc
00828840  04 f0 93 e5                                      ldr pc, [r3, #4]
00828844  07 00 a0 e1                                      mov r0, r7
00828848  00 30 97 e5                                      ldr r3, [r7]
0082884c  0f e0 a0 e1                                      mov lr, pc
00828850  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00828854  00 00 e0 e3                                      mvn r0, #0
00828858  d5 ff ff ea                                      b #0x8287b4
0082885c  ab 96 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00828860  48 c3 16 00 ac 40 00 00                          .byte 0x48, 0xc3, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00828868, declared_size=340, range_size=340, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket7OpenTCPEtj
; demangled: CSocket::OpenTCP(unsigned short, unsigned int)
; decoder-mode: arm
00828868  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0082886c  40 41 9f e5                                      ldr r4, [pc, #0x140]
00828870  40 61 9f e5                                      ldr r6, [pc, #0x140]
00828874  00 50 a0 e1                                      mov r5, r0
00828878  04 40 8f e0                                      add r4, pc, r4
0082887c  06 00 94 e7                                      ldr r0, [r4, r6]
00828880  09 30 d5 e5                                      ldrb r3, [r5, #9]
00828884  01 70 a0 e1                                      mov r7, r1
00828888  00 10 90 e5                                      ldr r1, [r0]
0082888c  18 d0 4d e2                                      sub sp, sp, #0x18
00828890  00 00 53 e3                                      cmp r3, #0
00828894  02 80 a0 e1                                      mov r8, r2
00828898  14 10 8d e5                                      str r1, [sp, #0x14]
0082889c  08 00 00 1a                                      bne #0x8288c4
008288a0  00 80 e0 e3                                      mvn r8, #0
008288a4  06 30 94 e7                                      ldr r3, [r4, r6]
008288a8  14 20 9d e5                                      ldr r2, [sp, #0x14]
008288ac  08 00 a0 e1                                      mov r0, r8
008288b0  00 30 93 e5                                      ldr r3, [r3]
008288b4  03 00 52 e1                                      cmp r2, r3
008288b8  3c 00 00 1a                                      bne #0x8289b0
008288bc  18 d0 8d e2                                      add sp, sp, #0x18
008288c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008288c4  02 00 a0 e3                                      mov r0, #2
008288c8  01 10 a0 e3                                      mov r1, #1
008288cc  06 20 a0 e3                                      mov r2, #6
008288d0  6e 98 eb eb                                      bl #0x30ea90
008288d4  00 00 50 e3                                      cmp r0, #0
008288d8  04 00 85 e5                                      str r0, [r5, #4]
008288dc  2e 00 00 ba                                      blt #0x82899c
008288e0  03 10 a0 e3                                      mov r1, #3
008288e4  00 20 a0 e3                                      mov r2, #0
008288e8  1c 96 eb eb                                      bl #0x30e160
008288ec  04 10 a0 e3                                      mov r1, #4
008288f0  02 2b 80 e3                                      orr r2, r0, #0x800
008288f4  04 00 95 e5                                      ldr r0, [r5, #4]
008288f8  18 96 eb eb                                      bl #0x30e160
008288fc  08 10 a0 e1                                      mov r1, r8
00828900  00 30 95 e5                                      ldr r3, [r5]
00828904  05 00 a0 e1                                      mov r0, r5
00828908  0f e0 a0 e1                                      mov lr, pc
0082890c  00 f0 93 e5                                      ldr pc, [r3]
00828910  00 80 50 e2                                      subs r8, r0, #0
00828914  1b 00 00 ba                                      blt #0x828988
00828918  04 10 8d e2                                      add r1, sp, #4
0082891c  00 80 a0 e3                                      mov r8, #0
00828920  08 30 81 e2                                      add r3, r1, #8
00828924  04 80 83 e4                                      str r8, [r3], #4
00828928  27 24 a0 e1                                      lsr r2, r7, #8
0082892c  04 00 95 e5                                      ldr r0, [r5, #4]
00828930  07 74 82 e1                                      orr r7, r2, r7, lsl #8
00828934  00 80 83 e5                                      str r8, [r3]
00828938  10 20 a0 e3                                      mov r2, #0x10
0082893c  02 30 a0 e3                                      mov r3, #2
00828940  b4 30 cd e1                                      strh r3, [sp, #4]
00828944  b6 70 cd e1                                      strh r7, [sp, #6]
00828948  08 80 8d e5                                      str r8, [sp, #8]
0082894c  46 98 eb eb                                      bl #0x30ea6c
00828950  08 00 50 e1                                      cmp r0, r8
00828954  01 30 a0 a3                                      movge r3, #1
00828958  08 30 c5 a5                                      strbge r3, [r5, #8]
0082895c  d0 ff ff aa                                      bge #0x8288a4
00828960  00 30 95 e5                                      ldr r3, [r5]
00828964  05 00 a0 e1                                      mov r0, r5
00828968  0f e0 a0 e1                                      mov lr, pc
0082896c  04 f0 93 e5                                      ldr pc, [r3, #4]
00828970  05 00 a0 e1                                      mov r0, r5
00828974  00 30 95 e5                                      ldr r3, [r5]
00828978  0f e0 a0 e1                                      mov lr, pc
0082897c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00828980  00 80 e0 e3                                      mvn r8, #0
00828984  c6 ff ff ea                                      b #0x8288a4
00828988  05 00 a0 e1                                      mov r0, r5
0082898c  00 30 95 e5                                      ldr r3, [r5]
00828990  0f e0 a0 e1                                      mov lr, pc
00828994  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00828998  c1 ff ff ea                                      b #0x8288a4
0082899c  05 00 a0 e1                                      mov r0, r5
008289a0  00 30 95 e5                                      ldr r3, [r5]
008289a4  0f e0 a0 e1                                      mov lr, pc
008289a8  04 f0 93 e5                                      ldr pc, [r3, #4]
008289ac  bb ff ff ea                                      b #0x8288a0
008289b0  56 96 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008289b4  18 c2 16 00 ac 40 00 00                          .byte 0x18, 0xc2, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008289bc, declared_size=344, range_size=344, mode=arm
; class-group: CSocket
; alias: _ZN7CSocket7OpenUDPEtj
; demangled: CSocket::OpenUDP(unsigned short, unsigned int)
; decoder-mode: arm
008289bc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
008289c0  44 41 9f e5                                      ldr r4, [pc, #0x144]
008289c4  44 61 9f e5                                      ldr r6, [pc, #0x144]
008289c8  00 50 a0 e1                                      mov r5, r0
008289cc  04 40 8f e0                                      add r4, pc, r4
008289d0  06 00 94 e7                                      ldr r0, [r4, r6]
008289d4  09 30 d5 e5                                      ldrb r3, [r5, #9]
008289d8  01 80 a0 e1                                      mov r8, r1
008289dc  00 10 90 e5                                      ldr r1, [r0]
008289e0  1c d0 4d e2                                      sub sp, sp, #0x1c
008289e4  00 00 53 e3                                      cmp r3, #0
008289e8  02 a0 a0 e1                                      mov sl, r2
008289ec  14 10 8d e5                                      str r1, [sp, #0x14]
008289f0  08 00 00 1a                                      bne #0x828a18
008289f4  00 80 e0 e3                                      mvn r8, #0
008289f8  06 30 94 e7                                      ldr r3, [r4, r6]
008289fc  14 20 9d e5                                      ldr r2, [sp, #0x14]
00828a00  08 00 a0 e1                                      mov r0, r8
00828a04  00 30 93 e5                                      ldr r3, [r3]
00828a08  03 00 52 e1                                      cmp r2, r3
00828a0c  3d 00 00 1a                                      bne #0x828b08
00828a10  1c d0 8d e2                                      add sp, sp, #0x1c
00828a14  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00828a18  02 00 a0 e3                                      mov r0, #2
00828a1c  00 10 a0 e1                                      mov r1, r0
00828a20  11 20 a0 e3                                      mov r2, #0x11
00828a24  19 98 eb eb                                      bl #0x30ea90
00828a28  00 00 50 e3                                      cmp r0, #0
00828a2c  04 00 85 e5                                      str r0, [r5, #4]
00828a30  25 00 00 ba                                      blt #0x828acc
00828a34  04 10 8d e2                                      add r1, sp, #4
00828a38  00 70 a0 e3                                      mov r7, #0
00828a3c  08 30 81 e2                                      add r3, r1, #8
00828a40  04 70 83 e4                                      str r7, [r3], #4
00828a44  28 24 a0 e1                                      lsr r2, r8, #8
00828a48  08 84 82 e1                                      orr r8, r2, r8, lsl #8
00828a4c  00 70 83 e5                                      str r7, [r3]
00828a50  10 20 a0 e3                                      mov r2, #0x10
00828a54  02 30 a0 e3                                      mov r3, #2
00828a58  b6 80 cd e1                                      strh r8, [sp, #6]
00828a5c  b4 30 cd e1                                      strh r3, [sp, #4]
00828a60  08 70 8d e5                                      str r7, [sp, #8]
00828a64  00 98 eb eb                                      bl #0x30ea6c
00828a68  07 00 50 e1                                      cmp r0, r7
00828a6c  1b 00 00 ba                                      blt #0x828ae0
00828a70  03 10 a0 e3                                      mov r1, #3
00828a74  07 20 a0 e1                                      mov r2, r7
00828a78  04 00 95 e5                                      ldr r0, [r5, #4]
00828a7c  b7 95 eb eb                                      bl #0x30e160
00828a80  04 10 a0 e3                                      mov r1, #4
00828a84  02 2b 80 e3                                      orr r2, r0, #0x800
00828a88  04 00 95 e5                                      ldr r0, [r5, #4]
00828a8c  b3 95 eb eb                                      bl #0x30e160
00828a90  00 30 95 e5                                      ldr r3, [r5]
00828a94  0a 10 a0 e1                                      mov r1, sl
00828a98  05 00 a0 e1                                      mov r0, r5
00828a9c  0f e0 a0 e1                                      mov lr, pc
00828aa0  00 f0 93 e5                                      ldr pc, [r3]
00828aa4  00 80 50 e2                                      subs r8, r0, #0
00828aa8  01 30 a0 a3                                      movge r3, #1
00828aac  08 30 c5 a5                                      strbge r3, [r5, #8]
00828ab0  07 80 a0 a1                                      movge r8, r7
00828ab4  cf ff ff aa                                      bge #0x8289f8
00828ab8  05 00 a0 e1                                      mov r0, r5
00828abc  00 30 95 e5                                      ldr r3, [r5]
00828ac0  0f e0 a0 e1                                      mov lr, pc
00828ac4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00828ac8  ca ff ff ea                                      b #0x8289f8
00828acc  05 00 a0 e1                                      mov r0, r5
00828ad0  00 30 95 e5                                      ldr r3, [r5]
00828ad4  0f e0 a0 e1                                      mov lr, pc
00828ad8  04 f0 93 e5                                      ldr pc, [r3, #4]
00828adc  c4 ff ff ea                                      b #0x8289f4
00828ae0  00 30 95 e5                                      ldr r3, [r5]
00828ae4  05 00 a0 e1                                      mov r0, r5
00828ae8  0f e0 a0 e1                                      mov lr, pc
00828aec  04 f0 93 e5                                      ldr pc, [r3, #4]
00828af0  05 00 a0 e1                                      mov r0, r5
00828af4  00 30 95 e5                                      ldr r3, [r5]
00828af8  0f e0 a0 e1                                      mov lr, pc
00828afc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00828b00  00 80 e0 e3                                      mvn r8, #0
00828b04  bb ff ff ea                                      b #0x8289f8
00828b08  00 96 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00828b0c  c4 c0 16 00 ac 40 00 00                          .byte 0xc4, 0xc0, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00828b14, declared_size=28, range_size=28, mode=arm
; class-group: CSocket
; alias: _ZN7CSocketD0Ev
; demangled: CSocket::~CSocket()
; decoder-mode: arm
00828b14  10 40 2d e9                                      push {r4, lr}
00828b18  00 40 a0 e1                                      mov r4, r0
00828b1c  06 fd ff eb                                      bl #0x827f3c
00828b20  04 00 a0 e1                                      mov r0, r4
00828b24  45 9e eb eb                                      bl #0x310440
00828b28  04 00 a0 e1                                      mov r0, r4
00828b2c  10 80 bd e8                                      pop {r4, pc}
