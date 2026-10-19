; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00437924, declared_size=120, range_size=120, mode=arm
; class-group: MultiMenuManager
; alias: _ZN16MultiMenuManager14IsStateInStackEPN6MenuFX5StateE
; demangled: MultiMenuManager::IsStateInStack(MenuFX::State*)
; decoder-mode: arm
00437924  70 00 2d e9                                      push {r4, r5, r6}
00437928  28 31 90 e5                                      ldr r3, [r0, #0x128]
0043792c  00 00 53 e3                                      cmp r3, #0
00437930  14 00 00 da                                      ble #0x437988
00437934  24 61 90 e5                                      ldr r6, [r0, #0x124]
00437938  00 50 a0 e3                                      mov r5, #0
0043793c  05 21 96 e7                                      ldr r2, [r6, r5, lsl #2]
00437940  18 c1 92 e5                                      ldr ip, [r2, #0x118]
00437944  00 00 5c e3                                      cmp ip, #0
00437948  0b 00 00 da                                      ble #0x43797c
0043794c  14 41 92 e5                                      ldr r4, [r2, #0x114]
00437950  00 20 94 e5                                      ldr r2, [r4]
00437954  01 00 52 e1                                      cmp r2, r1
00437958  0c 00 00 0a                                      beq #0x437990
0043795c  00 20 a0 e3                                      mov r2, #0
00437960  02 00 00 ea                                      b #0x437970
00437964  02 01 94 e7                                      ldr r0, [r4, r2, lsl #2]
00437968  01 00 50 e1                                      cmp r0, r1
0043796c  07 00 00 0a                                      beq #0x437990
00437970  01 20 82 e2                                      add r2, r2, #1
00437974  0c 00 52 e1                                      cmp r2, ip
00437978  f9 ff ff 1a                                      bne #0x437964
0043797c  01 50 85 e2                                      add r5, r5, #1
00437980  03 00 55 e1                                      cmp r5, r3
00437984  ec ff ff 1a                                      bne #0x43793c
00437988  00 00 a0 e3                                      mov r0, #0
0043798c  00 00 00 ea                                      b #0x437994
00437990  01 00 a0 e3                                      mov r0, #1
00437994  70 00 bd e8                                      pop {r4, r5, r6}
00437998  1e ff 2f e1                                      bx lr

; FUNCTION 0x0043799c, declared_size=124, range_size=124, mode=arm
; class-group: MultiMenuManager
; alias: _ZN16MultiMenuManager17ResetUpdateCursorEv
; demangled: MultiMenuManager::ResetUpdateCursor()
; decoder-mode: arm
0043799c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004379a0  c6 34 a0 e3                                      mov r3, #0xc6000000
004379a4  14 d0 4d e2                                      sub sp, sp, #0x14
004379a8  71 39 83 e2                                      add r3, r3, #0x1c4000
004379ac  00 70 a0 e3                                      mov r7, #0
004379b0  00 20 a0 e3                                      mov r2, #0
004379b4  04 30 8d e5                                      str r3, [sp, #4]
004379b8  08 20 8d e5                                      str r2, [sp, #8]
004379bc  0c 70 8d e5                                      str r7, [sp, #0xc]
004379c0  00 30 8d e5                                      str r3, [sp]
004379c4  00 50 a0 e1                                      mov r5, r0
004379c8  0d 60 a0 e1                                      mov r6, sp
004379cc  00 40 a0 e3                                      mov r4, #0
004379d0  34 31 95 e5                                      ldr r3, [r5, #0x134]
004379d4  04 20 a0 e1                                      mov r2, r4
004379d8  06 10 a0 e1                                      mov r1, r6
004379dc  00 00 53 e3                                      cmp r3, #0
004379e0  01 40 84 e2                                      add r4, r4, #1
004379e4  03 00 a0 e1                                      mov r0, r3
004379e8  02 00 00 0a                                      beq #0x4379f8
004379ec  00 30 93 e5                                      ldr r3, [r3]
004379f0  0f e0 a0 e1                                      mov lr, pc
004379f4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
004379f8  04 00 54 e3                                      cmp r4, #4
004379fc  f3 ff ff 1a                                      bne #0x4379d0
00437a00  01 70 87 e2                                      add r7, r7, #1
00437a04  04 00 57 e3                                      cmp r7, #4
00437a08  04 50 85 e2                                      add r5, r5, #4
00437a0c  ee ff ff 1a                                      bne #0x4379cc
00437a10  14 d0 8d e2                                      add sp, sp, #0x14
00437a14  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00437a38, declared_size=52, range_size=52, mode=arm
; class-group: MultiMenuManager
; alias: _ZN16MultiMenuManager10ResetFontsEv
; demangled: MultiMenuManager::ResetFonts()
; decoder-mode: arm
00437a38  70 40 2d e9                                      push {r4, r5, r6, lr}
00437a3c  00 50 a0 e1                                      mov r5, r0
00437a40  00 40 a0 e3                                      mov r4, #0
00437a44  34 31 95 e5                                      ldr r3, [r5, #0x134]
00437a48  00 00 a0 e3                                      mov r0, #0
00437a4c  01 40 84 e2                                      add r4, r4, #1
00437a50  00 00 53 e1                                      cmp r3, r0
00437a54  00 00 00 0a                                      beq #0x437a5c
00437a58  7d cc 0d eb                                      bl #0x7aac54
00437a5c  04 00 54 e3                                      cmp r4, #4
00437a60  04 50 85 e2                                      add r5, r5, #4
00437a64  f6 ff ff 1a                                      bne #0x437a44
00437a68  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00437b3c, declared_size=224, range_size=224, mode=arm
; class-group: MultiMenuManager
; alias: _ZN16MultiMenuManager13UnloadSWFFileEi
; demangled: MultiMenuManager::UnloadSWFFile(int)
; decoder-mode: arm
00437b3c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00437b40  4c 80 81 e2                                      add r8, r1, #0x4c
00437b44  08 71 80 e0                                      add r7, r0, r8, lsl #2
00437b48  04 30 97 e5                                      ldr r3, [r7, #4]
00437b4c  01 a0 a0 e1                                      mov sl, r1
00437b50  00 60 a0 e1                                      mov r6, r0
00437b54  00 00 53 e3                                      cmp r3, #0
00437b58  29 00 00 0a                                      beq #0x437c04
00437b5c  28 41 90 e5                                      ldr r4, [r0, #0x128]
00437b60  01 40 54 e2                                      subs r4, r4, #1
00437b64  0b 00 00 4a                                      bmi #0x437b98
00437b68  04 70 87 e2                                      add r7, r7, #4
00437b6c  49 9f 80 e2                                      add sb, r0, #0x124
00437b70  04 51 a0 e1                                      lsl r5, r4, #2
00437b74  00 00 00 ea                                      b #0x437b7c
00437b78  00 30 97 e5                                      ldr r3, [r7]
00437b7c  24 21 96 e5                                      ldr r2, [r6, #0x124]
00437b80  05 20 92 e7                                      ldr r2, [r2, r5]
00437b84  04 50 45 e2                                      sub r5, r5, #4
00437b88  03 00 52 e1                                      cmp r2, r3
00437b8c  1d 00 00 0a                                      beq #0x437c08
00437b90  01 40 54 e2                                      subs r4, r4, #1
00437b94  f7 ff ff 2a                                      bhs #0x437b78
00437b98  03 00 a0 e1                                      mov r0, r3
00437b9c  00 30 93 e5                                      ldr r3, [r3]
00437ba0  0f e0 a0 e1                                      mov lr, pc
00437ba4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00437ba8  08 31 86 e0                                      add r3, r6, r8, lsl #2
00437bac  04 30 93 e5                                      ldr r3, [r3, #4]
00437bb0  00 00 53 e3                                      cmp r3, #0
00437bb4  03 00 00 0a                                      beq #0x437bc8
00437bb8  03 00 a0 e1                                      mov r0, r3
00437bbc  00 30 93 e5                                      ldr r3, [r3]
00437bc0  0f e0 a0 e1                                      mov lr, pc
00437bc4  04 f0 93 e5                                      ldr pc, [r3, #4]
00437bc8  00 30 a0 e3                                      mov r3, #0
00437bcc  08 81 86 e0                                      add r8, r6, r8, lsl #2
00437bd0  50 a0 8a e2                                      add sl, sl, #0x50
00437bd4  04 30 88 e5                                      str r3, [r8, #4]
00437bd8  0a 31 86 e0                                      add r3, r6, sl, lsl #2
00437bdc  04 30 93 e5                                      ldr r3, [r3, #4]
00437be0  00 00 53 e3                                      cmp r3, #0
00437be4  03 00 00 0a                                      beq #0x437bf8
00437be8  03 00 a0 e1                                      mov r0, r3
00437bec  00 30 93 e5                                      ldr r3, [r3]
00437bf0  0f e0 a0 e1                                      mov lr, pc
00437bf4  04 f0 93 e5                                      ldr pc, [r3, #4]
00437bf8  0a a1 86 e0                                      add sl, r6, sl, lsl #2
00437bfc  00 30 a0 e3                                      mov r3, #0
00437c00  04 30 8a e5                                      str r3, [sl, #4]
00437c04  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00437c08  04 10 a0 e1                                      mov r1, r4
00437c0c  09 00 a0 e1                                      mov r0, sb
00437c10  b4 ff ff eb                                      bl #0x437ae8
00437c14  00 30 97 e5                                      ldr r3, [r7]
00437c18  dc ff ff ea                                      b #0x437b90

; FUNCTION 0x00437d68, declared_size=188, range_size=188, mode=arm
; class-group: MultiMenuManager
; alias: _ZN16MultiMenuManager11LoadSWFFileEPKci
; demangled: MultiMenuManager::LoadSWFFile(char const*, int)
; decoder-mode: arm
00437d68  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00437d6c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00437d70  02 00 52 e3                                      cmp r2, #2
00437d74  02 40 a0 e1                                      mov r4, r2
00437d78  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00437d7c  03 30 8f e0                                      add r3, pc, r3
00437d80  4c 50 84 e2                                      add r5, r4, #0x4c
00437d84  02 30 93 e7                                      ldr r3, [r3, r2]
00437d88  01 20 a0 03                                      moveq r2, #1
00437d8c  00 20 a0 13                                      movne r2, #0
00437d90  00 20 c3 e5                                      strb r2, [r3]
00437d94  05 51 80 e0                                      add r5, r0, r5, lsl #2
00437d98  04 a0 95 e5                                      ldr sl, [r5, #4]
00437d9c  00 60 a0 e1                                      mov r6, r0
00437da0  01 70 a0 e1                                      mov r7, r1
00437da4  00 00 5a e3                                      cmp sl, #0
00437da8  01 00 00 0a                                      beq #0x437db4
00437dac  0a 00 a0 e1                                      mov r0, sl
00437db0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00437db4  08 10 a0 e3                                      mov r1, #8
00437db8  49 0f a0 e3                                      mov r0, #0x124
00437dbc  eb 61 fb eb                                      bl #0x310570
00437dc0  00 80 a0 e1                                      mov r8, r0
00437dc4  46 c2 0d eb                                      bl #0x7a86e4
00437dc8  04 80 85 e5                                      str r8, [r5, #4]
00437dcc  0a 20 a0 e1                                      mov r2, sl
00437dd0  00 30 98 e5                                      ldr r3, [r8]
00437dd4  08 00 a0 e1                                      mov r0, r8
00437dd8  07 10 a0 e1                                      mov r1, r7
00437ddc  0f e0 a0 e1                                      mov lr, pc
00437de0  08 f0 93 e5                                      ldr pc, [r3, #8]
00437de4  04 00 95 e5                                      ldr r0, [r5, #4]
00437de8  01 10 a0 e3                                      mov r1, #1
00437dec  b0 bf 0d eb                                      bl #0x7a7cb4
00437df0  08 10 a0 e3                                      mov r1, #8
00437df4  34 00 a0 e3                                      mov r0, #0x34
00437df8  dc 61 fb eb                                      bl #0x310570
00437dfc  04 41 86 e0                                      add r4, r6, r4, lsl #2
00437e00  00 70 a0 e1                                      mov r7, r0
00437e04  04 10 95 e5                                      ldr r1, [r5, #4]
00437e08  b0 d3 ff eb                                      bl #0x42ccd0
00437e0c  44 71 84 e5                                      str r7, [r4, #0x144]
00437e10  04 a0 95 e5                                      ldr sl, [r5, #4]
00437e14  0a 00 a0 e1                                      mov r0, sl
00437e18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00437e1c  14 cd 55 00 bc 05 00 00                          .byte 0x14, 0xcd, 0x55, 0x00, 0xbc, 0x05, 0x00, 0x00

; FUNCTION 0x00437e24, declared_size=128, range_size=128, mode=arm
; class-group: MultiMenuManager
; alias: _ZN16MultiMenuManagerC1Ev
; demangled: MultiMenuManager::MultiMenuManager()
; decoder-mode: arm
00437e24  70 40 2d e9                                      push {r4, r5, r6, lr}
00437e28  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
00437e2c  00 40 a0 e1                                      mov r4, r0
00437e30  46 c2 0d eb                                      bl #0x7a8750
00437e34  64 20 9f e5                                      ldr r2, [pc, #0x64]
00437e38  05 50 8f e0                                      add r5, pc, r5
00437e3c  00 30 a0 e3                                      mov r3, #0
00437e40  02 20 95 e7                                      ldr r2, [r5, r2]
00437e44  50 31 84 e5                                      str r3, [r4, #0x150]
00437e48  24 31 84 e5                                      str r3, [r4, #0x124]
00437e4c  54 10 82 e2                                      add r1, r2, #0x54
00437e50  08 20 82 e2                                      add r2, r2, #8
00437e54  00 20 84 e5                                      str r2, [r4]
00437e58  00 11 84 e5                                      str r1, [r4, #0x100]
00437e5c  28 31 84 e5                                      str r3, [r4, #0x128]
00437e60  2c 31 84 e5                                      str r3, [r4, #0x12c]
00437e64  30 31 c4 e5                                      strb r3, [r4, #0x130]
00437e68  54 31 84 e5                                      str r3, [r4, #0x154]
00437e6c  58 31 84 e5                                      str r3, [r4, #0x158]
00437e70  5c 31 84 e5                                      str r3, [r4, #0x15c]
00437e74  60 31 c4 e5                                      strb r3, [r4, #0x160]
00437e78  34 31 84 e5                                      str r3, [r4, #0x134]
00437e7c  44 31 84 e5                                      str r3, [r4, #0x144]
00437e80  38 31 84 e5                                      str r3, [r4, #0x138]
00437e84  48 31 84 e5                                      str r3, [r4, #0x148]
00437e88  3c 31 84 e5                                      str r3, [r4, #0x13c]
00437e8c  4c 31 84 e5                                      str r3, [r4, #0x14c]
00437e90  40 31 84 e5                                      str r3, [r4, #0x140]
00437e94  04 00 a0 e1                                      mov r0, r4
00437e98  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00437e9c  58 cc 55 00 34 21 00 00                          .byte 0x58, 0xcc, 0x55, 0x00, 0x34, 0x21, 0x00, 0x00

; FUNCTION 0x00437ea4, declared_size=128, range_size=128, mode=arm
; class-group: MultiMenuManager
; alias: _ZN16MultiMenuManagerC2Ev
; demangled: MultiMenuManager::MultiMenuManager()
; decoder-mode: arm
00437ea4  70 40 2d e9                                      push {r4, r5, r6, lr}
00437ea8  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
00437eac  00 40 a0 e1                                      mov r4, r0
00437eb0  26 c2 0d eb                                      bl #0x7a8750
00437eb4  64 20 9f e5                                      ldr r2, [pc, #0x64]
00437eb8  05 50 8f e0                                      add r5, pc, r5
00437ebc  00 30 a0 e3                                      mov r3, #0
00437ec0  02 20 95 e7                                      ldr r2, [r5, r2]
00437ec4  50 31 84 e5                                      str r3, [r4, #0x150]
00437ec8  24 31 84 e5                                      str r3, [r4, #0x124]
00437ecc  54 10 82 e2                                      add r1, r2, #0x54
00437ed0  08 20 82 e2                                      add r2, r2, #8
00437ed4  00 20 84 e5                                      str r2, [r4]
00437ed8  00 11 84 e5                                      str r1, [r4, #0x100]
00437edc  28 31 84 e5                                      str r3, [r4, #0x128]
00437ee0  2c 31 84 e5                                      str r3, [r4, #0x12c]
00437ee4  30 31 c4 e5                                      strb r3, [r4, #0x130]
00437ee8  54 31 84 e5                                      str r3, [r4, #0x154]
00437eec  58 31 84 e5                                      str r3, [r4, #0x158]
00437ef0  5c 31 84 e5                                      str r3, [r4, #0x15c]
00437ef4  60 31 c4 e5                                      strb r3, [r4, #0x160]
00437ef8  34 31 84 e5                                      str r3, [r4, #0x134]
00437efc  44 31 84 e5                                      str r3, [r4, #0x144]
00437f00  38 31 84 e5                                      str r3, [r4, #0x138]
00437f04  48 31 84 e5                                      str r3, [r4, #0x148]
00437f08  3c 31 84 e5                                      str r3, [r4, #0x13c]
00437f0c  4c 31 84 e5                                      str r3, [r4, #0x14c]
00437f10  40 31 84 e5                                      str r3, [r4, #0x140]
00437f14  04 00 a0 e1                                      mov r0, r4
00437f18  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00437f1c  d8 cb 55 00 34 21 00 00                          .byte 0xd8, 0xcb, 0x55, 0x00, 0x34, 0x21, 0x00, 0x00

; FUNCTION 0x00437f94, declared_size=272, range_size=272, mode=arm
; class-group: MultiMenuManager
; alias: _ZN16MultiMenuManagerD1Ev
; demangled: MultiMenuManager::~MultiMenuManager()
; decoder-mode: arm
00437f94  00 31 9f e5                                      ldr r3, [pc, #0x100]
00437f98  00 21 9f e5                                      ldr r2, [pc, #0x100]
00437f9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00437fa0  03 30 8f e0                                      add r3, pc, r3
00437fa4  02 20 93 e7                                      ldr r2, [r3, r2]
00437fa8  00 40 a0 e1                                      mov r4, r0
00437fac  55 5f 80 e2                                      add r5, r0, #0x154
00437fb0  54 10 82 e2                                      add r1, r2, #0x54
00437fb4  08 20 82 e2                                      add r2, r2, #8
00437fb8  00 20 84 e5                                      str r2, [r4]
00437fbc  00 11 84 e5                                      str r1, [r4, #0x100]
00437fc0  05 00 a0 e1                                      mov r0, r5
00437fc4  d6 ff ff eb                                      bl #0x437f24
00437fc8  05 00 a0 e1                                      mov r0, r5
00437fcc  d4 ff ff eb                                      bl #0x437f24
00437fd0  05 00 a0 e1                                      mov r0, r5
00437fd4  00 10 a0 e3                                      mov r1, #0
00437fd8  43 ff ff eb                                      bl #0x437cec
00437fdc  00 70 a0 e3                                      mov r7, #0
00437fe0  04 60 a0 e1                                      mov r6, r4
00437fe4  07 80 a0 e1                                      mov r8, r7
00437fe8  34 31 96 e5                                      ldr r3, [r6, #0x134]
00437fec  01 70 87 e2                                      add r7, r7, #1
00437ff0  00 00 53 e2                                      subs r0, r3, #0
00437ff4  0b 00 00 0a                                      beq #0x438028
00437ff8  00 30 93 e5                                      ldr r3, [r3]
00437ffc  0f e0 a0 e1                                      mov lr, pc
00438000  04 f0 93 e5                                      ldr pc, [r3, #4]
00438004  44 31 96 e5                                      ldr r3, [r6, #0x144]
00438008  34 81 86 e5                                      str r8, [r6, #0x134]
0043800c  00 00 53 e3                                      cmp r3, #0
00438010  04 00 00 0a                                      beq #0x438028
00438014  03 00 a0 e1                                      mov r0, r3
00438018  00 30 93 e5                                      ldr r3, [r3]
0043801c  0f e0 a0 e1                                      mov lr, pc
00438020  04 f0 93 e5                                      ldr pc, [r3, #4]
00438024  44 81 86 e5                                      str r8, [r6, #0x144]
00438028  04 00 57 e3                                      cmp r7, #4
0043802c  04 60 86 e2                                      add r6, r6, #4
00438030  ec ff ff 1a                                      bne #0x437fe8
00438034  05 00 a0 e1                                      mov r0, r5
00438038  b9 ff ff eb                                      bl #0x437f24
0043803c  05 00 a0 e1                                      mov r0, r5
00438040  00 10 a0 e3                                      mov r1, #0
00438044  28 ff ff eb                                      bl #0x437cec
00438048  28 31 94 e5                                      ldr r3, [r4, #0x128]
0043804c  49 0f 84 e2                                      add r0, r4, #0x124
00438050  00 00 53 e3                                      cmp r3, #0
00438054  07 00 00 da                                      ble #0x438078
00438058  00 30 a0 e3                                      mov r3, #0
0043805c  03 10 a0 e1                                      mov r1, r3
00438060  28 31 84 e5                                      str r3, [r4, #0x128]
00438064  80 fe ff eb                                      bl #0x437a6c
00438068  04 00 a0 e1                                      mov r0, r4
0043806c  35 cf 0d eb                                      bl #0x7abd48
00438070  04 00 a0 e1                                      mov r0, r4
00438074  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00438078  f6 ff ff aa                                      bge #0x438058
0043807c  03 21 a0 e1                                      lsl r2, r3, #2
00438080  00 c0 a0 e3                                      mov ip, #0
00438084  00 10 90 e5                                      ldr r1, [r0]
00438088  01 30 93 e2                                      adds r3, r3, #1
0043808c  02 c0 81 e7                                      str ip, [r1, r2]
00438090  04 20 82 e2                                      add r2, r2, #4
00438094  fa ff ff 1a                                      bne #0x438084
00438098  ee ff ff ea                                      b #0x438058
; mapping-symbol data/literal pool
0043809c  f0 ca 55 00 34 21 00 00                          .byte 0xf0, 0xca, 0x55, 0x00, 0x34, 0x21, 0x00, 0x00

; FUNCTION 0x004380a4, declared_size=28, range_size=28, mode=arm
; class-group: MultiMenuManager
; alias: _ZN16MultiMenuManagerD0Ev
; demangled: MultiMenuManager::~MultiMenuManager()
; decoder-mode: arm
004380a4  10 40 2d e9                                      push {r4, lr}
004380a8  00 40 a0 e1                                      mov r4, r0
004380ac  b8 ff ff eb                                      bl #0x437f94
004380b0  04 00 a0 e1                                      mov r0, r4
004380b4  e1 60 fb eb                                      bl #0x310440
004380b8  04 00 a0 e1                                      mov r0, r4
004380bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004380c0, declared_size=272, range_size=272, mode=arm
; class-group: MultiMenuManager
; alias: _ZN16MultiMenuManagerD2Ev
; demangled: MultiMenuManager::~MultiMenuManager()
; decoder-mode: arm
004380c0  00 31 9f e5                                      ldr r3, [pc, #0x100]
004380c4  00 21 9f e5                                      ldr r2, [pc, #0x100]
004380c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004380cc  03 30 8f e0                                      add r3, pc, r3
004380d0  02 20 93 e7                                      ldr r2, [r3, r2]
004380d4  00 40 a0 e1                                      mov r4, r0
004380d8  55 5f 80 e2                                      add r5, r0, #0x154
004380dc  54 10 82 e2                                      add r1, r2, #0x54
004380e0  08 20 82 e2                                      add r2, r2, #8
004380e4  00 20 84 e5                                      str r2, [r4]
004380e8  00 11 84 e5                                      str r1, [r4, #0x100]
004380ec  05 00 a0 e1                                      mov r0, r5
004380f0  8b ff ff eb                                      bl #0x437f24
004380f4  05 00 a0 e1                                      mov r0, r5
004380f8  89 ff ff eb                                      bl #0x437f24
004380fc  05 00 a0 e1                                      mov r0, r5
00438100  00 10 a0 e3                                      mov r1, #0
00438104  f8 fe ff eb                                      bl #0x437cec
00438108  00 70 a0 e3                                      mov r7, #0
0043810c  04 60 a0 e1                                      mov r6, r4
00438110  07 80 a0 e1                                      mov r8, r7
00438114  34 31 96 e5                                      ldr r3, [r6, #0x134]
00438118  01 70 87 e2                                      add r7, r7, #1
0043811c  00 00 53 e2                                      subs r0, r3, #0
00438120  0b 00 00 0a                                      beq #0x438154
00438124  00 30 93 e5                                      ldr r3, [r3]
00438128  0f e0 a0 e1                                      mov lr, pc
0043812c  04 f0 93 e5                                      ldr pc, [r3, #4]
00438130  44 31 96 e5                                      ldr r3, [r6, #0x144]
00438134  34 81 86 e5                                      str r8, [r6, #0x134]
00438138  00 00 53 e3                                      cmp r3, #0
0043813c  04 00 00 0a                                      beq #0x438154
00438140  03 00 a0 e1                                      mov r0, r3
00438144  00 30 93 e5                                      ldr r3, [r3]
00438148  0f e0 a0 e1                                      mov lr, pc
0043814c  04 f0 93 e5                                      ldr pc, [r3, #4]
00438150  44 81 86 e5                                      str r8, [r6, #0x144]
00438154  04 00 57 e3                                      cmp r7, #4
00438158  04 60 86 e2                                      add r6, r6, #4
0043815c  ec ff ff 1a                                      bne #0x438114
00438160  05 00 a0 e1                                      mov r0, r5
00438164  6e ff ff eb                                      bl #0x437f24
00438168  05 00 a0 e1                                      mov r0, r5
0043816c  00 10 a0 e3                                      mov r1, #0
00438170  dd fe ff eb                                      bl #0x437cec
00438174  28 31 94 e5                                      ldr r3, [r4, #0x128]
00438178  49 0f 84 e2                                      add r0, r4, #0x124
0043817c  00 00 53 e3                                      cmp r3, #0
00438180  07 00 00 da                                      ble #0x4381a4
00438184  00 30 a0 e3                                      mov r3, #0
00438188  03 10 a0 e1                                      mov r1, r3
0043818c  28 31 84 e5                                      str r3, [r4, #0x128]
00438190  35 fe ff eb                                      bl #0x437a6c
00438194  04 00 a0 e1                                      mov r0, r4
00438198  ea ce 0d eb                                      bl #0x7abd48
0043819c  04 00 a0 e1                                      mov r0, r4
004381a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004381a4  f6 ff ff aa                                      bge #0x438184
004381a8  03 21 a0 e1                                      lsl r2, r3, #2
004381ac  00 c0 a0 e3                                      mov ip, #0
004381b0  00 10 90 e5                                      ldr r1, [r0]
004381b4  01 30 93 e2                                      adds r3, r3, #1
004381b8  02 c0 81 e7                                      str ip, [r1, r2]
004381bc  04 20 82 e2                                      add r2, r2, #4
004381c0  fa ff ff 1a                                      bne #0x4381b0
004381c4  ee ff ff ea                                      b #0x438184
; mapping-symbol data/literal pool
004381c8  c4 c9 55 00 34 21 00 00                          .byte 0xc4, 0xc9, 0x55, 0x00, 0x34, 0x21, 0x00, 0x00

; FUNCTION 0x00438278, declared_size=2460, range_size=2460, mode=arm
; class-group: MultiMenuManager
; alias: _ZN16MultiMenuManager8PushMenuEP8MenuBase
; demangled: MultiMenuManager::PushMenu(MenuBase*)
; decoder-mode: arm
00438278  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0043827c  01 80 a0 e1                                      mov r8, r1
00438280  0c d0 4d e2                                      sub sp, sp, #0xc
00438284  00 60 a0 e1                                      mov r6, r0
00438288  08 10 81 e2                                      add r1, r1, #8
0043828c  04 00 98 e5                                      ldr r0, [r8, #4]
00438290  0b c0 0d eb                                      bl #0x7a82c4
00438294  b4 78 9f e5                                      ldr r7, [pc, #0x8b4]
00438298  00 40 50 e2                                      subs r4, r0, #0
0043829c  07 70 8f e0                                      add r7, pc, r7
004382a0  88 00 00 0a                                      beq #0x4384c8
004382a4  a8 08 9f e5                                      ldr r0, [pc, #0x8a8]
004382a8  08 50 84 e2                                      add r5, r4, #8
004382ac  05 10 a0 e1                                      mov r1, r5
004382b0  00 00 8f e0                                      add r0, pc, r0
004382b4  96 af fb eb                                      bl #0x324114
004382b8  98 18 9f e5                                      ldr r1, [pc, #0x898]
004382bc  05 00 a0 e1                                      mov r0, r5
004382c0  01 10 8f e0                                      add r1, pc, r1
004382c4  14 58 fb eb                                      bl #0x30e31c
004382c8  00 00 50 e3                                      cmp r0, #0
004382cc  90 00 00 0a                                      beq #0x438514
004382d0  84 18 9f e5                                      ldr r1, [pc, #0x884]
004382d4  05 00 a0 e1                                      mov r0, r5
004382d8  01 10 8f e0                                      add r1, pc, r1
004382dc  0e 58 fb eb                                      bl #0x30e31c
004382e0  00 00 50 e3                                      cmp r0, #0
004382e4  b1 00 00 0a                                      beq #0x4385b0
004382e8  70 18 9f e5                                      ldr r1, [pc, #0x870]
004382ec  05 00 a0 e1                                      mov r0, r5
004382f0  01 10 8f e0                                      add r1, pc, r1
004382f4  08 58 fb eb                                      bl #0x30e31c
004382f8  00 a0 50 e2                                      subs sl, r0, #0
004382fc  a0 00 00 0a                                      beq #0x438584
00438300  5c 18 9f e5                                      ldr r1, [pc, #0x85c]
00438304  05 00 a0 e1                                      mov r0, r5
00438308  01 10 8f e0                                      add r1, pc, r1
0043830c  02 58 fb eb                                      bl #0x30e31c
00438310  00 00 50 e3                                      cmp r0, #0
00438314  6d 00 00 1a                                      bne #0x4384d0
00438318  48 38 9f e5                                      ldr r3, [pc, #0x848]
0043831c  01 20 a0 e3                                      mov r2, #1
00438320  03 30 97 e7                                      ldr r3, [r7, r3]
00438324  00 20 c3 e5                                      strb r2, [r3]
00438328  3c 38 9f e5                                      ldr r3, [pc, #0x83c]
0043832c  00 a0 a0 e3                                      mov sl, #0
00438330  03 30 97 e7                                      ldr r3, [r7, r3]
00438334  00 a0 c3 e5                                      strb sl, [r3]
00438338  28 91 96 e5                                      ldr sb, [r6, #0x128]
0043833c  0a 00 59 e1                                      cmp sb, sl
00438340  83 00 00 da                                      ble #0x438554
00438344  24 31 96 e5                                      ldr r3, [r6, #0x124]
00438348  01 20 49 e2                                      sub r2, sb, #1
0043834c  02 71 93 e7                                      ldr r7, [r3, r2, lsl #2]
00438350  18 31 97 e5                                      ldr r3, [r7, #0x118]
00438354  00 00 53 e3                                      cmp r3, #0
00438358  7d 00 00 da                                      ble #0x438554
0043835c  07 00 a0 e1                                      mov r0, r7
00438360  f2 be 0d eb                                      bl #0x7a7f30
00438364  00 b0 a0 e1                                      mov fp, r0
00438368  08 30 9b e4                                      ldr r3, [fp], #8
0043836c  00 90 a0 e1                                      mov sb, r0
00438370  0f e0 a0 e1                                      mov lr, pc
00438374  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00438378  f0 27 9f e5                                      ldr r2, [pc, #0x7f0]
0043837c  0b 10 a0 e1                                      mov r1, fp
00438380  0a 30 a0 e1                                      mov r3, sl
00438384  02 20 8f e0                                      add r2, pc, r2
00438388  07 00 a0 e1                                      mov r0, r7
0043838c  00 a0 8d e5                                      str sl, [sp]
00438390  14 d5 0d eb                                      bl #0x7ad7e8
00438394  f8 b0 97 e5                                      ldr fp, [r7, #0xf8]
00438398  40 b0 1b e2                                      ands fp, fp, #0x40
0043839c  eb 00 00 0a                                      beq #0x438750
004383a0  00 10 a0 e3                                      mov r1, #0
004383a4  07 00 a0 e1                                      mov r0, r7
004383a8  31 be 0d eb                                      bl #0x7a7c74
004383ac  10 10 90 e5                                      ldr r1, [r0, #0x10]
004383b0  50 00 89 e2                                      add r0, sb, #0x50
004383b4  fb bd ff eb                                      bl #0x427ba8
004383b8  f8 30 97 e5                                      ldr r3, [r7, #0xf8]
004383bc  08 00 13 e3                                      tst r3, #8
004383c0  48 70 84 02                                      addeq r7, r4, #0x48
004383c4  c2 00 00 1a                                      bne #0x4386d4
004383c8  28 91 96 e5                                      ldr sb, [r6, #0x128]
004383cc  2c 31 96 e5                                      ldr r3, [r6, #0x12c]
004383d0  04 80 98 e5                                      ldr r8, [r8, #4]
004383d4  01 a0 89 e2                                      add sl, sb, #1
004383d8  03 00 5a e1                                      cmp sl, r3
004383dc  09 20 a0 d1                                      movle r2, sb
004383e0  62 00 00 ca                                      bgt #0x438570
004383e4  24 31 96 e5                                      ldr r3, [r6, #0x124]
004383e8  02 81 83 e7                                      str r8, [r3, r2, lsl #2]
004383ec  24 31 96 e5                                      ldr r3, [r6, #0x124]
004383f0  28 a1 86 e5                                      str sl, [r6, #0x128]
004383f4  09 61 93 e7                                      ldr r6, [r3, sb, lsl #2]
004383f8  18 81 96 e5                                      ldr r8, [r6, #0x118]
004383fc  01 a0 98 e2                                      adds sl, r8, #1
00438400  02 00 00 0a                                      beq #0x438410
00438404  1c 31 96 e5                                      ldr r3, [r6, #0x11c]
00438408  03 00 5a e1                                      cmp sl, r3
0043840c  c0 00 00 ca                                      bgt #0x438714
00438410  14 31 96 e5                                      ldr r3, [r6, #0x114]
00438414  00 20 a0 e3                                      mov r2, #0
00438418  08 21 83 e7                                      str r2, [r3, r8, lsl #2]
0043841c  14 31 96 e5                                      ldr r3, [r6, #0x114]
00438420  18 a1 86 e5                                      str sl, [r6, #0x118]
00438424  08 41 83 e7                                      str r4, [r3, r8, lsl #2]
00438428  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0043842c  02 00 53 e1                                      cmp r3, r2
00438430  03 00 00 0a                                      beq #0x438444
00438434  48 00 94 e5                                      ldr r0, [r4, #0x48]
00438438  04 20 d0 e5                                      ldrb r2, [r0, #4]
0043843c  00 00 52 e3                                      cmp r2, #0
00438440  87 00 00 0a                                      beq #0x438664
00438444  01 20 a0 e3                                      mov r2, #1
00438448  9b 20 c3 e5                                      strb r2, [r3, #0x9b]
0043844c  f8 30 96 e5                                      ldr r3, [r6, #0xf8]
00438450  08 00 13 e3                                      tst r3, #8
00438454  6f 00 00 1a                                      bne #0x438618
00438458  07 00 a0 e1                                      mov r0, r7
0043845c  70 ff ff eb                                      bl #0x438224
00438460  00 10 a0 e1                                      mov r1, r0
00438464  06 00 a0 e1                                      mov r0, r6
00438468  9e be 0d eb                                      bl #0x7a7ee8
0043846c  00 27 9f e5                                      ldr r2, [pc, #0x700]
00438470  00 c0 a0 e3                                      mov ip, #0
00438474  05 10 a0 e1                                      mov r1, r5
00438478  0c 30 a0 e1                                      mov r3, ip
0043847c  02 20 8f e0                                      add r2, pc, r2
00438480  06 00 a0 e1                                      mov r0, r6
00438484  00 c0 8d e5                                      str ip, [sp]
00438488  d6 d4 0d eb                                      bl #0x7ad7e8
0043848c  f8 30 96 e5                                      ldr r3, [r6, #0xf8]
00438490  40 50 13 e2                                      ands r5, r3, #0x40
00438494  55 00 00 0a                                      beq #0x4385f0
00438498  01 00 13 e3                                      tst r3, #1
0043849c  4e 00 00 1a                                      bne #0x4385dc
004384a0  04 00 a0 e1                                      mov r0, r4
004384a4  00 30 94 e5                                      ldr r3, [r4]
004384a8  0f e0 a0 e1                                      mov lr, pc
004384ac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004384b0  00 30 94 e5                                      ldr r3, [r4]
004384b4  04 00 a0 e1                                      mov r0, r4
004384b8  0f e0 a0 e1                                      mov lr, pc
004384bc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
004384c0  01 30 a0 e3                                      mov r3, #1
004384c4  58 30 84 e5                                      str r3, [r4, #0x58]
004384c8  0c d0 8d e2                                      add sp, sp, #0xc
004384cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004384d0  a0 16 9f e5                                      ldr r1, [pc, #0x6a0]
004384d4  05 00 a0 e1                                      mov r0, r5
004384d8  01 10 8f e0                                      add r1, pc, r1
004384dc  8e 57 fb eb                                      bl #0x30e31c
004384e0  00 00 50 e3                                      cmp r0, #0
004384e4  68 00 00 0a                                      beq #0x43868c
004384e8  8c 16 9f e5                                      ldr r1, [pc, #0x68c]
004384ec  05 00 a0 e1                                      mov r0, r5
004384f0  01 10 8f e0                                      add r1, pc, r1
004384f4  88 57 fb eb                                      bl #0x30e31c
004384f8  00 00 50 e3                                      cmp r0, #0
004384fc  88 00 00 1a                                      bne #0x438724
00438500  78 36 9f e5                                      ldr r3, [pc, #0x678]
00438504  02 20 a0 e3                                      mov r2, #2
00438508  03 30 97 e7                                      ldr r3, [r7, r3]
0043850c  00 20 83 e5                                      str r2, [r3]
00438510  84 ff ff ea                                      b #0x438328
00438514  68 36 9f e5                                      ldr r3, [pc, #0x668]
00438518  03 30 97 e7                                      ldr r3, [r7, r3]
0043851c  00 30 d3 e5                                      ldrb r3, [r3]
00438520  00 00 53 e3                                      cmp r3, #0
00438524  78 00 00 1a                                      bne #0x43870c
00438528  58 06 9f e5                                      ldr r0, [pc, #0x658]
0043852c  00 00 8f e0                                      add r0, pc, r0
00438530  f7 ae fb eb                                      bl #0x324114
00438534  50 26 9f e5                                      ldr r2, [pc, #0x650]
00438538  01 30 a0 e3                                      mov r3, #1
0043853c  02 10 97 e7                                      ldr r1, [r7, r2]
00438540  48 26 9f e5                                      ldr r2, [pc, #0x648]
00438544  00 30 c1 e5                                      strb r3, [r1]
00438548  02 20 97 e7                                      ldr r2, [r7, r2]
0043854c  00 30 c2 e5                                      strb r3, [r2]
00438550  5e ff ff ea                                      b #0x4382d0
00438554  2c 31 96 e5                                      ldr r3, [r6, #0x12c]
00438558  01 a0 89 e2                                      add sl, sb, #1
0043855c  48 70 84 e2                                      add r7, r4, #0x48
00438560  03 00 5a e1                                      cmp sl, r3
00438564  04 80 98 e5                                      ldr r8, [r8, #4]
00438568  09 20 a0 d1                                      movle r2, sb
0043856c  9c ff ff da                                      ble #0x4383e4
00438570  49 0f 86 e2                                      add r0, r6, #0x124
00438574  ca 10 8a e0                                      add r1, sl, sl, asr #1
00438578  3b fd ff eb                                      bl #0x437a6c
0043857c  28 21 96 e5                                      ldr r2, [r6, #0x128]
00438580  97 ff ff ea                                      b #0x4383e4
00438584  08 06 9f e5                                      ldr r0, [pc, #0x608]
00438588  00 00 8f e0                                      add r0, pc, r0
0043858c  e0 ae fb eb                                      bl #0x324114
00438590  f4 35 9f e5                                      ldr r3, [pc, #0x5f4]
00438594  01 10 a0 e3                                      mov r1, #1
00438598  03 20 97 e7                                      ldr r2, [r7, r3]
0043859c  ec 35 9f e5                                      ldr r3, [pc, #0x5ec]
004385a0  00 10 c2 e5                                      strb r1, [r2]
004385a4  03 30 97 e7                                      ldr r3, [r7, r3]
004385a8  00 a0 c3 e5                                      strb sl, [r3]
004385ac  53 ff ff ea                                      b #0x438300
004385b0  e0 05 9f e5                                      ldr r0, [pc, #0x5e0]
004385b4  00 00 8f e0                                      add r0, pc, r0
004385b8  d5 ae fb eb                                      bl #0x324114
004385bc  c8 25 9f e5                                      ldr r2, [pc, #0x5c8]
004385c0  01 30 a0 e3                                      mov r3, #1
004385c4  02 10 97 e7                                      ldr r1, [r7, r2]
004385c8  c0 25 9f e5                                      ldr r2, [pc, #0x5c0]
004385cc  00 30 c1 e5                                      strb r3, [r1]
004385d0  02 20 97 e7                                      ldr r2, [r7, r2]
004385d4  00 30 c2 e5                                      strb r3, [r2]
004385d8  42 ff ff ea                                      b #0x4382e8
004385dc  06 00 a0 e1                                      mov r0, r6
004385e0  00 30 96 e5                                      ldr r3, [r6]
004385e4  0f e0 a0 e1                                      mov lr, pc
004385e8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
004385ec  ab ff ff ea                                      b #0x4384a0
004385f0  07 00 a0 e1                                      mov r0, r7
004385f4  0a ff ff eb                                      bl #0x438224
004385f8  9c 25 9f e5                                      ldr r2, [pc, #0x59c]
004385fc  00 10 a0 e1                                      mov r1, r0
00438600  05 30 a0 e1                                      mov r3, r5
00438604  02 20 8f e0                                      add r2, pc, r2
00438608  06 00 a0 e1                                      mov r0, r6
0043860c  fc cc 0d eb                                      bl #0x7aba04
00438610  f8 30 96 e5                                      ldr r3, [r6, #0xf8]
00438614  9f ff ff ea                                      b #0x438498
00438618  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0043861c  00 00 53 e3                                      cmp r3, #0
00438620  03 00 00 0a                                      beq #0x438634
00438624  48 00 94 e5                                      ldr r0, [r4, #0x48]
00438628  04 20 d0 e5                                      ldrb r2, [r0, #4]
0043862c  00 00 52 e3                                      cmp r2, #0
00438630  1d 00 00 0a                                      beq #0x4386ac
00438634  03 00 a0 e1                                      mov r0, r3
00438638  02 10 a0 e3                                      mov r1, #2
0043863c  00 30 93 e5                                      ldr r3, [r3]
00438640  0f e0 a0 e1                                      mov lr, pc
00438644  08 f0 93 e5                                      ldr pc, [r3, #8]
00438648  00 00 50 e3                                      cmp r0, #0
0043864c  81 ff ff 0a                                      beq #0x438458
00438650  07 00 a0 e1                                      mov r0, r7
00438654  f2 fe ff eb                                      bl #0x438224
00438658  01 30 a0 e3                                      mov r3, #1
0043865c  ea 30 c0 e5                                      strb r3, [r0, #0xea]
00438660  7c ff ff ea                                      b #0x438458
00438664  00 10 90 e5                                      ldr r1, [r0]
00438668  01 10 41 e2                                      sub r1, r1, #1
0043866c  00 00 51 e3                                      cmp r1, #0
00438670  00 10 80 e5                                      str r1, [r0]
00438674  00 00 00 1a                                      bne #0x43867c
00438678  2e 69 0c eb                                      bl #0x752b38
0043867c  00 30 a0 e3                                      mov r3, #0
00438680  48 30 84 e5                                      str r3, [r4, #0x48]
00438684  4c 30 84 e5                                      str r3, [r4, #0x4c]
00438688  6d ff ff ea                                      b #0x438444
0043868c  0c 35 9f e5                                      ldr r3, [pc, #0x50c]
00438690  03 20 97 e7                                      ldr r2, [r7, r3]
00438694  e4 34 9f e5                                      ldr r3, [pc, #0x4e4]
00438698  00 00 c2 e5                                      strb r0, [r2]
0043869c  03 30 97 e7                                      ldr r3, [r7, r3]
004386a0  01 20 a0 e3                                      mov r2, #1
004386a4  00 20 83 e5                                      str r2, [r3]
004386a8  1e ff ff ea                                      b #0x438328
004386ac  00 10 90 e5                                      ldr r1, [r0]
004386b0  01 10 41 e2                                      sub r1, r1, #1
004386b4  00 00 51 e3                                      cmp r1, #0
004386b8  00 10 80 e5                                      str r1, [r0]
004386bc  00 00 00 1a                                      bne #0x4386c4
004386c0  1c 69 0c eb                                      bl #0x752b38
004386c4  00 30 a0 e3                                      mov r3, #0
004386c8  48 30 84 e5                                      str r3, [r4, #0x48]
004386cc  4c 30 84 e5                                      str r3, [r4, #0x4c]
004386d0  d7 ff ff ea                                      b #0x438634
004386d4  48 70 84 e2                                      add r7, r4, #0x48
004386d8  07 00 a0 e1                                      mov r0, r7
004386dc  bb fe ff eb                                      bl #0x4381d0
004386e0  02 10 a0 e3                                      mov r1, #2
004386e4  00 30 90 e5                                      ldr r3, [r0]
004386e8  0f e0 a0 e1                                      mov lr, pc
004386ec  08 f0 93 e5                                      ldr pc, [r3, #8]
004386f0  00 00 50 e3                                      cmp r0, #0
004386f4  33 ff ff 0a                                      beq #0x4383c8
004386f8  48 00 89 e2                                      add r0, sb, #0x48
004386fc  c8 fe ff eb                                      bl #0x438224
00438700  00 30 a0 e3                                      mov r3, #0
00438704  ea 30 c0 e5                                      strb r3, [r0, #0xea]
00438708  2e ff ff ea                                      b #0x4383c8
0043870c  ee 8d 11 eb                                      bl #0x89becc
00438710  84 ff ff ea                                      b #0x438528
00438714  45 0f 86 e2                                      add r0, r6, #0x114
00438718  ca 10 8a e0                                      add r1, sl, sl, asr #1
0043871c  3e fd ff eb                                      bl #0x437c1c
00438720  3a ff ff ea                                      b #0x438410
00438724  78 14 9f e5                                      ldr r1, [pc, #0x478]
00438728  05 00 a0 e1                                      mov r0, r5
0043872c  01 10 8f e0                                      add r1, pc, r1
00438730  f9 56 fb eb                                      bl #0x30e31c
00438734  00 00 50 e3                                      cmp r0, #0
00438738  1d 00 00 1a                                      bne #0x4387b4
0043873c  3c 34 9f e5                                      ldr r3, [pc, #0x43c]
00438740  03 20 a0 e3                                      mov r2, #3
00438744  03 30 97 e7                                      ldr r3, [r7, r3]
00438748  00 20 83 e5                                      str r2, [r3]
0043874c  f5 fe ff ea                                      b #0x438328
00438750  48 a0 89 e2                                      add sl, sb, #0x48
00438754  0a 00 a0 e1                                      mov r0, sl
00438758  b1 fe ff eb                                      bl #0x438224
0043875c  44 24 9f e5                                      ldr r2, [pc, #0x444]
00438760  0b 30 a0 e1                                      mov r3, fp
00438764  00 10 a0 e1                                      mov r1, r0
00438768  02 20 8f e0                                      add r2, pc, r2
0043876c  07 00 a0 e1                                      mov r0, r7
00438770  a3 cc 0d eb                                      bl #0x7aba04
00438774  00 b0 50 e2                                      subs fp, r0, #0
00438778  04 30 a0 13                                      movne r3, #4
0043877c  58 30 89 15                                      strne r3, [sb, #0x58]
00438780  06 ff ff 1a                                      bne #0x4383a0
00438784  0a 00 a0 e1                                      mov r0, sl
00438788  a5 fe ff eb                                      bl #0x438224
0043878c  18 24 9f e5                                      ldr r2, [pc, #0x418]
00438790  0b 30 a0 e1                                      mov r3, fp
00438794  00 10 a0 e1                                      mov r1, r0
00438798  02 20 8f e0                                      add r2, pc, r2
0043879c  07 00 a0 e1                                      mov r0, r7
004387a0  97 cc 0d eb                                      bl #0x7aba04
004387a4  00 00 50 e3                                      cmp r0, #0
004387a8  02 30 a0 13                                      movne r3, #2
004387ac  58 30 89 15                                      strne r3, [sb, #0x58]
004387b0  fa fe ff ea                                      b #0x4383a0
004387b4  f4 13 9f e5                                      ldr r1, [pc, #0x3f4]
004387b8  05 00 a0 e1                                      mov r0, r5
004387bc  01 10 8f e0                                      add r1, pc, r1
004387c0  d5 56 fb eb                                      bl #0x30e31c
004387c4  00 00 50 e3                                      cmp r0, #0
004387c8  04 00 00 1a                                      bne #0x4387e0
004387cc  ac 33 9f e5                                      ldr r3, [pc, #0x3ac]
004387d0  04 20 a0 e3                                      mov r2, #4
004387d4  03 30 97 e7                                      ldr r3, [r7, r3]
004387d8  00 20 83 e5                                      str r2, [r3]
004387dc  d1 fe ff ea                                      b #0x438328
004387e0  cc 13 9f e5                                      ldr r1, [pc, #0x3cc]
004387e4  05 00 a0 e1                                      mov r0, r5
004387e8  01 10 8f e0                                      add r1, pc, r1
004387ec  ca 56 fb eb                                      bl #0x30e31c
004387f0  00 00 50 e3                                      cmp r0, #0
004387f4  09 00 00 1a                                      bne #0x438820
004387f8  a0 33 9f e5                                      ldr r3, [pc, #0x3a0]
004387fc  03 30 97 e7                                      ldr r3, [r7, r3]
00438800  00 30 d3 e5                                      ldrb r3, [r3]
00438804  00 00 53 e3                                      cmp r3, #0
00438808  70 33 9f e5                                      ldr r3, [pc, #0x370]
0043880c  05 20 a0 13                                      movne r2, #5
00438810  06 20 a0 03                                      moveq r2, #6
00438814  03 30 97 e7                                      ldr r3, [r7, r3]
00438818  00 20 83 e5                                      str r2, [r3]
0043881c  c1 fe ff ea                                      b #0x438328
00438820  90 13 9f e5                                      ldr r1, [pc, #0x390]
00438824  05 00 a0 e1                                      mov r0, r5
00438828  01 10 8f e0                                      add r1, pc, r1
0043882c  ba 56 fb eb                                      bl #0x30e31c
00438830  00 00 50 e3                                      cmp r0, #0
00438834  04 00 00 1a                                      bne #0x43884c
00438838  40 33 9f e5                                      ldr r3, [pc, #0x340]
0043883c  07 20 a0 e3                                      mov r2, #7
00438840  03 30 97 e7                                      ldr r3, [r7, r3]
00438844  00 20 83 e5                                      str r2, [r3]
00438848  b6 fe ff ea                                      b #0x438328
0043884c  68 13 9f e5                                      ldr r1, [pc, #0x368]
00438850  05 00 a0 e1                                      mov r0, r5
00438854  01 10 8f e0                                      add r1, pc, r1
00438858  af 56 fb eb                                      bl #0x30e31c
0043885c  00 00 50 e3                                      cmp r0, #0
00438860  04 00 00 1a                                      bne #0x438878
00438864  14 33 9f e5                                      ldr r3, [pc, #0x314]
00438868  08 20 a0 e3                                      mov r2, #8
0043886c  03 30 97 e7                                      ldr r3, [r7, r3]
00438870  00 20 83 e5                                      str r2, [r3]
00438874  ab fe ff ea                                      b #0x438328
00438878  40 13 9f e5                                      ldr r1, [pc, #0x340]
0043887c  05 00 a0 e1                                      mov r0, r5
00438880  01 10 8f e0                                      add r1, pc, r1
00438884  a4 56 fb eb                                      bl #0x30e31c
00438888  00 00 50 e3                                      cmp r0, #0
0043888c  04 00 00 1a                                      bne #0x4388a4
00438890  e8 32 9f e5                                      ldr r3, [pc, #0x2e8]
00438894  09 20 a0 e3                                      mov r2, #9
00438898  03 30 97 e7                                      ldr r3, [r7, r3]
0043889c  00 20 83 e5                                      str r2, [r3]
004388a0  a0 fe ff ea                                      b #0x438328
004388a4  18 13 9f e5                                      ldr r1, [pc, #0x318]
004388a8  05 00 a0 e1                                      mov r0, r5
004388ac  01 10 8f e0                                      add r1, pc, r1
004388b0  99 56 fb eb                                      bl #0x30e31c
004388b4  00 00 50 e3                                      cmp r0, #0
004388b8  08 00 00 1a                                      bne #0x4388e0
004388bc  dc 32 9f e5                                      ldr r3, [pc, #0x2dc]
004388c0  01 10 a0 e3                                      mov r1, #1
004388c4  03 20 97 e7                                      ldr r2, [r7, r3]
004388c8  b0 32 9f e5                                      ldr r3, [pc, #0x2b0]
004388cc  00 10 c2 e5                                      strb r1, [r2]
004388d0  03 30 97 e7                                      ldr r3, [r7, r3]
004388d4  0a 20 a0 e3                                      mov r2, #0xa
004388d8  00 20 83 e5                                      str r2, [r3]
004388dc  91 fe ff ea                                      b #0x438328
004388e0  e0 12 9f e5                                      ldr r1, [pc, #0x2e0]
004388e4  05 00 a0 e1                                      mov r0, r5
004388e8  01 10 8f e0                                      add r1, pc, r1
004388ec  8a 56 fb eb                                      bl #0x30e31c
004388f0  00 00 50 e3                                      cmp r0, #0
004388f4  04 00 00 1a                                      bne #0x43890c
004388f8  80 32 9f e5                                      ldr r3, [pc, #0x280]
004388fc  0b 20 a0 e3                                      mov r2, #0xb
00438900  03 30 97 e7                                      ldr r3, [r7, r3]
00438904  00 20 83 e5                                      str r2, [r3]
00438908  86 fe ff ea                                      b #0x438328
0043890c  b8 12 9f e5                                      ldr r1, [pc, #0x2b8]
00438910  05 00 a0 e1                                      mov r0, r5
00438914  01 10 8f e0                                      add r1, pc, r1
00438918  7f 56 fb eb                                      bl #0x30e31c
0043891c  00 00 50 e3                                      cmp r0, #0
00438920  16 00 00 0a                                      beq #0x438980
00438924  a4 12 9f e5                                      ldr r1, [pc, #0x2a4]
00438928  05 00 a0 e1                                      mov r0, r5
0043892c  01 10 8f e0                                      add r1, pc, r1
00438930  79 56 fb eb                                      bl #0x30e31c
00438934  00 00 50 e3                                      cmp r0, #0
00438938  2c 00 00 0a                                      beq #0x4389f0
0043893c  90 12 9f e5                                      ldr r1, [pc, #0x290]
00438940  05 00 a0 e1                                      mov r0, r5
00438944  01 10 8f e0                                      add r1, pc, r1
00438948  73 56 fb eb                                      bl #0x30e31c
0043894c  00 00 50 e3                                      cmp r0, #0
00438950  1d 00 00 0a                                      beq #0x4389cc
00438954  7c 12 9f e5                                      ldr r1, [pc, #0x27c]
00438958  05 00 a0 e1                                      mov r0, r5
0043895c  01 10 8f e0                                      add r1, pc, r1
00438960  6d 56 fb eb                                      bl #0x30e31c
00438964  00 00 50 e3                                      cmp r0, #0
00438968  0c 00 00 1a                                      bne #0x4389a0
0043896c  0c 32 9f e5                                      ldr r3, [pc, #0x20c]
00438970  11 20 a0 e3                                      mov r2, #0x11
00438974  03 30 97 e7                                      ldr r3, [r7, r3]
00438978  00 20 83 e5                                      str r2, [r3]
0043897c  69 fe ff ea                                      b #0x438328
00438980  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
00438984  50 02 9f e5                                      ldr r0, [pc, #0x250]
00438988  13 20 a0 e3                                      mov r2, #0x13
0043898c  03 30 97 e7                                      ldr r3, [r7, r3]
00438990  00 00 8f e0                                      add r0, pc, r0
00438994  00 20 83 e5                                      str r2, [r3]
00438998  dd ad fb eb                                      bl #0x324114
0043899c  61 fe ff ea                                      b #0x438328
004389a0  38 12 9f e5                                      ldr r1, [pc, #0x238]
004389a4  05 00 a0 e1                                      mov r0, r5
004389a8  01 10 8f e0                                      add r1, pc, r1
004389ac  5a 56 fb eb                                      bl #0x30e31c
004389b0  00 00 50 e3                                      cmp r0, #0
004389b4  15 00 00 1a                                      bne #0x438a10
004389b8  c0 31 9f e5                                      ldr r3, [pc, #0x1c0]
004389bc  10 20 a0 e3                                      mov r2, #0x10
004389c0  03 30 97 e7                                      ldr r3, [r7, r3]
004389c4  00 20 83 e5                                      str r2, [r3]
004389c8  56 fe ff ea                                      b #0x438328
004389cc  ac 21 9f e5                                      ldr r2, [pc, #0x1ac]
004389d0  0c 02 9f e5                                      ldr r0, [pc, #0x20c]
004389d4  12 30 a0 e3                                      mov r3, #0x12
004389d8  02 20 97 e7                                      ldr r2, [r7, r2]
004389dc  00 00 8f e0                                      add r0, pc, r0
004389e0  03 10 a0 e1                                      mov r1, r3
004389e4  00 30 82 e5                                      str r3, [r2]
004389e8  c9 ad fb eb                                      bl #0x324114
004389ec  4d fe ff ea                                      b #0x438328
004389f0  88 31 9f e5                                      ldr r3, [pc, #0x188]
004389f4  ec 01 9f e5                                      ldr r0, [pc, #0x1ec]
004389f8  13 20 a0 e3                                      mov r2, #0x13
004389fc  03 30 97 e7                                      ldr r3, [r7, r3]
00438a00  00 00 8f e0                                      add r0, pc, r0
00438a04  00 20 83 e5                                      str r2, [r3]
00438a08  c1 ad fb eb                                      bl #0x324114
00438a0c  45 fe ff ea                                      b #0x438328
00438a10  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
00438a14  05 00 a0 e1                                      mov r0, r5
00438a18  01 10 8f e0                                      add r1, pc, r1
00438a1c  3e 56 fb eb                                      bl #0x30e31c
00438a20  00 00 50 e3                                      cmp r0, #0
00438a24  04 00 00 1a                                      bne #0x438a3c
00438a28  50 31 9f e5                                      ldr r3, [pc, #0x150]
00438a2c  0f 20 a0 e3                                      mov r2, #0xf
00438a30  03 30 97 e7                                      ldr r3, [r7, r3]
00438a34  00 20 83 e5                                      str r2, [r3]
00438a38  3a fe ff ea                                      b #0x438328
00438a3c  ac 11 9f e5                                      ldr r1, [pc, #0x1ac]
00438a40  05 00 a0 e1                                      mov r0, r5
00438a44  01 10 8f e0                                      add r1, pc, r1
00438a48  33 56 fb eb                                      bl #0x30e31c
00438a4c  00 00 50 e3                                      cmp r0, #0
00438a50  04 00 00 1a                                      bne #0x438a68
00438a54  24 31 9f e5                                      ldr r3, [pc, #0x124]
00438a58  0e 20 a0 e3                                      mov r2, #0xe
00438a5c  03 30 97 e7                                      ldr r3, [r7, r3]
00438a60  00 20 83 e5                                      str r2, [r3]
00438a64  2f fe ff ea                                      b #0x438328
00438a68  84 11 9f e5                                      ldr r1, [pc, #0x184]
00438a6c  05 00 a0 e1                                      mov r0, r5
00438a70  01 10 8f e0                                      add r1, pc, r1
00438a74  28 56 fb eb                                      bl #0x30e31c
00438a78  00 00 50 e3                                      cmp r0, #0
00438a7c  29 00 00 0a                                      beq #0x438b28
00438a80  70 11 9f e5                                      ldr r1, [pc, #0x170]
00438a84  05 00 a0 e1                                      mov r0, r5
00438a88  01 10 8f e0                                      add r1, pc, r1
00438a8c  22 56 fb eb                                      bl #0x30e31c
00438a90  00 00 50 e3                                      cmp r0, #0
00438a94  23 00 00 0a                                      beq #0x438b28
00438a98  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
00438a9c  05 00 a0 e1                                      mov r0, r5
00438aa0  01 10 8f e0                                      add r1, pc, r1
00438aa4  1c 56 fb eb                                      bl #0x30e31c
00438aa8  00 00 50 e3                                      cmp r0, #0
00438aac  1d 00 00 0a                                      beq #0x438b28
00438ab0  48 11 9f e5                                      ldr r1, [pc, #0x148]
00438ab4  05 00 a0 e1                                      mov r0, r5
00438ab8  01 10 8f e0                                      add r1, pc, r1
00438abc  16 56 fb eb                                      bl #0x30e31c
00438ac0  00 00 50 e3                                      cmp r0, #0
00438ac4  17 00 00 0a                                      beq #0x438b28
00438ac8  34 11 9f e5                                      ldr r1, [pc, #0x134]
00438acc  05 00 a0 e1                                      mov r0, r5
00438ad0  01 10 8f e0                                      add r1, pc, r1
00438ad4  10 56 fb eb                                      bl #0x30e31c
00438ad8  00 00 50 e3                                      cmp r0, #0
00438adc  11 00 00 0a                                      beq #0x438b28
00438ae0  20 11 9f e5                                      ldr r1, [pc, #0x120]
00438ae4  05 00 a0 e1                                      mov r0, r5
00438ae8  01 10 8f e0                                      add r1, pc, r1
00438aec  0a 56 fb eb                                      bl #0x30e31c
00438af0  00 00 50 e3                                      cmp r0, #0
00438af4  0b 00 00 0a                                      beq #0x438b28
00438af8  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
00438afc  05 00 a0 e1                                      mov r0, r5
00438b00  01 10 8f e0                                      add r1, pc, r1
00438b04  04 56 fb eb                                      bl #0x30e31c
00438b08  00 00 50 e3                                      cmp r0, #0
00438b0c  05 00 00 0a                                      beq #0x438b28
00438b10  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
00438b14  05 00 a0 e1                                      mov r0, r5
00438b18  01 10 8f e0                                      add r1, pc, r1
00438b1c  fe 55 fb eb                                      bl #0x30e31c
00438b20  00 00 50 e3                                      cmp r0, #0
00438b24  04 00 00 1a                                      bne #0x438b3c
00438b28  50 30 9f e5                                      ldr r3, [pc, #0x50]
00438b2c  0c 20 a0 e3                                      mov r2, #0xc
00438b30  03 30 97 e7                                      ldr r3, [r7, r3]
00438b34  00 20 83 e5                                      str r2, [r3]
00438b38  fa fd ff ea                                      b #0x438328
00438b3c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00438b40  0d 20 a0 e3                                      mov r2, #0xd
00438b44  03 30 97 e7                                      ldr r3, [r7, r3]
00438b48  00 20 83 e5                                      str r2, [r3]
00438b4c  f5 fd ff ea                                      b #0x438328
; mapping-symbol data/literal pool
00438b50  f4 c7 55 00 f0 34 49 00 00 35 49 00 38 35 49 00  .byte 0xf4, 0xc7, 0x55, 0x00, 0xf0, 0x34, 0x49, 0x00, 0x00, 0x35, 0x49, 0x00, 0x38, 0x35, 0x49, 0x00
00438b60  e0 6d 48 00 e0 0e 49 00 a4 1e 00 00 2c 1e 00 00  .byte 0xe0, 0x6d, 0x48, 0x00, 0xe0, 0x0e, 0x49, 0x00, 0xa4, 0x1e, 0x00, 0x00, 0x2c, 0x1e, 0x00, 0x00
00438b70  14 37 49 00 3c 36 49 00 f8 6b 48 00 c0 33 49 00  .byte 0x14, 0x37, 0x49, 0x00, 0x3c, 0x36, 0x49, 0x00, 0xf8, 0x6b, 0x48, 0x00, 0xc0, 0x33, 0x49, 0x00
00438b80  50 38 00 00 0c 21 00 00 a4 32 49 00 d4 29 00 00  .byte 0x50, 0x38, 0x00, 0x00, 0x0c, 0x21, 0x00, 0x00, 0xa4, 0x32, 0x49, 0x00, 0xd4, 0x29, 0x00, 0x00
00438b90  dc 2b 00 00 f0 32 49 00 7c 32 49 00 bc 34 49 00  .byte 0xdc, 0x2b, 0x00, 0x00, 0xf0, 0x32, 0x49, 0x00, 0x7c, 0x32, 0x49, 0x00, 0xbc, 0x34, 0x49, 0x00
00438ba0  50 45 00 00 04 0b 49 00 38 33 49 00 18 33 49 00  .byte 0x50, 0x45, 0x00, 0x00, 0x04, 0x0b, 0x49, 0x00, 0x38, 0x33, 0x49, 0x00, 0x18, 0x33, 0x49, 0x00
00438bb0  04 31 49 00 e8 30 49 00 20 13 49 00 7c 97 48 00  .byte 0x04, 0x31, 0x49, 0x00, 0xe8, 0x30, 0x49, 0x00, 0x20, 0x13, 0x49, 0x00, 0x7c, 0x97, 0x48, 0x00
00438bc0  c0 64 48 00 6c 64 48 00 48 96 48 00 4c 12 49 00  .byte 0xc0, 0x64, 0x48, 0x00, 0x6c, 0x64, 0x48, 0x00, 0x48, 0x96, 0x48, 0x00, 0x4c, 0x12, 0x49, 0x00
00438bd0  14 30 49 00 94 08 49 00 e4 0f 49 00 58 2f 49 00  .byte 0x14, 0x30, 0x49, 0x00, 0x94, 0x08, 0x49, 0x00, 0xe4, 0x0f, 0x49, 0x00, 0x58, 0x2f, 0x49, 0x00
00438be0  c8 11 49 00 cc 2f 49 00 50 2f 49 00 98 93 48 00  .byte 0xc8, 0x11, 0x49, 0x00, 0xcc, 0x2f, 0x49, 0x00, 0x50, 0x2f, 0x49, 0x00, 0x98, 0x93, 0x48, 0x00
00438bf0  b4 2f 49 00 90 62 48 00 80 2f 49 00 80 2f 49 00  .byte 0xb4, 0x2f, 0x49, 0x00, 0x90, 0x62, 0x48, 0x00, 0x80, 0x2f, 0x49, 0x00, 0x80, 0x2f, 0x49, 0x00
00438c00  88 2f 49 00 88 2f 49 00 88 2f 49 00 80 2f 49 00  .byte 0x88, 0x2f, 0x49, 0x00, 0x88, 0x2f, 0x49, 0x00, 0x88, 0x2f, 0x49, 0x00, 0x80, 0x2f, 0x49, 0x00
00438c10  e0 2b 49 00                                      .byte 0xe0, 0x2b, 0x49, 0x00

; FUNCTION 0x00438c14, declared_size=1628, range_size=1628, mode=arm
; class-group: MultiMenuManager
; alias: _ZN16MultiMenuManager7PopMenuEb
; demangled: MultiMenuManager::PopMenu(bool)
; decoder-mode: arm
00438c14  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00438c18  24 46 9f e5                                      ldr r4, [pc, #0x624]
00438c1c  24 86 9f e5                                      ldr r8, [pc, #0x624]
00438c20  14 d0 4d e2                                      sub sp, sp, #0x14
00438c24  04 40 8f e0                                      add r4, pc, r4
00438c28  08 30 94 e7                                      ldr r3, [r4, r8]
00438c2c  00 50 a0 e1                                      mov r5, r0
00438c30  01 70 a0 e1                                      mov r7, r1
00438c34  00 30 d3 e5                                      ldrb r3, [r3]
00438c38  00 00 53 e3                                      cmp r3, #0
00438c3c  0c 00 00 0a                                      beq #0x438c74
00438c40  04 36 9f e5                                      ldr r3, [pc, #0x604]
00438c44  03 30 94 e7                                      ldr r3, [r4, r3]
00438c48  00 10 93 e5                                      ldr r1, [r3]
00438c4c  07 00 51 e3                                      cmp r1, #7
00438c50  0a 10 a0 03                                      moveq r1, #0xa
00438c54  00 10 83 05                                      streq r1, [r3]
00438c58  02 00 00 0a                                      beq #0x438c68
00438c5c  0a 00 51 e3                                      cmp r1, #0xa
00438c60  05 00 51 13                                      cmpne r1, #5
00438c64  41 01 00 1a                                      bne #0x439170
00438c68  e0 05 9f e5                                      ldr r0, [pc, #0x5e0]
00438c6c  00 00 8f e0                                      add r0, pc, r0
00438c70  27 ad fb eb                                      bl #0x324114
00438c74  d8 65 9f e5                                      ldr r6, [pc, #0x5d8]
00438c78  06 30 94 e7                                      ldr r3, [r4, r6]
00438c7c  00 30 d3 e5                                      ldrb r3, [r3]
00438c80  00 00 53 e3                                      cmp r3, #0
00438c84  17 00 00 1a                                      bne #0x438ce8
00438c88  bc 35 9f e5                                      ldr r3, [pc, #0x5bc]
00438c8c  03 30 94 e7                                      ldr r3, [r4, r3]
00438c90  00 10 93 e5                                      ldr r1, [r3]
00438c94  04 00 51 e3                                      cmp r1, #4
00438c98  3e 01 00 0a                                      beq #0x439198
00438c9c  06 00 51 e3                                      cmp r1, #6
00438ca0  5e 01 00 0a                                      beq #0x439220
00438ca4  0e 00 51 e3                                      cmp r1, #0xe
00438ca8  4b 01 00 0a                                      beq #0x4391dc
00438cac  03 00 51 e3                                      cmp r1, #3
00438cb0  32 01 00 0a                                      beq #0x439180
00438cb4  05 00 51 e3                                      cmp r1, #5
00438cb8  05 10 81 02                                      addeq r1, r1, #5
00438cbc  00 10 83 05                                      streq r1, [r3]
00438cc0  05 00 00 0a                                      beq #0x438cdc
00438cc4  0c 00 51 e3                                      cmp r1, #0xc
00438cc8  09 10 a0 03                                      moveq r1, #9
00438ccc  00 10 83 05                                      streq r1, [r3]
00438cd0  01 00 00 0a                                      beq #0x438cdc
00438cd4  0f 00 51 e3                                      cmp r1, #0xf
00438cd8  56 01 00 0a                                      beq #0x439238
00438cdc  74 05 9f e5                                      ldr r0, [pc, #0x574]
00438ce0  00 00 8f e0                                      add r0, pc, r0
00438ce4  0a ad fb eb                                      bl #0x324114
00438ce8  06 30 94 e7                                      ldr r3, [r4, r6]
00438cec  00 20 a0 e3                                      mov r2, #0
00438cf0  64 65 9f e5                                      ldr r6, [pc, #0x564]
00438cf4  00 20 c3 e5                                      strb r2, [r3]
00438cf8  60 25 9f e5                                      ldr r2, [pc, #0x560]
00438cfc  28 31 95 e5                                      ldr r3, [r5, #0x128]
00438d00  5c a5 9f e5                                      ldr sl, [pc, #0x55c]
00438d04  0c 20 8d e5                                      str r2, [sp, #0xc]
00438d08  58 25 9f e5                                      ldr r2, [pc, #0x558]
00438d0c  58 b5 9f e5                                      ldr fp, [pc, #0x558]
00438d10  06 60 8f e0                                      add r6, pc, r6
00438d14  02 20 8f e0                                      add r2, pc, r2
00438d18  0a a0 8f e0                                      add sl, pc, sl
00438d1c  0b b0 8f e0                                      add fp, pc, fp
00438d20  08 20 8d e5                                      str r2, [sp, #8]
00438d24  49 9f 85 e2                                      add sb, r5, #0x124
00438d28  00 00 53 e3                                      cmp r3, #0
00438d2c  76 00 00 0a                                      beq #0x438f0c
00438d30  24 21 95 e5                                      ldr r2, [r5, #0x124]
00438d34  01 30 43 e2                                      sub r3, r3, #1
00438d38  03 41 92 e7                                      ldr r4, [r2, r3, lsl #2]
00438d3c  18 31 94 e5                                      ldr r3, [r4, #0x118]
00438d40  00 00 53 e3                                      cmp r3, #0
00438d44  70 00 00 da                                      ble #0x438f0c
00438d48  14 21 94 e5                                      ldr r2, [r4, #0x114]
00438d4c  01 30 43 e2                                      sub r3, r3, #1
00438d50  03 31 92 e7                                      ldr r3, [r2, r3, lsl #2]
00438d54  03 00 a0 e1                                      mov r0, r3
00438d58  00 30 93 e5                                      ldr r3, [r3]
00438d5c  0f e0 a0 e1                                      mov lr, pc
00438d60  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00438d64  18 21 94 e5                                      ldr r2, [r4, #0x118]
00438d68  14 31 94 e5                                      ldr r3, [r4, #0x114]
00438d6c  01 20 42 e2                                      sub r2, r2, #1
00438d70  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00438d74  03 00 a0 e1                                      mov r0, r3
00438d78  00 30 93 e5                                      ldr r3, [r3]
00438d7c  0f e0 a0 e1                                      mov lr, pc
00438d80  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00438d84  18 21 94 e5                                      ldr r2, [r4, #0x118]
00438d88  14 31 94 e5                                      ldr r3, [r4, #0x114]
00438d8c  00 c0 a0 e3                                      mov ip, #0
00438d90  01 20 42 e2                                      sub r2, r2, #1
00438d94  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
00438d98  04 00 a0 e1                                      mov r0, r4
00438d9c  0c 30 a0 e1                                      mov r3, ip
00438da0  08 10 81 e2                                      add r1, r1, #8
00438da4  06 20 a0 e1                                      mov r2, r6
00438da8  00 c0 8d e5                                      str ip, [sp]
00438dac  8d d2 0d eb                                      bl #0x7ad7e8
00438db0  f8 80 94 e5                                      ldr r8, [r4, #0xf8]
00438db4  40 80 18 e2                                      ands r8, r8, #0x40
00438db8  7a 00 00 0a                                      beq #0x438fa8
00438dbc  18 21 94 e5                                      ldr r2, [r4, #0x118]
00438dc0  14 31 94 e5                                      ldr r3, [r4, #0x114]
00438dc4  01 20 42 e2                                      sub r2, r2, #1
00438dc8  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00438dcc  02 20 a0 e3                                      mov r2, #2
00438dd0  58 20 83 e5                                      str r2, [r3, #0x58]
00438dd4  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
00438dd8  08 00 13 e3                                      tst r3, #8
00438ddc  56 00 00 1a                                      bne #0x438f3c
00438de0  04 00 a0 e1                                      mov r0, r4
00438de4  b0 bb 0d eb                                      bl #0x7a7cac
00438de8  10 10 90 e5                                      ldr r1, [r0, #0x10]
00438dec  04 00 a0 e1                                      mov r0, r4
00438df0  3c bc 0d eb                                      bl #0x7a7ee8
00438df4  18 81 94 e5                                      ldr r8, [r4, #0x118]
00438df8  01 80 58 e2                                      subs r8, r8, #1
00438dfc  02 00 00 0a                                      beq #0x438e0c
00438e00  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
00438e04  03 00 58 e1                                      cmp r8, r3
00438e08  76 00 00 ca                                      bgt #0x438fe8
00438e0c  18 81 84 e5                                      str r8, [r4, #0x118]
00438e10  28 41 95 e5                                      ldr r4, [r5, #0x128]
00438e14  01 40 54 e2                                      subs r4, r4, #1
00438e18  28 41 85 05                                      streq r4, [r5, #0x128]
00438e1c  38 00 00 0a                                      beq #0x438f04
00438e20  2c 31 95 e5                                      ldr r3, [r5, #0x12c]
00438e24  03 00 54 e1                                      cmp r4, r3
00438e28  6a 00 00 ca                                      bgt #0x438fd8
00438e2c  00 00 54 e3                                      cmp r4, #0
00438e30  28 41 85 e5                                      str r4, [r5, #0x128]
00438e34  32 00 00 da                                      ble #0x438f04
00438e38  24 31 95 e5                                      ldr r3, [r5, #0x124]
00438e3c  01 40 44 e2                                      sub r4, r4, #1
00438e40  04 41 93 e7                                      ldr r4, [r3, r4, lsl #2]
00438e44  00 00 54 e3                                      cmp r4, #0
00438e48  2d 00 00 0a                                      beq #0x438f04
00438e4c  18 31 94 e5                                      ldr r3, [r4, #0x118]
00438e50  00 00 53 e3                                      cmp r3, #0
00438e54  2a 00 00 da                                      ble #0x438f04
00438e58  14 21 94 e5                                      ldr r2, [r4, #0x114]
00438e5c  01 30 43 e2                                      sub r3, r3, #1
00438e60  03 81 92 e7                                      ldr r8, [r2, r3, lsl #2]
00438e64  4c 30 98 e5                                      ldr r3, [r8, #0x4c]
00438e68  00 00 53 e3                                      cmp r3, #0
00438e6c  03 00 00 0a                                      beq #0x438e80
00438e70  48 00 98 e5                                      ldr r0, [r8, #0x48]
00438e74  04 20 d0 e5                                      ldrb r2, [r0, #4]
00438e78  00 00 52 e3                                      cmp r2, #0
00438e7c  b1 00 00 0a                                      beq #0x439148
00438e80  01 20 a0 e3                                      mov r2, #1
00438e84  9b 20 c3 e5                                      strb r2, [r3, #0x9b]
00438e88  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
00438e8c  08 00 13 e3                                      tst r3, #8
00438e90  87 00 00 1a                                      bne #0x4390b4
00438e94  18 21 94 e5                                      ldr r2, [r4, #0x118]
00438e98  14 31 94 e5                                      ldr r3, [r4, #0x114]
00438e9c  01 20 42 e2                                      sub r2, r2, #1
00438ea0  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00438ea4  48 00 80 e2                                      add r0, r0, #0x48
00438ea8  dd fc ff eb                                      bl #0x438224
00438eac  00 10 a0 e1                                      mov r1, r0
00438eb0  04 00 a0 e1                                      mov r0, r4
00438eb4  0b bc 0d eb                                      bl #0x7a7ee8
00438eb8  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
00438ebc  40 80 13 e2                                      ands r8, r3, #0x40
00438ec0  62 00 00 0a                                      beq #0x439050
00438ec4  01 00 13 e3                                      tst r3, #1
00438ec8  4a 00 00 1a                                      bne #0x438ff8
00438ecc  18 21 94 e5                                      ldr r2, [r4, #0x118]
00438ed0  14 31 94 e5                                      ldr r3, [r4, #0x114]
00438ed4  01 20 42 e2                                      sub r2, r2, #1
00438ed8  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00438edc  03 00 a0 e1                                      mov r0, r3
00438ee0  00 30 93 e5                                      ldr r3, [r3]
00438ee4  0f e0 a0 e1                                      mov lr, pc
00438ee8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00438eec  18 21 94 e5                                      ldr r2, [r4, #0x118]
00438ef0  14 31 94 e5                                      ldr r3, [r4, #0x114]
00438ef4  01 20 42 e2                                      sub r2, r2, #1
00438ef8  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00438efc  03 20 a0 e3                                      mov r2, #3
00438f00  58 20 83 e5                                      str r2, [r3, #0x58]
00438f04  00 00 57 e3                                      cmp r7, #0
00438f08  01 00 00 1a                                      bne #0x438f14
00438f0c  14 d0 8d e2                                      add sp, sp, #0x14
00438f10  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00438f14  28 31 95 e5                                      ldr r3, [r5, #0x128]
00438f18  00 00 53 e3                                      cmp r3, #0
00438f1c  fa ff ff da                                      ble #0x438f0c
00438f20  24 21 95 e5                                      ldr r2, [r5, #0x124]
00438f24  01 10 43 e2                                      sub r1, r3, #1
00438f28  01 21 92 e7                                      ldr r2, [r2, r1, lsl #2]
00438f2c  18 21 92 e5                                      ldr r2, [r2, #0x118]
00438f30  00 00 52 e3                                      cmp r2, #0
00438f34  7b ff ff ca                                      bgt #0x438d28
00438f38  f3 ff ff ea                                      b #0x438f0c
00438f3c  18 21 94 e5                                      ldr r2, [r4, #0x118]
00438f40  14 31 94 e5                                      ldr r3, [r4, #0x114]
00438f44  01 20 42 e2                                      sub r2, r2, #1
00438f48  02 81 93 e7                                      ldr r8, [r3, r2, lsl #2]
00438f4c  4c 30 98 e5                                      ldr r3, [r8, #0x4c]
00438f50  00 00 53 e3                                      cmp r3, #0
00438f54  03 00 00 0a                                      beq #0x438f68
00438f58  48 00 98 e5                                      ldr r0, [r8, #0x48]
00438f5c  04 20 d0 e5                                      ldrb r2, [r0, #4]
00438f60  00 00 52 e3                                      cmp r2, #0
00438f64  6d 00 00 0a                                      beq #0x439120
00438f68  03 00 a0 e1                                      mov r0, r3
00438f6c  02 10 a0 e3                                      mov r1, #2
00438f70  00 30 93 e5                                      ldr r3, [r3]
00438f74  0f e0 a0 e1                                      mov lr, pc
00438f78  08 f0 93 e5                                      ldr pc, [r3, #8]
00438f7c  00 00 50 e3                                      cmp r0, #0
00438f80  96 ff ff 0a                                      beq #0x438de0
00438f84  18 21 94 e5                                      ldr r2, [r4, #0x118]
00438f88  14 31 94 e5                                      ldr r3, [r4, #0x114]
00438f8c  01 20 42 e2                                      sub r2, r2, #1
00438f90  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00438f94  48 00 80 e2                                      add r0, r0, #0x48
00438f98  a1 fc ff eb                                      bl #0x438224
00438f9c  00 30 a0 e3                                      mov r3, #0
00438fa0  ea 30 c0 e5                                      strb r3, [r0, #0xea]
00438fa4  8d ff ff ea                                      b #0x438de0
00438fa8  18 21 94 e5                                      ldr r2, [r4, #0x118]
00438fac  14 31 94 e5                                      ldr r3, [r4, #0x114]
00438fb0  01 20 42 e2                                      sub r2, r2, #1
00438fb4  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00438fb8  48 00 80 e2                                      add r0, r0, #0x48
00438fbc  98 fc ff eb                                      bl #0x438224
00438fc0  0a 20 a0 e1                                      mov r2, sl
00438fc4  00 10 a0 e1                                      mov r1, r0
00438fc8  08 30 a0 e1                                      mov r3, r8
00438fcc  04 00 a0 e1                                      mov r0, r4
00438fd0  8b ca 0d eb                                      bl #0x7aba04
00438fd4  78 ff ff ea                                      b #0x438dbc
00438fd8  09 00 a0 e1                                      mov r0, sb
00438fdc  c4 10 84 e0                                      add r1, r4, r4, asr #1
00438fe0  a1 fa ff eb                                      bl #0x437a6c
00438fe4  90 ff ff ea                                      b #0x438e2c
00438fe8  45 0f 84 e2                                      add r0, r4, #0x114
00438fec  c8 10 88 e0                                      add r1, r8, r8, asr #1
00438ff0  09 fb ff eb                                      bl #0x437c1c
00438ff4  84 ff ff ea                                      b #0x438e0c
00438ff8  18 21 94 e5                                      ldr r2, [r4, #0x118]
00438ffc  14 31 94 e5                                      ldr r3, [r4, #0x114]
00439000  01 20 42 e2                                      sub r2, r2, #1
00439004  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00439008  50 00 80 e2                                      add r0, r0, #0x50
0043900c  84 fc ff eb                                      bl #0x438224
00439010  00 00 50 e3                                      cmp r0, #0
00439014  ac ff ff 0a                                      beq #0x438ecc
00439018  04 00 a0 e1                                      mov r0, r4
0043901c  00 10 a0 e3                                      mov r1, #0
00439020  fa cc 0d eb                                      bl #0x7ac410
00439024  18 21 94 e5                                      ldr r2, [r4, #0x118]
00439028  14 31 94 e5                                      ldr r3, [r4, #0x114]
0043902c  01 20 42 e2                                      sub r2, r2, #1
00439030  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00439034  50 00 80 e2                                      add r0, r0, #0x50
00439038  79 fc ff eb                                      bl #0x438224
0043903c  00 20 a0 e3                                      mov r2, #0
00439040  00 10 a0 e1                                      mov r1, r0
00439044  04 00 a0 e1                                      mov r0, r4
00439048  76 cc 0d eb                                      bl #0x7ac228
0043904c  9e ff ff ea                                      b #0x438ecc
00439050  18 11 94 e5                                      ldr r1, [r4, #0x118]
00439054  14 31 94 e5                                      ldr r3, [r4, #0x114]
00439058  0b 20 a0 e1                                      mov r2, fp
0043905c  01 10 41 e2                                      sub r1, r1, #1
00439060  01 11 93 e7                                      ldr r1, [r3, r1, lsl #2]
00439064  04 00 a0 e1                                      mov r0, r4
00439068  08 30 a0 e1                                      mov r3, r8
0043906c  08 10 81 e2                                      add r1, r1, #8
00439070  00 80 8d e5                                      str r8, [sp]
00439074  db d1 0d eb                                      bl #0x7ad7e8
00439078  18 21 94 e5                                      ldr r2, [r4, #0x118]
0043907c  14 31 94 e5                                      ldr r3, [r4, #0x114]
00439080  01 20 42 e2                                      sub r2, r2, #1
00439084  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00439088  48 00 80 e2                                      add r0, r0, #0x48
0043908c  64 fc ff eb                                      bl #0x438224
00439090  08 30 a0 e1                                      mov r3, r8
00439094  00 10 a0 e1                                      mov r1, r0
00439098  08 20 9d e5                                      ldr r2, [sp, #8]
0043909c  04 00 a0 e1                                      mov r0, r4
004390a0  57 ca 0d eb                                      bl #0x7aba04
004390a4  00 80 50 e2                                      subs r8, r0, #0
004390a8  3d 00 00 0a                                      beq #0x4391a4
004390ac  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
004390b0  83 ff ff ea                                      b #0x438ec4
004390b4  18 21 95 e5                                      ldr r2, [r5, #0x118]
004390b8  14 31 95 e5                                      ldr r3, [r5, #0x114]
004390bc  01 20 42 e2                                      sub r2, r2, #1
004390c0  02 81 93 e7                                      ldr r8, [r3, r2, lsl #2]
004390c4  4c 30 98 e5                                      ldr r3, [r8, #0x4c]
004390c8  00 00 53 e3                                      cmp r3, #0
004390cc  03 00 00 0a                                      beq #0x4390e0
004390d0  48 00 98 e5                                      ldr r0, [r8, #0x48]
004390d4  04 20 d0 e5                                      ldrb r2, [r0, #4]
004390d8  00 00 52 e3                                      cmp r2, #0
004390dc  45 00 00 0a                                      beq #0x4391f8
004390e0  03 00 a0 e1                                      mov r0, r3
004390e4  02 10 a0 e3                                      mov r1, #2
004390e8  00 30 93 e5                                      ldr r3, [r3]
004390ec  0f e0 a0 e1                                      mov lr, pc
004390f0  08 f0 93 e5                                      ldr pc, [r3, #8]
004390f4  00 00 50 e3                                      cmp r0, #0
004390f8  65 ff ff 0a                                      beq #0x438e94
004390fc  18 21 94 e5                                      ldr r2, [r4, #0x118]
00439100  14 31 94 e5                                      ldr r3, [r4, #0x114]
00439104  01 20 42 e2                                      sub r2, r2, #1
00439108  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
0043910c  48 00 80 e2                                      add r0, r0, #0x48
00439110  43 fc ff eb                                      bl #0x438224
00439114  01 30 a0 e3                                      mov r3, #1
00439118  ea 30 c0 e5                                      strb r3, [r0, #0xea]
0043911c  5c ff ff ea                                      b #0x438e94
00439120  00 10 90 e5                                      ldr r1, [r0]
00439124  01 10 41 e2                                      sub r1, r1, #1
00439128  00 00 51 e3                                      cmp r1, #0
0043912c  00 10 80 e5                                      str r1, [r0]
00439130  00 00 00 1a                                      bne #0x439138
00439134  7f 66 0c eb                                      bl #0x752b38
00439138  00 30 a0 e3                                      mov r3, #0
0043913c  4c 30 88 e5                                      str r3, [r8, #0x4c]
00439140  48 30 88 e5                                      str r3, [r8, #0x48]
00439144  87 ff ff ea                                      b #0x438f68
00439148  00 10 90 e5                                      ldr r1, [r0]
0043914c  01 10 41 e2                                      sub r1, r1, #1
00439150  00 00 51 e3                                      cmp r1, #0
00439154  00 10 80 e5                                      str r1, [r0]
00439158  00 00 00 1a                                      bne #0x439160
0043915c  75 66 0c eb                                      bl #0x752b38
00439160  00 30 a0 e3                                      mov r3, #0
00439164  4c 30 88 e5                                      str r3, [r8, #0x4c]
00439168  48 30 88 e5                                      str r3, [r8, #0x48]
0043916c  43 ff ff ea                                      b #0x438e80
00439170  0e 00 51 e3                                      cmp r1, #0xe
00439174  09 10 a0 13                                      movne r1, #9
00439178  00 10 83 15                                      strne r1, [r3]
0043917c  b9 fe ff ea                                      b #0x438c68
00439180  08 20 94 e7                                      ldr r2, [r4, r8]
00439184  00 20 d2 e5                                      ldrb r2, [r2]
00439188  00 00 52 e3                                      cmp r2, #0
0043918c  07 10 81 12                                      addne r1, r1, #7
00439190  00 10 83 15                                      strne r1, [r3]
00439194  d0 fe ff 1a                                      bne #0x438cdc
00439198  01 10 a0 e3                                      mov r1, #1
0043919c  00 10 83 e5                                      str r1, [r3]
004391a0  cd fe ff ea                                      b #0x438cdc
004391a4  18 21 94 e5                                      ldr r2, [r4, #0x118]
004391a8  14 31 94 e5                                      ldr r3, [r4, #0x114]
004391ac  01 20 42 e2                                      sub r2, r2, #1
004391b0  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
004391b4  48 00 80 e2                                      add r0, r0, #0x48
004391b8  19 fc ff eb                                      bl #0x438224
004391bc  0c c0 9d e5                                      ldr ip, [sp, #0xc]
004391c0  00 10 a0 e1                                      mov r1, r0
004391c4  08 30 a0 e1                                      mov r3, r8
004391c8  04 00 a0 e1                                      mov r0, r4
004391cc  0c 20 8f e0                                      add r2, pc, ip
004391d0  0b ca 0d eb                                      bl #0x7aba04
004391d4  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
004391d8  39 ff ff ea                                      b #0x438ec4
004391dc  08 20 94 e7                                      ldr r2, [r4, r8]
004391e0  00 20 d2 e5                                      ldrb r2, [r2]
004391e4  00 00 52 e3                                      cmp r2, #0
004391e8  05 10 a0 13                                      movne r1, #5
004391ec  06 10 a0 03                                      moveq r1, #6
004391f0  00 10 83 e5                                      str r1, [r3]
004391f4  b8 fe ff ea                                      b #0x438cdc
004391f8  00 10 90 e5                                      ldr r1, [r0]
004391fc  01 10 41 e2                                      sub r1, r1, #1
00439200  00 00 51 e3                                      cmp r1, #0
00439204  00 10 80 e5                                      str r1, [r0]
00439208  00 00 00 1a                                      bne #0x439210
0043920c  49 66 0c eb                                      bl #0x752b38
00439210  00 30 a0 e3                                      mov r3, #0
00439214  4c 30 88 e5                                      str r3, [r8, #0x4c]
00439218  48 30 88 e5                                      str r3, [r8, #0x48]
0043921c  af ff ff ea                                      b #0x4390e0
00439220  08 20 94 e7                                      ldr r2, [r4, r8]
00439224  00 20 d2 e5                                      ldrb r2, [r2]
00439228  00 00 52 e3                                      cmp r2, #0
0043922c  04 10 81 12                                      addne r1, r1, #4
00439230  00 10 83 15                                      strne r1, [r3]
00439234  a8 fe ff 1a                                      bne #0x438cdc
00439238  04 10 a0 e3                                      mov r1, #4
0043923c  00 10 83 e5                                      str r1, [r3]
00439240  a5 fe ff ea                                      b #0x438cdc
; mapping-symbol data/literal pool
00439244  6c be 55 00 50 45 00 00 50 38 00 00 5c 2e 49 00  .byte 0x6c, 0xbe, 0x55, 0x00, 0x50, 0x45, 0x00, 0x00, 0x50, 0x38, 0x00, 0x00, 0x5c, 0x2e, 0x49, 0x00
00439254  2c 1e 00 00 10 2e 49 00 88 2d 49 00 f4 28 49 00  .byte 0x2c, 0x1e, 0x00, 0x00, 0x10, 0x2e, 0x49, 0x00, 0x88, 0x2d, 0x49, 0x00, 0xf4, 0x28, 0x49, 0x00
00439264  98 2d 49 00 04 2e 49 00 9c 2d 49 00              .byte 0x98, 0x2d, 0x49, 0x00, 0x04, 0x2e, 0x49, 0x00, 0x9c, 0x2d, 0x49, 0x00

; FUNCTION 0x00439270, declared_size=2500, range_size=2500, mode=arm
; class-group: MultiMenuManager
; alias: _ZN16MultiMenuManager7PopMenuEPKcb
; demangled: MultiMenuManager::PopMenu(char const*, bool)
; decoder-mode: arm
00439270  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00439274  00 00 52 e3                                      cmp r2, #0
00439278  2c d0 4d e2                                      sub sp, sp, #0x2c
0043927c  00 40 a0 e1                                      mov r4, r0
00439280  01 60 a0 e1                                      mov r6, r1
00439284  26 01 00 0a                                      beq #0x439724
00439288  7c 39 9f e5                                      ldr r3, [pc, #0x97c]
0043928c  7c 79 9f e5                                      ldr r7, [pc, #0x97c]
00439290  7c 89 9f e5                                      ldr r8, [pc, #0x97c]
00439294  03 30 8f e0                                      add r3, pc, r3
00439298  78 b9 9f e5                                      ldr fp, [pc, #0x978]
0043929c  10 30 8d e5                                      str r3, [sp, #0x10]
004392a0  74 39 9f e5                                      ldr r3, [pc, #0x974]
004392a4  07 70 8f e0                                      add r7, pc, r7
004392a8  08 80 8f e0                                      add r8, pc, r8
004392ac  0b b0 8f e0                                      add fp, pc, fp
004392b0  49 9f 80 e2                                      add sb, r0, #0x124
004392b4  14 30 8d e5                                      str r3, [sp, #0x14]
004392b8  00 30 94 e5                                      ldr r3, [r4]
004392bc  40 50 93 e5                                      ldr r5, [r3, #0x40]
004392c0  f1 cd ff eb                                      bl #0x42ca8c
004392c4  06 10 a0 e1                                      mov r1, r6
004392c8  c8 cf ff eb                                      bl #0x42d1f0
004392cc  00 10 a0 e1                                      mov r1, r0
004392d0  04 00 a0 e1                                      mov r0, r4
004392d4  35 ff 2f e1                                      blx r5
004392d8  00 00 50 e3                                      cmp r0, #0
004392dc  01 00 00 1a                                      bne #0x4392e8
004392e0  2c d0 8d e2                                      add sp, sp, #0x2c
004392e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004392e8  28 31 94 e5                                      ldr r3, [r4, #0x128]
004392ec  00 00 53 e3                                      cmp r3, #0
004392f0  fa ff ff da                                      ble #0x4392e0
004392f4  24 21 94 e5                                      ldr r2, [r4, #0x124]
004392f8  01 30 43 e2                                      sub r3, r3, #1
004392fc  03 51 92 e7                                      ldr r5, [r2, r3, lsl #2]
00439300  18 31 95 e5                                      ldr r3, [r5, #0x118]
00439304  00 00 53 e3                                      cmp r3, #0
00439308  f4 ff ff da                                      ble #0x4392e0
0043930c  05 00 a0 e1                                      mov r0, r5
00439310  06 bb 0d eb                                      bl #0x7a7f30
00439314  00 a0 a0 e1                                      mov sl, r0
00439318  db cd ff eb                                      bl #0x42ca8c
0043931c  06 10 a0 e1                                      mov r1, r6
00439320  b2 cf ff eb                                      bl #0x42d1f0
00439324  00 00 5a e1                                      cmp sl, r0
00439328  ec ff ff 0a                                      beq #0x4392e0
0043932c  18 21 95 e5                                      ldr r2, [r5, #0x118]
00439330  14 31 95 e5                                      ldr r3, [r5, #0x114]
00439334  01 20 42 e2                                      sub r2, r2, #1
00439338  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0043933c  03 00 a0 e1                                      mov r0, r3
00439340  00 30 93 e5                                      ldr r3, [r3]
00439344  0f e0 a0 e1                                      mov lr, pc
00439348  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0043934c  18 21 95 e5                                      ldr r2, [r5, #0x118]
00439350  14 31 95 e5                                      ldr r3, [r5, #0x114]
00439354  01 20 42 e2                                      sub r2, r2, #1
00439358  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0043935c  03 00 a0 e1                                      mov r0, r3
00439360  00 30 93 e5                                      ldr r3, [r3]
00439364  0f e0 a0 e1                                      mov lr, pc
00439368  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0043936c  18 21 95 e5                                      ldr r2, [r5, #0x118]
00439370  14 31 95 e5                                      ldr r3, [r5, #0x114]
00439374  00 c0 a0 e3                                      mov ip, #0
00439378  01 20 42 e2                                      sub r2, r2, #1
0043937c  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
00439380  05 00 a0 e1                                      mov r0, r5
00439384  0c 30 a0 e1                                      mov r3, ip
00439388  08 10 81 e2                                      add r1, r1, #8
0043938c  07 20 a0 e1                                      mov r2, r7
00439390  00 c0 8d e5                                      str ip, [sp]
00439394  13 d1 0d eb                                      bl #0x7ad7e8
00439398  f8 a0 95 e5                                      ldr sl, [r5, #0xf8]
0043939c  40 a0 1a e2                                      ands sl, sl, #0x40
004393a0  6d 00 00 0a                                      beq #0x43955c
004393a4  18 21 95 e5                                      ldr r2, [r5, #0x118]
004393a8  14 31 95 e5                                      ldr r3, [r5, #0x114]
004393ac  01 20 42 e2                                      sub r2, r2, #1
004393b0  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
004393b4  02 20 a0 e3                                      mov r2, #2
004393b8  58 20 83 e5                                      str r2, [r3, #0x58]
004393bc  f8 30 95 e5                                      ldr r3, [r5, #0xf8]
004393c0  08 00 13 e3                                      tst r3, #8
004393c4  49 00 00 1a                                      bne #0x4394f0
004393c8  05 00 a0 e1                                      mov r0, r5
004393cc  36 ba 0d eb                                      bl #0x7a7cac
004393d0  10 10 90 e5                                      ldr r1, [r0, #0x10]
004393d4  05 00 a0 e1                                      mov r0, r5
004393d8  c2 ba 0d eb                                      bl #0x7a7ee8
004393dc  18 a1 95 e5                                      ldr sl, [r5, #0x118]
004393e0  01 a0 5a e2                                      subs sl, sl, #1
004393e4  02 00 00 0a                                      beq #0x4393f4
004393e8  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
004393ec  03 00 5a e1                                      cmp sl, r3
004393f0  65 00 00 ca                                      bgt #0x43958c
004393f4  18 a1 85 e5                                      str sl, [r5, #0x118]
004393f8  28 51 94 e5                                      ldr r5, [r4, #0x128]
004393fc  01 50 55 e2                                      subs r5, r5, #1
00439400  28 51 84 05                                      streq r5, [r4, #0x128]
00439404  ab ff ff 0a                                      beq #0x4392b8
00439408  2c 31 94 e5                                      ldr r3, [r4, #0x12c]
0043940c  03 00 55 e1                                      cmp r5, r3
00439410  61 00 00 ca                                      bgt #0x43959c
00439414  00 00 55 e3                                      cmp r5, #0
00439418  28 51 84 e5                                      str r5, [r4, #0x128]
0043941c  a5 ff ff da                                      ble #0x4392b8
00439420  24 31 94 e5                                      ldr r3, [r4, #0x124]
00439424  01 50 45 e2                                      sub r5, r5, #1
00439428  05 51 93 e7                                      ldr r5, [r3, r5, lsl #2]
0043942c  00 00 55 e3                                      cmp r5, #0
00439430  a0 ff ff 0a                                      beq #0x4392b8
00439434  18 31 95 e5                                      ldr r3, [r5, #0x118]
00439438  00 00 53 e3                                      cmp r3, #0
0043943c  9d ff ff da                                      ble #0x4392b8
00439440  14 21 95 e5                                      ldr r2, [r5, #0x114]
00439444  01 30 43 e2                                      sub r3, r3, #1
00439448  03 a1 92 e7                                      ldr sl, [r2, r3, lsl #2]
0043944c  4c 30 9a e5                                      ldr r3, [sl, #0x4c]
00439450  00 00 53 e3                                      cmp r3, #0
00439454  03 00 00 0a                                      beq #0x439468
00439458  48 00 9a e5                                      ldr r0, [sl, #0x48]
0043945c  04 20 d0 e5                                      ldrb r2, [r0, #4]
00439460  00 00 52 e3                                      cmp r2, #0
00439464  a4 00 00 0a                                      beq #0x4396fc
00439468  01 20 a0 e3                                      mov r2, #1
0043946c  9b 20 c3 e5                                      strb r2, [r3, #0x9b]
00439470  f8 30 95 e5                                      ldr r3, [r5, #0xf8]
00439474  08 00 13 e3                                      tst r3, #8
00439478  84 00 00 1a                                      bne #0x439690
0043947c  18 21 95 e5                                      ldr r2, [r5, #0x118]
00439480  14 31 95 e5                                      ldr r3, [r5, #0x114]
00439484  01 20 42 e2                                      sub r2, r2, #1
00439488  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
0043948c  48 00 80 e2                                      add r0, r0, #0x48
00439490  63 fb ff eb                                      bl #0x438224
00439494  00 10 a0 e1                                      mov r1, r0
00439498  05 00 a0 e1                                      mov r0, r5
0043949c  91 ba 0d eb                                      bl #0x7a7ee8
004394a0  f8 30 95 e5                                      ldr r3, [r5, #0xf8]
004394a4  40 a0 13 e2                                      ands sl, r3, #0x40
004394a8  5f 00 00 0a                                      beq #0x43962c
004394ac  01 00 13 e3                                      tst r3, #1
004394b0  47 00 00 1a                                      bne #0x4395d4
004394b4  18 21 95 e5                                      ldr r2, [r5, #0x118]
004394b8  14 31 95 e5                                      ldr r3, [r5, #0x114]
004394bc  01 20 42 e2                                      sub r2, r2, #1
004394c0  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
004394c4  03 00 a0 e1                                      mov r0, r3
004394c8  00 30 93 e5                                      ldr r3, [r3]
004394cc  0f e0 a0 e1                                      mov lr, pc
004394d0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
004394d4  18 21 95 e5                                      ldr r2, [r5, #0x118]
004394d8  14 31 95 e5                                      ldr r3, [r5, #0x114]
004394dc  01 20 42 e2                                      sub r2, r2, #1
004394e0  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
004394e4  03 20 a0 e3                                      mov r2, #3
004394e8  58 20 83 e5                                      str r2, [r3, #0x58]
004394ec  71 ff ff ea                                      b #0x4392b8
004394f0  18 21 95 e5                                      ldr r2, [r5, #0x118]
004394f4  14 31 95 e5                                      ldr r3, [r5, #0x114]
004394f8  01 20 42 e2                                      sub r2, r2, #1
004394fc  02 a1 93 e7                                      ldr sl, [r3, r2, lsl #2]
00439500  4c 30 9a e5                                      ldr r3, [sl, #0x4c]
00439504  00 00 53 e3                                      cmp r3, #0
00439508  03 00 00 0a                                      beq #0x43951c
0043950c  48 00 9a e5                                      ldr r0, [sl, #0x48]
00439510  04 20 d0 e5                                      ldrb r2, [r0, #4]
00439514  00 00 52 e3                                      cmp r2, #0
00439518  23 00 00 0a                                      beq #0x4395ac
0043951c  03 00 a0 e1                                      mov r0, r3
00439520  02 10 a0 e3                                      mov r1, #2
00439524  00 30 93 e5                                      ldr r3, [r3]
00439528  0f e0 a0 e1                                      mov lr, pc
0043952c  08 f0 93 e5                                      ldr pc, [r3, #8]
00439530  00 00 50 e3                                      cmp r0, #0
00439534  a3 ff ff 0a                                      beq #0x4393c8
00439538  18 21 95 e5                                      ldr r2, [r5, #0x118]
0043953c  14 31 95 e5                                      ldr r3, [r5, #0x114]
00439540  01 20 42 e2                                      sub r2, r2, #1
00439544  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00439548  48 00 80 e2                                      add r0, r0, #0x48
0043954c  34 fb ff eb                                      bl #0x438224
00439550  00 30 a0 e3                                      mov r3, #0
00439554  ea 30 c0 e5                                      strb r3, [r0, #0xea]
00439558  9a ff ff ea                                      b #0x4393c8
0043955c  18 21 95 e5                                      ldr r2, [r5, #0x118]
00439560  14 31 95 e5                                      ldr r3, [r5, #0x114]
00439564  01 20 42 e2                                      sub r2, r2, #1
00439568  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
0043956c  48 00 80 e2                                      add r0, r0, #0x48
00439570  2b fb ff eb                                      bl #0x438224
00439574  08 20 a0 e1                                      mov r2, r8
00439578  00 10 a0 e1                                      mov r1, r0
0043957c  0a 30 a0 e1                                      mov r3, sl
00439580  05 00 a0 e1                                      mov r0, r5
00439584  1e c9 0d eb                                      bl #0x7aba04
00439588  85 ff ff ea                                      b #0x4393a4
0043958c  45 0f 85 e2                                      add r0, r5, #0x114
00439590  ca 10 8a e0                                      add r1, sl, sl, asr #1
00439594  a0 f9 ff eb                                      bl #0x437c1c
00439598  95 ff ff ea                                      b #0x4393f4
0043959c  09 00 a0 e1                                      mov r0, sb
004395a0  c5 10 85 e0                                      add r1, r5, r5, asr #1
004395a4  30 f9 ff eb                                      bl #0x437a6c
004395a8  99 ff ff ea                                      b #0x439414
004395ac  00 10 90 e5                                      ldr r1, [r0]
004395b0  01 10 41 e2                                      sub r1, r1, #1
004395b4  00 00 51 e3                                      cmp r1, #0
004395b8  00 10 80 e5                                      str r1, [r0]
004395bc  00 00 00 1a                                      bne #0x4395c4
004395c0  5c 65 0c eb                                      bl #0x752b38
004395c4  00 30 a0 e3                                      mov r3, #0
004395c8  4c 30 8a e5                                      str r3, [sl, #0x4c]
004395cc  48 30 8a e5                                      str r3, [sl, #0x48]
004395d0  d1 ff ff ea                                      b #0x43951c
004395d4  18 21 95 e5                                      ldr r2, [r5, #0x118]
004395d8  14 31 95 e5                                      ldr r3, [r5, #0x114]
004395dc  01 20 42 e2                                      sub r2, r2, #1
004395e0  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
004395e4  50 00 80 e2                                      add r0, r0, #0x50
004395e8  0d fb ff eb                                      bl #0x438224
004395ec  00 00 50 e3                                      cmp r0, #0
004395f0  af ff ff 0a                                      beq #0x4394b4
004395f4  05 00 a0 e1                                      mov r0, r5
004395f8  00 10 a0 e3                                      mov r1, #0
004395fc  83 cb 0d eb                                      bl #0x7ac410
00439600  18 21 95 e5                                      ldr r2, [r5, #0x118]
00439604  14 31 95 e5                                      ldr r3, [r5, #0x114]
00439608  01 20 42 e2                                      sub r2, r2, #1
0043960c  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00439610  50 00 80 e2                                      add r0, r0, #0x50
00439614  02 fb ff eb                                      bl #0x438224
00439618  00 20 a0 e3                                      mov r2, #0
0043961c  00 10 a0 e1                                      mov r1, r0
00439620  05 00 a0 e1                                      mov r0, r5
00439624  ff ca 0d eb                                      bl #0x7ac228
00439628  a1 ff ff ea                                      b #0x4394b4
0043962c  18 11 95 e5                                      ldr r1, [r5, #0x118]
00439630  14 31 95 e5                                      ldr r3, [r5, #0x114]
00439634  0b 20 a0 e1                                      mov r2, fp
00439638  01 10 41 e2                                      sub r1, r1, #1
0043963c  01 11 93 e7                                      ldr r1, [r3, r1, lsl #2]
00439640  05 00 a0 e1                                      mov r0, r5
00439644  0a 30 a0 e1                                      mov r3, sl
00439648  08 10 81 e2                                      add r1, r1, #8
0043964c  00 a0 8d e5                                      str sl, [sp]
00439650  64 d0 0d eb                                      bl #0x7ad7e8
00439654  18 21 95 e5                                      ldr r2, [r5, #0x118]
00439658  14 31 95 e5                                      ldr r3, [r5, #0x114]
0043965c  01 20 42 e2                                      sub r2, r2, #1
00439660  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00439664  48 00 80 e2                                      add r0, r0, #0x48
00439668  ed fa ff eb                                      bl #0x438224
0043966c  0a 30 a0 e1                                      mov r3, sl
00439670  00 10 a0 e1                                      mov r1, r0
00439674  10 20 9d e5                                      ldr r2, [sp, #0x10]
00439678  05 00 a0 e1                                      mov r0, r5
0043967c  e0 c8 0d eb                                      bl #0x7aba04
00439680  00 a0 50 e2                                      subs sl, r0, #0
00439684  1a 01 00 0a                                      beq #0x439af4
00439688  f8 30 95 e5                                      ldr r3, [r5, #0xf8]
0043968c  86 ff ff ea                                      b #0x4394ac
00439690  18 21 94 e5                                      ldr r2, [r4, #0x118]
00439694  14 31 94 e5                                      ldr r3, [r4, #0x114]
00439698  01 20 42 e2                                      sub r2, r2, #1
0043969c  02 a1 93 e7                                      ldr sl, [r3, r2, lsl #2]
004396a0  4c 30 9a e5                                      ldr r3, [sl, #0x4c]
004396a4  00 00 53 e3                                      cmp r3, #0
004396a8  03 00 00 0a                                      beq #0x4396bc
004396ac  48 00 9a e5                                      ldr r0, [sl, #0x48]
004396b0  04 20 d0 e5                                      ldrb r2, [r0, #4]
004396b4  00 00 52 e3                                      cmp r2, #0
004396b8  49 01 00 0a                                      beq #0x439be4
004396bc  03 00 a0 e1                                      mov r0, r3
004396c0  02 10 a0 e3                                      mov r1, #2
004396c4  00 30 93 e5                                      ldr r3, [r3]
004396c8  0f e0 a0 e1                                      mov lr, pc
004396cc  08 f0 93 e5                                      ldr pc, [r3, #8]
004396d0  00 00 50 e3                                      cmp r0, #0
004396d4  68 ff ff 0a                                      beq #0x43947c
004396d8  18 21 95 e5                                      ldr r2, [r5, #0x118]
004396dc  14 31 95 e5                                      ldr r3, [r5, #0x114]
004396e0  01 20 42 e2                                      sub r2, r2, #1
004396e4  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
004396e8  48 00 80 e2                                      add r0, r0, #0x48
004396ec  cc fa ff eb                                      bl #0x438224
004396f0  01 30 a0 e3                                      mov r3, #1
004396f4  ea 30 c0 e5                                      strb r3, [r0, #0xea]
004396f8  5f ff ff ea                                      b #0x43947c
004396fc  00 10 90 e5                                      ldr r1, [r0]
00439700  01 10 41 e2                                      sub r1, r1, #1
00439704  00 00 51 e3                                      cmp r1, #0
00439708  00 10 80 e5                                      str r1, [r0]
0043970c  00 00 00 1a                                      bne #0x439714
00439710  08 65 0c eb                                      bl #0x752b38
00439714  00 30 a0 e3                                      mov r3, #0
00439718  4c 30 8a e5                                      str r3, [sl, #0x4c]
0043971c  48 30 8a e5                                      str r3, [sl, #0x48]
00439720  50 ff ff ea                                      b #0x439468
00439724  d8 cc ff eb                                      bl #0x42ca8c
00439728  06 10 a0 e1                                      mov r1, r6
0043972c  af ce ff eb                                      bl #0x42d1f0
00439730  28 b1 94 e5                                      ldr fp, [r4, #0x128]
00439734  00 90 a0 e1                                      mov sb, r0
00439738  01 b0 5b e2                                      subs fp, fp, #1
0043973c  e7 fe ff 4a                                      bmi #0x4392e0
00439740  d8 34 9f e5                                      ldr r3, [pc, #0x4d8]
00439744  0b a1 a0 e1                                      lsl sl, fp, #2
00439748  03 30 8f e0                                      add r3, pc, r3
0043974c  18 30 8d e5                                      str r3, [sp, #0x18]
00439750  cc 34 9f e5                                      ldr r3, [pc, #0x4cc]
00439754  03 30 8f e0                                      add r3, pc, r3
00439758  20 30 8d e5                                      str r3, [sp, #0x20]
0043975c  c4 34 9f e5                                      ldr r3, [pc, #0x4c4]
00439760  03 30 8f e0                                      add r3, pc, r3
00439764  24 30 8d e5                                      str r3, [sp, #0x24]
00439768  bc 34 9f e5                                      ldr r3, [pc, #0x4bc]
0043976c  03 30 8f e0                                      add r3, pc, r3
00439770  1c 30 8d e5                                      str r3, [sp, #0x1c]
00439774  49 3f 84 e2                                      add r3, r4, #0x124
00439778  14 30 8d e5                                      str r3, [sp, #0x14]
0043977c  24 31 94 e5                                      ldr r3, [r4, #0x124]
00439780  0a 70 93 e7                                      ldr r7, [r3, sl]
00439784  18 81 97 e5                                      ldr r8, [r7, #0x118]
00439788  01 60 58 e2                                      subs r6, r8, #1
0043978c  10 00 00 4a                                      bmi #0x4397d4
00439790  98 c4 9f e5                                      ldr ip, [pc, #0x498]
00439794  02 80 48 e2                                      sub r8, r8, #2
00439798  08 81 a0 e1                                      lsl r8, r8, #2
0043979c  10 c0 8d e5                                      str ip, [sp, #0x10]
004397a0  06 51 a0 e1                                      lsl r5, r6, #2
004397a4  01 00 00 ea                                      b #0x4397b0
004397a8  24 31 94 e5                                      ldr r3, [r4, #0x124]
004397ac  0a 70 93 e7                                      ldr r7, [r3, sl]
004397b0  14 31 97 e5                                      ldr r3, [r7, #0x114]
004397b4  05 30 93 e7                                      ldr r3, [r3, r5]
004397b8  03 00 59 e1                                      cmp sb, r3
004397bc  09 00 00 0a                                      beq #0x4397e8
004397c0  01 60 46 e2                                      sub r6, r6, #1
004397c4  01 00 76 e3                                      cmn r6, #1
004397c8  04 50 45 e2                                      sub r5, r5, #4
004397cc  04 80 48 e2                                      sub r8, r8, #4
004397d0  f4 ff ff 1a                                      bne #0x4397a8
004397d4  01 b0 4b e2                                      sub fp, fp, #1
004397d8  01 00 7b e3                                      cmn fp, #1
004397dc  04 a0 4a e2                                      sub sl, sl, #4
004397e0  e5 ff ff 1a                                      bne #0x43977c
004397e4  bd fe ff ea                                      b #0x4392e0
004397e8  09 00 a0 e1                                      mov r0, sb
004397ec  00 30 99 e5                                      ldr r3, [sb]
004397f0  0f e0 a0 e1                                      mov lr, pc
004397f4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
004397f8  14 31 97 e5                                      ldr r3, [r7, #0x114]
004397fc  05 30 93 e7                                      ldr r3, [r3, r5]
00439800  03 00 a0 e1                                      mov r0, r3
00439804  00 30 93 e5                                      ldr r3, [r3]
00439808  0f e0 a0 e1                                      mov lr, pc
0043980c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00439810  14 21 97 e5                                      ldr r2, [r7, #0x114]
00439814  00 c0 a0 e3                                      mov ip, #0
00439818  0c 30 a0 e1                                      mov r3, ip
0043981c  05 10 92 e7                                      ldr r1, [r2, r5]
00439820  07 00 a0 e1                                      mov r0, r7
00439824  18 20 9d e5                                      ldr r2, [sp, #0x18]
00439828  08 10 81 e2                                      add r1, r1, #8
0043982c  00 c0 8d e5                                      str ip, [sp]
00439830  ec cf 0d eb                                      bl #0x7ad7e8
00439834  f8 30 97 e5                                      ldr r3, [r7, #0xf8]
00439838  40 30 13 e2                                      ands r3, r3, #0x40
0043983c  61 00 00 0a                                      beq #0x4399c8
00439840  14 31 97 e5                                      ldr r3, [r7, #0x114]
00439844  02 20 a0 e3                                      mov r2, #2
00439848  05 30 93 e7                                      ldr r3, [r3, r5]
0043984c  58 20 83 e5                                      str r2, [r3, #0x58]
00439850  f8 30 97 e5                                      ldr r3, [r7, #0xf8]
00439854  08 00 13 e3                                      tst r3, #8
00439858  43 00 00 1a                                      bne #0x43996c
0043985c  07 00 a0 e1                                      mov r0, r7
00439860  11 b9 0d eb                                      bl #0x7a7cac
00439864  10 10 90 e5                                      ldr r1, [r0, #0x10]
00439868  07 00 a0 e1                                      mov r0, r7
0043986c  9d b9 0d eb                                      bl #0x7a7ee8
00439870  45 0f 87 e2                                      add r0, r7, #0x114
00439874  06 10 a0 e1                                      mov r1, r6
00439878  06 f9 ff eb                                      bl #0x437c98
0043987c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00439880  0b 10 a0 e1                                      mov r1, fp
00439884  97 f8 ff eb                                      bl #0x437ae8
00439888  28 31 94 e5                                      ldr r3, [r4, #0x128]
0043988c  00 00 53 e3                                      cmp r3, #0
00439890  ca ff ff da                                      ble #0x4397c0
00439894  24 21 94 e5                                      ldr r2, [r4, #0x124]
00439898  01 30 43 e2                                      sub r3, r3, #1
0043989c  03 71 92 e7                                      ldr r7, [r2, r3, lsl #2]
004398a0  00 00 57 e3                                      cmp r7, #0
004398a4  c5 ff ff 0a                                      beq #0x4397c0
004398a8  18 31 97 e5                                      ldr r3, [r7, #0x118]
004398ac  00 00 53 e3                                      cmp r3, #0
004398b0  c2 ff ff da                                      ble #0x4397c0
004398b4  14 21 97 e5                                      ldr r2, [r7, #0x114]
004398b8  01 30 43 e2                                      sub r3, r3, #1
004398bc  03 31 92 e7                                      ldr r3, [r2, r3, lsl #2]
004398c0  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
004398c4  00 00 51 e3                                      cmp r1, #0
004398c8  03 00 00 0a                                      beq #0x4398dc
004398cc  48 00 93 e5                                      ldr r0, [r3, #0x48]
004398d0  04 20 d0 e5                                      ldrb r2, [r0, #4]
004398d4  00 00 52 e3                                      cmp r2, #0
004398d8  a9 00 00 0a                                      beq #0x439b84
004398dc  01 20 a0 e3                                      mov r2, #1
004398e0  9b 20 c1 e5                                      strb r2, [r1, #0x9b]
004398e4  f8 30 97 e5                                      ldr r3, [r7, #0xf8]
004398e8  08 00 13 e3                                      tst r3, #8
004398ec  8e 00 00 1a                                      bne #0x439b2c
004398f0  18 21 97 e5                                      ldr r2, [r7, #0x118]
004398f4  14 31 97 e5                                      ldr r3, [r7, #0x114]
004398f8  01 20 42 e2                                      sub r2, r2, #1
004398fc  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00439900  48 00 80 e2                                      add r0, r0, #0x48
00439904  46 fa ff eb                                      bl #0x438224
00439908  00 10 a0 e1                                      mov r1, r0
0043990c  07 00 a0 e1                                      mov r0, r7
00439910  74 b9 0d eb                                      bl #0x7a7ee8
00439914  f8 30 97 e5                                      ldr r3, [r7, #0xf8]
00439918  40 c0 13 e2                                      ands ip, r3, #0x40
0043991c  5b 00 00 1a                                      bne #0x439a90
00439920  18 21 97 e5                                      ldr r2, [r7, #0x118]
00439924  02 00 56 e1                                      cmp r6, r2
00439928  31 00 00 0a                                      beq #0x4399f4
0043992c  01 00 13 e3                                      tst r3, #1
00439930  59 00 00 1a                                      bne #0x439a9c
00439934  14 31 97 e5                                      ldr r3, [r7, #0x114]
00439938  01 20 42 e2                                      sub r2, r2, #1
0043993c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00439940  03 00 a0 e1                                      mov r0, r3
00439944  00 30 93 e5                                      ldr r3, [r3]
00439948  0f e0 a0 e1                                      mov lr, pc
0043994c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00439950  18 31 97 e5                                      ldr r3, [r7, #0x118]
00439954  14 21 97 e5                                      ldr r2, [r7, #0x114]
00439958  01 30 43 e2                                      sub r3, r3, #1
0043995c  03 31 92 e7                                      ldr r3, [r2, r3, lsl #2]
00439960  03 20 a0 e3                                      mov r2, #3
00439964  58 20 83 e5                                      str r2, [r3, #0x58]
00439968  94 ff ff ea                                      b #0x4397c0
0043996c  14 31 97 e5                                      ldr r3, [r7, #0x114]
00439970  05 30 93 e7                                      ldr r3, [r3, r5]
00439974  4c 20 93 e5                                      ldr r2, [r3, #0x4c]
00439978  00 00 52 e3                                      cmp r2, #0
0043997c  03 00 00 0a                                      beq #0x439990
00439980  48 00 93 e5                                      ldr r0, [r3, #0x48]
00439984  04 10 d0 e5                                      ldrb r1, [r0, #4]
00439988  00 00 51 e3                                      cmp r1, #0
0043998c  88 00 00 0a                                      beq #0x439bb4
00439990  02 00 a0 e1                                      mov r0, r2
00439994  00 30 92 e5                                      ldr r3, [r2]
00439998  02 10 a0 e3                                      mov r1, #2
0043999c  0f e0 a0 e1                                      mov lr, pc
004399a0  08 f0 93 e5                                      ldr pc, [r3, #8]
004399a4  00 00 50 e3                                      cmp r0, #0
004399a8  ab ff ff 0a                                      beq #0x43985c
004399ac  14 31 97 e5                                      ldr r3, [r7, #0x114]
004399b0  05 00 93 e7                                      ldr r0, [r3, r5]
004399b4  48 00 80 e2                                      add r0, r0, #0x48
004399b8  19 fa ff eb                                      bl #0x438224
004399bc  00 30 a0 e3                                      mov r3, #0
004399c0  ea 30 c0 e5                                      strb r3, [r0, #0xea]
004399c4  a4 ff ff ea                                      b #0x43985c
004399c8  14 21 97 e5                                      ldr r2, [r7, #0x114]
004399cc  05 00 92 e7                                      ldr r0, [r2, r5]
004399d0  0c 30 8d e5                                      str r3, [sp, #0xc]
004399d4  48 00 80 e2                                      add r0, r0, #0x48
004399d8  11 fa ff eb                                      bl #0x438224
004399dc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004399e0  00 10 a0 e1                                      mov r1, r0
004399e4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004399e8  07 00 a0 e1                                      mov r0, r7
004399ec  04 c8 0d eb                                      bl #0x7aba04
004399f0  92 ff ff ea                                      b #0x439840
004399f4  14 11 97 e5                                      ldr r1, [r7, #0x114]
004399f8  0c 30 a0 e1                                      mov r3, ip
004399fc  20 20 9d e5                                      ldr r2, [sp, #0x20]
00439a00  08 10 91 e7                                      ldr r1, [r1, r8]
00439a04  07 00 a0 e1                                      mov r0, r7
00439a08  00 c0 8d e5                                      str ip, [sp]
00439a0c  08 10 81 e2                                      add r1, r1, #8
00439a10  0c c0 8d e5                                      str ip, [sp, #0xc]
00439a14  73 cf 0d eb                                      bl #0x7ad7e8
00439a18  18 21 97 e5                                      ldr r2, [r7, #0x118]
00439a1c  14 31 97 e5                                      ldr r3, [r7, #0x114]
00439a20  01 20 42 e2                                      sub r2, r2, #1
00439a24  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00439a28  48 00 80 e2                                      add r0, r0, #0x48
00439a2c  fc f9 ff eb                                      bl #0x438224
00439a30  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00439a34  00 10 a0 e1                                      mov r1, r0
00439a38  24 20 9d e5                                      ldr r2, [sp, #0x24]
00439a3c  0c 30 a0 e1                                      mov r3, ip
00439a40  07 00 a0 e1                                      mov r0, r7
00439a44  ee c7 0d eb                                      bl #0x7aba04
00439a48  00 30 50 e2                                      subs r3, r0, #0
00439a4c  f8 30 97 15                                      ldrne r3, [r7, #0xf8]
00439a50  18 21 97 15                                      ldrne r2, [r7, #0x118]
00439a54  b4 ff ff 1a                                      bne #0x43992c
00439a58  18 11 97 e5                                      ldr r1, [r7, #0x118]
00439a5c  14 21 97 e5                                      ldr r2, [r7, #0x114]
00439a60  01 10 41 e2                                      sub r1, r1, #1
00439a64  01 01 92 e7                                      ldr r0, [r2, r1, lsl #2]
00439a68  0c 30 8d e5                                      str r3, [sp, #0xc]
00439a6c  48 00 80 e2                                      add r0, r0, #0x48
00439a70  eb f9 ff eb                                      bl #0x438224
00439a74  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00439a78  00 10 a0 e1                                      mov r1, r0
00439a7c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00439a80  07 00 a0 e1                                      mov r0, r7
00439a84  0c 20 8f e0                                      add r2, pc, ip
00439a88  dd c7 0d eb                                      bl #0x7aba04
00439a8c  f8 30 97 e5                                      ldr r3, [r7, #0xf8]
00439a90  01 00 13 e3                                      tst r3, #1
00439a94  18 21 97 e5                                      ldr r2, [r7, #0x118]
00439a98  a5 ff ff 0a                                      beq #0x439934
00439a9c  14 31 97 e5                                      ldr r3, [r7, #0x114]
00439aa0  01 20 42 e2                                      sub r2, r2, #1
00439aa4  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00439aa8  50 00 80 e2                                      add r0, r0, #0x50
00439aac  dc f9 ff eb                                      bl #0x438224
00439ab0  00 00 50 e3                                      cmp r0, #0
00439ab4  0c 00 00 0a                                      beq #0x439aec
00439ab8  00 10 a0 e3                                      mov r1, #0
00439abc  07 00 a0 e1                                      mov r0, r7
00439ac0  52 ca 0d eb                                      bl #0x7ac410
00439ac4  18 21 97 e5                                      ldr r2, [r7, #0x118]
00439ac8  14 31 97 e5                                      ldr r3, [r7, #0x114]
00439acc  01 20 42 e2                                      sub r2, r2, #1
00439ad0  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00439ad4  50 00 80 e2                                      add r0, r0, #0x50
00439ad8  d1 f9 ff eb                                      bl #0x438224
00439adc  00 20 a0 e3                                      mov r2, #0
00439ae0  00 10 a0 e1                                      mov r1, r0
00439ae4  07 00 a0 e1                                      mov r0, r7
00439ae8  ce c9 0d eb                                      bl #0x7ac228
00439aec  18 21 97 e5                                      ldr r2, [r7, #0x118]
00439af0  8f ff ff ea                                      b #0x439934
00439af4  18 21 95 e5                                      ldr r2, [r5, #0x118]
00439af8  14 31 95 e5                                      ldr r3, [r5, #0x114]
00439afc  01 20 42 e2                                      sub r2, r2, #1
00439b00  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00439b04  48 00 80 e2                                      add r0, r0, #0x48
00439b08  c5 f9 ff eb                                      bl #0x438224
00439b0c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00439b10  00 10 a0 e1                                      mov r1, r0
00439b14  0a 30 a0 e1                                      mov r3, sl
00439b18  05 00 a0 e1                                      mov r0, r5
00439b1c  0c 20 8f e0                                      add r2, pc, ip
00439b20  b7 c7 0d eb                                      bl #0x7aba04
00439b24  f8 30 95 e5                                      ldr r3, [r5, #0xf8]
00439b28  5f fe ff ea                                      b #0x4394ac
00439b2c  18 11 94 e5                                      ldr r1, [r4, #0x118]
00439b30  14 31 94 e5                                      ldr r3, [r4, #0x114]
00439b34  01 10 41 e2                                      sub r1, r1, #1
00439b38  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
00439b3c  0c 20 8d e5                                      str r2, [sp, #0xc]
00439b40  48 00 80 e2                                      add r0, r0, #0x48
00439b44  a1 f9 ff eb                                      bl #0x4381d0
00439b48  02 10 a0 e3                                      mov r1, #2
00439b4c  00 30 90 e5                                      ldr r3, [r0]
00439b50  0f e0 a0 e1                                      mov lr, pc
00439b54  08 f0 93 e5                                      ldr pc, [r3, #8]
00439b58  00 00 50 e3                                      cmp r0, #0
00439b5c  63 ff ff 0a                                      beq #0x4398f0
00439b60  18 11 97 e5                                      ldr r1, [r7, #0x118]
00439b64  14 31 97 e5                                      ldr r3, [r7, #0x114]
00439b68  01 10 41 e2                                      sub r1, r1, #1
00439b6c  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
00439b70  48 00 80 e2                                      add r0, r0, #0x48
00439b74  aa f9 ff eb                                      bl #0x438224
00439b78  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00439b7c  ea 20 c0 e5                                      strb r2, [r0, #0xea]
00439b80  5a ff ff ea                                      b #0x4398f0
00439b84  00 10 90 e5                                      ldr r1, [r0]
00439b88  01 10 41 e2                                      sub r1, r1, #1
00439b8c  00 00 51 e3                                      cmp r1, #0
00439b90  00 10 80 e5                                      str r1, [r0]
00439b94  02 00 00 1a                                      bne #0x439ba4
00439b98  0c 30 8d e5                                      str r3, [sp, #0xc]
00439b9c  e5 63 0c eb                                      bl #0x752b38
00439ba0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00439ba4  00 10 a0 e3                                      mov r1, #0
00439ba8  4c 10 83 e5                                      str r1, [r3, #0x4c]
00439bac  48 10 83 e5                                      str r1, [r3, #0x48]
00439bb0  49 ff ff ea                                      b #0x4398dc
00439bb4  00 10 90 e5                                      ldr r1, [r0]
00439bb8  01 10 41 e2                                      sub r1, r1, #1
00439bbc  00 00 51 e3                                      cmp r1, #0
00439bc0  00 10 80 e5                                      str r1, [r0]
00439bc4  02 00 00 1a                                      bne #0x439bd4
00439bc8  0c 30 8d e5                                      str r3, [sp, #0xc]
00439bcc  d9 63 0c eb                                      bl #0x752b38
00439bd0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00439bd4  00 20 a0 e3                                      mov r2, #0
00439bd8  4c 20 83 e5                                      str r2, [r3, #0x4c]
00439bdc  48 20 83 e5                                      str r2, [r3, #0x48]
00439be0  6a ff ff ea                                      b #0x439990
00439be4  00 10 90 e5                                      ldr r1, [r0]
00439be8  01 10 41 e2                                      sub r1, r1, #1
00439bec  00 00 51 e3                                      cmp r1, #0
00439bf0  00 10 80 e5                                      str r1, [r0]
00439bf4  00 00 00 1a                                      bne #0x439bfc
00439bf8  ce 63 0c eb                                      bl #0x752b38
00439bfc  00 30 a0 e3                                      mov r3, #0
00439c00  4c 30 8a e5                                      str r3, [sl, #0x4c]
00439c04  48 30 8a e5                                      str r3, [sl, #0x48]
00439c08  ab fe ff ea                                      b #0x4396bc
; mapping-symbol data/literal pool
00439c0c  84 28 49 00 f4 27 49 00 08 28 49 00 0c 28 49 00  .byte 0x84, 0x28, 0x49, 0x00, 0xf4, 0x27, 0x49, 0x00, 0x08, 0x28, 0x49, 0x00, 0x0c, 0x28, 0x49, 0x00
00439c1c  a4 1f 49 00 50 23 49 00 64 23 49 00 b8 23 49 00  .byte 0xa4, 0x1f, 0x49, 0x00, 0x50, 0x23, 0x49, 0x00, 0x64, 0x23, 0x49, 0x00, 0xb8, 0x23, 0x49, 0x00
00439c2c  44 23 49 00 3c 20 49 00                          .byte 0x44, 0x23, 0x49, 0x00, 0x3c, 0x20, 0x49, 0x00
