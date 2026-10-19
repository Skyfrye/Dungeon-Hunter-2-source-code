; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455980, declared_size=60, range_size=60, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManagerC2Ev
; demangled: ScriptManager::ScriptManager()
; decoder-mode: arm
00455980  00 20 a0 e3                                      mov r2, #0
00455984  00 10 e0 e3                                      mvn r1, #0
00455988  30 20 c0 e5                                      strb r2, [r0, #0x30]
0045598c  06 00 80 e8                                      stm r0, {r1, r2}
00455990  08 20 80 e5                                      str r2, [r0, #8]
00455994  0c 20 80 e5                                      str r2, [r0, #0xc]
00455998  10 20 80 e5                                      str r2, [r0, #0x10]
0045599c  14 20 80 e5                                      str r2, [r0, #0x14]
004559a0  18 20 80 e5                                      str r2, [r0, #0x18]
004559a4  1c 20 80 e5                                      str r2, [r0, #0x1c]
004559a8  20 20 80 e5                                      str r2, [r0, #0x20]
004559ac  24 20 80 e5                                      str r2, [r0, #0x24]
004559b0  28 20 80 e5                                      str r2, [r0, #0x28]
004559b4  2c 20 80 e5                                      str r2, [r0, #0x2c]
004559b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004559bc, declared_size=60, range_size=60, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManagerC1Ev
; demangled: ScriptManager::ScriptManager()
; decoder-mode: arm
004559bc  00 20 a0 e3                                      mov r2, #0
004559c0  00 10 e0 e3                                      mvn r1, #0
004559c4  30 20 c0 e5                                      strb r2, [r0, #0x30]
004559c8  06 00 80 e8                                      stm r0, {r1, r2}
004559cc  08 20 80 e5                                      str r2, [r0, #8]
004559d0  0c 20 80 e5                                      str r2, [r0, #0xc]
004559d4  10 20 80 e5                                      str r2, [r0, #0x10]
004559d8  14 20 80 e5                                      str r2, [r0, #0x14]
004559dc  18 20 80 e5                                      str r2, [r0, #0x18]
004559e0  1c 20 80 e5                                      str r2, [r0, #0x1c]
004559e4  20 20 80 e5                                      str r2, [r0, #0x20]
004559e8  24 20 80 e5                                      str r2, [r0, #0x24]
004559ec  28 20 80 e5                                      str r2, [r0, #0x28]
004559f0  2c 20 80 e5                                      str r2, [r0, #0x2c]
004559f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00455ad8, declared_size=180, range_size=180, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManager12InitCommandsEv
; demangled: ScriptManager::InitCommands()
; decoder-mode: arm
00455ad8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00455adc  00 60 a0 e1                                      mov r6, r0
00455ae0  18 30 90 e5                                      ldr r3, [r0, #0x18]
00455ae4  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00455ae8  00 20 63 e0                                      rsb r2, r3, r0
00455aec  42 21 a0 e1                                      asr r2, r2, #2
00455af0  02 11 82 e0                                      add r1, r2, r2, lsl #2
00455af4  01 12 81 e0                                      add r1, r1, r1, lsl #4
00455af8  01 14 81 e0                                      add r1, r1, r1, lsl #8
00455afc  01 18 81 e0                                      add r1, r1, r1, lsl #16
00455b00  81 20 82 e0                                      add r2, r2, r1, lsl #1
00455b04  00 00 52 e3                                      cmp r2, #0
00455b08  00 50 a0 13                                      movne r5, #0
00455b0c  05 70 a0 11                                      movne r7, r5
00455b10  1c 00 00 0a                                      beq #0x455b88
00455b14  05 10 93 e7                                      ldr r1, [r3, r5]
00455b18  05 20 83 e0                                      add r2, r3, r5
00455b1c  00 00 51 e3                                      cmp r1, #0
00455b20  00 40 a0 c3                                      movgt r4, #0
00455b24  0c 00 00 da                                      ble #0x455b5c
00455b28  08 30 92 e5                                      ldr r3, [r2, #8]
00455b2c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00455b30  01 40 84 e2                                      add r4, r4, #1
00455b34  03 00 a0 e1                                      mov r0, r3
00455b38  00 30 93 e5                                      ldr r3, [r3]
00455b3c  0f e0 a0 e1                                      mov lr, pc
00455b40  00 f0 93 e5                                      ldr pc, [r3]
00455b44  18 30 96 e5                                      ldr r3, [r6, #0x18]
00455b48  05 10 93 e7                                      ldr r1, [r3, r5]
00455b4c  05 20 83 e0                                      add r2, r3, r5
00455b50  04 00 51 e1                                      cmp r1, r4
00455b54  f3 ff ff ca                                      bgt #0x455b28
00455b58  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
00455b5c  00 20 63 e0                                      rsb r2, r3, r0
00455b60  42 21 a0 e1                                      asr r2, r2, #2
00455b64  01 70 87 e2                                      add r7, r7, #1
00455b68  02 11 82 e0                                      add r1, r2, r2, lsl #2
00455b6c  0c 50 85 e2                                      add r5, r5, #0xc
00455b70  01 12 81 e0                                      add r1, r1, r1, lsl #4
00455b74  01 14 81 e0                                      add r1, r1, r1, lsl #8
00455b78  01 18 81 e0                                      add r1, r1, r1, lsl #16
00455b7c  81 20 82 e0                                      add r2, r2, r1, lsl #1
00455b80  02 00 57 e1                                      cmp r7, r2
00455b84  e2 ff ff 3a                                      blo #0x455b14
00455b88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00455b8c, declared_size=44, range_size=44, mode=arm
; class-group: ScriptManager
; alias: _ZNK13ScriptManager13GetNameFromIDEi
; demangled: ScriptManager::GetNameFromID(int) const
; decoder-mode: arm
00455b8c  00 00 51 e3                                      cmp r1, #0
00455b90  01 00 00 aa                                      bge #0x455b9c
00455b94  00 00 a0 e3                                      mov r0, #0
00455b98  1e ff 2f e1                                      bx lr
00455b9c  28 20 90 e5                                      ldr r2, [r0, #0x28]
00455ba0  24 30 90 e5                                      ldr r3, [r0, #0x24]
00455ba4  02 20 63 e0                                      rsb r2, r3, r2
00455ba8  42 01 51 e1                                      cmp r1, r2, asr #2
00455bac  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
00455bb0  1e ff 2f b1                                      bxlt lr
00455bb4  f6 ff ff ea                                      b #0x455b94

; FUNCTION 0x00455bb8, declared_size=40, range_size=40, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManager10StopScriptEib
; demangled: ScriptManager::StopScript(int, bool)
; decoder-mode: arm
00455bb8  0c 30 a0 e3                                      mov r3, #0xc
00455bbc  93 01 03 e0                                      mul r3, r3, r1
00455bc0  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00455bc4  02 10 a0 e3                                      mov r1, #2
00455bc8  03 20 82 e0                                      add r2, r2, r3
00455bcc  08 10 82 e5                                      str r1, [r2, #8]
00455bd0  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00455bd4  00 10 e0 e3                                      mvn r1, #0
00455bd8  03 10 82 e7                                      str r1, [r2, r3]
00455bdc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00455be0, declared_size=12, range_size=12, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManager12StopSkippingEv
; demangled: ScriptManager::StopSkipping()
; decoder-mode: arm
00455be0  00 30 e0 e3                                      mvn r3, #0
00455be4  00 30 80 e5                                      str r3, [r0]
00455be8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00455bec, declared_size=28, range_size=28, mode=arm
; class-group: ScriptManager
; alias: _ZNK13ScriptManager15IsScriptRunningEi
; demangled: ScriptManager::IsScriptRunning(int) const
; decoder-mode: arm
00455bec  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00455bf0  0c 20 a0 e3                                      mov r2, #0xc
00455bf4  92 31 23 e0                                      mla r3, r2, r1, r3
00455bf8  08 00 93 e5                                      ldr r0, [r3, #8]
00455bfc  02 00 50 e2                                      subs r0, r0, #2
00455c00  01 00 a0 13                                      movne r0, #1
00455c04  1e ff 2f e1                                      bx lr

; FUNCTION 0x00455c40, declared_size=20, range_size=20, mode=arm
; class-group: ScriptManager
; alias: _ZNK13ScriptManager15GetScriptModuleEi
; demangled: ScriptManager::GetScriptModule(int) const
; decoder-mode: arm
00455c40  0c 30 a0 e3                                      mov r3, #0xc
00455c44  93 01 03 e0                                      mul r3, r3, r1
00455c48  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00455c4c  03 00 92 e7                                      ldr r0, [r2, r3]
00455c50  1e ff 2f e1                                      bx lr

; FUNCTION 0x00455c54, declared_size=108, range_size=108, mode=arm
; class-group: ScriptManager
; alias: _ZNK13ScriptManager17IsCutSceneRunningEv
; demangled: ScriptManager::IsCutSceneRunning() const
; decoder-mode: arm
00455c54  70 40 2d e9                                      push {r4, r5, r6, lr}
00455c58  1c 60 90 e5                                      ldr r6, [r0, #0x1c]
00455c5c  18 30 90 e5                                      ldr r3, [r0, #0x18]
00455c60  00 50 a0 e1                                      mov r5, r0
00455c64  06 30 63 e0                                      rsb r3, r3, r6
00455c68  43 31 a0 e1                                      asr r3, r3, #2
00455c6c  03 61 83 e0                                      add r6, r3, r3, lsl #2
00455c70  06 62 86 e0                                      add r6, r6, r6, lsl #4
00455c74  06 64 86 e0                                      add r6, r6, r6, lsl #8
00455c78  06 68 86 e0                                      add r6, r6, r6, lsl #16
00455c7c  86 60 83 e0                                      add r6, r3, r6, lsl #1
00455c80  00 00 56 e3                                      cmp r6, #0
00455c84  0b 00 00 da                                      ble #0x455cb8
00455c88  00 40 a0 e3                                      mov r4, #0
00455c8c  01 00 00 ea                                      b #0x455c98
00455c90  06 00 54 e1                                      cmp r4, r6
00455c94  07 00 00 0a                                      beq #0x455cb8
00455c98  04 10 a0 e1                                      mov r1, r4
00455c9c  05 00 a0 e1                                      mov r0, r5
00455ca0  d1 ff ff eb                                      bl #0x455bec
00455ca4  00 00 50 e3                                      cmp r0, #0
00455ca8  01 40 84 e2                                      add r4, r4, #1
00455cac  f7 ff ff 0a                                      beq #0x455c90
00455cb0  01 00 a0 e3                                      mov r0, #1
00455cb4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00455cb8  00 00 a0 e3                                      mov r0, #0
00455cbc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004591f0, declared_size=108, range_size=108, mode=arm
; class-group: ScriptManager
; alias: _ZNK13ScriptManager13GetIDFromNameEPKcb
; demangled: ScriptManager::GetIDFromName(char const*, bool) const
; decoder-mode: arm
004591f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004591f4  24 40 90 e5                                      ldr r4, [r0, #0x24]
004591f8  28 70 90 e5                                      ldr r7, [r0, #0x28]
004591fc  00 00 52 e3                                      cmp r2, #0
00459200  08 50 90 05                                      ldreq r5, [r0, #8]
00459204  07 70 64 e0                                      rsb r7, r4, r7
00459208  47 71 a0 e1                                      asr r7, r7, #2
0045920c  00 50 a0 13                                      movne r5, #0
00459210  07 00 55 e1                                      cmp r5, r7
00459214  01 80 a0 e1                                      mov r8, r1
00459218  0c 00 00 aa                                      bge #0x459250
0045921c  05 61 a0 e1                                      lsl r6, r5, #2
00459220  03 00 00 ea                                      b #0x459234
00459224  01 50 85 e2                                      add r5, r5, #1
00459228  07 00 55 e1                                      cmp r5, r7
0045922c  04 60 86 e2                                      add r6, r6, #4
00459230  06 00 00 0a                                      beq #0x459250
00459234  06 00 94 e7                                      ldr r0, [r4, r6]
00459238  08 10 a0 e1                                      mov r1, r8
0045923c  29 d5 fa eb                                      bl #0x30e6e8
00459240  00 00 50 e3                                      cmp r0, #0
00459244  f6 ff ff 1a                                      bne #0x459224
00459248  05 00 a0 e1                                      mov r0, r5
0045924c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00459250  00 50 e0 e3                                      mvn r5, #0
00459254  05 00 a0 e1                                      mov r0, r5
00459258  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0045a1c8, declared_size=228, range_size=228, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManager16UnLoadAllScriptsEv
; demangled: ScriptManager::UnLoadAllScripts()
; decoder-mode: arm
0045a1c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0045a1cc  00 50 a0 e1                                      mov r5, r0
0045a1d0  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
0045a1d4  18 00 90 e5                                      ldr r0, [r0, #0x18]
0045a1d8  03 30 60 e0                                      rsb r3, r0, r3
0045a1dc  43 31 a0 e1                                      asr r3, r3, #2
0045a1e0  03 71 83 e0                                      add r7, r3, r3, lsl #2
0045a1e4  07 72 87 e0                                      add r7, r7, r7, lsl #4
0045a1e8  07 74 87 e0                                      add r7, r7, r7, lsl #8
0045a1ec  07 78 87 e0                                      add r7, r7, r7, lsl #16
0045a1f0  87 70 83 e0                                      add r7, r3, r7, lsl #1
0045a1f4  00 00 57 e3                                      cmp r7, #0
0045a1f8  09 00 00 da                                      ble #0x45a224
0045a1fc  00 40 a0 e3                                      mov r4, #0
0045a200  04 60 a0 e1                                      mov r6, r4
0045a204  00 00 00 ea                                      b #0x45a20c
0045a208  18 00 95 e5                                      ldr r0, [r5, #0x18]
0045a20c  04 00 80 e0                                      add r0, r0, r4
0045a210  01 60 86 e2                                      add r6, r6, #1
0045a214  44 f0 ff eb                                      bl #0x45632c
0045a218  07 00 56 e1                                      cmp r6, r7
0045a21c  0c 40 84 e2                                      add r4, r4, #0xc
0045a220  f8 ff ff 1a                                      bne #0x45a208
0045a224  28 20 95 e5                                      ldr r2, [r5, #0x28]
0045a228  24 30 95 e5                                      ldr r3, [r5, #0x24]
0045a22c  02 60 63 e0                                      rsb r6, r3, r2
0045a230  46 61 a0 e1                                      asr r6, r6, #2
0045a234  00 00 56 e3                                      cmp r6, #0
0045a238  0c 00 00 da                                      ble #0x45a270
0045a23c  00 40 a0 e3                                      mov r4, #0
0045a240  04 70 a0 e1                                      mov r7, r4
0045a244  00 00 00 ea                                      b #0x45a24c
0045a248  24 30 95 e5                                      ldr r3, [r5, #0x24]
0045a24c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0045a250  7a d8 fa eb                                      bl #0x310440
0045a254  24 30 95 e5                                      ldr r3, [r5, #0x24]
0045a258  04 71 83 e7                                      str r7, [r3, r4, lsl #2]
0045a25c  01 40 84 e2                                      add r4, r4, #1
0045a260  06 00 54 e1                                      cmp r4, r6
0045a264  f7 ff ff 1a                                      bne #0x45a248
0045a268  24 30 95 e5                                      ldr r3, [r5, #0x24]
0045a26c  28 20 95 e5                                      ldr r2, [r5, #0x28]
0045a270  02 00 53 e1                                      cmp r3, r2
0045a274  28 30 85 15                                      strne r3, [r5, #0x28]
0045a278  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0045a27c  18 30 95 e5                                      ldr r3, [r5, #0x18]
0045a280  05 00 a0 e1                                      mov r0, r5
0045a284  02 00 53 e1                                      cmp r3, r2
0045a288  1c 30 85 15                                      strne r3, [r5, #0x1c]
0045a28c  10 20 95 e5                                      ldr r2, [r5, #0x10]
0045a290  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0045a294  02 00 53 e1                                      cmp r3, r2
0045a298  10 30 85 15                                      strne r3, [r5, #0x10]
0045a29c  4f ee ff eb                                      bl #0x455be0
0045a2a0  00 30 a0 e3                                      mov r3, #0
0045a2a4  08 30 85 e5                                      str r3, [r5, #8]
0045a2a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0045a2ac, declared_size=64, range_size=64, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManager5FlushEv
; demangled: ScriptManager::Flush()
; decoder-mode: arm
0045a2ac  70 40 2d e9                                      push {r4, r5, r6, lr}
0045a2b0  00 20 e0 e3                                      mvn r2, #0
0045a2b4  00 40 a0 e3                                      mov r4, #0
0045a2b8  00 20 80 e5                                      str r2, [r0]
0045a2bc  30 40 c0 e5                                      strb r4, [r0, #0x30]
0045a2c0  04 40 80 e5                                      str r4, [r0, #4]
0045a2c4  08 40 80 e5                                      str r4, [r0, #8]
0045a2c8  14 50 9f e5                                      ldr r5, [pc, #0x14]
0045a2cc  bd ff ff eb                                      bl #0x45a1c8
0045a2d0  10 30 9f e5                                      ldr r3, [pc, #0x10]
0045a2d4  05 50 8f e0                                      add r5, pc, r5
0045a2d8  03 30 95 e7                                      ldr r3, [r5, r3]
0045a2dc  00 40 c3 e5                                      strb r4, [r3]
0045a2e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0045a2e4  bc a7 53 00 50 36 00 00                          .byte 0xbc, 0xa7, 0x53, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x0045a880, declared_size=104, range_size=104, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManagerD2Ev
; demangled: ScriptManager::~ScriptManager()
; decoder-mode: arm
0045a880  10 40 2d e9                                      push {r4, lr}
0045a884  00 40 a0 e1                                      mov r4, r0
0045a888  4e fe ff eb                                      bl #0x45a1c8
0045a88c  24 00 94 e5                                      ldr r0, [r4, #0x24]
0045a890  24 30 84 e2                                      add r3, r4, #0x24
0045a894  00 00 50 e3                                      cmp r0, #0
0045a898  05 00 00 0a                                      beq #0x45a8b4
0045a89c  08 10 93 e5                                      ldr r1, [r3, #8]
0045a8a0  01 10 60 e0                                      rsb r1, r0, r1
0045a8a4  03 10 c1 e3                                      bic r1, r1, #3
0045a8a8  80 00 51 e3                                      cmp r1, #0x80
0045a8ac  06 00 00 8a                                      bhi #0x45a8cc
0045a8b0  92 b9 0a eb                                      bl #0x708f00
0045a8b4  18 00 84 e2                                      add r0, r4, #0x18
0045a8b8  c2 ff ff eb                                      bl #0x45a7c8
0045a8bc  0c 00 84 e2                                      add r0, r4, #0xc
0045a8c0  d7 ff ff eb                                      bl #0x45a824
0045a8c4  04 00 a0 e1                                      mov r0, r4
0045a8c8  10 80 bd e8                                      pop {r4, pc}
0045a8cc  db d6 fa eb                                      bl #0x310440
0045a8d0  18 00 84 e2                                      add r0, r4, #0x18
0045a8d4  bb ff ff eb                                      bl #0x45a7c8
0045a8d8  0c 00 84 e2                                      add r0, r4, #0xc
0045a8dc  d0 ff ff eb                                      bl #0x45a824
0045a8e0  04 00 a0 e1                                      mov r0, r4
0045a8e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0045ad40, declared_size=548, range_size=548, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManager19LoadScriptFileNamesEPKcb
; demangled: ScriptManager::LoadScriptFileNames(char const*, bool)
; decoder-mode: arm
0045ad40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045ad44  10 32 9f e5                                      ldr r3, [pc, #0x210]
0045ad48  00 00 52 e3                                      cmp r2, #0
0045ad4c  54 d0 4d e2                                      sub sp, sp, #0x54
0045ad50  00 70 a0 e1                                      mov r7, r0
0045ad54  03 30 8f e0                                      add r3, pc, r3
0045ad58  0b 00 00 0a                                      beq #0x45ad8c
0045ad5c  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0045ad60  18 20 97 e5                                      ldr r2, [r7, #0x18]
0045ad64  08 c0 97 e5                                      ldr ip, [r7, #8]
0045ad68  00 20 62 e0                                      rsb r2, r2, r0
0045ad6c  42 21 a0 e1                                      asr r2, r2, #2
0045ad70  02 01 82 e0                                      add r0, r2, r2, lsl #2
0045ad74  00 02 80 e0                                      add r0, r0, r0, lsl #4
0045ad78  00 04 80 e0                                      add r0, r0, r0, lsl #8
0045ad7c  00 08 80 e0                                      add r0, r0, r0, lsl #16
0045ad80  80 20 82 e0                                      add r2, r2, r0, lsl #1
0045ad84  02 00 5c e1                                      cmp ip, r2
0045ad88  60 00 00 ba                                      blt #0x45af10
0045ad8c  cc 01 9f e5                                      ldr r0, [pc, #0x1cc]
0045ad90  00 20 a0 e3                                      mov r2, #0
0045ad94  00 40 93 e7                                      ldr r4, [r3, r0]
0045ad98  02 30 a0 e1                                      mov r3, r2
0045ad9c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0045ada0  34 c0 90 e5                                      ldr ip, [r0, #0x34]
0045ada4  0c 00 a0 e1                                      mov r0, ip
0045ada8  00 c0 9c e5                                      ldr ip, [ip]
0045adac  0f e0 a0 e1                                      mov lr, pc
0045adb0  88 f0 9c e5                                      ldr pc, [ip, #0x88]
0045adb4  00 30 50 e2                                      subs r3, r0, #0
0045adb8  54 00 00 0a                                      beq #0x45af10
0045adbc  08 80 8d e2                                      add r8, sp, #8
0045adc0  03 10 a0 e1                                      mov r1, r3
0045adc4  08 00 a0 e1                                      mov r0, r8
0045adc8  4c 30 8d e5                                      str r3, [sp, #0x4c]
0045adcc  41 f1 fa eb                                      bl #0x3172d8
0045add0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0045add4  4c 10 8d e2                                      add r1, sp, #0x4c
0045add8  48 40 8d e2                                      add r4, sp, #0x48
0045addc  34 30 93 e5                                      ldr r3, [r3, #0x34]
0045ade0  03 00 a0 e1                                      mov r0, r3
0045ade4  00 30 93 e5                                      ldr r3, [r3]
0045ade8  0f e0 a0 e1                                      mov lr, pc
0045adec  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0045adf0  00 30 a0 e3                                      mov r3, #0
0045adf4  08 00 a0 e1                                      mov r0, r8
0045adf8  04 10 a0 e1                                      mov r1, r4
0045adfc  04 20 a0 e3                                      mov r2, #4
0045ae00  a3 ed fa eb                                      bl #0x316494
0045ae04  01 30 a0 e3                                      mov r3, #1
0045ae08  00 00 53 e3                                      cmp r3, #0
0045ae0c  3c 30 8d e5                                      str r3, [sp, #0x3c]
0045ae10  40 00 00 0a                                      beq #0x45af18
0045ae14  07 00 a0 e1                                      mov r0, r7
0045ae18  24 30 b0 e5                                      ldr r3, [r0, #0x24]!
0045ae1c  28 50 97 e5                                      ldr r5, [r7, #0x28]
0045ae20  48 90 9d e5                                      ldr sb, [sp, #0x48]
0045ae24  50 20 8d e2                                      add r2, sp, #0x50
0045ae28  05 50 63 e0                                      rsb r5, r3, r5
0045ae2c  45 51 a0 e1                                      asr r5, r5, #2
0045ae30  09 90 85 e0                                      add sb, r5, sb
0045ae34  00 40 a0 e3                                      mov r4, #0
0045ae38  0c 40 22 e5                                      str r4, [r2, #-0xc]!
0045ae3c  09 10 a0 e1                                      mov r1, sb
0045ae40  ad ff ff eb                                      bl #0x45acfc
0045ae44  05 00 59 e1                                      cmp sb, r5
0045ae48  2e 00 00 da                                      ble #0x45af08
0045ae4c  40 b0 8d e2                                      add fp, sp, #0x40
0045ae50  01 a0 a0 e3                                      mov sl, #1
0045ae54  0a 20 8b e0                                      add r2, fp, sl
0045ae58  02 30 8b e2                                      add r3, fp, #2
0045ae5c  05 61 a0 e1                                      lsl r6, r5, #2
0045ae60  0c 00 8d e8                                      stm sp, {r2, r3}
0045ae64  08 00 a0 e1                                      mov r0, r8
0045ae68  0b 10 a0 e1                                      mov r1, fp
0045ae6c  cb 10 fe eb                                      bl #0x3df1a0
0045ae70  00 00 5a e3                                      cmp sl, #0
0045ae74  3c a0 8d e5                                      str sl, [sp, #0x3c]
0045ae78  0f 00 00 1a                                      bne #0x45aebc
0045ae7c  00 30 9d e5                                      ldr r3, [sp]
0045ae80  04 20 9d e5                                      ldr r2, [sp, #4]
0045ae84  01 00 d2 e5                                      ldrb r0, [r2, #1]
0045ae88  01 10 53 e5                                      ldrb r1, [r3, #-1]
0045ae8c  03 00 52 e1                                      cmp r2, r3
0045ae90  01 10 20 e0                                      eor r1, r0, r1
0045ae94  01 10 43 e5                                      strb r1, [r3, #-1]
0045ae98  01 00 d2 e5                                      ldrb r0, [r2, #1]
0045ae9c  00 10 21 e0                                      eor r1, r1, r0
0045aea0  01 10 c2 e5                                      strb r1, [r2, #1]
0045aea4  01 00 53 e5                                      ldrb r0, [r3, #-1]
0045aea8  01 20 42 e2                                      sub r2, r2, #1
0045aeac  00 10 21 e0                                      eor r1, r1, r0
0045aeb0  01 10 43 e5                                      strb r1, [r3, #-1]
0045aeb4  01 30 83 e2                                      add r3, r3, #1
0045aeb8  f1 ff ff 8a                                      bhi #0x45ae84
0045aebc  40 00 9d e5                                      ldr r0, [sp, #0x40]
0045aec0  00 10 a0 e3                                      mov r1, #0
0045aec4  01 50 85 e2                                      add r5, r5, #1
0045aec8  01 00 80 e2                                      add r0, r0, #1
0045aecc  a6 d5 fa eb                                      bl #0x31056c
0045aed0  00 40 a0 e1                                      mov r4, r0
0045aed4  40 20 9d e5                                      ldr r2, [sp, #0x40]
0045aed8  00 30 a0 e3                                      mov r3, #0
0045aedc  08 00 a0 e1                                      mov r0, r8
0045aee0  04 10 a0 e1                                      mov r1, r4
0045aee4  5a f1 fa eb                                      bl #0x317454
0045aee8  40 30 9d e5                                      ldr r3, [sp, #0x40]
0045aeec  00 20 a0 e3                                      mov r2, #0
0045aef0  09 00 55 e1                                      cmp r5, sb
0045aef4  03 20 c4 e7                                      strb r2, [r4, r3]
0045aef8  24 30 97 e5                                      ldr r3, [r7, #0x24]
0045aefc  06 40 83 e7                                      str r4, [r3, r6]
0045af00  04 60 86 e2                                      add r6, r6, #4
0045af04  d6 ff ff 1a                                      bne #0x45ae64
0045af08  08 00 a0 e1                                      mov r0, r8
0045af0c  ac ee fa eb                                      bl #0x3169c4
0045af10  54 d0 8d e2                                      add sp, sp, #0x54
0045af14  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045af18  02 30 84 e2                                      add r3, r4, #2
0045af1c  01 40 84 e2                                      add r4, r4, #1
0045af20  01 10 d3 e5                                      ldrb r1, [r3, #1]
0045af24  01 20 54 e5                                      ldrb r2, [r4, #-1]
0045af28  04 00 53 e1                                      cmp r3, r4
0045af2c  02 20 21 e0                                      eor r2, r1, r2
0045af30  01 20 44 e5                                      strb r2, [r4, #-1]
0045af34  01 10 d3 e5                                      ldrb r1, [r3, #1]
0045af38  01 20 22 e0                                      eor r2, r2, r1
0045af3c  01 20 c3 e5                                      strb r2, [r3, #1]
0045af40  01 10 54 e5                                      ldrb r1, [r4, #-1]
0045af44  01 30 43 e2                                      sub r3, r3, #1
0045af48  01 20 22 e0                                      eor r2, r2, r1
0045af4c  01 20 44 e5                                      strb r2, [r4, #-1]
0045af50  01 40 84 e2                                      add r4, r4, #1
0045af54  f1 ff ff 8a                                      bhi #0x45af20
0045af58  ad ff ff ea                                      b #0x45ae14
; mapping-symbol data/literal pool
0045af5c  3c 9d 53 00 f4 37 00 00                          .byte 0x3c, 0x9d, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0045b264, declared_size=944, range_size=944, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManager14LoadScriptFileEPKcb
; demangled: ScriptManager::LoadScriptFile(char const*, bool)
; decoder-mode: arm
0045b264  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045b268  98 33 9f e5                                      ldr r3, [pc, #0x398]
0045b26c  00 60 52 e2                                      subs r6, r2, #0
0045b270  7c d0 4d e2                                      sub sp, sp, #0x7c
0045b274  00 40 a0 e1                                      mov r4, r0
0045b278  03 30 8f e0                                      add r3, pc, r3
0045b27c  0b 00 00 0a                                      beq #0x45b2b0
0045b280  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0045b284  18 20 94 e5                                      ldr r2, [r4, #0x18]
0045b288  08 c0 94 e5                                      ldr ip, [r4, #8]
0045b28c  00 20 62 e0                                      rsb r2, r2, r0
0045b290  42 21 a0 e1                                      asr r2, r2, #2
0045b294  02 01 82 e0                                      add r0, r2, r2, lsl #2
0045b298  00 02 80 e0                                      add r0, r0, r0, lsl #4
0045b29c  00 04 80 e0                                      add r0, r0, r0, lsl #8
0045b2a0  00 08 80 e0                                      add r0, r0, r0, lsl #16
0045b2a4  80 20 82 e0                                      add r2, r2, r0, lsl #1
0045b2a8  02 00 5c e1                                      cmp ip, r2
0045b2ac  c2 00 00 ba                                      blt #0x45b5bc
0045b2b0  54 03 9f e5                                      ldr r0, [pc, #0x354]
0045b2b4  00 20 a0 e3                                      mov r2, #0
0045b2b8  00 50 93 e7                                      ldr r5, [r3, r0]
0045b2bc  02 30 a0 e1                                      mov r3, r2
0045b2c0  10 00 95 e5                                      ldr r0, [r5, #0x10]
0045b2c4  34 c0 90 e5                                      ldr ip, [r0, #0x34]
0045b2c8  0c 00 a0 e1                                      mov r0, ip
0045b2cc  00 c0 9c e5                                      ldr ip, [ip]
0045b2d0  0f e0 a0 e1                                      mov lr, pc
0045b2d4  88 f0 9c e5                                      ldr pc, [ip, #0x88]
0045b2d8  00 00 50 e3                                      cmp r0, #0
0045b2dc  74 00 8d e5                                      str r0, [sp, #0x74]
0045b2e0  b5 00 00 0a                                      beq #0x45b5bc
0045b2e4  18 70 8d e2                                      add r7, sp, #0x18
0045b2e8  00 10 a0 e1                                      mov r1, r0
0045b2ec  07 00 a0 e1                                      mov r0, r7
0045b2f0  f8 ef fa eb                                      bl #0x3172d8
0045b2f4  10 30 95 e5                                      ldr r3, [r5, #0x10]
0045b2f8  74 10 8d e2                                      add r1, sp, #0x74
0045b2fc  70 50 8d e2                                      add r5, sp, #0x70
0045b300  34 30 93 e5                                      ldr r3, [r3, #0x34]
0045b304  03 00 a0 e1                                      mov r0, r3
0045b308  00 30 93 e5                                      ldr r3, [r3]
0045b30c  0f e0 a0 e1                                      mov lr, pc
0045b310  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0045b314  07 00 a0 e1                                      mov r0, r7
0045b318  05 10 a0 e1                                      mov r1, r5
0045b31c  5b f7 ff eb                                      bl #0x459090
0045b320  01 30 a0 e3                                      mov r3, #1
0045b324  00 00 53 e3                                      cmp r3, #0
0045b328  64 30 8d e5                                      str r3, [sp, #0x64]
0045b32c  a4 00 00 0a                                      beq #0x45b5c4
0045b330  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0045b334  18 30 94 e5                                      ldr r3, [r4, #0x18]
0045b338  00 00 56 e3                                      cmp r6, #0
0045b33c  00 50 a0 e3                                      mov r5, #0
0045b340  02 30 63 e0                                      rsb r3, r3, r2
0045b344  43 31 a0 e1                                      asr r3, r3, #2
0045b348  18 00 84 e2                                      add r0, r4, #0x18
0045b34c  03 21 83 e0                                      add r2, r3, r3, lsl #2
0045b350  02 22 82 e0                                      add r2, r2, r2, lsl #4
0045b354  02 24 82 e0                                      add r2, r2, r2, lsl #8
0045b358  02 28 82 e0                                      add r2, r2, r2, lsl #16
0045b35c  82 20 83 e0                                      add r2, r3, r2, lsl #1
0045b360  0c 20 8d e5                                      str r2, [sp, #0xc]
0045b364  08 20 94 15                                      ldrne r2, [r4, #8]
0045b368  70 30 9d 15                                      ldrne r3, [sp, #0x70]
0045b36c  70 30 9d 05                                      ldreq r3, [sp, #0x70]
0045b370  03 20 82 10                                      addne r2, r2, r3
0045b374  08 20 84 15                                      strne r2, [r4, #8]
0045b378  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0045b37c  58 20 8d e2                                      add r2, sp, #0x58
0045b380  58 50 8d e5                                      str r5, [sp, #0x58]
0045b384  03 30 81 e0                                      add r3, r1, r3
0045b388  03 10 a0 e1                                      mov r1, r3
0045b38c  14 30 8d e5                                      str r3, [sp, #0x14]
0045b390  5c 50 cd e5                                      strb r5, [sp, #0x5c]
0045b394  60 50 8d e5                                      str r5, [sp, #0x60]
0045b398  9a ff ff eb                                      bl #0x45b208
0045b39c  4c 20 8d e2                                      add r2, sp, #0x4c
0045b3a0  0c 00 84 e2                                      add r0, r4, #0xc
0045b3a4  14 10 9d e5                                      ldr r1, [sp, #0x14]
0045b3a8  54 50 8d e5                                      str r5, [sp, #0x54]
0045b3ac  4c 50 8d e5                                      str r5, [sp, #0x4c]
0045b3b0  50 50 8d e5                                      str r5, [sp, #0x50]
0045b3b4  f4 fd ff eb                                      bl #0x45ab8c
0045b3b8  14 20 9d e5                                      ldr r2, [sp, #0x14]
0045b3bc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0045b3c0  03 00 52 e1                                      cmp r2, r3
0045b3c4  7a 00 00 da                                      ble #0x45b5b4
0045b3c8  40 82 9f e5                                      ldr r8, [pc, #0x240]
0045b3cc  68 b0 8d e2                                      add fp, sp, #0x68
0045b3d0  0c 50 a0 e3                                      mov r5, #0xc
0045b3d4  01 60 a0 e3                                      mov r6, #1
0045b3d8  95 03 05 e0                                      mul r5, r5, r3
0045b3dc  6c 10 8d e2                                      add r1, sp, #0x6c
0045b3e0  06 20 8b e0                                      add r2, fp, r6
0045b3e4  02 30 8b e2                                      add r3, fp, #2
0045b3e8  08 80 8f e0                                      add r8, pc, r8
0045b3ec  10 10 8d e5                                      str r1, [sp, #0x10]
0045b3f0  0c 00 8d e9                                      stmib sp, {r2, r3}
0045b3f4  07 00 a0 e1                                      mov r0, r7
0045b3f8  10 10 9d e5                                      ldr r1, [sp, #0x10]
0045b3fc  23 f7 ff eb                                      bl #0x459090
0045b400  00 00 56 e3                                      cmp r6, #0
0045b404  64 60 8d e5                                      str r6, [sp, #0x64]
0045b408  10 00 00 1a                                      bne #0x45b450
0045b40c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0045b410  01 30 81 e2                                      add r3, r1, #1
0045b414  02 20 81 e2                                      add r2, r1, #2
0045b418  01 00 d2 e5                                      ldrb r0, [r2, #1]
0045b41c  01 10 53 e5                                      ldrb r1, [r3, #-1]
0045b420  02 00 53 e1                                      cmp r3, r2
0045b424  01 10 20 e0                                      eor r1, r0, r1
0045b428  01 10 43 e5                                      strb r1, [r3, #-1]
0045b42c  01 00 d2 e5                                      ldrb r0, [r2, #1]
0045b430  00 10 21 e0                                      eor r1, r1, r0
0045b434  01 10 c2 e5                                      strb r1, [r2, #1]
0045b438  01 00 53 e5                                      ldrb r0, [r3, #-1]
0045b43c  01 20 42 e2                                      sub r2, r2, #1
0045b440  00 10 21 e0                                      eor r1, r1, r0
0045b444  01 10 43 e5                                      strb r1, [r3, #-1]
0045b448  01 30 83 e2                                      add r3, r3, #1
0045b44c  f1 ff ff 3a                                      blo #0x45b418
0045b450  18 30 94 e5                                      ldr r3, [r4, #0x18]
0045b454  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0045b458  00 10 a0 e3                                      mov r1, #0
0045b45c  05 20 83 e7                                      str r2, [r3, r5]
0045b460  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0045b464  18 a0 94 e5                                      ldr sl, [r4, #0x18]
0045b468  00 01 a0 e1                                      lsl r0, r0, #2
0045b46c  3e d4 fa eb                                      bl #0x31056c
0045b470  05 a0 8a e0                                      add sl, sl, r5
0045b474  08 00 8a e5                                      str r0, [sl, #8]
0045b478  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
0045b47c  00 00 53 e3                                      cmp r3, #0
0045b480  40 00 00 da                                      ble #0x45b588
0045b484  00 a0 a0 e3                                      mov sl, #0
0045b488  07 00 a0 e1                                      mov r0, r7
0045b48c  0b 10 a0 e1                                      mov r1, fp
0045b490  2a f7 ff eb                                      bl #0x459140
0045b494  00 00 56 e3                                      cmp r6, #0
0045b498  64 60 8d e5                                      str r6, [sp, #0x64]
0045b49c  0f 00 00 1a                                      bne #0x45b4e0
0045b4a0  04 30 9d e5                                      ldr r3, [sp, #4]
0045b4a4  08 20 9d e5                                      ldr r2, [sp, #8]
0045b4a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
0045b4ac  01 10 53 e5                                      ldrb r1, [r3, #-1]
0045b4b0  02 00 53 e1                                      cmp r3, r2
0045b4b4  01 10 20 e0                                      eor r1, r0, r1
0045b4b8  01 10 43 e5                                      strb r1, [r3, #-1]
0045b4bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
0045b4c0  00 10 21 e0                                      eor r1, r1, r0
0045b4c4  01 10 c2 e5                                      strb r1, [r2, #1]
0045b4c8  01 00 53 e5                                      ldrb r0, [r3, #-1]
0045b4cc  01 20 42 e2                                      sub r2, r2, #1
0045b4d0  00 10 21 e0                                      eor r1, r1, r0
0045b4d4  01 10 43 e5                                      strb r1, [r3, #-1]
0045b4d8  01 30 83 e2                                      add r3, r3, #1
0045b4dc  f1 ff ff 3a                                      blo #0x45b4a8
0045b4e0  18 30 94 e5                                      ldr r3, [r4, #0x18]
0045b4e4  05 30 83 e0                                      add r3, r3, r5
0045b4e8  08 90 93 e5                                      ldr sb, [r3, #8]
0045b4ec  68 30 9d e5                                      ldr r3, [sp, #0x68]
0045b4f0  0f e0 a0 e1                                      mov lr, pc
0045b4f4  03 f1 98 e7                                      ldr pc, [r8, r3, lsl #2]
0045b4f8  0a 01 89 e7                                      str r0, [sb, sl, lsl #2]
0045b4fc  68 30 9d e5                                      ldr r3, [sp, #0x68]
0045b500  03 31 88 e0                                      add r3, r8, r3, lsl #2
0045b504  0f e0 a0 e1                                      mov lr, pc
0045b508  40 f1 93 e5                                      ldr pc, [r3, #0x140]
0045b50c  07 10 a0 e1                                      mov r1, r7
0045b510  00 30 90 e5                                      ldr r3, [r0]
0045b514  00 90 a0 e1                                      mov sb, r0
0045b518  0f e0 a0 e1                                      mov lr, pc
0045b51c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0045b520  18 30 94 e5                                      ldr r3, [r4, #0x18]
0045b524  68 20 9d e5                                      ldr r2, [sp, #0x68]
0045b528  05 30 83 e0                                      add r3, r3, r5
0045b52c  08 30 93 e5                                      ldr r3, [r3, #8]
0045b530  0a 31 93 e7                                      ldr r3, [r3, sl, lsl #2]
0045b534  08 20 83 e5                                      str r2, [r3, #8]
0045b538  0c 90 83 e5                                      str sb, [r3, #0xc]
0045b53c  18 30 94 e5                                      ldr r3, [r4, #0x18]
0045b540  05 30 83 e0                                      add r3, r3, r5
0045b544  08 30 93 e5                                      ldr r3, [r3, #8]
0045b548  0a 31 93 e7                                      ldr r3, [r3, sl, lsl #2]
0045b54c  03 00 a0 e1                                      mov r0, r3
0045b550  00 30 93 e5                                      ldr r3, [r3]
0045b554  0f e0 a0 e1                                      mov lr, pc
0045b558  00 f0 93 e5                                      ldr pc, [r3]
0045b55c  18 30 94 e5                                      ldr r3, [r4, #0x18]
0045b560  05 30 83 e0                                      add r3, r3, r5
0045b564  08 20 93 e5                                      ldr r2, [r3, #8]
0045b568  0a 21 92 e7                                      ldr r2, [r2, sl, lsl #2]
0045b56c  01 a0 8a e2                                      add sl, sl, #1
0045b570  04 20 d2 e5                                      ldrb r2, [r2, #4]
0045b574  00 00 52 e3                                      cmp r2, #0
0045b578  04 60 c3 15                                      strbne r6, [r3, #4]
0045b57c  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
0045b580  0a 00 53 e1                                      cmp r3, sl
0045b584  bf ff ff ca                                      bgt #0x45b488
0045b588  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0045b58c  04 00 a0 e1                                      mov r0, r4
0045b590  0c 50 85 e2                                      add r5, r5, #0xc
0045b594  01 20 81 e2                                      add r2, r1, #1
0045b598  0c 20 8d e5                                      str r2, [sp, #0xc]
0045b59c  00 20 a0 e3                                      mov r2, #0
0045b5a0  84 e9 ff eb                                      bl #0x455bb8
0045b5a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0045b5a8  14 10 9d e5                                      ldr r1, [sp, #0x14]
0045b5ac  01 00 53 e1                                      cmp r3, r1
0045b5b0  8f ff ff 1a                                      bne #0x45b3f4
0045b5b4  07 00 a0 e1                                      mov r0, r7
0045b5b8  01 ed fa eb                                      bl #0x3169c4
0045b5bc  7c d0 8d e2                                      add sp, sp, #0x7c
0045b5c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045b5c4  02 30 85 e2                                      add r3, r5, #2
0045b5c8  01 50 85 e2                                      add r5, r5, #1
0045b5cc  01 10 d3 e5                                      ldrb r1, [r3, #1]
0045b5d0  01 20 55 e5                                      ldrb r2, [r5, #-1]
0045b5d4  03 00 55 e1                                      cmp r5, r3
0045b5d8  02 20 21 e0                                      eor r2, r1, r2
0045b5dc  01 20 45 e5                                      strb r2, [r5, #-1]
0045b5e0  01 10 d3 e5                                      ldrb r1, [r3, #1]
0045b5e4  01 20 22 e0                                      eor r2, r2, r1
0045b5e8  01 20 c3 e5                                      strb r2, [r3, #1]
0045b5ec  01 10 55 e5                                      ldrb r1, [r5, #-1]
0045b5f0  01 30 43 e2                                      sub r3, r3, #1
0045b5f4  01 20 22 e0                                      eor r2, r2, r1
0045b5f8  01 20 45 e5                                      strb r2, [r5, #-1]
0045b5fc  01 50 85 e2                                      add r5, r5, #1
0045b600  f1 ff ff 3a                                      blo #0x45b5cc
0045b604  49 ff ff ea                                      b #0x45b330
; mapping-symbol data/literal pool
0045b608  18 98 53 00 f4 37 00 00 10 d8 50 00              .byte 0x18, 0x98, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x10, 0xd8, 0x50, 0x00

; FUNCTION 0x0045c16c, declared_size=528, range_size=528, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManager13ExecuteScriptEi
; demangled: ScriptManager::ExecuteScript(int)
; decoder-mode: arm
0045c16c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045c170  e4 71 9f e5                                      ldr r7, [pc, #0x1e4]
0045c174  e4 81 9f e5                                      ldr r8, [pc, #0x1e4]
0045c178  24 30 90 e5                                      ldr r3, [r0, #0x24]
0045c17c  07 70 8f e0                                      add r7, pc, r7
0045c180  08 20 97 e7                                      ldr r2, [r7, r8]
0045c184  00 50 a0 e1                                      mov r5, r0
0045c188  34 d0 4d e2                                      sub sp, sp, #0x34
0045c18c  00 00 92 e5                                      ldr r0, [r2]
0045c190  cc 21 9f e5                                      ldr r2, [pc, #0x1cc]
0045c194  0c 60 a0 e3                                      mov r6, #0xc
0045c198  2c 00 8d e5                                      str r0, [sp, #0x2c]
0045c19c  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
0045c1a0  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0045c1a4  96 01 01 e0                                      mul r1, r6, r1
0045c1a8  02 20 8f e0                                      add r2, pc, r2
0045c1ac  18 60 95 e5                                      ldr r6, [r5, #0x18]
0045c1b0  1c 30 82 e5                                      str r3, [r2, #0x1c]
0045c1b4  ac 21 9f e5                                      ldr r2, [pc, #0x1ac]
0045c1b8  01 40 84 e0                                      add r4, r4, r1
0045c1bc  08 30 94 e5                                      ldr r3, [r4, #8]
0045c1c0  08 20 8d e5                                      str r2, [sp, #8]
0045c1c4  a0 21 9f e5                                      ldr r2, [pc, #0x1a0]
0045c1c8  a0 b1 9f e5                                      ldr fp, [pc, #0x1a0]
0045c1cc  a0 91 9f e5                                      ldr sb, [pc, #0x1a0]
0045c1d0  02 20 8f e0                                      add r2, pc, r2
0045c1d4  00 20 8d e5                                      str r2, [sp]
0045c1d8  98 21 9f e5                                      ldr r2, [pc, #0x198]
0045c1dc  01 60 86 e0                                      add r6, r6, r1
0045c1e0  0b b0 8f e0                                      add fp, pc, fp
0045c1e4  02 20 8f e0                                      add r2, pc, r2
0045c1e8  0c 20 8d e5                                      str r2, [sp, #0xc]
0045c1ec  14 20 8d e2                                      add r2, sp, #0x14
0045c1f0  04 20 8d e5                                      str r2, [sp, #4]
0045c1f4  02 00 53 e3                                      cmp r3, #2
0045c1f8  3c 00 00 0a                                      beq #0x45c2f0
0045c1fc  00 00 53 e3                                      cmp r3, #0
0045c200  17 00 00 0a                                      beq #0x45c264
0045c204  01 00 53 e3                                      cmp r3, #1
0045c208  f9 ff ff 1a                                      bne #0x45c1f4
0045c20c  04 00 94 e5                                      ldr r0, [r4, #4]
0045c210  08 30 96 e5                                      ldr r3, [r6, #8]
0045c214  09 20 97 e7                                      ldr r2, [r7, sb]
0045c218  0b 10 a0 e1                                      mov r1, fp
0045c21c  00 31 93 e7                                      ldr r3, [r3, r0, lsl #2]
0045c220  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
0045c224  00 20 9d e5                                      ldr r2, [sp]
0045c228  08 a0 93 e5                                      ldr sl, [r3, #8]
0045c22c  6a a2 01 eb                                      bl #0x4c4bdc
0045c230  00 30 95 e5                                      ldr r3, [r5]
0045c234  01 00 73 e3                                      cmn r3, #1
0045c238  34 00 00 0a                                      beq #0x45c310
0045c23c  0a 00 50 e1                                      cmp r0, sl
0045c240  32 00 00 0a                                      beq #0x45c310
0045c244  04 30 94 e5                                      ldr r3, [r4, #4]
0045c248  00 20 a0 e3                                      mov r2, #0
0045c24c  08 20 84 e5                                      str r2, [r4, #8]
0045c250  01 30 83 e2                                      add r3, r3, #1
0045c254  04 30 84 e5                                      str r3, [r4, #4]
0045c258  00 20 96 e5                                      ldr r2, [r6]
0045c25c  02 00 53 e1                                      cmp r3, r2
0045c260  0d 00 00 aa                                      bge #0x45c29c
0045c264  04 00 94 e5                                      ldr r0, [r4, #4]
0045c268  08 30 96 e5                                      ldr r3, [r6, #8]
0045c26c  00 10 95 e5                                      ldr r1, [r5]
0045c270  00 20 94 e5                                      ldr r2, [r4]
0045c274  00 31 93 e7                                      ldr r3, [r3, r0, lsl #2]
0045c278  01 10 91 e2                                      adds r1, r1, #1
0045c27c  01 10 a0 13                                      movne r1, #1
0045c280  03 00 a0 e1                                      mov r0, r3
0045c284  00 30 93 e5                                      ldr r3, [r3]
0045c288  0f e0 a0 e1                                      mov lr, pc
0045c28c  08 f0 93 e5                                      ldr pc, [r3, #8]
0045c290  01 30 a0 e3                                      mov r3, #1
0045c294  08 30 84 e5                                      str r3, [r4, #8]
0045c298  db ff ff ea                                      b #0x45c20c
0045c29c  02 30 a0 e3                                      mov r3, #2
0045c2a0  08 30 84 e5                                      str r3, [r4, #8]
0045c2a4  08 20 9d e5                                      ldr r2, [sp, #8]
0045c2a8  04 30 95 e5                                      ldr r3, [r5, #4]
0045c2ac  02 a0 97 e7                                      ldr sl, [r7, r2]
0045c2b0  01 30 43 e2                                      sub r3, r3, #1
0045c2b4  04 30 85 e5                                      str r3, [r5, #4]
0045c2b8  0a 00 a0 e1                                      mov r0, sl
0045c2bc  71 6d fb eb                                      bl #0x337888
0045c2c0  10 20 8d e2                                      add r2, sp, #0x10
0045c2c4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0045c2c8  04 00 9d e5                                      ldr r0, [sp, #4]
0045c2cc  86 df fa eb                                      bl #0x3140ec
0045c2d0  04 10 9d e5                                      ldr r1, [sp, #4]
0045c2d4  0a 00 a0 e1                                      mov r0, sl
0045c2d8  ea 6d fb eb                                      bl #0x337a88
0045c2dc  04 00 9d e5                                      ldr r0, [sp, #4]
0045c2e0  db ef fa eb                                      bl #0x318254
0045c2e4  08 30 94 e5                                      ldr r3, [r4, #8]
0045c2e8  02 00 53 e3                                      cmp r3, #2
0045c2ec  c2 ff ff 1a                                      bne #0x45c1fc
0045c2f0  00 00 a0 e3                                      mov r0, #0
0045c2f4  08 30 97 e7                                      ldr r3, [r7, r8]
0045c2f8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0045c2fc  00 30 93 e5                                      ldr r3, [r3]
0045c300  03 00 52 e1                                      cmp r2, r3
0045c304  13 00 00 1a                                      bne #0x45c358
0045c308  34 d0 8d e2                                      add sp, sp, #0x34
0045c30c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045c310  04 20 94 e5                                      ldr r2, [r4, #4]
0045c314  08 30 96 e5                                      ldr r3, [r6, #8]
0045c318  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0045c31c  03 00 a0 e1                                      mov r0, r3
0045c320  00 30 93 e5                                      ldr r3, [r3]
0045c324  0f e0 a0 e1                                      mov lr, pc
0045c328  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0045c32c  00 00 50 e3                                      cmp r0, #0
0045c330  c3 ff ff 0a                                      beq #0x45c244
0045c334  04 20 94 e5                                      ldr r2, [r4, #4]
0045c338  08 30 96 e5                                      ldr r3, [r6, #8]
0045c33c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0045c340  03 00 a0 e1                                      mov r0, r3
0045c344  00 30 93 e5                                      ldr r3, [r3]
0045c348  0f e0 a0 e1                                      mov lr, pc
0045c34c  04 f0 93 e5                                      ldr pc, [r3, #4]
0045c350  01 00 a0 e3                                      mov r0, #1
0045c354  e6 ff ff ea                                      b #0x45c2f4
0045c358  ec c7 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045c35c  14 89 53 00 ac 40 00 00 0c 9e 54 00 84 08 00 00  .byte 0x14, 0x89, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x0c, 0x9e, 0x54, 0x00, 0x84, 0x08, 0x00, 0x00
0045c36c  a0 0e 47 00 80 0e 47 00 f4 37 00 00 9c 0e 47 00  .byte 0xa0, 0x0e, 0x47, 0x00, 0x80, 0x0e, 0x47, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x9c, 0x0e, 0x47, 0x00

; FUNCTION 0x0045c37c, declared_size=188, range_size=188, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManager17ExecuteAllScriptsEv
; demangled: ScriptManager::ExecuteAllScripts()
; decoder-mode: arm
0045c37c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0045c380  00 60 a0 e1                                      mov r6, r0
0045c384  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
0045c388  00 00 8f e0                                      add r0, pc, r0
0045c38c  c8 dc fa eb                                      bl #0x3136b4
0045c390  1c 70 96 e5                                      ldr r7, [r6, #0x1c]
0045c394  18 30 96 e5                                      ldr r3, [r6, #0x18]
0045c398  07 30 63 e0                                      rsb r3, r3, r7
0045c39c  43 31 a0 e1                                      asr r3, r3, #2
0045c3a0  03 71 83 e0                                      add r7, r3, r3, lsl #2
0045c3a4  07 72 87 e0                                      add r7, r7, r7, lsl #4
0045c3a8  07 74 87 e0                                      add r7, r7, r7, lsl #8
0045c3ac  07 78 87 e0                                      add r7, r7, r7, lsl #16
0045c3b0  87 70 83 e0                                      add r7, r3, r7, lsl #1
0045c3b4  00 00 57 e3                                      cmp r7, #0
0045c3b8  00 50 a0 d3                                      movle r5, #0
0045c3bc  09 00 00 da                                      ble #0x45c3e8
0045c3c0  00 50 a0 e3                                      mov r5, #0
0045c3c4  05 40 a0 e1                                      mov r4, r5
0045c3c8  04 10 a0 e1                                      mov r1, r4
0045c3cc  06 00 a0 e1                                      mov r0, r6
0045c3d0  65 ff ff eb                                      bl #0x45c16c
0045c3d4  01 40 84 e2                                      add r4, r4, #1
0045c3d8  05 50 80 e1                                      orr r5, r0, r5
0045c3dc  07 00 54 e1                                      cmp r4, r7
0045c3e0  75 50 ef e6                                      uxtb r5, r5
0045c3e4  f7 ff ff 1a                                      bne #0x45c3c8
0045c3e8  04 30 96 e5                                      ldr r3, [r6, #4]
0045c3ec  00 00 53 e3                                      cmp r3, #0
0045c3f0  06 00 00 0a                                      beq #0x45c410
0045c3f4  00 00 55 e3                                      cmp r5, #0
0045c3f8  08 00 00 0a                                      beq #0x45c420
0045c3fc  30 00 9f e5                                      ldr r0, [pc, #0x30]
0045c400  00 00 8f e0                                      add r0, pc, r0
0045c404  ab dc fa eb                                      bl #0x3136b8
0045c408  05 00 a0 e1                                      mov r0, r5
0045c40c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0045c410  06 00 a0 e1                                      mov r0, r6
0045c414  f1 e5 ff eb                                      bl #0x455be0
0045c418  00 00 55 e3                                      cmp r5, #0
0045c41c  f6 ff ff 1a                                      bne #0x45c3fc
0045c420  04 50 86 e5                                      str r5, [r6, #4]
0045c424  06 00 a0 e1                                      mov r0, r6
0045c428  ec e5 ff eb                                      bl #0x455be0
0045c42c  f2 ff ff ea                                      b #0x45c3fc
; mapping-symbol data/literal pool
0045c430  10 0d 47 00 98 0c 47 00                          .byte 0x10, 0x0d, 0x47, 0x00, 0x98, 0x0c, 0x47, 0x00

; FUNCTION 0x00460204, declared_size=104, range_size=104, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManagerD1Ev
; demangled: ScriptManager::~ScriptManager()
; decoder-mode: arm
00460204  10 40 2d e9                                      push {r4, lr}
00460208  00 40 a0 e1                                      mov r4, r0
0046020c  ed e7 ff eb                                      bl #0x45a1c8
00460210  24 00 94 e5                                      ldr r0, [r4, #0x24]
00460214  24 30 84 e2                                      add r3, r4, #0x24
00460218  00 00 50 e3                                      cmp r0, #0
0046021c  05 00 00 0a                                      beq #0x460238
00460220  08 10 93 e5                                      ldr r1, [r3, #8]
00460224  01 10 60 e0                                      rsb r1, r0, r1
00460228  03 10 c1 e3                                      bic r1, r1, #3
0046022c  80 00 51 e3                                      cmp r1, #0x80
00460230  06 00 00 8a                                      bhi #0x460250
00460234  31 a3 0a eb                                      bl #0x708f00
00460238  18 00 84 e2                                      add r0, r4, #0x18
0046023c  61 e9 ff eb                                      bl #0x45a7c8
00460240  0c 00 84 e2                                      add r0, r4, #0xc
00460244  76 e9 ff eb                                      bl #0x45a824
00460248  04 00 a0 e1                                      mov r0, r4
0046024c  10 80 bd e8                                      pop {r4, pc}
00460250  7a c0 fa eb                                      bl #0x310440
00460254  18 00 84 e2                                      add r0, r4, #0x18
00460258  5a e9 ff eb                                      bl #0x45a7c8
0046025c  0c 00 84 e2                                      add r0, r4, #0xc
00460260  6f e9 ff eb                                      bl #0x45a824
00460264  04 00 a0 e1                                      mov r0, r4
00460268  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004604c0, declared_size=256, range_size=256, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManager10SkipScriptEib
; demangled: ScriptManager::SkipScript(int, bool)
; decoder-mode: arm
004604c0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004604c4  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
004604c8  e0 60 9f e5                                      ldr r6, [pc, #0xe0]
004604cc  24 d0 4d e2                                      sub sp, sp, #0x24
004604d0  04 40 8f e0                                      add r4, pc, r4
004604d4  06 30 94 e7                                      ldr r3, [r4, r6]
004604d8  00 80 a0 e1                                      mov r8, r0
004604dc  01 a0 a0 e1                                      mov sl, r1
004604e0  00 30 93 e5                                      ldr r3, [r3]
004604e4  02 50 a0 e1                                      mov r5, r2
004604e8  1c 30 8d e5                                      str r3, [sp, #0x1c]
004604ec  e0 ff ff eb                                      bl #0x460474
004604f0  a7 74 0e eb                                      bl #0x7fd794
004604f4  05 30 d0 e5                                      ldrb r3, [r0, #5]
004604f8  00 00 53 e3                                      cmp r3, #0
004604fc  01 00 00 0a                                      beq #0x460508
00460500  00 00 55 e3                                      cmp r5, #0
00460504  18 00 00 0a                                      beq #0x46056c
00460508  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0046050c  04 50 8d e2                                      add r5, sp, #4
00460510  03 70 94 e7                                      ldr r7, [r4, r3]
00460514  07 00 a0 e1                                      mov r0, r7
00460518  da 5c fb eb                                      bl #0x337888
0046051c  94 10 9f e5                                      ldr r1, [pc, #0x94]
00460520  0d 20 a0 e1                                      mov r2, sp
00460524  05 00 a0 e1                                      mov r0, r5
00460528  01 10 8f e0                                      add r1, pc, r1
0046052c  ee ce fa eb                                      bl #0x3140ec
00460530  05 10 a0 e1                                      mov r1, r5
00460534  07 00 a0 e1                                      mov r0, r7
00460538  52 5d fb eb                                      bl #0x337a88
0046053c  05 00 a0 e1                                      mov r0, r5
00460540  43 df fa eb                                      bl #0x318254
00460544  00 30 98 e5                                      ldr r3, [r8]
00460548  01 00 73 e3                                      cmn r3, #1
0046054c  06 30 94 e7                                      ldr r3, [r4, r6]
00460550  00 a0 88 05                                      streq sl, [r8]
00460554  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00460558  00 30 93 e5                                      ldr r3, [r3]
0046055c  03 00 52 e1                                      cmp r2, r3
00460560  10 00 00 1a                                      bne #0x4605a8
00460564  24 d0 8d e2                                      add sp, sp, #0x24
00460568  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0046056c  12 ab 0e eb                                      bl #0x80b1bc
00460570  00 50 a0 e1                                      mov r5, r0
00460574  40 00 9f e5                                      ldr r0, [pc, #0x40]
00460578  01 10 a0 e3                                      mov r1, #1
0046057c  00 00 8f e0                                      add r0, pc, r0
00460580  2f a7 0e eb                                      bl #0x80a244
00460584  01 30 a0 e3                                      mov r3, #1
00460588  50 30 80 e5                                      str r3, [r0, #0x50]
0046058c  00 30 e0 e3                                      mvn r3, #0
00460590  00 10 a0 e1                                      mov r1, r0
00460594  58 30 80 e5                                      str r3, [r0, #0x58]
00460598  54 a0 80 e5                                      str sl, [r0, #0x54]
0046059c  05 00 a0 e1                                      mov r0, r5
004605a0  3f b7 0e eb                                      bl #0x80e2a4
004605a4  d7 ff ff ea                                      b #0x460508
004605a8  58 b7 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004605ac  c0 45 53 00 ac 40 00 00 84 08 00 00 58 cb 46 00  .byte 0xc0, 0x45, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x58, 0xcb, 0x46, 0x00
004605bc  44 e9 45 00                                      .byte 0x44, 0xe9, 0x45, 0x00

; FUNCTION 0x004605c0, declared_size=564, range_size=564, mode=arm
; class-group: ScriptManager
; alias: _ZN13ScriptManager11StartScriptEiib
; demangled: ScriptManager::StartScript(int, int, bool)
; decoder-mode: arm
004605c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004605c4  0c 42 9f e5                                      ldr r4, [pc, #0x20c]
004605c8  0c 62 9f e5                                      ldr r6, [pc, #0x20c]
004605cc  00 70 51 e2                                      subs r7, r1, #0
004605d0  04 40 8f e0                                      add r4, pc, r4
004605d4  06 10 94 e7                                      ldr r1, [r4, r6]
004605d8  02 90 a0 e1                                      mov sb, r2
004605dc  4c d0 4d e2                                      sub sp, sp, #0x4c
004605e0  00 20 91 e5                                      ldr r2, [r1]
004605e4  00 50 a0 e1                                      mov r5, r0
004605e8  03 80 a0 e1                                      mov r8, r3
004605ec  44 20 8d e5                                      str r2, [sp, #0x44]
004605f0  0a 00 00 ba                                      blt #0x460620
004605f4  10 20 90 e5                                      ldr r2, [r0, #0x10]
004605f8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
004605fc  02 30 63 e0                                      rsb r3, r3, r2
00460600  43 31 a0 e1                                      asr r3, r3, #2
00460604  03 21 83 e0                                      add r2, r3, r3, lsl #2
00460608  02 22 82 e0                                      add r2, r2, r2, lsl #4
0046060c  02 24 82 e0                                      add r2, r2, r2, lsl #8
00460610  02 28 82 e0                                      add r2, r2, r2, lsl #16
00460614  82 30 83 e0                                      add r3, r3, r2, lsl #1
00460618  03 00 57 e1                                      cmp r7, r3
0046061c  06 00 00 ba                                      blt #0x46063c
00460620  06 30 94 e7                                      ldr r3, [r4, r6]
00460624  44 20 9d e5                                      ldr r2, [sp, #0x44]
00460628  00 30 93 e5                                      ldr r3, [r3]
0046062c  03 00 52 e1                                      cmp r2, r3
00460630  67 00 00 1a                                      bne #0x4607d4
00460634  4c d0 8d e2                                      add sp, sp, #0x4c
00460638  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046063c  9c 31 9f e5                                      ldr r3, [pc, #0x19c]
00460640  03 a0 94 e7                                      ldr sl, [r4, r3]
00460644  40 00 9a e5                                      ldr r0, [sl, #0x40]
00460648  45 38 fc eb                                      bl #0x36e764
0046064c  00 00 50 e3                                      cmp r0, #0
00460650  07 00 00 0a                                      beq #0x460674
00460654  4e 74 0e eb                                      bl #0x7fd794
00460658  05 30 d0 e5                                      ldrb r3, [r0, #5]
0046065c  00 00 53 e3                                      cmp r3, #0
00460660  ee ff ff 0a                                      beq #0x460620
00460664  40 30 9a e5                                      ldr r3, [sl, #0x40]
00460668  14 37 93 e5                                      ldr r3, [r3, #0x714]
0046066c  01 00 53 e3                                      cmp r3, #1
00460670  ea ff ff da                                      ble #0x460620
00460674  68 31 9f e5                                      ldr r3, [pc, #0x168]
00460678  2c a0 8d e2                                      add sl, sp, #0x2c
0046067c  03 b0 94 e7                                      ldr fp, [r4, r3]
00460680  04 30 8d e5                                      str r3, [sp, #4]
00460684  0b 00 a0 e1                                      mov r0, fp
00460688  7e 5c fb eb                                      bl #0x337888
0046068c  54 11 9f e5                                      ldr r1, [pc, #0x154]
00460690  10 20 8d e2                                      add r2, sp, #0x10
00460694  0a 00 a0 e1                                      mov r0, sl
00460698  01 10 8f e0                                      add r1, pc, r1
0046069c  92 ce fa eb                                      bl #0x3140ec
004606a0  0b 00 a0 e1                                      mov r0, fp
004606a4  0a 10 a0 e1                                      mov r1, sl
004606a8  f6 5c fb eb                                      bl #0x337a88
004606ac  00 b0 a0 e1                                      mov fp, r0
004606b0  0a 00 a0 e1                                      mov r0, sl
004606b4  e6 de fa eb                                      bl #0x318254
004606b8  00 00 5b e3                                      cmp fp, #0
004606bc  34 00 00 1a                                      bne #0x460794
004606c0  33 74 0e eb                                      bl #0x7fd794
004606c4  05 30 d0 e5                                      ldrb r3, [r0, #5]
004606c8  00 00 53 e3                                      cmp r3, #0
004606cc  3d 00 00 0a                                      beq #0x4607c8
004606d0  00 00 58 e3                                      cmp r8, #0
004606d4  36 00 00 1a                                      bne #0x4607b4
004606d8  0c a0 a0 e3                                      mov sl, #0xc
004606dc  9a 07 0a e0                                      mul sl, sl, r7
004606e0  18 30 95 e5                                      ldr r3, [r5, #0x18]
004606e4  0a 30 83 e0                                      add r3, r3, sl
004606e8  04 30 d3 e5                                      ldrb r3, [r3, #4]
004606ec  00 00 53 e3                                      cmp r3, #0
004606f0  0b 00 00 1a                                      bne #0x460724
004606f4  b0 aa 0e eb                                      bl #0x80b1bc
004606f8  00 b0 a0 e1                                      mov fp, r0
004606fc  e8 00 9f e5                                      ldr r0, [pc, #0xe8]
00460700  01 10 a0 e3                                      mov r1, #1
00460704  00 00 8f e0                                      add r0, pc, r0
00460708  cd a6 0e eb                                      bl #0x80a244
0046070c  00 10 a0 e1                                      mov r1, r0
00460710  50 80 80 e5                                      str r8, [r0, #0x50]
00460714  54 70 80 e5                                      str r7, [r0, #0x54]
00460718  58 90 80 e5                                      str sb, [r0, #0x58]
0046071c  0b 00 a0 e1                                      mov r0, fp
00460720  df b6 0e eb                                      bl #0x80e2a4
00460724  04 30 9d e5                                      ldr r3, [sp, #4]
00460728  14 70 8d e2                                      add r7, sp, #0x14
0046072c  03 80 94 e7                                      ldr r8, [r4, r3]
00460730  08 00 a0 e1                                      mov r0, r8
00460734  53 5c fb eb                                      bl #0x337888
00460738  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0046073c  0c 20 8d e2                                      add r2, sp, #0xc
00460740  07 00 a0 e1                                      mov r0, r7
00460744  01 10 8f e0                                      add r1, pc, r1
00460748  67 ce fa eb                                      bl #0x3140ec
0046074c  07 10 a0 e1                                      mov r1, r7
00460750  08 00 a0 e1                                      mov r0, r8
00460754  cb 5c fb eb                                      bl #0x337a88
00460758  07 00 a0 e1                                      mov r0, r7
0046075c  bc de fa eb                                      bl #0x318254
00460760  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00460764  00 30 a0 e3                                      mov r3, #0
00460768  0a 20 82 e0                                      add r2, r2, sl
0046076c  04 30 82 e5                                      str r3, [r2, #4]
00460770  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00460774  0a 20 82 e0                                      add r2, r2, sl
00460778  08 30 82 e5                                      str r3, [r2, #8]
0046077c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00460780  0a 90 83 e7                                      str sb, [r3, sl]
00460784  04 30 95 e5                                      ldr r3, [r5, #4]
00460788  01 30 83 e2                                      add r3, r3, #1
0046078c  04 30 85 e5                                      str r3, [r5, #4]
00460790  a2 ff ff ea                                      b #0x460620
00460794  00 30 95 e5                                      ldr r3, [r5]
00460798  01 00 73 e3                                      cmn r3, #1
0046079c  c7 ff ff 1a                                      bne #0x4606c0
004607a0  05 00 a0 e1                                      mov r0, r5
004607a4  07 10 a0 e1                                      mov r1, r7
004607a8  00 20 a0 e3                                      mov r2, #0
004607ac  43 ff ff eb                                      bl #0x4604c0
004607b0  c2 ff ff ea                                      b #0x4606c0
004607b4  05 00 a0 e1                                      mov r0, r5
004607b8  07 10 a0 e1                                      mov r1, r7
004607bc  0a d5 ff eb                                      bl #0x455bec
004607c0  00 00 50 e3                                      cmp r0, #0
004607c4  95 ff ff 1a                                      bne #0x460620
004607c8  0c a0 a0 e3                                      mov sl, #0xc
004607cc  9a 07 0a e0                                      mul sl, sl, r7
004607d0  d3 ff ff ea                                      b #0x460724
004607d4  cd b6 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004607d8  c0 44 53 00 ac 40 00 00 f4 37 00 00 84 08 00 00  .byte 0xc0, 0x44, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
004607e8  40 ca 46 00 bc e7 45 00 3c c9 46 00              .byte 0x40, 0xca, 0x46, 0x00, 0xbc, 0xe7, 0x45, 0x00, 0x3c, 0xc9, 0x46, 0x00
