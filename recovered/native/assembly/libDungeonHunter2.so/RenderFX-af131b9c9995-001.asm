; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a7c34, declared_size=56, range_size=56, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX12SetWireFrameEb
; demangled: RenderFX::SetWireFrame(bool)
; decoder-mode: arm
007a7c34  28 30 9f e5                                      ldr r3, [pc, #0x28]
007a7c38  28 20 9f e5                                      ldr r2, [pc, #0x28]
007a7c3c  10 40 2d e9                                      push {r4, lr}
007a7c40  03 30 8f e0                                      add r3, pc, r3
007a7c44  02 20 93 e7                                      ldr r2, [r3, r2]
007a7c48  00 10 a0 e1                                      mov r1, r0
007a7c4c  00 30 92 e5                                      ldr r3, [r2]
007a7c50  03 00 a0 e1                                      mov r0, r3
007a7c54  00 30 93 e5                                      ldr r3, [r3]
007a7c58  0f e0 a0 e1                                      mov lr, pc
007a7c5c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
007a7c60  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a7c64  50 ce 1e 00 b4 39 00 00                          .byte 0x50, 0xce, 0x1e, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x007a7c6c, declared_size=8, range_size=8, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX16SetEventListenerEPNS_13EventListenerE
; demangled: RenderFX::SetEventListener(RenderFX::EventListener*)
; decoder-mode: arm
007a7c6c  fc 10 80 e5                                      str r1, [r0, #0xfc]
007a7c70  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a7c74, declared_size=20, range_size=20, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX13GetControllerEi
; demangled: RenderFX::GetController(int)
; decoder-mode: arm
007a7c74  28 30 a0 e3                                      mov r3, #0x28
007a7c78  93 01 03 e0                                      mul r3, r3, r1
007a7c7c  58 30 83 e2                                      add r3, r3, #0x58
007a7c80  03 00 80 e0                                      add r0, r0, r3
007a7c84  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a7c88, declared_size=16, range_size=16, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX20SetControllerEnabledEib
; demangled: RenderFX::SetControllerEnabled(int, bool)
; decoder-mode: arm
007a7c88  28 30 a0 e3                                      mov r3, #0x28
007a7c8c  93 01 23 e0                                      mla r3, r3, r1, r0
007a7c90  7c 20 c3 e5                                      strb r2, [r3, #0x7c]
007a7c94  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a7c98, declared_size=8, range_size=8, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX16SetInputBehaviorEi
; demangled: RenderFX::SetInputBehavior(int)
; decoder-mode: arm
007a7c98  f8 10 80 e5                                      str r1, [r0, #0xf8]
007a7c9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a7ca0, declared_size=12, range_size=12, mode=arm
; class-group: RenderFX
; alias: _ZNK8RenderFX12GetFlashRootEv
; demangled: RenderFX::GetFlashRoot() const
; decoder-mode: arm
007a7ca0  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
007a7ca4  10 00 93 e5                                      ldr r0, [r3, #0x10]
007a7ca8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a7cac, declared_size=8, range_size=8, mode=arm
; class-group: RenderFX
; alias: _ZNK8RenderFX7GetRootEv
; demangled: RenderFX::GetRoot() const
; decoder-mode: arm
007a7cac  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
007a7cb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a7cb4, declared_size=12, range_size=12, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX23SetTextBufferingEnabledEb
; demangled: RenderFX::SetTextBufferingEnabled(bool)
; decoder-mode: arm
007a7cb4  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
007a7cb8  85 10 c3 e5                                      strb r1, [r3, #0x85]
007a7cbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a7cc0, declared_size=12, range_size=12, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX24SetAutoLoadGlyphsEnabledEb
; demangled: RenderFX::SetAutoLoadGlyphsEnabled(bool)
; decoder-mode: arm
007a7cc0  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
007a7cc4  87 10 c3 e5                                      strb r1, [r3, #0x87]
007a7cc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a7ccc, declared_size=12, range_size=12, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX23SetRenderCachingEnabledEb
; demangled: RenderFX::SetRenderCachingEnabled(bool)
; decoder-mode: arm
007a7ccc  38 30 90 e5                                      ldr r3, [r0, #0x38]
007a7cd0  98 10 c3 e5                                      strb r1, [r3, #0x98]
007a7cd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a7cd8, declared_size=20, range_size=20, mode=arm
; class-group: RenderFX
; alias: _ZNK8RenderFX8GetAlphaEPN7gameswf9characterE
; demangled: RenderFX::GetAlpha(gameswf::character*) const
; decoder-mode: arm
007a7cd8  00 00 51 e3                                      cmp r1, #0
007a7cdc  48 30 91 15                                      ldrne r3, [r1, #0x48]
007a7ce0  00 00 a0 03                                      moveq r0, #0
007a7ce4  18 00 93 15                                      ldrne r0, [r3, #0x18]
007a7ce8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a7cec, declared_size=72, range_size=72, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX7GetTextEPN7gameswf9characterE
; demangled: RenderFX::GetText(gameswf::character*)
; decoder-mode: arm
007a7cec  10 40 2d e9                                      push {r4, lr}
007a7cf0  00 40 51 e2                                      subs r4, r1, #0
007a7cf4  0c 00 00 0a                                      beq #0x7a7d2c
007a7cf8  00 30 94 e5                                      ldr r3, [r4]
007a7cfc  04 00 a0 e1                                      mov r0, r4
007a7d00  20 10 a0 e3                                      mov r1, #0x20
007a7d04  0f e0 a0 e1                                      mov lr, pc
007a7d08  08 f0 93 e5                                      ldr pc, [r3, #8]
007a7d0c  00 00 50 e3                                      cmp r0, #0
007a7d10  05 00 00 0a                                      beq #0x7a7d2c
007a7d14  38 31 d4 e5                                      ldrb r3, [r4, #0x138]
007a7d18  ff 00 53 e3                                      cmp r3, #0xff
007a7d1c  4e 0f 84 12                                      addne r0, r4, #0x138
007a7d20  01 00 80 12                                      addne r0, r0, #1
007a7d24  44 01 94 05                                      ldreq r0, [r4, #0x144]
007a7d28  10 80 bd e8                                      pop {r4, pc}
007a7d2c  00 00 a0 e3                                      mov r0, #0
007a7d30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a7d34, declared_size=92, range_size=92, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX9GotoFrameEPN7gameswf9characterEib
; demangled: RenderFX::GotoFrame(gameswf::character*, int, bool)
; decoder-mode: arm
007a7d34  70 40 2d e9                                      push {r4, r5, r6, lr}
007a7d38  00 40 51 e2                                      subs r4, r1, #0
007a7d3c  02 50 a0 e1                                      mov r5, r2
007a7d40  03 60 a0 e1                                      mov r6, r3
007a7d44  10 00 00 0a                                      beq #0x7a7d8c
007a7d48  00 20 94 e5                                      ldr r2, [r4]
007a7d4c  04 00 a0 e1                                      mov r0, r4
007a7d50  02 10 a0 e3                                      mov r1, #2
007a7d54  0f e0 a0 e1                                      mov lr, pc
007a7d58  08 f0 92 e5                                      ldr pc, [r2, #8]
007a7d5c  00 00 50 e3                                      cmp r0, #0
007a7d60  09 00 00 0a                                      beq #0x7a7d8c
007a7d64  05 10 a0 e1                                      mov r1, r5
007a7d68  00 30 94 e5                                      ldr r3, [r4]
007a7d6c  04 00 a0 e1                                      mov r0, r4
007a7d70  0f e0 a0 e1                                      mov lr, pc
007a7d74  4c f1 93 e5                                      ldr pc, [r3, #0x14c]
007a7d78  04 00 a0 e1                                      mov r0, r4
007a7d7c  01 10 26 e2                                      eor r1, r6, #1
007a7d80  00 30 94 e5                                      ldr r3, [r4]
007a7d84  0f e0 a0 e1                                      mov lr, pc
007a7d88  94 f0 93 e5                                      ldr pc, [r3, #0x94]
007a7d8c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007a7d90, declared_size=68, range_size=68, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX13GetFrameCountEPN7gameswf9characterE
; demangled: RenderFX::GetFrameCount(gameswf::character*)
; decoder-mode: arm
007a7d90  10 40 2d e9                                      push {r4, lr}
007a7d94  00 40 51 e2                                      subs r4, r1, #0
007a7d98  0b 00 00 0a                                      beq #0x7a7dcc
007a7d9c  00 30 94 e5                                      ldr r3, [r4]
007a7da0  04 00 a0 e1                                      mov r0, r4
007a7da4  02 10 a0 e3                                      mov r1, #2
007a7da8  0f e0 a0 e1                                      mov lr, pc
007a7dac  08 f0 93 e5                                      ldr pc, [r3, #8]
007a7db0  00 00 50 e3                                      cmp r0, #0
007a7db4  04 00 00 0a                                      beq #0x7a7dcc
007a7db8  04 00 a0 e1                                      mov r0, r4
007a7dbc  00 30 94 e5                                      ldr r3, [r4]
007a7dc0  0f e0 a0 e1                                      mov lr, pc
007a7dc4  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
007a7dc8  10 80 bd e8                                      pop {r4, pc}
007a7dcc  00 00 a0 e3                                      mov r0, #0
007a7dd0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a7dd4, declared_size=136, range_size=136, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10IsAnimOverEPN7gameswf9characterE
; demangled: RenderFX::IsAnimOver(gameswf::character*)
; decoder-mode: arm
007a7dd4  70 40 2d e9                                      push {r4, r5, r6, lr}
007a7dd8  00 40 51 e2                                      subs r4, r1, #0
007a7ddc  1c 00 00 0a                                      beq #0x7a7e54
007a7de0  00 30 94 e5                                      ldr r3, [r4]
007a7de4  04 00 a0 e1                                      mov r0, r4
007a7de8  02 10 a0 e3                                      mov r1, #2
007a7dec  0f e0 a0 e1                                      mov lr, pc
007a7df0  08 f0 93 e5                                      ldr pc, [r3, #8]
007a7df4  00 00 50 e3                                      cmp r0, #0
007a7df8  15 00 00 0a                                      beq #0x7a7e54
007a7dfc  00 30 94 e5                                      ldr r3, [r4]
007a7e00  04 00 a0 e1                                      mov r0, r4
007a7e04  0f e0 a0 e1                                      mov lr, pc
007a7e08  38 f1 93 e5                                      ldr pc, [r3, #0x138]
007a7e0c  00 30 94 e5                                      ldr r3, [r4]
007a7e10  04 00 a0 e1                                      mov r0, r4
007a7e14  0f e0 a0 e1                                      mov lr, pc
007a7e18  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
007a7e1c  00 30 94 e5                                      ldr r3, [r4]
007a7e20  04 00 a0 e1                                      mov r0, r4
007a7e24  0f e0 a0 e1                                      mov lr, pc
007a7e28  38 f1 93 e5                                      ldr pc, [r3, #0x138]
007a7e2c  00 30 94 e5                                      ldr r3, [r4]
007a7e30  00 50 a0 e1                                      mov r5, r0
007a7e34  04 00 a0 e1                                      mov r0, r4
007a7e38  0f e0 a0 e1                                      mov lr, pc
007a7e3c  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
007a7e40  01 00 40 e2                                      sub r0, r0, #1
007a7e44  00 00 55 e1                                      cmp r5, r0
007a7e48  00 00 a0 b3                                      movlt r0, #0
007a7e4c  01 00 a0 a3                                      movge r0, #1
007a7e50  70 80 bd e8                                      pop {r4, r5, r6, pc}
007a7e54  00 00 a0 e3                                      mov r0, #0
007a7e58  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007a7e5c, declared_size=36, range_size=36, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX9FSCommandEPKcS1_
; demangled: RenderFX::FSCommand(char const*, char const*)
; decoder-mode: arm
007a7e5c  10 40 2d e9                                      push {r4, lr}
007a7e60  fc 30 90 e5                                      ldr r3, [r0, #0xfc]
007a7e64  00 00 53 e3                                      cmp r3, #0
007a7e68  03 00 00 0a                                      beq #0x7a7e7c
007a7e6c  03 00 a0 e1                                      mov r0, r3
007a7e70  00 30 93 e5                                      ldr r3, [r3]
007a7e74  0f e0 a0 e1                                      mov lr, pc
007a7e78  04 f0 93 e5                                      ldr pc, [r3, #4]
007a7e7c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a7e80, declared_size=52, range_size=52, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX23RegisterDisplayCallbackEPN7gameswf9characterEPFvRNS0_12render_stateEPvES5_
; demangled: RenderFX::RegisterDisplayCallback(gameswf::character*, void (*)(gameswf::render_state&, void*), void*)
; decoder-mode: arm
007a7e80  00 c0 51 e2                                      subs ip, r1, #0
007a7e84  10 40 2d e9                                      push {r4, lr}
007a7e88  07 00 00 0a                                      beq #0x7a7eac
007a7e8c  0c 00 a0 e1                                      mov r0, ip
007a7e90  02 10 a0 e1                                      mov r1, r2
007a7e94  03 20 a0 e1                                      mov r2, r3
007a7e98  00 30 9c e5                                      ldr r3, [ip]
007a7e9c  0f e0 a0 e1                                      mov lr, pc
007a7ea0  54 f1 93 e5                                      ldr pc, [r3, #0x154]
007a7ea4  01 00 a0 e3                                      mov r0, #1
007a7ea8  10 80 bd e8                                      pop {r4, pc}
007a7eac  0c 00 a0 e1                                      mov r0, ip
007a7eb0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a7eb4, declared_size=52, range_size=52, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX14SetOrientationEN7gameswf16orientation_modeE
; demangled: RenderFX::SetOrientation(gameswf::orientation_mode)
; decoder-mode: arm
007a7eb4  24 30 9f e5                                      ldr r3, [pc, #0x24]
007a7eb8  24 20 9f e5                                      ldr r2, [pc, #0x24]
007a7ebc  10 40 2d e9                                      push {r4, lr}
007a7ec0  03 30 8f e0                                      add r3, pc, r3
007a7ec4  02 20 93 e7                                      ldr r2, [r3, r2]
007a7ec8  00 30 92 e5                                      ldr r3, [r2]
007a7ecc  03 00 a0 e1                                      mov r0, r3
007a7ed0  00 30 93 e5                                      ldr r3, [r3]
007a7ed4  0f e0 a0 e1                                      mov lr, pc
007a7ed8  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
007a7edc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a7ee0  d0 cb 1e 00 b4 39 00 00                          .byte 0xd0, 0xcb, 0x1e, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x007a7ee8, declared_size=8, range_size=8, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10SetContextEPN7gameswf9characterE
; demangled: RenderFX::SetContext(gameswf::character*)
; decoder-mode: arm
007a7ee8  40 10 80 e5                                      str r1, [r0, #0x40]
007a7eec  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a7ef0, declared_size=8, range_size=8, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10GetContextEv
; demangled: RenderFX::GetContext()
; decoder-mode: arm
007a7ef0  40 00 90 e5                                      ldr r0, [r0, #0x40]
007a7ef4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a7fe4, declared_size=12, range_size=12, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX14DestroyContextEPN7gameswf14player_contextE
; demangled: RenderFX::DestroyContext(gameswf::player_context*)
; decoder-mode: arm
007a7fe4  00 00 50 e3                                      cmp r0, #0
007a7fe8  1e ff 2f 01                                      bxeq lr
007a7fec  f1 ff ff ea                                      b #0x7a7fb8

; FUNCTION 0x007a850c, declared_size=236, range_size=236, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFXC1Ev
; demangled: RenderFX::RenderFX()
; decoder-mode: arm
007a850c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007a8510  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
007a8514  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
007a8518  54 20 90 e5                                      ldr r2, [r0, #0x54]
007a851c  03 30 8f e0                                      add r3, pc, r3
007a8520  00 50 a0 e1                                      mov r5, r0
007a8524  01 10 93 e7                                      ldr r1, [r3, r1]
007a8528  00 00 e0 e3                                      mvn r0, #0
007a852c  10 20 d7 e7                                      bfi r2, r0, #0, #0x18
007a8530  00 60 a0 e3                                      mov r6, #0
007a8534  22 0c a0 e1                                      lsr r0, r2, #0x18
007a8538  08 10 81 e2                                      add r1, r1, #8
007a853c  16 00 c0 e7                                      bfi r0, r6, #0, #1
007a8540  01 a0 a0 e3                                      mov sl, #1
007a8544  54 20 85 e5                                      str r2, [r5, #0x54]
007a8548  00 70 a0 e3                                      mov r7, #0
007a854c  00 10 85 e5                                      str r1, [r5]
007a8550  57 00 c5 e5                                      strb r0, [r5, #0x57]
007a8554  04 60 85 e5                                      str r6, [r5, #4]
007a8558  08 60 85 e5                                      str r6, [r5, #8]
007a855c  0c 60 85 e5                                      str r6, [r5, #0xc]
007a8560  10 60 c5 e5                                      strb r6, [r5, #0x10]
007a8564  14 60 85 e5                                      str r6, [r5, #0x14]
007a8568  18 60 85 e5                                      str r6, [r5, #0x18]
007a856c  1c 60 85 e5                                      str r6, [r5, #0x1c]
007a8570  20 60 85 e5                                      str r6, [r5, #0x20]
007a8574  24 60 c5 e5                                      strb r6, [r5, #0x24]
007a8578  28 60 85 e5                                      str r6, [r5, #0x28]
007a857c  2c 60 85 e5                                      str r6, [r5, #0x2c]
007a8580  30 60 85 e5                                      str r6, [r5, #0x30]
007a8584  34 60 c5 e5                                      strb r6, [r5, #0x34]
007a8588  38 60 85 e5                                      str r6, [r5, #0x38]
007a858c  3c 60 85 e5                                      str r6, [r5, #0x3c]
007a8590  40 60 85 e5                                      str r6, [r5, #0x40]
007a8594  44 a0 c5 e5                                      strb sl, [r5, #0x44]
007a8598  45 60 c5 e5                                      strb r6, [r5, #0x45]
007a859c  58 40 85 e2                                      add r4, r5, #0x58
007a85a0  f8 80 85 e2                                      add r8, r5, #0xf8
007a85a4  04 70 84 e5                                      str r7, [r4, #4]
007a85a8  00 70 84 e5                                      str r7, [r4]
007a85ac  08 70 84 e5                                      str r7, [r4, #8]
007a85b0  0c 60 84 e5                                      str r6, [r4, #0xc]
007a85b4  10 60 84 e5                                      str r6, [r4, #0x10]
007a85b8  14 60 84 e5                                      str r6, [r4, #0x14]
007a85bc  18 60 84 e5                                      str r6, [r4, #0x18]
007a85c0  1c 60 84 e5                                      str r6, [r4, #0x1c]
007a85c4  20 60 84 e5                                      str r6, [r4, #0x20]
007a85c8  24 a0 c4 e5                                      strb sl, [r4, #0x24]
007a85cc  04 00 a0 e1                                      mov r0, r4
007a85d0  28 40 84 e2                                      add r4, r4, #0x28
007a85d4  ba ff ff eb                                      bl #0x7a84c4
007a85d8  08 00 54 e1                                      cmp r4, r8
007a85dc  f0 ff ff 1a                                      bne #0x7a85a4
007a85e0  fc 60 85 e5                                      str r6, [r5, #0xfc]
007a85e4  f8 60 85 e5                                      str r6, [r5, #0xf8]
007a85e8  05 00 a0 e1                                      mov r0, r5
007a85ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
007a85f0  74 c5 1e 00 60 49 00 00                          .byte 0x74, 0xc5, 0x1e, 0x00, 0x60, 0x49, 0x00, 0x00

; FUNCTION 0x007a85f8, declared_size=236, range_size=236, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFXC2Ev
; demangled: RenderFX::RenderFX()
; decoder-mode: arm
007a85f8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007a85fc  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
007a8600  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
007a8604  54 20 90 e5                                      ldr r2, [r0, #0x54]
007a8608  03 30 8f e0                                      add r3, pc, r3
007a860c  00 50 a0 e1                                      mov r5, r0
007a8610  01 10 93 e7                                      ldr r1, [r3, r1]
007a8614  00 00 e0 e3                                      mvn r0, #0
007a8618  10 20 d7 e7                                      bfi r2, r0, #0, #0x18
007a861c  00 60 a0 e3                                      mov r6, #0
007a8620  22 0c a0 e1                                      lsr r0, r2, #0x18
007a8624  08 10 81 e2                                      add r1, r1, #8
007a8628  16 00 c0 e7                                      bfi r0, r6, #0, #1
007a862c  01 a0 a0 e3                                      mov sl, #1
007a8630  54 20 85 e5                                      str r2, [r5, #0x54]
007a8634  00 70 a0 e3                                      mov r7, #0
007a8638  00 10 85 e5                                      str r1, [r5]
007a863c  57 00 c5 e5                                      strb r0, [r5, #0x57]
007a8640  04 60 85 e5                                      str r6, [r5, #4]
007a8644  08 60 85 e5                                      str r6, [r5, #8]
007a8648  0c 60 85 e5                                      str r6, [r5, #0xc]
007a864c  10 60 c5 e5                                      strb r6, [r5, #0x10]
007a8650  14 60 85 e5                                      str r6, [r5, #0x14]
007a8654  18 60 85 e5                                      str r6, [r5, #0x18]
007a8658  1c 60 85 e5                                      str r6, [r5, #0x1c]
007a865c  20 60 85 e5                                      str r6, [r5, #0x20]
007a8660  24 60 c5 e5                                      strb r6, [r5, #0x24]
007a8664  28 60 85 e5                                      str r6, [r5, #0x28]
007a8668  2c 60 85 e5                                      str r6, [r5, #0x2c]
007a866c  30 60 85 e5                                      str r6, [r5, #0x30]
007a8670  34 60 c5 e5                                      strb r6, [r5, #0x34]
007a8674  38 60 85 e5                                      str r6, [r5, #0x38]
007a8678  3c 60 85 e5                                      str r6, [r5, #0x3c]
007a867c  40 60 85 e5                                      str r6, [r5, #0x40]
007a8680  44 a0 c5 e5                                      strb sl, [r5, #0x44]
007a8684  45 60 c5 e5                                      strb r6, [r5, #0x45]
007a8688  58 40 85 e2                                      add r4, r5, #0x58
007a868c  f8 80 85 e2                                      add r8, r5, #0xf8
007a8690  04 70 84 e5                                      str r7, [r4, #4]
007a8694  00 70 84 e5                                      str r7, [r4]
007a8698  08 70 84 e5                                      str r7, [r4, #8]
007a869c  0c 60 84 e5                                      str r6, [r4, #0xc]
007a86a0  10 60 84 e5                                      str r6, [r4, #0x10]
007a86a4  14 60 84 e5                                      str r6, [r4, #0x14]
007a86a8  18 60 84 e5                                      str r6, [r4, #0x18]
007a86ac  1c 60 84 e5                                      str r6, [r4, #0x1c]
007a86b0  20 60 84 e5                                      str r6, [r4, #0x20]
007a86b4  24 a0 c4 e5                                      strb sl, [r4, #0x24]
007a86b8  04 00 a0 e1                                      mov r0, r4
007a86bc  28 40 84 e2                                      add r4, r4, #0x28
007a86c0  7f ff ff eb                                      bl #0x7a84c4
007a86c4  08 00 54 e1                                      cmp r4, r8
007a86c8  f0 ff ff 1a                                      bne #0x7a8690
007a86cc  fc 60 85 e5                                      str r6, [r5, #0xfc]
007a86d0  f8 60 85 e5                                      str r6, [r5, #0xf8]
007a86d4  05 00 a0 e1                                      mov r0, r5
007a86d8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
007a86dc  88 c4 1e 00 60 49 00 00                          .byte 0x88, 0xc4, 0x1e, 0x00, 0x60, 0x49, 0x00, 0x00

; FUNCTION 0x007a87fc, declared_size=648, range_size=648, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX11DepthSearchEi
; demangled: RenderFX::DepthSearch(int)
; decoder-mode: arm
007a87fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007a8800  00 40 a0 e1                                      mov r4, r0
007a8804  24 d0 4d e2                                      sub sp, sp, #0x24
007a8808  18 20 90 e5                                      ldr r2, [r0, #0x18]
007a880c  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
007a8810  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
007a8814  01 00 81 e2                                      add r0, r1, #1
007a8818  10 00 8d e5                                      str r0, [sp, #0x10]
007a881c  01 11 a0 e1                                      lsl r1, r1, #2
007a8820  14 10 8d e5                                      str r1, [sp, #0x14]
007a8824  10 10 9d e5                                      ldr r1, [sp, #0x10]
007a8828  18 00 84 e2                                      add r0, r4, #0x18
007a882c  1c 00 8d e5                                      str r0, [sp, #0x1c]
007a8830  01 11 a0 e1                                      lsl r1, r1, #2
007a8834  28 00 84 e2                                      add r0, r4, #0x28
007a8838  04 00 8d e5                                      str r0, [sp, #4]
007a883c  18 10 8d e5                                      str r1, [sp, #0x18]
007a8840  10 00 9d e5                                      ldr r0, [sp, #0x10]
007a8844  14 10 9d e5                                      ldr r1, [sp, #0x14]
007a8848  01 50 83 e2                                      add r5, r3, #1
007a884c  03 00 50 e1                                      cmp r0, r3
007a8850  18 00 9d b5                                      ldrlt r0, [sp, #0x18]
007a8854  01 70 92 e7                                      ldr r7, [r2, r1]
007a8858  0c 60 8d a5                                      strge r6, [sp, #0xc]
007a885c  00 00 92 b7                                      ldrlt r0, [r2, r0]
007a8860  0c 00 8d b5                                      strlt r0, [sp, #0xc]
007a8864  20 10 94 e5                                      ldr r1, [r4, #0x20]
007a8868  01 00 55 e1                                      cmp r5, r1
007a886c  7e 00 00 ca                                      bgt #0x7a8a6c
007a8870  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007a8874  03 61 82 e7                                      str r6, [r2, r3, lsl #2]
007a8878  1c 50 84 e5                                      str r5, [r4, #0x1c]
007a887c  07 00 51 e1                                      cmp r1, r7
007a8880  68 00 00 da                                      ble #0x7a8a28
007a8884  28 50 94 e5                                      ldr r5, [r4, #0x28]
007a8888  87 51 85 e0                                      add r5, r5, r7, lsl #3
007a888c  04 60 95 e5                                      ldr r6, [r5, #4]
007a8890  00 00 56 e3                                      cmp r6, #0
007a8894  59 00 00 0a                                      beq #0x7a8a00
007a8898  01 20 87 e2                                      add r2, r7, #1
007a889c  00 30 a0 e3                                      mov r3, #0
007a88a0  82 21 a0 e1                                      lsl r2, r2, #3
007a88a4  00 20 8d e5                                      str r2, [sp]
007a88a8  08 30 8d e5                                      str r3, [sp, #8]
007a88ac  03 00 56 e1                                      cmp r6, r3
007a88b0  08 b0 9d 05                                      ldreq fp, [sp, #8]
007a88b4  05 00 00 0a                                      beq #0x7a88d0
007a88b8  06 00 a0 e1                                      mov r0, r6
007a88bc  2e 10 a0 e3                                      mov r1, #0x2e
007a88c0  d8 98 ed eb                                      bl #0x30ec28
007a88c4  00 b0 50 e2                                      subs fp, r0, #0
007a88c8  08 b0 8d 15                                      strne fp, [sp, #8]
007a88cc  4f 00 00 0a                                      beq #0x7a8a10
007a88d0  00 50 95 e5                                      ldr r5, [r5]
007a88d4  0b 20 66 e0                                      rsb r2, r6, fp
007a88d8  44 00 95 e5                                      ldr r0, [r5, #0x44]
007a88dc  d0 30 d0 e1                                      ldrsb r3, [r0]
007a88e0  01 00 73 e3                                      cmn r3, #1
007a88e4  04 10 90 05                                      ldreq r1, [r0, #4]
007a88e8  03 10 a0 11                                      movne r1, r3
007a88ec  01 10 41 e2                                      sub r1, r1, #1
007a88f0  01 00 52 e1                                      cmp r2, r1
007a88f4  22 00 00 0a                                      beq #0x7a8984
007a88f8  00 30 95 e5                                      ldr r3, [r5]
007a88fc  05 00 a0 e1                                      mov r0, r5
007a8900  02 10 a0 e3                                      mov r1, #2
007a8904  0f e0 a0 e1                                      mov lr, pc
007a8908  08 f0 93 e5                                      ldr pc, [r3, #8]
007a890c  00 00 50 e3                                      cmp r0, #0
007a8910  06 b0 a0 e1                                      mov fp, r6
007a8914  2c 00 00 0a                                      beq #0x7a89cc
007a8918  ac 30 95 e5                                      ldr r3, [r5, #0xac]
007a891c  00 00 53 e3                                      cmp r3, #0
007a8920  29 00 00 da                                      ble #0x7a89cc
007a8924  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
007a8928  00 a0 a0 e3                                      mov sl, #0
007a892c  08 00 00 ea                                      b #0x7a8954
007a8930  28 20 94 e5                                      ldr r2, [r4, #0x28]
007a8934  83 11 82 e0                                      add r1, r2, r3, lsl #3
007a8938  04 b0 81 e5                                      str fp, [r1, #4]
007a893c  83 91 82 e7                                      str sb, [r2, r3, lsl #3]
007a8940  2c 80 84 e5                                      str r8, [r4, #0x2c]
007a8944  ac 20 95 e5                                      ldr r2, [r5, #0xac]
007a8948  08 30 a0 e1                                      mov r3, r8
007a894c  02 00 5a e1                                      cmp sl, r2
007a8950  1d 00 00 aa                                      bge #0x7a89cc
007a8954  30 10 94 e5                                      ldr r1, [r4, #0x30]
007a8958  a8 20 95 e5                                      ldr r2, [r5, #0xa8]
007a895c  01 80 83 e2                                      add r8, r3, #1
007a8960  01 00 58 e1                                      cmp r8, r1
007a8964  0a 91 92 e7                                      ldr sb, [r2, sl, lsl #2]
007a8968  01 a0 8a e2                                      add sl, sl, #1
007a896c  ef ff ff da                                      ble #0x7a8930
007a8970  04 00 9d e5                                      ldr r0, [sp, #4]
007a8974  c8 10 88 e0                                      add r1, r8, r8, asr #1
007a8978  a7 fd ff eb                                      bl #0x7a801c
007a897c  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
007a8980  ea ff ff ea                                      b #0x7a8930
007a8984  01 00 73 e3                                      cmn r3, #1
007a8988  01 00 80 12                                      addne r0, r0, #1
007a898c  0c 00 90 05                                      ldreq r0, [r0, #0xc]
007a8990  06 10 a0 e1                                      mov r1, r6
007a8994  b8 98 ed eb                                      bl #0x30ec7c
007a8998  00 00 50 e3                                      cmp r0, #0
007a899c  d5 ff ff 1a                                      bne #0x7a88f8
007a89a0  d0 30 db e1                                      ldrsb r3, [fp]
007a89a4  00 00 53 e3                                      cmp r3, #0
007a89a8  15 00 00 0a                                      beq #0x7a8a04
007a89ac  00 30 95 e5                                      ldr r3, [r5]
007a89b0  05 00 a0 e1                                      mov r0, r5
007a89b4  02 10 a0 e3                                      mov r1, #2
007a89b8  0f e0 a0 e1                                      mov lr, pc
007a89bc  08 f0 93 e5                                      ldr pc, [r3, #8]
007a89c0  00 00 50 e3                                      cmp r0, #0
007a89c4  01 b0 8b e2                                      add fp, fp, #1
007a89c8  d2 ff ff 1a                                      bne #0x7a8918
007a89cc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007a89d0  01 70 87 e2                                      add r7, r7, #1
007a89d4  03 00 57 e1                                      cmp r7, r3
007a89d8  12 00 00 0a                                      beq #0x7a8a28
007a89dc  00 20 9d e5                                      ldr r2, [sp]
007a89e0  28 50 94 e5                                      ldr r5, [r4, #0x28]
007a89e4  06 30 a0 e1                                      mov r3, r6
007a89e8  02 50 85 e0                                      add r5, r5, r2
007a89ec  04 60 95 e5                                      ldr r6, [r5, #4]
007a89f0  08 20 82 e2                                      add r2, r2, #8
007a89f4  00 20 8d e5                                      str r2, [sp]
007a89f8  00 00 56 e3                                      cmp r6, #0
007a89fc  aa ff ff 1a                                      bne #0x7a88ac
007a8a00  00 50 a0 e3                                      mov r5, #0
007a8a04  05 00 a0 e1                                      mov r0, r5
007a8a08  24 d0 8d e2                                      add sp, sp, #0x24
007a8a0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007a8a10  06 00 a0 e1                                      mov r0, r6
007a8a14  0e 95 ed eb                                      bl #0x30de54
007a8a18  00 00 86 e0                                      add r0, r6, r0
007a8a1c  08 00 8d e5                                      str r0, [sp, #8]
007a8a20  00 b0 a0 e1                                      mov fp, r0
007a8a24  a9 ff ff ea                                      b #0x7a88d0
007a8a28  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007a8a2c  14 00 9d e5                                      ldr r0, [sp, #0x14]
007a8a30  18 20 94 e5                                      ldr r2, [r4, #0x18]
007a8a34  01 10 43 e2                                      sub r1, r3, #1
007a8a38  04 00 80 e2                                      add r0, r0, #4
007a8a3c  2c 60 94 e5                                      ldr r6, [r4, #0x2c]
007a8a40  01 11 92 e7                                      ldr r1, [r2, r1, lsl #2]
007a8a44  14 00 8d e5                                      str r0, [sp, #0x14]
007a8a48  18 00 9d e5                                      ldr r0, [sp, #0x18]
007a8a4c  06 00 51 e1                                      cmp r1, r6
007a8a50  04 00 80 e2                                      add r0, r0, #4
007a8a54  18 00 8d e5                                      str r0, [sp, #0x18]
007a8a58  e8 ff ff 0a                                      beq #0x7a8a00
007a8a5c  10 10 9d e5                                      ldr r1, [sp, #0x10]
007a8a60  01 10 81 e2                                      add r1, r1, #1
007a8a64  10 10 8d e5                                      str r1, [sp, #0x10]
007a8a68  74 ff ff ea                                      b #0x7a8840
007a8a6c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007a8a70  c5 10 85 e0                                      add r1, r5, r5, asr #1
007a8a74  51 ee fe eb                                      bl #0x7643c0
007a8a78  18 20 94 e5                                      ldr r2, [r4, #0x18]
007a8a7c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007a8a80  7a ff ff ea                                      b #0x7a8870

; FUNCTION 0x007a8a84, declared_size=72, range_size=72, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX4FindEPKcPN7gameswf9characterE
; demangled: RenderFX::Find(char const*, gameswf::character*)
; decoder-mode: arm
007a8a84  00 00 51 e3                                      cmp r1, #0
007a8a88  00 00 52 13                                      cmpne r2, #0
007a8a8c  70 40 2d e9                                      push {r4, r5, r6, lr}
007a8a90  01 30 a0 e1                                      mov r3, r1
007a8a94  00 50 a0 13                                      movne r5, #0
007a8a98  01 50 a0 03                                      moveq r5, #1
007a8a9c  00 40 a0 e1                                      mov r4, r0
007a8aa0  01 00 00 1a                                      bne #0x7a8aac
007a8aa4  00 00 a0 e3                                      mov r0, #0
007a8aa8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007a8aac  02 10 a0 e1                                      mov r1, r2
007a8ab0  18 00 80 e2                                      add r0, r0, #0x18
007a8ab4  03 20 a0 e1                                      mov r2, r3
007a8ab8  76 fd ff eb                                      bl #0x7a8098
007a8abc  04 00 a0 e1                                      mov r0, r4
007a8ac0  05 10 a0 e1                                      mov r1, r5
007a8ac4  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a8ac8  4b ff ff ea                                      b #0x7a87fc

; FUNCTION 0x007a8acc, declared_size=316, range_size=316, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX17CollectCharactersEPN7gameswf9characterEPKci
; demangled: RenderFX::CollectCharacters(gameswf::character*, char const*, int)
; decoder-mode: arm
007a8acc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a8ad0  01 00 13 e3                                      tst r3, #1
007a8ad4  9b 40 d1 15                                      ldrbne r4, [r1, #0x9b]
007a8ad8  03 60 a0 e1                                      mov r6, r3
007a8adc  00 80 a0 e1                                      mov r8, r0
007a8ae0  00 30 91 e5                                      ldr r3, [r1]
007a8ae4  01 00 a0 e1                                      mov r0, r1
007a8ae8  01 50 a0 e1                                      mov r5, r1
007a8aec  02 10 a0 e3                                      mov r1, #2
007a8af0  01 40 a0 03                                      moveq r4, #1
007a8af4  02 70 a0 e1                                      mov r7, r2
007a8af8  0f e0 a0 e1                                      mov lr, pc
007a8afc  08 f0 93 e5                                      ldr pc, [r3, #8]
007a8b00  00 00 50 e3                                      cmp r0, #0
007a8b04  01 00 00 0a                                      beq #0x7a8b10
007a8b08  02 00 16 e3                                      tst r6, #2
007a8b0c  2c 00 00 1a                                      bne #0x7a8bc4
007a8b10  00 00 54 e3                                      cmp r4, #0
007a8b14  29 00 00 0a                                      beq #0x7a8bc0
007a8b18  00 00 57 e3                                      cmp r7, #0
007a8b1c  08 00 00 0a                                      beq #0x7a8b44
007a8b20  44 00 95 e5                                      ldr r0, [r5, #0x44]
007a8b24  07 10 a0 e1                                      mov r1, r7
007a8b28  d0 30 d0 e1                                      ldrsb r3, [r0]
007a8b2c  01 00 73 e3                                      cmn r3, #1
007a8b30  01 00 80 12                                      addne r0, r0, #1
007a8b34  0c 00 90 05                                      ldreq r0, [r0, #0xc]
007a8b38  25 98 ed eb                                      bl #0x30ebd4
007a8b3c  00 00 50 e3                                      cmp r0, #0
007a8b40  09 00 00 0a                                      beq #0x7a8b6c
007a8b44  04 00 16 e3                                      tst r6, #4
007a8b48  21 00 00 1a                                      bne #0x7a8bd4
007a8b4c  08 30 98 e5                                      ldr r3, [r8, #8]
007a8b50  0c 20 98 e5                                      ldr r2, [r8, #0xc]
007a8b54  01 40 83 e2                                      add r4, r3, #1
007a8b58  02 00 54 e1                                      cmp r4, r2
007a8b5c  24 00 00 ca                                      bgt #0x7a8bf4
007a8b60  04 20 98 e5                                      ldr r2, [r8, #4]
007a8b64  03 51 82 e7                                      str r5, [r2, r3, lsl #2]
007a8b68  08 40 88 e5                                      str r4, [r8, #8]
007a8b6c  00 30 95 e5                                      ldr r3, [r5]
007a8b70  05 00 a0 e1                                      mov r0, r5
007a8b74  02 10 a0 e3                                      mov r1, #2
007a8b78  0f e0 a0 e1                                      mov lr, pc
007a8b7c  08 f0 93 e5                                      ldr pc, [r3, #8]
007a8b80  00 00 50 e3                                      cmp r0, #0
007a8b84  0d 00 00 0a                                      beq #0x7a8bc0
007a8b88  ac 30 95 e5                                      ldr r3, [r5, #0xac]
007a8b8c  00 00 53 e3                                      cmp r3, #0
007a8b90  0a 00 00 da                                      ble #0x7a8bc0
007a8b94  00 40 a0 e3                                      mov r4, #0
007a8b98  a8 30 95 e5                                      ldr r3, [r5, #0xa8]
007a8b9c  08 00 a0 e1                                      mov r0, r8
007a8ba0  07 20 a0 e1                                      mov r2, r7
007a8ba4  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
007a8ba8  06 30 a0 e1                                      mov r3, r6
007a8bac  c6 ff ff eb                                      bl #0x7a8acc
007a8bb0  ac 30 95 e5                                      ldr r3, [r5, #0xac]
007a8bb4  01 40 84 e2                                      add r4, r4, #1
007a8bb8  03 00 54 e1                                      cmp r4, r3
007a8bbc  f5 ff ff ba                                      blt #0x7a8b98
007a8bc0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a8bc4  ea 30 d5 e5                                      ldrb r3, [r5, #0xea]
007a8bc8  00 00 53 e3                                      cmp r3, #0
007a8bcc  cf ff ff 1a                                      bne #0x7a8b10
007a8bd0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a8bd4  44 20 95 e5                                      ldr r2, [r5, #0x44]
007a8bd8  d0 30 d2 e1                                      ldrsb r3, [r2]
007a8bdc  01 00 73 e3                                      cmn r3, #1
007a8be0  04 30 92 05                                      ldreq r3, [r2, #4]
007a8be4  01 30 43 e2                                      sub r3, r3, #1
007a8be8  00 00 53 e3                                      cmp r3, #0
007a8bec  de ff ff 0a                                      beq #0x7a8b6c
007a8bf0  d5 ff ff ea                                      b #0x7a8b4c
007a8bf4  04 00 88 e2                                      add r0, r8, #4
007a8bf8  c4 10 84 e0                                      add r1, r4, r4, asr #1
007a8bfc  84 ac f1 eb                                      bl #0x413e14
007a8c00  08 30 98 e5                                      ldr r3, [r8, #8]
007a8c04  d5 ff ff ea                                      b #0x7a8b60

; FUNCTION 0x007a8c08, declared_size=100, range_size=100, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX14FindCharactersEPN7gameswf9characterEPKci
; demangled: RenderFX::FindCharacters(gameswf::character*, char const*, int)
; decoder-mode: arm
007a8c08  70 40 2d e9                                      push {r4, r5, r6, lr}
007a8c0c  00 40 a0 e1                                      mov r4, r0
007a8c10  08 00 90 e5                                      ldr r0, [r0, #8]
007a8c14  00 00 50 e3                                      cmp r0, #0
007a8c18  05 00 00 da                                      ble #0x7a8c34
007a8c1c  00 00 a0 e3                                      mov r0, #0
007a8c20  08 00 84 e5                                      str r0, [r4, #8]
007a8c24  04 00 a0 e1                                      mov r0, r4
007a8c28  a7 ff ff eb                                      bl #0x7a8acc
007a8c2c  04 00 84 e2                                      add r0, r4, #4
007a8c30  70 80 bd e8                                      pop {r4, r5, r6, pc}
007a8c34  f8 ff ff aa                                      bge #0x7a8c1c
007a8c38  00 c1 a0 e1                                      lsl ip, r0, #2
007a8c3c  00 50 a0 e3                                      mov r5, #0
007a8c40  04 e0 94 e5                                      ldr lr, [r4, #4]
007a8c44  01 00 90 e2                                      adds r0, r0, #1
007a8c48  0c 50 8e e7                                      str r5, [lr, ip]
007a8c4c  04 c0 8c e2                                      add ip, ip, #4
007a8c50  fa ff ff 1a                                      bne #0x7a8c40
007a8c54  00 00 a0 e3                                      mov r0, #0
007a8c58  08 00 84 e5                                      str r0, [r4, #8]
007a8c5c  04 00 a0 e1                                      mov r0, r4
007a8c60  99 ff ff eb                                      bl #0x7a8acc
007a8c64  04 00 84 e2                                      add r0, r4, #4
007a8c68  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007a8cdc, declared_size=152, range_size=152, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX14UnloadTexturesEPN7gameswf14player_contextE
; demangled: RenderFX::UnloadTextures(gameswf::player_context*)
; decoder-mode: arm
007a8cdc  88 30 9f e5                                      ldr r3, [pc, #0x88]
007a8ce0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a8ce4  00 70 50 e2                                      subs r7, r0, #0
007a8ce8  03 30 8f e0                                      add r3, pc, r3
007a8cec  1a 00 00 0a                                      beq #0x7a8d5c
007a8cf0  18 30 97 e5                                      ldr r3, [r7, #0x18]
007a8cf4  00 00 53 e3                                      cmp r3, #0
007a8cf8  16 00 00 da                                      ble #0x7a8d58
007a8cfc  00 60 a0 e3                                      mov r6, #0
007a8d00  14 30 97 e5                                      ldr r3, [r7, #0x14]
007a8d04  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
007a8d08  29 12 ff eb                                      bl #0x76d5b4
007a8d0c  0c 50 90 e5                                      ldr r5, [r0, #0xc]
007a8d10  a0 30 95 e5                                      ldr r3, [r5, #0xa0]
007a8d14  00 00 53 e3                                      cmp r3, #0
007a8d18  0a 00 00 da                                      ble #0x7a8d48
007a8d1c  00 40 a0 e3                                      mov r4, #0
007a8d20  9c 30 95 e5                                      ldr r3, [r5, #0x9c]
007a8d24  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
007a8d28  01 40 84 e2                                      add r4, r4, #1
007a8d2c  03 00 a0 e1                                      mov r0, r3
007a8d30  00 30 93 e5                                      ldr r3, [r3]
007a8d34  0f e0 a0 e1                                      mov lr, pc
007a8d38  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007a8d3c  a0 30 95 e5                                      ldr r3, [r5, #0xa0]
007a8d40  03 00 54 e1                                      cmp r4, r3
007a8d44  f5 ff ff ba                                      blt #0x7a8d20
007a8d48  18 30 97 e5                                      ldr r3, [r7, #0x18]
007a8d4c  01 60 86 e2                                      add r6, r6, #1
007a8d50  03 00 56 e1                                      cmp r6, r3
007a8d54  e9 ff ff ba                                      blt #0x7a8d00
007a8d58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a8d5c  0c 20 9f e5                                      ldr r2, [pc, #0xc]
007a8d60  02 30 93 e7                                      ldr r3, [r3, r2]
007a8d64  00 70 93 e5                                      ldr r7, [r3]
007a8d68  e0 ff ff ea                                      b #0x7a8cf0
; mapping-symbol data/literal pool
007a8d6c  a8 bd 1e 00 30 49 00 00                          .byte 0xa8, 0xbd, 0x1e, 0x00, 0x30, 0x49, 0x00, 0x00

; FUNCTION 0x007a8d74, declared_size=16, range_size=16, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX27InitializeGlyphTextureCacheEii
; demangled: RenderFX::InitializeGlyphTextureCache(int, int)
; decoder-mode: arm
007a8d74  04 00 9f e5                                      ldr r0, [pc, #4]
007a8d78  00 00 8f e0                                      add r0, pc, r0
007a8d7c  1b e1 fe ea                                      b #0x7611f0
; mapping-symbol data/literal pool
007a8d80  80 19 16 00                                      .byte 0x80, 0x19, 0x16, 0x00

; FUNCTION 0x007a8d84, declared_size=644, range_size=644, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX14TraceHierarchyEPN7gameswf9characterEii
; demangled: RenderFX::TraceHierarchy(gameswf::character*, int, int)
; decoder-mode: arm
007a8d84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007a8d88  54 52 9f e5                                      ldr r5, [pc, #0x254]
007a8d8c  54 92 9f e5                                      ldr sb, [pc, #0x254]
007a8d90  00 60 51 e2                                      subs r6, r1, #0
007a8d94  05 50 8f e0                                      add r5, pc, r5
007a8d98  09 10 95 e7                                      ldr r1, [r5, sb]
007a8d9c  02 b0 a0 e1                                      mov fp, r2
007a8da0  47 df 4d e2                                      sub sp, sp, #0x11c
007a8da4  00 20 91 e5                                      ldr r2, [r1]
007a8da8  0c 00 8d e5                                      str r0, [sp, #0xc]
007a8dac  03 40 a0 e1                                      mov r4, r3
007a8db0  14 21 8d e5                                      str r2, [sp, #0x114]
007a8db4  00 20 a0 01                                      moveq r2, r0
007a8db8  3c 30 92 05                                      ldreq r3, [r2, #0x3c]
007a8dbc  10 60 93 05                                      ldreq r6, [r3, #0x10]
007a8dc0  00 00 54 e3                                      cmp r4, #0
007a8dc4  42 00 00 0a                                      beq #0x7a8ed4
007a8dc8  01 00 1b e3                                      tst fp, #1
007a8dcc  10 00 00 0a                                      beq #0x7a8e14
007a8dd0  9b 30 d6 e5                                      ldrb r3, [r6, #0x9b]
007a8dd4  00 00 53 e3                                      cmp r3, #0
007a8dd8  06 00 00 1a                                      bne #0x7a8df8
007a8ddc  09 30 95 e7                                      ldr r3, [r5, sb]
007a8de0  14 21 9d e5                                      ldr r2, [sp, #0x114]
007a8de4  00 30 93 e5                                      ldr r3, [r3]
007a8de8  03 00 52 e1                                      cmp r2, r3
007a8dec  7b 00 00 1a                                      bne #0x7a8fe0
007a8df0  47 df 8d e2                                      add sp, sp, #0x11c
007a8df4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007a8df8  06 00 a0 e1                                      mov r0, r6
007a8dfc  2f ac fe eb                                      bl #0x753ec0
007a8e00  00 10 a0 e3                                      mov r1, #0
007a8e04  18 00 90 e5                                      ldr r0, [r0, #0x18]
007a8e08  5f 94 ed eb                                      bl #0x30df8c
007a8e0c  00 00 50 e3                                      cmp r0, #0
007a8e10  f1 ff ff 1a                                      bne #0x7a8ddc
007a8e14  08 00 1b e3                                      tst fp, #8
007a8e18  29 00 00 1a                                      bne #0x7a8ec4
007a8e1c  14 80 8d e2                                      add r8, sp, #0x14
007a8e20  08 00 a0 e1                                      mov r0, r8
007a8e24  00 10 a0 e3                                      mov r1, #0
007a8e28  01 2c a0 e3                                      mov r2, #0x100
007a8e2c  8b 95 ed eb                                      bl #0x30e460
007a8e30  00 00 54 e3                                      cmp r4, #0
007a8e34  0b 00 00 da                                      ble #0x7a8e68
007a8e38  ac a1 9f e5                                      ldr sl, [pc, #0x1ac]
007a8e3c  00 70 a0 e3                                      mov r7, #0
007a8e40  0a a0 8f e0                                      add sl, pc, sl
007a8e44  08 00 a0 e1                                      mov r0, r8
007a8e48  01 94 ed eb                                      bl #0x30de54
007a8e4c  01 70 87 e2                                      add r7, r7, #1
007a8e50  00 00 88 e0                                      add r0, r8, r0
007a8e54  0a 10 a0 e1                                      mov r1, sl
007a8e58  04 20 a0 e3                                      mov r2, #4
007a8e5c  81 96 ed eb                                      bl #0x30e868
007a8e60  04 00 57 e1                                      cmp r7, r4
007a8e64  f6 ff ff 1a                                      bne #0x7a8e44
007a8e68  00 30 96 e5                                      ldr r3, [r6]
007a8e6c  06 00 a0 e1                                      mov r0, r6
007a8e70  20 10 a0 e3                                      mov r1, #0x20
007a8e74  0f e0 a0 e1                                      mov lr, pc
007a8e78  08 f0 93 e5                                      ldr pc, [r3, #8]
007a8e7c  00 00 50 e3                                      cmp r0, #0
007a8e80  17 00 00 0a                                      beq #0x7a8ee4
007a8e84  44 20 96 e5                                      ldr r2, [r6, #0x44]
007a8e88  60 01 9f e5                                      ldr r0, [pc, #0x160]
007a8e8c  08 10 a0 e1                                      mov r1, r8
007a8e90  d0 30 d2 e1                                      ldrsb r3, [r2]
007a8e94  00 00 8f e0                                      add r0, pc, r0
007a8e98  01 00 73 e3                                      cmn r3, #1
007a8e9c  38 31 d6 e5                                      ldrb r3, [r6, #0x138]
007a8ea0  0c 20 92 05                                      ldreq r2, [r2, #0xc]
007a8ea4  01 20 82 12                                      addne r2, r2, #1
007a8ea8  ff 00 53 e3                                      cmp r3, #0xff
007a8eac  4e 3f 86 12                                      addne r3, r6, #0x138
007a8eb0  44 31 96 05                                      ldreq r3, [r6, #0x144]
007a8eb4  01 30 83 12                                      addne r3, r3, #1
007a8eb8  00 60 8d e5                                      str r6, [sp]
007a8ebc  cb e0 fe eb                                      bl #0x7611f0
007a8ec0  c5 ff ff ea                                      b #0x7a8ddc
007a8ec4  9d 30 d6 e5                                      ldrb r3, [r6, #0x9d]
007a8ec8  00 00 53 e3                                      cmp r3, #0
007a8ecc  d2 ff ff 1a                                      bne #0x7a8e1c
007a8ed0  c1 ff ff ea                                      b #0x7a8ddc
007a8ed4  18 01 9f e5                                      ldr r0, [pc, #0x118]
007a8ed8  00 00 8f e0                                      add r0, pc, r0
007a8edc  c3 e0 fe eb                                      bl #0x7611f0
007a8ee0  b8 ff ff ea                                      b #0x7a8dc8
007a8ee4  00 30 96 e5                                      ldr r3, [r6]
007a8ee8  06 00 a0 e1                                      mov r0, r6
007a8eec  02 10 a0 e3                                      mov r1, #2
007a8ef0  0f e0 a0 e1                                      mov lr, pc
007a8ef4  08 f0 93 e5                                      ldr pc, [r3, #8]
007a8ef8  00 00 50 e3                                      cmp r0, #0
007a8efc  29 00 00 0a                                      beq #0x7a8fa8
007a8f00  44 a0 96 e5                                      ldr sl, [r6, #0x44]
007a8f04  06 00 a0 e1                                      mov r0, r6
007a8f08  d0 30 da e1                                      ldrsb r3, [sl]
007a8f0c  01 00 73 e3                                      cmn r3, #1
007a8f10  00 30 96 e5                                      ldr r3, [r6]
007a8f14  01 a0 8a 12                                      addne sl, sl, #1
007a8f18  0c a0 9a 05                                      ldreq sl, [sl, #0xc]
007a8f1c  0f e0 a0 e1                                      mov lr, pc
007a8f20  38 f1 93 e5                                      ldr pc, [r3, #0x138]
007a8f24  00 30 96 e5                                      ldr r3, [r6]
007a8f28  00 70 a0 e1                                      mov r7, r0
007a8f2c  06 00 a0 e1                                      mov r0, r6
007a8f30  0f e0 a0 e1                                      mov lr, pc
007a8f34  98 f0 93 e5                                      ldr pc, [r3, #0x98]
007a8f38  00 00 50 e3                                      cmp r0, #0
007a8f3c  24 00 00 0a                                      beq #0x7a8fd4
007a8f40  b0 c0 9f e5                                      ldr ip, [pc, #0xb0]
007a8f44  0c c0 8f e0                                      add ip, pc, ip
007a8f48  ac 00 9f e5                                      ldr r0, [pc, #0xac]
007a8f4c  07 30 a0 e1                                      mov r3, r7
007a8f50  08 10 a0 e1                                      mov r1, r8
007a8f54  0a 20 a0 e1                                      mov r2, sl
007a8f58  00 00 8f e0                                      add r0, pc, r0
007a8f5c  00 c0 8d e5                                      str ip, [sp]
007a8f60  04 60 8d e5                                      str r6, [sp, #4]
007a8f64  a1 e0 fe eb                                      bl #0x7611f0
007a8f68  ac 30 96 e5                                      ldr r3, [r6, #0xac]
007a8f6c  00 00 53 e3                                      cmp r3, #0
007a8f70  99 ff ff da                                      ble #0x7a8ddc
007a8f74  01 70 84 e2                                      add r7, r4, #1
007a8f78  00 40 a0 e3                                      mov r4, #0
007a8f7c  a8 30 96 e5                                      ldr r3, [r6, #0xa8]
007a8f80  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007a8f84  0b 20 a0 e1                                      mov r2, fp
007a8f88  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
007a8f8c  07 30 a0 e1                                      mov r3, r7
007a8f90  7b ff ff eb                                      bl #0x7a8d84
007a8f94  ac 30 96 e5                                      ldr r3, [r6, #0xac]
007a8f98  01 40 84 e2                                      add r4, r4, #1
007a8f9c  03 00 54 e1                                      cmp r4, r3
007a8fa0  f5 ff ff ba                                      blt #0x7a8f7c
007a8fa4  8c ff ff ea                                      b #0x7a8ddc
007a8fa8  44 20 96 e5                                      ldr r2, [r6, #0x44]
007a8fac  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
007a8fb0  08 10 a0 e1                                      mov r1, r8
007a8fb4  d0 30 d2 e1                                      ldrsb r3, [r2]
007a8fb8  00 00 8f e0                                      add r0, pc, r0
007a8fbc  01 00 73 e3                                      cmn r3, #1
007a8fc0  01 20 82 12                                      addne r2, r2, #1
007a8fc4  0c 20 92 05                                      ldreq r2, [r2, #0xc]
007a8fc8  06 30 a0 e1                                      mov r3, r6
007a8fcc  87 e0 fe eb                                      bl #0x7611f0
007a8fd0  81 ff ff ea                                      b #0x7a8ddc
007a8fd4  28 c0 9f e5                                      ldr ip, [pc, #0x28]
007a8fd8  0c c0 8f e0                                      add ip, pc, ip
007a8fdc  d9 ff ff ea                                      b #0x7a8f48
007a8fe0  ca 94 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007a8fe4  fc bc 1e 00 ac 40 00 00 d0 86 11 00 0c 19 16 00  .byte 0xfc, 0xbc, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd0, 0x86, 0x11, 0x00, 0x0c, 0x19, 0x16, 0x00
007a8ff4  b8 18 16 00 7c 18 16 00 78 18 16 00 38 18 16 00  .byte 0xb8, 0x18, 0x16, 0x00, 0x7c, 0x18, 0x16, 0x00, 0x78, 0x18, 0x16, 0x00, 0x38, 0x18, 0x16, 0x00
007a9004  f0 17 16 00                                      .byte 0xf0, 0x17, 0x16, 0x00

; FUNCTION 0x007a9008, declared_size=180, range_size=180, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX27DBG_TraceContextInformationEPN7gameswf9characterE
; demangled: RenderFX::DBG_TraceContextInformation(gameswf::character*)
; decoder-mode: arm
007a9008  00 20 a0 e3                                      mov r2, #0
007a900c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a9010  02 30 a0 e1                                      mov r3, r2
007a9014  fb fe ff eb                                      bl #0x7a8c08
007a9018  04 30 90 e5                                      ldr r3, [r0, #4]
007a901c  00 50 a0 e1                                      mov r5, r0
007a9020  00 00 53 e3                                      cmp r3, #0
007a9024  21 00 00 da                                      ble #0x7a90b0
007a9028  84 70 9f e5                                      ldr r7, [pc, #0x84]
007a902c  84 80 9f e5                                      ldr r8, [pc, #0x84]
007a9030  00 40 a0 e3                                      mov r4, #0
007a9034  07 70 8f e0                                      add r7, pc, r7
007a9038  08 80 8f e0                                      add r8, pc, r8
007a903c  02 00 00 ea                                      b #0x7a904c
007a9040  04 30 95 e5                                      ldr r3, [r5, #4]
007a9044  03 00 54 e1                                      cmp r4, r3
007a9048  18 00 00 aa                                      bge #0x7a90b0
007a904c  00 30 95 e5                                      ldr r3, [r5]
007a9050  07 00 a0 e1                                      mov r0, r7
007a9054  04 61 a0 e1                                      lsl r6, r4, #2
007a9058  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
007a905c  01 40 84 e2                                      add r4, r4, #1
007a9060  44 30 93 e5                                      ldr r3, [r3, #0x44]
007a9064  d0 20 d3 e1                                      ldrsb r2, [r3]
007a9068  01 10 83 e2                                      add r1, r3, #1
007a906c  01 00 72 e3                                      cmn r2, #1
007a9070  0c 10 93 05                                      ldreq r1, [r3, #0xc]
007a9074  82 93 ed eb                                      bl #0x30de84
007a9078  00 30 95 e5                                      ldr r3, [r5]
007a907c  02 10 a0 e3                                      mov r1, #2
007a9080  06 30 93 e7                                      ldr r3, [r3, r6]
007a9084  03 00 a0 e1                                      mov r0, r3
007a9088  00 30 93 e5                                      ldr r3, [r3]
007a908c  0f e0 a0 e1                                      mov lr, pc
007a9090  08 f0 93 e5                                      ldr pc, [r3, #8]
007a9094  00 00 50 e3                                      cmp r0, #0
007a9098  e8 ff ff 0a                                      beq #0x7a9040
007a909c  08 00 a0 e1                                      mov r0, r8
007a90a0  07 94 ed eb                                      bl #0x30e0c4
007a90a4  04 30 95 e5                                      ldr r3, [r5, #4]
007a90a8  03 00 54 e1                                      cmp r4, r3
007a90ac  e6 ff ff ba                                      blt #0x7a904c
007a90b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007a90b4  d4 17 16 00 e8 17 16 00                          .byte 0xd4, 0x17, 0x16, 0x00, 0xe8, 0x17, 0x16, 0x00

; FUNCTION 0x007a90bc, declared_size=164, range_size=164, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX6UnloadEv
; demangled: RenderFX::Unload()
; decoder-mode: arm
007a90bc  94 30 9f e5                                      ldr r3, [pc, #0x94]
007a90c0  94 20 9f e5                                      ldr r2, [pc, #0x94]
007a90c4  70 40 2d e9                                      push {r4, r5, r6, lr}
007a90c8  03 30 8f e0                                      add r3, pc, r3
007a90cc  02 20 93 e7                                      ldr r2, [r3, r2]
007a90d0  00 40 a0 e1                                      mov r4, r0
007a90d4  00 30 92 e5                                      ldr r3, [r2]
007a90d8  00 00 53 e3                                      cmp r3, #0
007a90dc  03 00 00 0a                                      beq #0x7a90f0
007a90e0  03 00 a0 e1                                      mov r0, r3
007a90e4  00 30 93 e5                                      ldr r3, [r3]
007a90e8  0f e0 a0 e1                                      mov lr, pc
007a90ec  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
007a90f0  00 50 a0 e3                                      mov r5, #0
007a90f4  28 60 a0 e3                                      mov r6, #0x28
007a90f8  96 05 00 e0                                      mul r0, r6, r5
007a90fc  01 50 85 e2                                      add r5, r5, #1
007a9100  58 00 80 e2                                      add r0, r0, #0x58
007a9104  00 00 84 e0                                      add r0, r4, r0
007a9108  ed fc ff eb                                      bl #0x7a84c4
007a910c  04 00 55 e3                                      cmp r5, #4
007a9110  f8 ff ff 1a                                      bne #0x7a90f8
007a9114  3c 00 84 e2                                      add r0, r4, #0x3c
007a9118  00 10 a0 e3                                      mov r1, #0
007a911c  4d c4 fe eb                                      bl #0x75a258
007a9120  38 00 84 e2                                      add r0, r4, #0x38
007a9124  00 10 a0 e3                                      mov r1, #0
007a9128  a3 fd ff eb                                      bl #0x7a87bc
007a912c  44 00 84 e2                                      add r0, r4, #0x44
007a9130  00 10 a0 e3                                      mov r1, #0
007a9134  f6 a2 fe eb                                      bl #0x751d14
007a9138  54 30 94 e5                                      ldr r3, [r4, #0x54]
007a913c  00 20 e0 e3                                      mvn r2, #0
007a9140  04 00 a0 e1                                      mov r0, r4
007a9144  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
007a9148  00 10 a0 e3                                      mov r1, #0
007a914c  54 30 84 e5                                      str r3, [r4, #0x54]
007a9150  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a9154  63 fb ff ea                                      b #0x7a7ee8
; mapping-symbol data/literal pool
007a9158  c8 b9 1e 00 b4 39 00 00                          .byte 0xc8, 0xb9, 0x1e, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x007a9160, declared_size=120, range_size=120, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX4FindEPKc
; demangled: RenderFX::Find(char const*)
; decoder-mode: arm
007a9160  70 40 2d e9                                      push {r4, r5, r6, lr}
007a9164  40 20 90 e5                                      ldr r2, [r0, #0x40]
007a9168  00 40 a0 e1                                      mov r4, r0
007a916c  01 50 a0 e1                                      mov r5, r1
007a9170  43 fe ff eb                                      bl #0x7a8a84
007a9174  00 60 50 e2                                      subs r6, r0, #0
007a9178  01 00 00 0a                                      beq #0x7a9184
007a917c  06 00 a0 e1                                      mov r0, r6
007a9180  70 80 bd e8                                      pop {r4, r5, r6, pc}
007a9184  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
007a9188  04 00 a0 e1                                      mov r0, r4
007a918c  05 10 a0 e1                                      mov r1, r5
007a9190  10 20 93 e5                                      ldr r2, [r3, #0x10]
007a9194  3a fe ff eb                                      bl #0x7a8a84
007a9198  00 60 50 e2                                      subs r6, r0, #0
007a919c  f6 ff ff 1a                                      bne #0x7a917c
007a91a0  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007a91a4  ea 2b ff eb                                      bl #0x774154
007a91a8  05 10 a0 e1                                      mov r1, r5
007a91ac  34 08 ff eb                                      bl #0x76b284
007a91b0  00 40 50 e2                                      subs r4, r0, #0
007a91b4  f0 ff ff 0a                                      beq #0x7a917c
007a91b8  00 30 94 e5                                      ldr r3, [r4]
007a91bc  01 10 a0 e3                                      mov r1, #1
007a91c0  0f e0 a0 e1                                      mov lr, pc
007a91c4  08 f0 93 e5                                      ldr pc, [r3, #8]
007a91c8  00 00 50 e3                                      cmp r0, #0
007a91cc  04 60 a0 11                                      movne r6, r4
007a91d0  00 60 a0 03                                      moveq r6, #0
007a91d4  e8 ff ff ea                                      b #0x7a917c

; FUNCTION 0x007a91d8, declared_size=44, range_size=44, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX23RegisterDisplayCallbackEPKcPFvRN7gameswf12render_stateEPvES5_
; demangled: RenderFX::RegisterDisplayCallback(char const*, void (*)(gameswf::render_state&, void*), void*)
; decoder-mode: arm
007a91d8  70 40 2d e9                                      push {r4, r5, r6, lr}
007a91dc  02 50 a0 e1                                      mov r5, r2
007a91e0  03 40 a0 e1                                      mov r4, r3
007a91e4  00 60 a0 e1                                      mov r6, r0
007a91e8  dc ff ff eb                                      bl #0x7a9160
007a91ec  05 20 a0 e1                                      mov r2, r5
007a91f0  00 10 a0 e1                                      mov r1, r0
007a91f4  04 30 a0 e1                                      mov r3, r4
007a91f8  06 00 a0 e1                                      mov r0, r6
007a91fc  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a9200  1e fb ff ea                                      b #0x7a7e80

; FUNCTION 0x007a9204, declared_size=36, range_size=36, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10IsAnimOverEPKc
; demangled: RenderFX::IsAnimOver(char const*)
; decoder-mode: arm
007a9204  10 40 2d e9                                      push {r4, lr}
007a9208  00 40 a0 e1                                      mov r4, r0
007a920c  d3 ff ff eb                                      bl #0x7a9160
007a9210  00 10 50 e2                                      subs r1, r0, #0
007a9214  02 00 00 0a                                      beq #0x7a9224
007a9218  04 00 a0 e1                                      mov r0, r4
007a921c  10 40 bd e8                                      pop {r4, lr}
007a9220  eb fa ff ea                                      b #0x7a7dd4
007a9224  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a9228, declared_size=36, range_size=36, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX13GetFrameCountEPKc
; demangled: RenderFX::GetFrameCount(char const*)
; decoder-mode: arm
007a9228  10 40 2d e9                                      push {r4, lr}
007a922c  00 40 a0 e1                                      mov r4, r0
007a9230  ca ff ff eb                                      bl #0x7a9160
007a9234  00 10 50 e2                                      subs r1, r0, #0
007a9238  02 00 00 0a                                      beq #0x7a9248
007a923c  04 00 a0 e1                                      mov r0, r4
007a9240  10 40 bd e8                                      pop {r4, lr}
007a9244  d1 fa ff ea                                      b #0x7a7d90
007a9248  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a924c, declared_size=52, range_size=52, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX9GotoFrameEPKcib
; demangled: RenderFX::GotoFrame(char const*, int, bool)
; decoder-mode: arm
007a924c  70 40 2d e9                                      push {r4, r5, r6, lr}
007a9250  02 50 a0 e1                                      mov r5, r2
007a9254  03 40 a0 e1                                      mov r4, r3
007a9258  00 60 a0 e1                                      mov r6, r0
007a925c  bf ff ff eb                                      bl #0x7a9160
007a9260  00 10 50 e2                                      subs r1, r0, #0
007a9264  04 00 00 0a                                      beq #0x7a927c
007a9268  06 00 a0 e1                                      mov r0, r6
007a926c  05 20 a0 e1                                      mov r2, r5
007a9270  04 30 a0 e1                                      mov r3, r4
007a9274  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a9278  ad fa ff ea                                      b #0x7a7d34
007a927c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007a9280, declared_size=28, range_size=28, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX7GetTextEPKc
; demangled: RenderFX::GetText(char const*)
; decoder-mode: arm
007a9280  10 40 2d e9                                      push {r4, lr}
007a9284  00 40 a0 e1                                      mov r4, r0
007a9288  b4 ff ff eb                                      bl #0x7a9160
007a928c  00 10 a0 e1                                      mov r1, r0
007a9290  04 00 a0 e1                                      mov r0, r4
007a9294  10 40 bd e8                                      pop {r4, lr}
007a9298  93 fa ff ea                                      b #0x7a7cec

; FUNCTION 0x007a929c, declared_size=24, range_size=24, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10SetVisibleEPKcb
; demangled: RenderFX::SetVisible(char const*, bool)
; decoder-mode: arm
007a929c  10 40 2d e9                                      push {r4, lr}
007a92a0  02 40 a0 e1                                      mov r4, r2
007a92a4  ad ff ff eb                                      bl #0x7a9160
007a92a8  00 00 50 e3                                      cmp r0, #0
007a92ac  9b 40 c0 15                                      strbne r4, [r0, #0x9b]
007a92b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a92b4, declared_size=44, range_size=44, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX9SetCursorEPKci
; demangled: RenderFX::SetCursor(char const*, int)
; decoder-mode: arm
007a92b4  70 40 2d e9                                      push {r4, r5, r6, lr}
007a92b8  02 50 a0 e1                                      mov r5, r2
007a92bc  00 40 a0 e1                                      mov r4, r0
007a92c0  a6 ff ff eb                                      bl #0x7a9160
007a92c4  00 10 a0 e1                                      mov r1, r0
007a92c8  28 00 a0 e3                                      mov r0, #0x28
007a92cc  90 05 05 e0                                      mul r5, r0, r5
007a92d0  70 00 85 e2                                      add r0, r5, #0x70
007a92d4  00 00 84 e0                                      add r0, r4, r0
007a92d8  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a92dc  aa af fe ea                                      b #0x75518c

; FUNCTION 0x007a92e0, declared_size=176, range_size=176, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX7SetTextEPN7gameswf9characterEPKcb
; demangled: RenderFX::SetText(gameswf::character*, char const*, bool)
; decoder-mode: arm
007a92e0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007a92e4  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
007a92e8  9c 50 9f e5                                      ldr r5, [pc, #0x9c]
007a92ec  00 60 51 e2                                      subs r6, r1, #0
007a92f0  04 40 8f e0                                      add r4, pc, r4
007a92f4  05 10 94 e7                                      ldr r1, [r4, r5]
007a92f8  03 80 a0 e1                                      mov r8, r3
007a92fc  1c d0 4d e2                                      sub sp, sp, #0x1c
007a9300  00 30 91 e5                                      ldr r3, [r1]
007a9304  02 70 a0 e1                                      mov r7, r2
007a9308  14 30 8d e5                                      str r3, [sp, #0x14]
007a930c  06 00 00 0a                                      beq #0x7a932c
007a9310  00 c0 96 e5                                      ldr ip, [r6]
007a9314  06 00 a0 e1                                      mov r0, r6
007a9318  20 10 a0 e3                                      mov r1, #0x20
007a931c  0f e0 a0 e1                                      mov lr, pc
007a9320  08 f0 9c e5                                      ldr pc, [ip, #8]
007a9324  00 00 50 e3                                      cmp r0, #0
007a9328  06 00 00 1a                                      bne #0x7a9348
007a932c  05 30 94 e7                                      ldr r3, [r4, r5]
007a9330  14 20 9d e5                                      ldr r2, [sp, #0x14]
007a9334  00 30 93 e5                                      ldr r3, [r3]
007a9338  03 00 52 e1                                      cmp r2, r3
007a933c  10 00 00 1a                                      bne #0x7a9384
007a9340  1c d0 8d e2                                      add sp, sp, #0x1c
007a9344  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007a9348  07 10 a0 e1                                      mov r1, r7
007a934c  0d 00 a0 e1                                      mov r0, sp
007a9350  c9 a9 f1 eb                                      bl #0x413a7c
007a9354  06 00 a0 e1                                      mov r0, r6
007a9358  0d 10 a0 e1                                      mov r1, sp
007a935c  08 20 a0 e1                                      mov r2, r8
007a9360  d2 9d ff eb                                      bl #0x790ab0
007a9364  d0 30 dd e1                                      ldrsb r3, [sp]
007a9368  0d a0 a0 e1                                      mov sl, sp
007a936c  01 00 73 e3                                      cmn r3, #1
007a9370  ed ff ff 1a                                      bne #0x7a932c
007a9374  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007a9378  08 10 9d e5                                      ldr r1, [sp, #8]
007a937c  ed a5 fe eb                                      bl #0x752b38
007a9380  e9 ff ff ea                                      b #0x7a932c
007a9384  e1 93 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007a9388  a0 b7 1e 00 ac 40 00 00                          .byte 0xa0, 0xb7, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007a9390, declared_size=44, range_size=44, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX7SetTextEPKcS1_b
; demangled: RenderFX::SetText(char const*, char const*, bool)
; decoder-mode: arm
007a9390  70 40 2d e9                                      push {r4, r5, r6, lr}
007a9394  02 50 a0 e1                                      mov r5, r2
007a9398  03 40 a0 e1                                      mov r4, r3
007a939c  00 60 a0 e1                                      mov r6, r0
007a93a0  6e ff ff eb                                      bl #0x7a9160
007a93a4  05 20 a0 e1                                      mov r2, r5
007a93a8  00 10 a0 e1                                      mov r1, r0
007a93ac  04 30 a0 e1                                      mov r3, r4
007a93b0  06 00 a0 e1                                      mov r0, r6
007a93b4  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a93b8  c8 ff ff ea                                      b #0x7a92e0

; FUNCTION 0x007a93bc, declared_size=96, range_size=96, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10FormatHTMLEPKcS1_z
; demangled: RenderFX::FormatHTML(char const*, char const*, ...)
; decoder-mode: arm
007a93bc  0c 00 2d e9                                      push {r2, r3}
007a93c0  70 40 2d e9                                      push {r4, r5, r6, lr}
007a93c4  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
007a93c8  08 d0 4d e2                                      sub sp, sp, #8
007a93cc  1c 30 8d e2                                      add r3, sp, #0x1c
007a93d0  04 40 8f e0                                      add r4, pc, r4
007a93d4  0c 40 84 e2                                      add r4, r4, #0xc
007a93d8  00 60 a0 e1                                      mov r6, r0
007a93dc  01 50 a0 e1                                      mov r5, r1
007a93e0  03 20 a0 e1                                      mov r2, r3
007a93e4  18 10 9d e5                                      ldr r1, [sp, #0x18]
007a93e8  04 00 a0 e1                                      mov r0, r4
007a93ec  04 30 8d e5                                      str r3, [sp, #4]
007a93f0  9c 93 ed eb                                      bl #0x30e268
007a93f4  06 00 a0 e1                                      mov r0, r6
007a93f8  05 10 a0 e1                                      mov r1, r5
007a93fc  04 20 a0 e1                                      mov r2, r4
007a9400  01 30 a0 e3                                      mov r3, #1
007a9404  e1 ff ff eb                                      bl #0x7a9390
007a9408  08 d0 8d e2                                      add sp, sp, #8
007a940c  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a9410  08 d0 8d e2                                      add sp, sp, #8
007a9414  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007a9418  b8 37 28 00                                      .byte 0xb8, 0x37, 0x28, 0x00

; FUNCTION 0x007a941c, declared_size=96, range_size=96, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10FormatTextEPKcS1_z
; demangled: RenderFX::FormatText(char const*, char const*, ...)
; decoder-mode: arm
007a941c  0c 00 2d e9                                      push {r2, r3}
007a9420  70 40 2d e9                                      push {r4, r5, r6, lr}
007a9424  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
007a9428  08 d0 4d e2                                      sub sp, sp, #8
007a942c  1c 30 8d e2                                      add r3, sp, #0x1c
007a9430  04 40 8f e0                                      add r4, pc, r4
007a9434  0c 40 84 e2                                      add r4, r4, #0xc
007a9438  00 60 a0 e1                                      mov r6, r0
007a943c  01 50 a0 e1                                      mov r5, r1
007a9440  03 20 a0 e1                                      mov r2, r3
007a9444  18 10 9d e5                                      ldr r1, [sp, #0x18]
007a9448  04 00 a0 e1                                      mov r0, r4
007a944c  04 30 8d e5                                      str r3, [sp, #4]
007a9450  84 93 ed eb                                      bl #0x30e268
007a9454  06 00 a0 e1                                      mov r0, r6
007a9458  05 10 a0 e1                                      mov r1, r5
007a945c  04 20 a0 e1                                      mov r2, r4
007a9460  00 30 a0 e3                                      mov r3, #0
007a9464  c9 ff ff eb                                      bl #0x7a9390
007a9468  08 d0 8d e2                                      add sp, sp, #8
007a946c  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a9470  08 d0 8d e2                                      add sp, sp, #8
007a9474  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007a9478  58 37 28 00                                      .byte 0x58, 0x37, 0x28, 0x00

; FUNCTION 0x007a947c, declared_size=96, range_size=96, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10FormatHTMLEPN7gameswf9characterEPKcz
; demangled: RenderFX::FormatHTML(gameswf::character*, char const*, ...)
; decoder-mode: arm
007a947c  0c 00 2d e9                                      push {r2, r3}
007a9480  70 40 2d e9                                      push {r4, r5, r6, lr}
007a9484  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
007a9488  08 d0 4d e2                                      sub sp, sp, #8
007a948c  1c 30 8d e2                                      add r3, sp, #0x1c
007a9490  04 40 8f e0                                      add r4, pc, r4
007a9494  0c 40 84 e2                                      add r4, r4, #0xc
007a9498  00 60 a0 e1                                      mov r6, r0
007a949c  01 50 a0 e1                                      mov r5, r1
007a94a0  03 20 a0 e1                                      mov r2, r3
007a94a4  18 10 9d e5                                      ldr r1, [sp, #0x18]
007a94a8  04 00 a0 e1                                      mov r0, r4
007a94ac  04 30 8d e5                                      str r3, [sp, #4]
007a94b0  6c 93 ed eb                                      bl #0x30e268
007a94b4  06 00 a0 e1                                      mov r0, r6
007a94b8  05 10 a0 e1                                      mov r1, r5
007a94bc  04 20 a0 e1                                      mov r2, r4
007a94c0  01 30 a0 e3                                      mov r3, #1
007a94c4  85 ff ff eb                                      bl #0x7a92e0
007a94c8  08 d0 8d e2                                      add sp, sp, #8
007a94cc  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a94d0  08 d0 8d e2                                      add sp, sp, #8
007a94d4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007a94d8  f8 36 28 00                                      .byte 0xf8, 0x36, 0x28, 0x00

; FUNCTION 0x007a94dc, declared_size=96, range_size=96, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10FormatTextEPN7gameswf9characterEPKcz
; demangled: RenderFX::FormatText(gameswf::character*, char const*, ...)
; decoder-mode: arm
007a94dc  0c 00 2d e9                                      push {r2, r3}
007a94e0  70 40 2d e9                                      push {r4, r5, r6, lr}
007a94e4  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
007a94e8  08 d0 4d e2                                      sub sp, sp, #8
007a94ec  1c 30 8d e2                                      add r3, sp, #0x1c
007a94f0  04 40 8f e0                                      add r4, pc, r4
007a94f4  0c 40 84 e2                                      add r4, r4, #0xc
007a94f8  00 60 a0 e1                                      mov r6, r0
007a94fc  01 50 a0 e1                                      mov r5, r1
007a9500  03 20 a0 e1                                      mov r2, r3
007a9504  18 10 9d e5                                      ldr r1, [sp, #0x18]
007a9508  04 00 a0 e1                                      mov r0, r4
007a950c  04 30 8d e5                                      str r3, [sp, #4]
007a9510  54 93 ed eb                                      bl #0x30e268
007a9514  06 00 a0 e1                                      mov r0, r6
007a9518  05 10 a0 e1                                      mov r1, r5
007a951c  04 20 a0 e1                                      mov r2, r4
007a9520  00 30 a0 e3                                      mov r3, #0
007a9524  6d ff ff eb                                      bl #0x7a92e0
007a9528  08 d0 8d e2                                      add sp, sp, #8
007a952c  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a9530  08 d0 8d e2                                      add sp, sp, #8
007a9534  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007a9538  98 36 28 00                                      .byte 0x98, 0x36, 0x28, 0x00

; FUNCTION 0x007a953c, declared_size=108, range_size=108, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX23ClearGlyphTextureCachesEPN7gameswf14player_contextE
; demangled: RenderFX::ClearGlyphTextureCaches(gameswf::player_context*)
; decoder-mode: arm
007a953c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
007a9540  10 40 2d e9                                      push {r4, lr}
007a9544  00 40 50 e2                                      subs r4, r0, #0
007a9548  03 30 8f e0                                      add r3, pc, r3
007a954c  0f 00 00 0a                                      beq #0x7a9590
007a9550  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007a9554  00 00 53 e3                                      cmp r3, #0
007a9558  03 00 00 0a                                      beq #0x7a956c
007a955c  28 00 93 e5                                      ldr r0, [r3, #0x28]
007a9560  00 00 50 e3                                      cmp r0, #0
007a9564  00 00 00 0a                                      beq #0x7a956c
007a9568  5a aa ff eb                                      bl #0x793ed8
007a956c  10 30 94 e5                                      ldr r3, [r4, #0x10]
007a9570  00 00 53 e3                                      cmp r3, #0
007a9574  04 00 00 0a                                      beq #0x7a958c
007a9578  0c 00 93 e5                                      ldr r0, [r3, #0xc]
007a957c  00 00 50 e3                                      cmp r0, #0
007a9580  01 00 00 0a                                      beq #0x7a958c
007a9584  10 40 bd e8                                      pop {r4, lr}
007a9588  52 aa ff ea                                      b #0x793ed8
007a958c  10 80 bd e8                                      pop {r4, pc}
007a9590  0c 20 9f e5                                      ldr r2, [pc, #0xc]
007a9594  02 30 93 e7                                      ldr r3, [r3, r2]
007a9598  00 40 93 e5                                      ldr r4, [r3]
007a959c  eb ff ff ea                                      b #0x7a9550
; mapping-symbol data/literal pool
007a95a0  48 b5 1e 00 30 49 00 00                          .byte 0x48, 0xb5, 0x1e, 0x00, 0x30, 0x49, 0x00, 0x00

; FUNCTION 0x007a95a8, declared_size=140, range_size=140, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX13PreloadGlyphsEPN7gameswf9characterE
; demangled: RenderFX::PreloadGlyphs(gameswf::character*)
; decoder-mode: arm
007a95a8  70 40 2d e9                                      push {r4, r5, r6, lr}
007a95ac  00 00 51 e3                                      cmp r1, #0
007a95b0  3c 30 90 05                                      ldreq r3, [r0, #0x3c]
007a95b4  00 20 a0 e3                                      mov r2, #0
007a95b8  10 10 93 05                                      ldreq r1, [r3, #0x10]
007a95bc  02 30 a0 e1                                      mov r3, r2
007a95c0  90 fd ff eb                                      bl #0x7a8c08
007a95c4  04 30 90 e5                                      ldr r3, [r0, #4]
007a95c8  00 50 a0 e1                                      mov r5, r0
007a95cc  00 00 53 e3                                      cmp r3, #0
007a95d0  15 00 00 da                                      ble #0x7a962c
007a95d4  00 40 a0 e3                                      mov r4, #0
007a95d8  03 00 00 ea                                      b #0x7a95ec
007a95dc  04 30 95 e5                                      ldr r3, [r5, #4]
007a95e0  01 40 84 e2                                      add r4, r4, #1
007a95e4  03 00 54 e1                                      cmp r4, r3
007a95e8  0f 00 00 aa                                      bge #0x7a962c
007a95ec  00 30 95 e5                                      ldr r3, [r5]
007a95f0  20 10 a0 e3                                      mov r1, #0x20
007a95f4  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
007a95f8  03 00 a0 e1                                      mov r0, r3
007a95fc  00 30 93 e5                                      ldr r3, [r3]
007a9600  0f e0 a0 e1                                      mov lr, pc
007a9604  08 f0 93 e5                                      ldr pc, [r3, #8]
007a9608  00 00 50 e3                                      cmp r0, #0
007a960c  f2 ff ff 0a                                      beq #0x7a95dc
007a9610  00 30 95 e5                                      ldr r3, [r5]
007a9614  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
007a9618  2c 8b ff eb                                      bl #0x78c2d0
007a961c  04 30 95 e5                                      ldr r3, [r5, #4]
007a9620  01 40 84 e2                                      add r4, r4, #1
007a9624  03 00 54 e1                                      cmp r4, r3
007a9628  ef ff ff ba                                      blt #0x7a95ec
007a962c  01 00 a0 e3                                      mov r0, #1
007a9630  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007a9708, declared_size=164, range_size=164, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX13CreateContextERNS_24InitializationParametersE
; demangled: RenderFX::CreateContext(RenderFX::InitializationParameters&)
; decoder-mode: arm
007a9708  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007a970c  00 10 a0 e3                                      mov r1, #0
007a9710  00 40 a0 e1                                      mov r4, r0
007a9714  0c d0 4d e2                                      sub sp, sp, #0xc
007a9718  2c 00 a0 e3                                      mov r0, #0x2c
007a971c  21 a5 fe eb                                      bl #0x752ba8
007a9720  00 50 a0 e1                                      mov r5, r0
007a9724  c3 0d ff eb                                      bl #0x76ce38
007a9728  00 10 a0 e3                                      mov r1, #0
007a972c  2c 00 a0 e3                                      mov r0, #0x2c
007a9730  1c a5 fe eb                                      bl #0x752ba8
007a9734  20 c0 94 e5                                      ldr ip, [r4, #0x20]
007a9738  10 20 94 e5                                      ldr r2, [r4, #0x10]
007a973c  1c 30 d4 e5                                      ldrb r3, [r4, #0x1c]
007a9740  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007a9744  00 60 a0 e1                                      mov r6, r0
007a9748  00 c0 8d e5                                      str ip, [sp]
007a974c  aa 9d 00 eb                                      bl #0x7d0dfc
007a9750  0c 60 85 e5                                      str r6, [r5, #0xc]
007a9754  00 10 a0 e3                                      mov r1, #0
007a9758  10 00 a0 e3                                      mov r0, #0x10
007a975c  11 a5 fe eb                                      bl #0x752ba8
007a9760  3c 60 9f e5                                      ldr r6, [pc, #0x3c]
007a9764  1c 30 d4 e5                                      ldrb r3, [r4, #0x1c]
007a9768  14 10 94 e5                                      ldr r1, [r4, #0x14]
007a976c  18 20 94 e5                                      ldr r2, [r4, #0x18]
007a9770  00 70 a0 e1                                      mov r7, r0
007a9774  c7 ff ff eb                                      bl #0x7a9698
007a9778  28 30 9f e5                                      ldr r3, [pc, #0x28]
007a977c  06 60 8f e0                                      add r6, pc, r6
007a9780  05 00 a0 e1                                      mov r0, r5
007a9784  03 30 96 e7                                      ldr r3, [r6, r3]
007a9788  08 30 83 e2                                      add r3, r3, #8
007a978c  00 30 87 e5                                      str r3, [r7]
007a9790  10 70 85 e5                                      str r7, [r5, #0x10]
007a9794  00 30 94 e5                                      ldr r3, [r4]
007a9798  28 30 85 e5                                      str r3, [r5, #0x28]
007a979c  0c d0 8d e2                                      add sp, sp, #0xc
007a97a0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
007a97a4  14 b3 1e 00 74 25 00 00                          .byte 0x14, 0xb3, 0x1e, 0x00, 0x74, 0x25, 0x00, 0x00

; FUNCTION 0x007a97ac, declared_size=104, range_size=104, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX8FinalizeEv
; demangled: RenderFX::Finalize()
; decoder-mode: arm
007a97ac  70 40 2d e9                                      push {r4, r5, r6, lr}
007a97b0  50 40 9f e5                                      ldr r4, [pc, #0x50]
007a97b4  50 30 9f e5                                      ldr r3, [pc, #0x50]
007a97b8  00 60 a0 e3                                      mov r6, #0
007a97bc  04 40 8f e0                                      add r4, pc, r4
007a97c0  03 50 94 e7                                      ldr r5, [r4, r3]
007a97c4  00 00 95 e5                                      ldr r0, [r5]
007a97c8  05 fa ff eb                                      bl #0x7a7fe4
007a97cc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
007a97d0  00 60 85 e5                                      str r6, [r5]
007a97d4  03 40 94 e7                                      ldr r4, [r4, r3]
007a97d8  00 00 94 e5                                      ldr r0, [r4]
007a97dc  06 00 50 e1                                      cmp r0, r6
007a97e0  01 00 00 0a                                      beq #0x7a97ec
007a97e4  01 fa ff eb                                      bl #0x7a7ff0
007a97e8  00 60 84 e5                                      str r6, [r4]
007a97ec  6f e9 fe eb                                      bl #0x763db0
007a97f0  7b 10 ff eb                                      bl #0x76d9e4
007a97f4  f9 46 00 eb                                      bl #0x7bb3e0
007a97f8  de 11 ff eb                                      bl #0x76df78
007a97fc  ee 10 ff eb                                      bl #0x76dbbc
007a9800  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a9804  2f 81 00 ea                                      b #0x7c9cc8
; mapping-symbol data/literal pool
007a9808  d4 b2 1e 00 30 49 00 00 b4 39 00 00              .byte 0xd4, 0xb2, 0x1e, 0x00, 0x30, 0x49, 0x00, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x007a9814, declared_size=228, range_size=228, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10InitializeERNS_24InitializationParametersE
; demangled: RenderFX::Initialize(RenderFX::InitializationParameters&)
; decoder-mode: arm
007a9814  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a9818  bc 40 9f e5                                      ldr r4, [pc, #0xbc]
007a981c  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
007a9820  00 60 a0 e1                                      mov r6, r0
007a9824  04 40 8f e0                                      add r4, pc, r4
007a9828  05 30 94 e7                                      ldr r3, [r4, r5]
007a982c  00 30 93 e5                                      ldr r3, [r3]
007a9830  00 00 53 e3                                      cmp r3, #0
007a9834  00 00 00 0a                                      beq #0x7a983c
007a9838  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a983c  a0 00 9f e5                                      ldr r0, [pc, #0xa0]
007a9840  00 00 8f e0                                      add r0, pc, r0
007a9844  bd 0b ff eb                                      bl #0x76c740
007a9848  98 00 9f e5                                      ldr r0, [pc, #0x98]
007a984c  00 00 8f e0                                      add r0, pc, r0
007a9850  db 0b ff eb                                      bl #0x76c7c4
007a9854  b2 c0 fe eb                                      bl #0x759b24
007a9858  00 00 50 e3                                      cmp r0, #0
007a985c  1a 00 00 1a                                      bne #0x7a98cc
007a9860  84 00 9f e5                                      ldr r0, [pc, #0x84]
007a9864  00 00 8f e0                                      add r0, pc, r0
007a9868  d5 0b ff eb                                      bl #0x76c7c4
007a986c  00 00 96 e5                                      ldr r0, [r6]
007a9870  78 b3 00 eb                                      bl #0x7d6658
007a9874  74 30 9f e5                                      ldr r3, [pc, #0x74]
007a9878  00 70 a0 e1                                      mov r7, r0
007a987c  03 30 94 e7                                      ldr r3, [r4, r3]
007a9880  00 00 83 e5                                      str r0, [r3]
007a9884  00 30 90 e5                                      ldr r3, [r0]
007a9888  0f e0 a0 e1                                      mov lr, pc
007a988c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
007a9890  07 00 a0 e1                                      mov r0, r7
007a9894  00 30 97 e5                                      ldr r3, [r7]
007a9898  01 10 a0 e3                                      mov r1, #1
007a989c  0f e0 a0 e1                                      mov lr, pc
007a98a0  84 f0 93 e5                                      ldr pc, [r3, #0x84]
007a98a4  04 00 96 e5                                      ldr r0, [r6, #4]
007a98a8  00 00 50 e3                                      cmp r0, #0
007a98ac  00 00 00 0a                                      beq #0x7a98b4
007a98b0  09 c1 fe eb                                      bl #0x759cdc
007a98b4  41 17 ff eb                                      bl #0x76f5c0
007a98b8  06 00 a0 e1                                      mov r0, r6
007a98bc  91 ff ff eb                                      bl #0x7a9708
007a98c0  05 30 94 e7                                      ldr r3, [r4, r5]
007a98c4  00 00 83 e5                                      str r0, [r3]
007a98c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a98cc  20 00 9f e5                                      ldr r0, [pc, #0x20]
007a98d0  00 00 8f e0                                      add r0, pc, r0
007a98d4  25 de fe eb                                      bl #0x761170
007a98d8  e0 ff ff ea                                      b #0x7a9860
; mapping-symbol data/literal pool
007a98dc  6c b2 1e 00 30 49 00 00 0c 01 00 00 dc e3 ff ff  .byte 0x6c, 0xb2, 0x1e, 0x00, 0x30, 0x49, 0x00, 0x00, 0x0c, 0x01, 0x00, 0x00, 0xdc, 0xe3, 0xff, 0xff
007a98ec  b0 3f 00 00 b4 39 00 00 94 eb ff ff              .byte 0xb0, 0x3f, 0x00, 0x00, 0xb4, 0x39, 0x00, 0x00, 0x94, 0xeb, 0xff, 0xff

; FUNCTION 0x007a98f8, declared_size=92, range_size=92, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10InitializeEPN6glitch5video12IVideoDriverE
; demangled: RenderFX::Initialize(glitch::video::IVideoDriver*)
; decoder-mode: arm
007a98f8  10 40 2d e9                                      push {r4, lr}
007a98fc  00 40 a0 e1                                      mov r4, r0
007a9900  48 00 9f e5                                      ldr r0, [pc, #0x48]
007a9904  28 d0 4d e2                                      sub sp, sp, #0x28
007a9908  00 00 8f e0                                      add r0, pc, r0
007a990c  37 de fe eb                                      bl #0x7611f0
007a9910  28 00 8d e2                                      add r0, sp, #0x28
007a9914  01 20 a0 e3                                      mov r2, #1
007a9918  00 30 a0 e3                                      mov r3, #0
007a991c  20 20 cd e5                                      strb r2, [sp, #0x20]
007a9920  24 40 20 e5                                      str r4, [r0, #-0x24]!
007a9924  fe 25 a0 e3                                      mov r2, #0x3f800000
007a9928  1c 30 8d e5                                      str r3, [sp, #0x1c]
007a992c  24 20 8d e5                                      str r2, [sp, #0x24]
007a9930  08 30 8d e5                                      str r3, [sp, #8]
007a9934  0c 30 8d e5                                      str r3, [sp, #0xc]
007a9938  10 30 8d e5                                      str r3, [sp, #0x10]
007a993c  14 30 8d e5                                      str r3, [sp, #0x14]
007a9940  18 30 8d e5                                      str r3, [sp, #0x18]
007a9944  b2 ff ff eb                                      bl #0x7a9814
007a9948  28 d0 8d e2                                      add sp, sp, #0x28
007a994c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a9950  30 0f 16 00                                      .byte 0x30, 0x0f, 0x16, 0x00

; FUNCTION 0x007a9a94, declared_size=52, range_size=52, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX6RenderEv
; demangled: RenderFX::Render()
; decoder-mode: arm
007a9a94  10 40 2d e9                                      push {r4, lr}
007a9a98  38 00 90 e5                                      ldr r0, [r0, #0x38]
007a9a9c  c4 0e ff eb                                      bl #0x76d5b4
007a9aa0  00 40 50 e2                                      subs r4, r0, #0
007a9aa4  05 00 00 0a                                      beq #0x7a9ac0
007a9aa8  6d c0 fe eb                                      bl #0x759c64
007a9aac  04 00 a0 e1                                      mov r0, r4
007a9ab0  af 2e ff eb                                      bl #0x775574
007a9ab4  04 00 a0 e1                                      mov r0, r4
007a9ab8  10 40 bd e8                                      pop {r4, lr}
007a9abc  df c1 fe ea                                      b #0x75a240
007a9ac0  10 40 bd e8                                      pop {r4, lr}
007a9ac4  aa 2e ff ea                                      b #0x775574

; FUNCTION 0x007a9ac8, declared_size=52, range_size=52, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10EndDisplayEv
; demangled: RenderFX::EndDisplay()
; decoder-mode: arm
007a9ac8  10 40 2d e9                                      push {r4, lr}
007a9acc  38 00 90 e5                                      ldr r0, [r0, #0x38]
007a9ad0  b7 0e ff eb                                      bl #0x76d5b4
007a9ad4  00 40 50 e2                                      subs r4, r0, #0
007a9ad8  05 00 00 0a                                      beq #0x7a9af4
007a9adc  60 c0 fe eb                                      bl #0x759c64
007a9ae0  04 00 a0 e1                                      mov r0, r4
007a9ae4  eb 29 ff eb                                      bl #0x774298
007a9ae8  04 00 a0 e1                                      mov r0, r4
007a9aec  10 40 bd e8                                      pop {r4, lr}
007a9af0  d2 c1 fe ea                                      b #0x75a240
007a9af4  10 40 bd e8                                      pop {r4, lr}
007a9af8  e6 29 ff ea                                      b #0x774298

; FUNCTION 0x007a9afc, declared_size=52, range_size=52, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX12BeginDisplayEv
; demangled: RenderFX::BeginDisplay()
; decoder-mode: arm
007a9afc  10 40 2d e9                                      push {r4, lr}
007a9b00  38 00 90 e5                                      ldr r0, [r0, #0x38]
007a9b04  aa 0e ff eb                                      bl #0x76d5b4
007a9b08  00 40 50 e2                                      subs r4, r0, #0
007a9b0c  05 00 00 0a                                      beq #0x7a9b28
007a9b10  53 c0 fe eb                                      bl #0x759c64
007a9b14  04 00 a0 e1                                      mov r0, r4
007a9b18  a7 2d ff eb                                      bl #0x7751bc
007a9b1c  04 00 a0 e1                                      mov r0, r4
007a9b20  10 40 bd e8                                      pop {r4, lr}
007a9b24  c5 c1 fe ea                                      b #0x75a240
007a9b28  10 40 bd e8                                      pop {r4, lr}
007a9b2c  a2 2d ff ea                                      b #0x7751bc

; FUNCTION 0x007a9b30, declared_size=124, range_size=124, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX9SetBoundsEiiiiN7gameswf10scale_modeE
; demangled: RenderFX::SetBounds(int, int, int, int, gameswf::scale_mode)
; decoder-mode: arm
007a9b30  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007a9b34  0c d0 4d e2                                      sub sp, sp, #0xc
007a9b38  38 00 90 e5                                      ldr r0, [r0, #0x38]
007a9b3c  01 a0 a0 e1                                      mov sl, r1
007a9b40  02 80 a0 e1                                      mov r8, r2
007a9b44  03 70 a0 e1                                      mov r7, r3
007a9b48  28 60 9d e5                                      ldr r6, [sp, #0x28]
007a9b4c  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
007a9b50  97 0e ff eb                                      bl #0x76d5b4
007a9b54  00 40 50 e2                                      subs r4, r0, #0
007a9b58  0b 00 00 0a                                      beq #0x7a9b8c
007a9b5c  40 c0 fe eb                                      bl #0x759c64
007a9b60  04 00 a0 e1                                      mov r0, r4
007a9b64  0a 10 a0 e1                                      mov r1, sl
007a9b68  08 20 a0 e1                                      mov r2, r8
007a9b6c  07 30 a0 e1                                      mov r3, r7
007a9b70  00 60 8d e5                                      str r6, [sp]
007a9b74  04 50 8d e5                                      str r5, [sp, #4]
007a9b78  9d 2e ff eb                                      bl #0x7755f4
007a9b7c  04 00 a0 e1                                      mov r0, r4
007a9b80  0c d0 8d e2                                      add sp, sp, #0xc
007a9b84  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
007a9b88  ac c1 fe ea                                      b #0x75a240
007a9b8c  0a 10 a0 e1                                      mov r1, sl
007a9b90  08 20 a0 e1                                      mov r2, r8
007a9b94  07 30 a0 e1                                      mov r3, r7
007a9b98  28 60 8d e5                                      str r6, [sp, #0x28]
007a9b9c  2c 50 8d e5                                      str r5, [sp, #0x2c]
007a9ba0  0c d0 8d e2                                      add sp, sp, #0xc
007a9ba4  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
007a9ba8  91 2e ff ea                                      b #0x7755f4

; FUNCTION 0x007a9bac, declared_size=112, range_size=112, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX11SetViewportEiiii
; demangled: RenderFX::SetViewport(int, int, int, int)
; decoder-mode: arm
007a9bac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a9bb0  08 d0 4d e2                                      sub sp, sp, #8
007a9bb4  38 00 90 e5                                      ldr r0, [r0, #0x38]
007a9bb8  01 80 a0 e1                                      mov r8, r1
007a9bbc  02 70 a0 e1                                      mov r7, r2
007a9bc0  03 60 a0 e1                                      mov r6, r3
007a9bc4  20 50 9d e5                                      ldr r5, [sp, #0x20]
007a9bc8  79 0e ff eb                                      bl #0x76d5b4
007a9bcc  00 40 50 e2                                      subs r4, r0, #0
007a9bd0  0a 00 00 0a                                      beq #0x7a9c00
007a9bd4  22 c0 fe eb                                      bl #0x759c64
007a9bd8  04 00 a0 e1                                      mov r0, r4
007a9bdc  08 10 a0 e1                                      mov r1, r8
007a9be0  07 20 a0 e1                                      mov r2, r7
007a9be4  06 30 a0 e1                                      mov r3, r6
007a9be8  00 50 8d e5                                      str r5, [sp]
007a9bec  51 30 ff eb                                      bl #0x775d38
007a9bf0  04 00 a0 e1                                      mov r0, r4
007a9bf4  08 d0 8d e2                                      add sp, sp, #8
007a9bf8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007a9bfc  8f c1 fe ea                                      b #0x75a240
007a9c00  08 10 a0 e1                                      mov r1, r8
007a9c04  07 20 a0 e1                                      mov r2, r7
007a9c08  06 30 a0 e1                                      mov r3, r6
007a9c0c  20 50 8d e5                                      str r5, [sp, #0x20]
007a9c10  08 d0 8d e2                                      add sp, sp, #8
007a9c14  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007a9c18  46 30 ff ea                                      b #0x775d38

; FUNCTION 0x007a9c1c, declared_size=100, range_size=100, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX9PreRenderEv
; demangled: RenderFX::PreRender()
; decoder-mode: arm
007a9c1c  70 40 2d e9                                      push {r4, r5, r6, lr}
007a9c20  38 00 90 e5                                      ldr r0, [r0, #0x38]
007a9c24  62 0e ff eb                                      bl #0x76d5b4
007a9c28  48 50 9f e5                                      ldr r5, [pc, #0x48]
007a9c2c  00 40 50 e2                                      subs r4, r0, #0
007a9c30  05 50 8f e0                                      add r5, pc, r5
007a9c34  00 00 00 0a                                      beq #0x7a9c3c
007a9c38  09 c0 fe eb                                      bl #0x759c64
007a9c3c  38 30 9f e5                                      ldr r3, [pc, #0x38]
007a9c40  03 30 95 e7                                      ldr r3, [r5, r3]
007a9c44  00 00 93 e5                                      ldr r0, [r3]
007a9c48  00 00 50 e3                                      cmp r0, #0
007a9c4c  06 00 00 0a                                      beq #0x7a9c6c
007a9c50  04 10 a0 e1                                      mov r1, r4
007a9c54  4c bd fe eb                                      bl #0x75918c
007a9c58  00 00 54 e3                                      cmp r4, #0
007a9c5c  04 00 00 0a                                      beq #0x7a9c74
007a9c60  04 00 a0 e1                                      mov r0, r4
007a9c64  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a9c68  74 c1 fe ea                                      b #0x75a240
007a9c6c  00 00 54 e3                                      cmp r4, #0
007a9c70  fa ff ff 1a                                      bne #0x7a9c60
007a9c74  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a9c78  60 ae 1e 00 b8 36 00 00                          .byte 0x60, 0xae, 0x1e, 0x00, 0xb8, 0x36, 0x00, 0x00

; FUNCTION 0x007a9c80, declared_size=292, range_size=292, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX14SetColorFilterEPN7gameswf9characterEij
; demangled: RenderFX::SetColorFilter(gameswf::character*, int, unsigned int)
; decoder-mode: arm
007a9c80  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007a9c84  02 50 a0 e1                                      mov r5, r2
007a9c88  02 20 e0 e1                                      mvn r2, r2
007a9c8c  a2 2f a0 e1                                      lsr r2, r2, #0x1f
007a9c90  00 00 51 e3                                      cmp r1, #0
007a9c94  00 20 a0 03                                      moveq r2, #0
007a9c98  00 00 52 e3                                      cmp r2, #0
007a9c9c  18 d0 4d e2                                      sub sp, sp, #0x18
007a9ca0  01 80 a0 e1                                      mov r8, r1
007a9ca4  03 a0 a0 e1                                      mov sl, r3
007a9ca8  38 00 00 0a                                      beq #0x7a9d90
007a9cac  50 40 91 e5                                      ldr r4, [r1, #0x50]
007a9cb0  08 30 94 e5                                      ldr r3, [r4, #8]
007a9cb4  03 00 55 e1                                      cmp r5, r3
007a9cb8  34 00 00 aa                                      bge #0x7a9d90
007a9cbc  00 30 94 e5                                      ldr r3, [r4]
007a9cc0  00 60 a0 e3                                      mov r6, #0
007a9cc4  48 00 8d e9                                      stmib sp, {r3, r6}
007a9cc8  0c 60 8d e5                                      str r6, [sp, #0xc]
007a9ccc  10 60 8d e5                                      str r6, [sp, #0x10]
007a9cd0  14 60 cd e5                                      strb r6, [sp, #0x14]
007a9cd4  04 90 8d e2                                      add sb, sp, #4
007a9cd8  04 00 89 e2                                      add r0, sb, #4
007a9cdc  08 10 94 e5                                      ldr r1, [r4, #8]
007a9ce0  7c af fe eb                                      bl #0x755ad8
007a9ce4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007a9ce8  06 00 53 e1                                      cmp r3, r6
007a9cec  0f 00 00 da                                      ble #0x7a9d30
007a9cf0  06 70 a0 e1                                      mov r7, r6
007a9cf4  04 e0 94 e5                                      ldr lr, [r4, #4]
007a9cf8  08 c0 9d e5                                      ldr ip, [sp, #8]
007a9cfc  01 70 87 e2                                      add r7, r7, #1
007a9d00  06 e0 8e e0                                      add lr, lr, r6
007a9d04  06 c0 8c e0                                      add ip, ip, r6
007a9d08  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007a9d0c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007a9d10  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007a9d14  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007a9d18  07 00 9e e8                                      ldm lr, {r0, r1, r2}
007a9d1c  07 00 8c e8                                      stm ip, {r0, r1, r2}
007a9d20  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007a9d24  2c 60 86 e2                                      add r6, r6, #0x2c
007a9d28  03 00 57 e1                                      cmp r7, r3
007a9d2c  f0 ff ff ba                                      blt #0x7a9cf4
007a9d30  2c 30 a0 e3                                      mov r3, #0x2c
007a9d34  93 05 05 e0                                      mul r5, r3, r5
007a9d38  08 30 9d e5                                      ldr r3, [sp, #8]
007a9d3c  05 20 93 e7                                      ldr r2, [r3, r5]
007a9d40  05 50 83 e0                                      add r5, r3, r5
007a9d44  00 00 52 e3                                      cmp r2, #0
007a9d48  12 00 00 1a                                      bne #0x7a9d98
007a9d4c  2a 1c a0 e1                                      lsr r1, sl, #0x18
007a9d50  2a 24 a0 e1                                      lsr r2, sl, #8
007a9d54  2a 38 a0 e1                                      lsr r3, sl, #0x10
007a9d58  07 10 c5 e5                                      strb r1, [r5, #7]
007a9d5c  05 20 c5 e5                                      strb r2, [r5, #5]
007a9d60  06 30 c5 e5                                      strb r3, [r5, #6]
007a9d64  04 a0 c5 e5                                      strb sl, [r5, #4]
007a9d68  08 00 a0 e1                                      mov r0, r8
007a9d6c  04 40 89 e2                                      add r4, sb, #4
007a9d70  09 10 a0 e1                                      mov r1, sb
007a9d74  df af fe eb                                      bl #0x755cf8
007a9d78  00 10 a0 e3                                      mov r1, #0
007a9d7c  04 00 a0 e1                                      mov r0, r4
007a9d80  54 af fe eb                                      bl #0x755ad8
007a9d84  04 00 a0 e1                                      mov r0, r4
007a9d88  00 10 a0 e3                                      mov r1, #0
007a9d8c  4d a4 fe eb                                      bl #0x752ec8
007a9d90  18 d0 8d e2                                      add sp, sp, #0x18
007a9d94  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007a9d98  02 00 52 e3                                      cmp r2, #2
007a9d9c  f1 ff ff 1a                                      bne #0x7a9d68
007a9da0  e9 ff ff ea                                      b #0x7a9d4c

; FUNCTION 0x007a9da4, declared_size=44, range_size=44, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX14SetColorFilterEPKcij
; demangled: RenderFX::SetColorFilter(char const*, int, unsigned int)
; decoder-mode: arm
007a9da4  70 40 2d e9                                      push {r4, r5, r6, lr}
007a9da8  02 50 a0 e1                                      mov r5, r2
007a9dac  03 40 a0 e1                                      mov r4, r3
007a9db0  00 60 a0 e1                                      mov r6, r0
007a9db4  e9 fc ff eb                                      bl #0x7a9160
007a9db8  05 20 a0 e1                                      mov r2, r5
007a9dbc  00 10 a0 e1                                      mov r1, r0
007a9dc0  04 30 a0 e1                                      mov r3, r4
007a9dc4  06 00 a0 e1                                      mov r0, r6
007a9dc8  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a9dcc  ab ff ff ea                                      b #0x7a9c80

; FUNCTION 0x007a9dd0, declared_size=604, range_size=604, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX17SetColorTransformEPN7gameswf9characterEjj
; demangled: RenderFX::SetColorTransform(gameswf::character*, unsigned int, unsigned int)
; decoder-mode: arm
007a9dd0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007a9dd4  00 40 51 e2                                      subs r4, r1, #0
007a9dd8  24 d0 4d e2                                      sub sp, sp, #0x24
007a9ddc  02 50 a0 e1                                      mov r5, r2
007a9de0  03 60 a0 e1                                      mov r6, r3
007a9de4  56 00 00 0a                                      beq #0x7a9f44
007a9de8  52 08 e7 e7                                      ubfx r0, r2, #0x10, #8
007a9dec  3b 91 ed eb                                      bl #0x30e2e0
007a9df0  43 14 a0 e3                                      mov r1, #0x43000000
007a9df4  7f 18 81 e2                                      add r1, r1, #0x7f0000
007a9df8  a5 93 ed eb                                      bl #0x30ec94
007a9dfc  02 15 e0 e3                                      mvn r1, #0x800000
007a9e00  00 70 a0 e1                                      mov r7, r0
007a9e04  aa 91 ed eb                                      bl #0x30e4b4
007a9e08  00 00 50 e3                                      cmp r0, #0
007a9e0c  7f 00 00 1a                                      bne #0x7aa010
007a9e10  00 70 a0 e3                                      mov r7, #0
007a9e14  55 04 e7 e7                                      ubfx r0, r5, #8, #8
007a9e18  00 70 8d e5                                      str r7, [sp]
007a9e1c  2f 91 ed eb                                      bl #0x30e2e0
007a9e20  43 14 a0 e3                                      mov r1, #0x43000000
007a9e24  7f 18 81 e2                                      add r1, r1, #0x7f0000
007a9e28  99 93 ed eb                                      bl #0x30ec94
007a9e2c  02 15 e0 e3                                      mvn r1, #0x800000
007a9e30  00 70 a0 e1                                      mov r7, r0
007a9e34  9e 91 ed eb                                      bl #0x30e4b4
007a9e38  00 00 50 e3                                      cmp r0, #0
007a9e3c  6c 00 00 1a                                      bne #0x7a9ff4
007a9e40  00 70 a0 e3                                      mov r7, #0
007a9e44  75 00 ef e6                                      uxtb r0, r5
007a9e48  08 70 8d e5                                      str r7, [sp, #8]
007a9e4c  23 91 ed eb                                      bl #0x30e2e0
007a9e50  43 14 a0 e3                                      mov r1, #0x43000000
007a9e54  7f 18 81 e2                                      add r1, r1, #0x7f0000
007a9e58  8d 93 ed eb                                      bl #0x30ec94
007a9e5c  02 15 e0 e3                                      mvn r1, #0x800000
007a9e60  00 70 a0 e1                                      mov r7, r0
007a9e64  92 91 ed eb                                      bl #0x30e4b4
007a9e68  00 00 50 e3                                      cmp r0, #0
007a9e6c  59 00 00 1a                                      bne #0x7a9fd8
007a9e70  00 70 a0 e3                                      mov r7, #0
007a9e74  25 0c a0 e1                                      lsr r0, r5, #0x18
007a9e78  10 70 8d e5                                      str r7, [sp, #0x10]
007a9e7c  17 91 ed eb                                      bl #0x30e2e0
007a9e80  43 14 a0 e3                                      mov r1, #0x43000000
007a9e84  7f 18 81 e2                                      add r1, r1, #0x7f0000
007a9e88  81 93 ed eb                                      bl #0x30ec94
007a9e8c  02 15 e0 e3                                      mvn r1, #0x800000
007a9e90  00 50 a0 e1                                      mov r5, r0
007a9e94  86 91 ed eb                                      bl #0x30e4b4
007a9e98  00 00 50 e3                                      cmp r0, #0
007a9e9c  46 00 00 1a                                      bne #0x7a9fbc
007a9ea0  00 50 a0 e3                                      mov r5, #0
007a9ea4  56 08 e7 e7                                      ubfx r0, r6, #0x10, #8
007a9ea8  18 50 8d e5                                      str r5, [sp, #0x18]
007a9eac  0b 91 ed eb                                      bl #0x30e2e0
007a9eb0  02 15 e0 e3                                      mvn r1, #0x800000
007a9eb4  00 50 a0 e1                                      mov r5, r0
007a9eb8  7d 91 ed eb                                      bl #0x30e4b4
007a9ebc  00 00 50 e3                                      cmp r0, #0
007a9ec0  36 00 00 1a                                      bne #0x7a9fa0
007a9ec4  00 50 a0 e3                                      mov r5, #0
007a9ec8  56 04 e7 e7                                      ubfx r0, r6, #8, #8
007a9ecc  04 50 8d e5                                      str r5, [sp, #4]
007a9ed0  02 91 ed eb                                      bl #0x30e2e0
007a9ed4  02 15 e0 e3                                      mvn r1, #0x800000
007a9ed8  00 50 a0 e1                                      mov r5, r0
007a9edc  74 91 ed eb                                      bl #0x30e4b4
007a9ee0  00 00 50 e3                                      cmp r0, #0
007a9ee4  26 00 00 1a                                      bne #0x7a9f84
007a9ee8  00 50 a0 e3                                      mov r5, #0
007a9eec  76 00 ef e6                                      uxtb r0, r6
007a9ef0  0c 50 8d e5                                      str r5, [sp, #0xc]
007a9ef4  f9 90 ed eb                                      bl #0x30e2e0
007a9ef8  02 15 e0 e3                                      mvn r1, #0x800000
007a9efc  00 50 a0 e1                                      mov r5, r0
007a9f00  6b 91 ed eb                                      bl #0x30e4b4
007a9f04  00 00 50 e3                                      cmp r0, #0
007a9f08  16 00 00 1a                                      bne #0x7a9f68
007a9f0c  00 50 a0 e3                                      mov r5, #0
007a9f10  26 0c a0 e1                                      lsr r0, r6, #0x18
007a9f14  14 50 8d e5                                      str r5, [sp, #0x14]
007a9f18  f0 90 ed eb                                      bl #0x30e2e0
007a9f1c  02 15 e0 e3                                      mvn r1, #0x800000
007a9f20  00 50 a0 e1                                      mov r5, r0
007a9f24  62 91 ed eb                                      bl #0x30e4b4
007a9f28  00 00 50 e3                                      cmp r0, #0
007a9f2c  06 00 00 1a                                      bne #0x7a9f4c
007a9f30  00 50 a0 e3                                      mov r5, #0
007a9f34  04 00 a0 e1                                      mov r0, r4
007a9f38  0d 10 a0 e1                                      mov r1, sp
007a9f3c  1c 50 8d e5                                      str r5, [sp, #0x1c]
007a9f40  85 a5 fe eb                                      bl #0x75355c
007a9f44  24 d0 8d e2                                      add sp, sp, #0x24
007a9f48  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007a9f4c  02 11 e0 e3                                      mvn r1, #0x80000000
007a9f50  05 00 a0 e1                                      mov r0, r5
007a9f54  02 15 41 e2                                      sub r1, r1, #0x800000
007a9f58  93 92 ed eb                                      bl #0x30e9ac
007a9f5c  00 00 50 e3                                      cmp r0, #0
007a9f60  f3 ff ff 1a                                      bne #0x7a9f34
007a9f64  f1 ff ff ea                                      b #0x7a9f30
007a9f68  02 11 e0 e3                                      mvn r1, #0x80000000
007a9f6c  05 00 a0 e1                                      mov r0, r5
007a9f70  02 15 41 e2                                      sub r1, r1, #0x800000
007a9f74  8c 92 ed eb                                      bl #0x30e9ac
007a9f78  00 00 50 e3                                      cmp r0, #0
007a9f7c  e3 ff ff 1a                                      bne #0x7a9f10
007a9f80  e1 ff ff ea                                      b #0x7a9f0c
007a9f84  02 11 e0 e3                                      mvn r1, #0x80000000
007a9f88  05 00 a0 e1                                      mov r0, r5
007a9f8c  02 15 41 e2                                      sub r1, r1, #0x800000
007a9f90  85 92 ed eb                                      bl #0x30e9ac
007a9f94  00 00 50 e3                                      cmp r0, #0
007a9f98  d3 ff ff 1a                                      bne #0x7a9eec
007a9f9c  d1 ff ff ea                                      b #0x7a9ee8
007a9fa0  02 11 e0 e3                                      mvn r1, #0x80000000
007a9fa4  05 00 a0 e1                                      mov r0, r5
007a9fa8  02 15 41 e2                                      sub r1, r1, #0x800000
007a9fac  7e 92 ed eb                                      bl #0x30e9ac
007a9fb0  00 00 50 e3                                      cmp r0, #0
007a9fb4  c3 ff ff 1a                                      bne #0x7a9ec8
007a9fb8  c1 ff ff ea                                      b #0x7a9ec4
007a9fbc  02 11 e0 e3                                      mvn r1, #0x80000000
007a9fc0  05 00 a0 e1                                      mov r0, r5
007a9fc4  02 15 41 e2                                      sub r1, r1, #0x800000
007a9fc8  77 92 ed eb                                      bl #0x30e9ac
007a9fcc  00 00 50 e3                                      cmp r0, #0
007a9fd0  b3 ff ff 1a                                      bne #0x7a9ea4
007a9fd4  b1 ff ff ea                                      b #0x7a9ea0
007a9fd8  02 11 e0 e3                                      mvn r1, #0x80000000
007a9fdc  07 00 a0 e1                                      mov r0, r7
007a9fe0  02 15 41 e2                                      sub r1, r1, #0x800000
007a9fe4  70 92 ed eb                                      bl #0x30e9ac
007a9fe8  00 00 50 e3                                      cmp r0, #0
007a9fec  a0 ff ff 1a                                      bne #0x7a9e74
007a9ff0  9e ff ff ea                                      b #0x7a9e70
007a9ff4  02 11 e0 e3                                      mvn r1, #0x80000000
007a9ff8  07 00 a0 e1                                      mov r0, r7
007a9ffc  02 15 41 e2                                      sub r1, r1, #0x800000
007aa000  69 92 ed eb                                      bl #0x30e9ac
007aa004  00 00 50 e3                                      cmp r0, #0
007aa008  8d ff ff 1a                                      bne #0x7a9e44
007aa00c  8b ff ff ea                                      b #0x7a9e40
007aa010  02 11 e0 e3                                      mvn r1, #0x80000000
007aa014  07 00 a0 e1                                      mov r0, r7
007aa018  02 15 41 e2                                      sub r1, r1, #0x800000
007aa01c  62 92 ed eb                                      bl #0x30e9ac
007aa020  00 00 50 e3                                      cmp r0, #0
007aa024  7a ff ff 1a                                      bne #0x7a9e14
007aa028  78 ff ff ea                                      b #0x7a9e10

; FUNCTION 0x007aa02c, declared_size=44, range_size=44, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX17SetColorTransformEPKcjj
; demangled: RenderFX::SetColorTransform(char const*, unsigned int, unsigned int)
; decoder-mode: arm
007aa02c  70 40 2d e9                                      push {r4, r5, r6, lr}
007aa030  02 50 a0 e1                                      mov r5, r2
007aa034  03 40 a0 e1                                      mov r4, r3
007aa038  00 60 a0 e1                                      mov r6, r0
007aa03c  47 fc ff eb                                      bl #0x7a9160
007aa040  05 20 a0 e1                                      mov r2, r5
007aa044  00 10 a0 e1                                      mov r1, r0
007aa048  04 30 a0 e1                                      mov r3, r4
007aa04c  06 00 a0 e1                                      mov r0, r6
007aa050  70 40 bd e8                                      pop {r4, r5, r6, lr}
007aa054  5d ff ff ea                                      b #0x7a9dd0

; FUNCTION 0x007aa058, declared_size=148, range_size=148, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX8SetAlphaEPKcf
; demangled: RenderFX::SetAlpha(char const*, float)
; decoder-mode: arm
007aa058  70 40 2d e9                                      push {r4, r5, r6, lr}
007aa05c  20 d0 4d e2                                      sub sp, sp, #0x20
007aa060  02 50 a0 e1                                      mov r5, r2
007aa064  3d fc ff eb                                      bl #0x7a9160
007aa068  74 30 9f e5                                      ldr r3, [pc, #0x74]
007aa06c  00 60 50 e2                                      subs r6, r0, #0
007aa070  03 30 8f e0                                      add r3, pc, r3
007aa074  11 00 00 0a                                      beq #0x7aa0c0
007aa078  68 20 9f e5                                      ldr r2, [pc, #0x68]
007aa07c  0d c0 a0 e1                                      mov ip, sp
007aa080  0d 40 a0 e1                                      mov r4, sp
007aa084  02 e0 93 e7                                      ldr lr, [r3, r2]
007aa088  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007aa08c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007aa090  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
007aa094  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007aa098  05 00 a0 e1                                      mov r0, r5
007aa09c  02 15 e0 e3                                      mvn r1, #0x800000
007aa0a0  03 91 ed eb                                      bl #0x30e4b4
007aa0a4  00 00 50 e3                                      cmp r0, #0
007aa0a8  06 00 00 1a                                      bne #0x7aa0c8
007aa0ac  00 50 a0 e3                                      mov r5, #0
007aa0b0  06 00 a0 e1                                      mov r0, r6
007aa0b4  0d 10 a0 e1                                      mov r1, sp
007aa0b8  18 50 8d e5                                      str r5, [sp, #0x18]
007aa0bc  26 a5 fe eb                                      bl #0x75355c
007aa0c0  20 d0 8d e2                                      add sp, sp, #0x20
007aa0c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007aa0c8  02 11 e0 e3                                      mvn r1, #0x80000000
007aa0cc  05 00 a0 e1                                      mov r0, r5
007aa0d0  02 15 41 e2                                      sub r1, r1, #0x800000
007aa0d4  34 92 ed eb                                      bl #0x30e9ac
007aa0d8  00 00 50 e3                                      cmp r0, #0
007aa0dc  f3 ff ff 1a                                      bne #0x7aa0b0
007aa0e0  f1 ff ff ea                                      b #0x7aa0ac
; mapping-symbol data/literal pool
007aa0e4  20 aa 1e 00 84 34 00 00                          .byte 0x20, 0xaa, 0x1e, 0x00, 0x84, 0x34, 0x00, 0x00

; FUNCTION 0x007aa0ec, declared_size=500, range_size=500, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX19ForceTexturesToVRAMEbPN7gameswf14player_contextE
; demangled: RenderFX::ForceTexturesToVRAM(bool, gameswf::player_context*)
; decoder-mode: arm
007aa0ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007aa0f0  5c d0 4d e2                                      sub sp, sp, #0x5c
007aa0f4  1c 90 8d e2                                      add sb, sp, #0x1c
007aa0f8  00 c0 a0 e3                                      mov ip, #0
007aa0fc  08 30 89 e2                                      add r3, sb, #8
007aa100  04 c0 83 e4                                      str ip, [r3], #4
007aa104  c8 a1 9f e5                                      ldr sl, [pc, #0x1c8]
007aa108  04 c0 83 e4                                      str ip, [r3], #4
007aa10c  00 20 a0 e3                                      mov r2, #0
007aa110  fe 45 a0 e3                                      mov r4, #0x3f800000
007aa114  04 c0 83 e4                                      str ip, [r3], #4
007aa118  00 70 51 e2                                      subs r7, r1, #0
007aa11c  00 10 e0 e3                                      mvn r1, #0
007aa120  00 c0 83 e5                                      str ip, [r3]
007aa124  0a a0 8f e0                                      add sl, pc, sl
007aa128  3c 20 8d e5                                      str r2, [sp, #0x3c]
007aa12c  57 10 cd e5                                      strb r1, [sp, #0x57]
007aa130  2c 40 8d e5                                      str r4, [sp, #0x2c]
007aa134  00 60 a0 e1                                      mov r6, r0
007aa138  44 20 8d e5                                      str r2, [sp, #0x44]
007aa13c  4c 20 8d e5                                      str r2, [sp, #0x4c]
007aa140  48 20 8d e5                                      str r2, [sp, #0x48]
007aa144  50 20 8d e5                                      str r2, [sp, #0x50]
007aa148  34 20 8d e5                                      str r2, [sp, #0x34]
007aa14c  38 40 8d e5                                      str r4, [sp, #0x38]
007aa150  40 40 8d e5                                      str r4, [sp, #0x40]
007aa154  54 10 cd e5                                      strb r1, [sp, #0x54]
007aa158  55 10 cd e5                                      strb r1, [sp, #0x55]
007aa15c  56 10 cd e5                                      strb r1, [sp, #0x56]
007aa160  20 c0 8d e5                                      str ip, [sp, #0x20]
007aa164  1c 40 8d e5                                      str r4, [sp, #0x1c]
007aa168  55 00 00 0a                                      beq #0x7aa2c4
007aa16c  0c 30 97 e5                                      ldr r3, [r7, #0xc]
007aa170  28 30 93 e5                                      ldr r3, [r3, #0x28]
007aa174  00 00 53 e3                                      cmp r3, #0
007aa178  04 00 00 0a                                      beq #0x7aa190
007aa17c  34 30 93 e5                                      ldr r3, [r3, #0x34]
007aa180  03 00 a0 e1                                      mov r0, r3
007aa184  00 30 93 e5                                      ldr r3, [r3]
007aa188  0f e0 a0 e1                                      mov lr, pc
007aa18c  08 f0 93 e5                                      ldr pc, [r3, #8]
007aa190  10 30 97 e5                                      ldr r3, [r7, #0x10]
007aa194  0c 30 93 e5                                      ldr r3, [r3, #0xc]
007aa198  00 00 53 e3                                      cmp r3, #0
007aa19c  04 00 00 0a                                      beq #0x7aa1b4
007aa1a0  34 30 93 e5                                      ldr r3, [r3, #0x34]
007aa1a4  03 00 a0 e1                                      mov r0, r3
007aa1a8  00 30 93 e5                                      ldr r3, [r3]
007aa1ac  0f e0 a0 e1                                      mov lr, pc
007aa1b0  08 f0 93 e5                                      ldr pc, [r3, #8]
007aa1b4  18 30 97 e5                                      ldr r3, [r7, #0x18]
007aa1b8  00 00 53 e3                                      cmp r3, #0
007aa1bc  36 00 00 da                                      ble #0x7aa29c
007aa1c0  44 30 8d e2                                      add r3, sp, #0x44
007aa1c4  0c b1 9f e5                                      ldr fp, [pc, #0x10c]
007aa1c8  0c 30 8d e5                                      str r3, [sp, #0xc]
007aa1cc  34 30 8d e2                                      add r3, sp, #0x34
007aa1d0  00 80 a0 e3                                      mov r8, #0
007aa1d4  10 30 8d e5                                      str r3, [sp, #0x10]
007aa1d8  14 30 97 e5                                      ldr r3, [r7, #0x14]
007aa1dc  00 00 56 e3                                      cmp r6, #0
007aa1e0  08 31 93 e7                                      ldr r3, [r3, r8, lsl #2]
007aa1e4  14 30 8d e5                                      str r3, [sp, #0x14]
007aa1e8  31 00 00 1a                                      bne #0x7aa2b4
007aa1ec  14 00 9d e5                                      ldr r0, [sp, #0x14]
007aa1f0  ef 0c ff eb                                      bl #0x76d5b4
007aa1f4  0c 50 90 e5                                      ldr r5, [r0, #0xc]
007aa1f8  a0 30 95 e5                                      ldr r3, [r5, #0xa0]
007aa1fc  00 00 53 e3                                      cmp r3, #0
007aa200  1f 00 00 da                                      ble #0x7aa284
007aa204  00 40 a0 e3                                      mov r4, #0
007aa208  03 00 00 ea                                      b #0x7aa21c
007aa20c  a0 30 95 e5                                      ldr r3, [r5, #0xa0]
007aa210  01 40 84 e2                                      add r4, r4, #1
007aa214  03 00 54 e1                                      cmp r4, r3
007aa218  19 00 00 aa                                      bge #0x7aa284
007aa21c  9c 30 95 e5                                      ldr r3, [r5, #0x9c]
007aa220  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
007aa224  03 00 a0 e1                                      mov r0, r3
007aa228  00 30 93 e5                                      ldr r3, [r3]
007aa22c  0f e0 a0 e1                                      mov lr, pc
007aa230  08 f0 93 e5                                      ldr pc, [r3, #8]
007aa234  00 00 56 e3                                      cmp r6, #0
007aa238  f3 ff ff 0a                                      beq #0x7aa20c
007aa23c  0b 30 9a e7                                      ldr r3, [sl, fp]
007aa240  9c 20 95 e5                                      ldr r2, [r5, #0x9c]
007aa244  09 10 a0 e1                                      mov r1, sb
007aa248  00 30 93 e5                                      ldr r3, [r3]
007aa24c  04 21 92 e7                                      ldr r2, [r2, r4, lsl #2]
007aa250  01 40 84 e2                                      add r4, r4, #1
007aa254  00 c0 93 e5                                      ldr ip, [r3]
007aa258  03 00 a0 e1                                      mov r0, r3
007aa25c  54 30 9d e5                                      ldr r3, [sp, #0x54]
007aa260  04 30 8d e5                                      str r3, [sp, #4]
007aa264  10 30 9d e5                                      ldr r3, [sp, #0x10]
007aa268  00 30 8d e5                                      str r3, [sp]
007aa26c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007aa270  0f e0 a0 e1                                      mov lr, pc
007aa274  80 f0 9c e5                                      ldr pc, [ip, #0x80]
007aa278  a0 30 95 e5                                      ldr r3, [r5, #0xa0]
007aa27c  03 00 54 e1                                      cmp r4, r3
007aa280  e5 ff ff ba                                      blt #0x7aa21c
007aa284  00 00 56 e3                                      cmp r6, #0
007aa288  05 00 00 1a                                      bne #0x7aa2a4
007aa28c  18 30 97 e5                                      ldr r3, [r7, #0x18]
007aa290  01 80 88 e2                                      add r8, r8, #1
007aa294  03 00 58 e1                                      cmp r8, r3
007aa298  ce ff ff ba                                      blt #0x7aa1d8
007aa29c  5c d0 8d e2                                      add sp, sp, #0x5c
007aa2a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007aa2a4  14 00 9d e5                                      ldr r0, [sp, #0x14]
007aa2a8  c1 0c ff eb                                      bl #0x76d5b4
007aa2ac  f9 27 ff eb                                      bl #0x774298
007aa2b0  f5 ff ff ea                                      b #0x7aa28c
007aa2b4  03 00 a0 e1                                      mov r0, r3
007aa2b8  bd 0c ff eb                                      bl #0x76d5b4
007aa2bc  be 2b ff eb                                      bl #0x7751bc
007aa2c0  c9 ff ff ea                                      b #0x7aa1ec
007aa2c4  10 30 9f e5                                      ldr r3, [pc, #0x10]
007aa2c8  03 30 9a e7                                      ldr r3, [sl, r3]
007aa2cc  00 70 93 e5                                      ldr r7, [r3]
007aa2d0  a5 ff ff ea                                      b #0x7aa16c
; mapping-symbol data/literal pool
007aa2d4  6c a9 1e 00 b4 39 00 00 30 49 00 00              .byte 0x6c, 0xa9, 0x1e, 0x00, 0xb4, 0x39, 0x00, 0x00, 0x30, 0x49, 0x00, 0x00

; FUNCTION 0x007aa3f0, declared_size=496, range_size=496, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX11SetPositionEPN7gameswf9characterEii
; demangled: RenderFX::SetPosition(gameswf::character*, int, int)
; decoder-mode: arm
007aa3f0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007aa3f4  00 50 51 e2                                      subs r5, r1, #0
007aa3f8  18 d0 4d e2                                      sub sp, sp, #0x18
007aa3fc  03 70 a0 e1                                      mov r7, r3
007aa400  66 00 00 0a                                      beq #0x7aa5a0
007aa404  0c 30 8d e2                                      add r3, sp, #0xc
007aa408  00 10 a0 e3                                      mov r1, #0
007aa40c  4c 60 95 e5                                      ldr r6, [r5, #0x4c]
007aa410  04 10 83 e4                                      str r1, [r3], #4
007aa414  04 10 83 e4                                      str r1, [r3], #4
007aa418  00 10 83 e5                                      str r1, [r3]
007aa41c  fe c5 a0 e3                                      mov ip, #0x3f800000
007aa420  02 00 a0 e1                                      mov r0, r2
007aa424  10 c0 8d e5                                      str ip, [sp, #0x10]
007aa428  00 c0 8d e5                                      str ip, [sp]
007aa42c  04 10 8d e5                                      str r1, [sp, #4]
007aa430  4b 91 ed eb                                      bl #0x30e964
007aa434  41 14 a0 e3                                      mov r1, #0x41000000
007aa438  0a 16 81 e2                                      add r1, r1, #0xa00000
007aa43c  4a 92 ed eb                                      bl #0x30ed6c
007aa440  00 80 a0 e1                                      mov r8, r0
007aa444  07 00 a0 e1                                      mov r0, r7
007aa448  45 91 ed eb                                      bl #0x30e964
007aa44c  41 14 a0 e3                                      mov r1, #0x41000000
007aa450  0a 16 81 e2                                      add r1, r1, #0xa00000
007aa454  44 92 ed eb                                      bl #0x30ed6c
007aa458  00 10 a0 e3                                      mov r1, #0
007aa45c  00 a0 a0 e1                                      mov sl, r0
007aa460  41 92 ed eb                                      bl #0x30ed6c
007aa464  00 10 a0 e1                                      mov r1, r0
007aa468  08 00 a0 e1                                      mov r0, r8
007aa46c  cc 91 ed eb                                      bl #0x30eba4
007aa470  00 10 a0 e3                                      mov r1, #0
007aa474  ca 91 ed eb                                      bl #0x30eba4
007aa478  02 15 e0 e3                                      mvn r1, #0x800000
007aa47c  00 70 a0 e1                                      mov r7, r0
007aa480  0b 90 ed eb                                      bl #0x30e4b4
007aa484  00 00 50 e3                                      cmp r0, #0
007aa488  0d 40 a0 e1                                      mov r4, sp
007aa48c  4c 00 00 1a                                      bne #0x7aa5c4
007aa490  00 70 a0 e3                                      mov r7, #0
007aa494  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007aa498  08 00 a0 e1                                      mov r0, r8
007aa49c  08 70 8d e5                                      str r7, [sp, #8]
007aa4a0  31 92 ed eb                                      bl #0x30ed6c
007aa4a4  00 10 a0 e1                                      mov r1, r0
007aa4a8  0a 00 a0 e1                                      mov r0, sl
007aa4ac  bc 91 ed eb                                      bl #0x30eba4
007aa4b0  14 10 9d e5                                      ldr r1, [sp, #0x14]
007aa4b4  ba 91 ed eb                                      bl #0x30eba4
007aa4b8  02 15 e0 e3                                      mvn r1, #0x800000
007aa4bc  00 70 a0 e1                                      mov r7, r0
007aa4c0  fb 8f ed eb                                      bl #0x30e4b4
007aa4c4  00 00 50 e3                                      cmp r0, #0
007aa4c8  36 00 00 1a                                      bne #0x7aa5a8
007aa4cc  00 70 a0 e3                                      mov r7, #0
007aa4d0  14 70 8d e5                                      str r7, [sp, #0x14]
007aa4d4  00 00 96 e5                                      ldr r0, [r6]
007aa4d8  04 80 96 e5                                      ldr r8, [r6, #4]
007aa4dc  00 10 a0 e1                                      mov r1, r0
007aa4e0  21 92 ed eb                                      bl #0x30ed6c
007aa4e4  08 10 a0 e1                                      mov r1, r8
007aa4e8  00 70 a0 e1                                      mov r7, r0
007aa4ec  08 00 a0 e1                                      mov r0, r8
007aa4f0  1d 92 ed eb                                      bl #0x30ed6c
007aa4f4  00 10 a0 e1                                      mov r1, r0
007aa4f8  07 00 a0 e1                                      mov r0, r7
007aa4fc  a8 91 ed eb                                      bl #0x30eba4
007aa500  07 8f ed eb                                      bl #0x30e124
007aa504  10 80 96 e5                                      ldr r8, [r6, #0x10]
007aa508  00 a0 a0 e1                                      mov sl, r0
007aa50c  00 10 96 e5                                      ldr r1, [r6]
007aa510  08 00 a0 e1                                      mov r0, r8
007aa514  14 92 ed eb                                      bl #0x30ed6c
007aa518  0c 70 96 e5                                      ldr r7, [r6, #0xc]
007aa51c  04 10 96 e5                                      ldr r1, [r6, #4]
007aa520  00 90 a0 e1                                      mov sb, r0
007aa524  07 00 a0 e1                                      mov r0, r7
007aa528  0f 92 ed eb                                      bl #0x30ed6c
007aa52c  00 10 a0 e1                                      mov r1, r0
007aa530  09 00 a0 e1                                      mov r0, sb
007aa534  9c 8f ed eb                                      bl #0x30e3ac
007aa538  00 10 a0 e3                                      mov r1, #0
007aa53c  72 90 ed eb                                      bl #0x30e70c
007aa540  08 10 a0 e1                                      mov r1, r8
007aa544  00 00 50 e3                                      cmp r0, #0
007aa548  08 00 a0 e1                                      mov r0, r8
007aa54c  02 a1 8a 12                                      addne sl, sl, #0x80000000
007aa550  05 92 ed eb                                      bl #0x30ed6c
007aa554  07 10 a0 e1                                      mov r1, r7
007aa558  00 80 a0 e1                                      mov r8, r0
007aa55c  07 00 a0 e1                                      mov r0, r7
007aa560  01 92 ed eb                                      bl #0x30ed6c
007aa564  00 10 a0 e1                                      mov r1, r0
007aa568  08 00 a0 e1                                      mov r0, r8
007aa56c  8c 91 ed eb                                      bl #0x30eba4
007aa570  eb 8e ed eb                                      bl #0x30e124
007aa574  00 70 a0 e1                                      mov r7, r0
007aa578  06 00 a0 e1                                      mov r0, r6
007aa57c  cd b0 ff eb                                      bl #0x7968b8
007aa580  0a 10 a0 e1                                      mov r1, sl
007aa584  00 30 a0 e1                                      mov r3, r0
007aa588  07 20 a0 e1                                      mov r2, r7
007aa58c  0d 00 a0 e1                                      mov r0, sp
007aa590  e2 b0 ff eb                                      bl #0x796920
007aa594  05 00 a0 e1                                      mov r0, r5
007aa598  0d 10 a0 e1                                      mov r1, sp
007aa59c  15 9f f1 eb                                      bl #0x4121f8
007aa5a0  18 d0 8d e2                                      add sp, sp, #0x18
007aa5a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007aa5a8  02 11 e0 e3                                      mvn r1, #0x80000000
007aa5ac  07 00 a0 e1                                      mov r0, r7
007aa5b0  02 15 41 e2                                      sub r1, r1, #0x800000
007aa5b4  fc 90 ed eb                                      bl #0x30e9ac
007aa5b8  00 00 50 e3                                      cmp r0, #0
007aa5bc  c3 ff ff 1a                                      bne #0x7aa4d0
007aa5c0  c1 ff ff ea                                      b #0x7aa4cc
007aa5c4  02 11 e0 e3                                      mvn r1, #0x80000000
007aa5c8  07 00 a0 e1                                      mov r0, r7
007aa5cc  02 15 41 e2                                      sub r1, r1, #0x800000
007aa5d0  f5 90 ed eb                                      bl #0x30e9ac
007aa5d4  00 00 50 e3                                      cmp r0, #0
007aa5d8  ad ff ff 1a                                      bne #0x7aa494
007aa5dc  ab ff ff ea                                      b #0x7aa490

; FUNCTION 0x007aa5e0, declared_size=44, range_size=44, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX11SetPositionEPKcii
; demangled: RenderFX::SetPosition(char const*, int, int)
; decoder-mode: arm
007aa5e0  70 40 2d e9                                      push {r4, r5, r6, lr}
007aa5e4  02 50 a0 e1                                      mov r5, r2
007aa5e8  03 40 a0 e1                                      mov r4, r3
007aa5ec  00 60 a0 e1                                      mov r6, r0
007aa5f0  da fa ff eb                                      bl #0x7a9160
007aa5f4  05 20 a0 e1                                      mov r2, r5
007aa5f8  00 10 a0 e1                                      mov r1, r0
007aa5fc  04 30 a0 e1                                      mov r3, r4
007aa600  06 00 a0 e1                                      mov r0, r6
007aa604  70 40 bd e8                                      pop {r4, r5, r6, lr}
007aa608  78 ff ff ea                                      b #0x7aa3f0

; FUNCTION 0x007aac54, declared_size=420, range_size=420, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10ClearFontsEPN7gameswf14player_contextE
; demangled: RenderFX::ClearFonts(gameswf::player_context*)
; decoder-mode: arm
007aac54  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007aac58  8c 71 9f e5                                      ldr r7, [pc, #0x18c]
007aac5c  8c 91 9f e5                                      ldr sb, [pc, #0x18c]
007aac60  18 d0 4d e2                                      sub sp, sp, #0x18
007aac64  07 70 8f e0                                      add r7, pc, r7
007aac68  09 30 97 e7                                      ldr r3, [r7, sb]
007aac6c  00 60 50 e2                                      subs r6, r0, #0
007aac70  00 30 93 e5                                      ldr r3, [r3]
007aac74  14 30 8d e5                                      str r3, [sp, #0x14]
007aac78  56 00 00 0a                                      beq #0x7aadd8
007aac7c  10 30 9d e5                                      ldr r3, [sp, #0x10]
007aac80  00 20 e0 e3                                      mvn r2, #0
007aac84  00 40 a0 e3                                      mov r4, #0
007aac88  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
007aac8c  23 2c a0 e1                                      lsr r2, r3, #0x18
007aac90  14 20 c0 e7                                      bfi r2, r4, #0, #1
007aac94  01 10 a0 e3                                      mov r1, #1
007aac98  10 30 8d e5                                      str r3, [sp, #0x10]
007aac9c  00 10 cd e5                                      strb r1, [sp]
007aaca0  13 20 cd e5                                      strb r2, [sp, #0x13]
007aaca4  01 40 cd e5                                      strb r4, [sp, #1]
007aaca8  18 30 96 e5                                      ldr r3, [r6, #0x18]
007aacac  04 00 53 e1                                      cmp r3, r4
007aacb0  28 00 00 da                                      ble #0x7aad58
007aacb4  0d 50 a0 e1                                      mov r5, sp
007aacb8  14 10 96 e5                                      ldr r1, [r6, #0x14]
007aacbc  00 20 a0 e3                                      mov r2, #0
007aacc0  02 30 a0 e1                                      mov r3, r2
007aacc4  04 11 91 e7                                      ldr r1, [r1, r4, lsl #2]
007aacc8  94 00 91 e5                                      ldr r0, [r1, #0x94]
007aaccc  3c 10 90 e5                                      ldr r1, [r0, #0x3c]
007aacd0  10 10 91 e5                                      ldr r1, [r1, #0x10]
007aacd4  cb f7 ff eb                                      bl #0x7a8c08
007aacd8  04 30 90 e5                                      ldr r3, [r0, #4]
007aacdc  00 a0 a0 e1                                      mov sl, r0
007aace0  00 00 53 e3                                      cmp r3, #0
007aace4  17 00 00 da                                      ble #0x7aad48
007aace8  00 80 a0 e3                                      mov r8, #0
007aacec  03 00 00 ea                                      b #0x7aad00
007aacf0  04 30 9a e5                                      ldr r3, [sl, #4]
007aacf4  01 80 88 e2                                      add r8, r8, #1
007aacf8  03 00 58 e1                                      cmp r8, r3
007aacfc  11 00 00 aa                                      bge #0x7aad48
007aad00  00 30 9a e5                                      ldr r3, [sl]
007aad04  20 10 a0 e3                                      mov r1, #0x20
007aad08  08 31 93 e7                                      ldr r3, [r3, r8, lsl #2]
007aad0c  03 00 a0 e1                                      mov r0, r3
007aad10  00 30 93 e5                                      ldr r3, [r3]
007aad14  0f e0 a0 e1                                      mov lr, pc
007aad18  08 f0 93 e5                                      ldr pc, [r3, #8]
007aad1c  00 00 50 e3                                      cmp r0, #0
007aad20  f2 ff ff 0a                                      beq #0x7aacf0
007aad24  00 30 9a e5                                      ldr r3, [sl]
007aad28  05 10 a0 e1                                      mov r1, r5
007aad2c  00 20 a0 e3                                      mov r2, #0
007aad30  08 01 93 e7                                      ldr r0, [r3, r8, lsl #2]
007aad34  5d 97 ff eb                                      bl #0x790ab0
007aad38  04 30 9a e5                                      ldr r3, [sl, #4]
007aad3c  01 80 88 e2                                      add r8, r8, #1
007aad40  03 00 58 e1                                      cmp r8, r3
007aad44  ed ff ff ba                                      blt #0x7aad00
007aad48  18 30 96 e5                                      ldr r3, [r6, #0x18]
007aad4c  01 40 84 e2                                      add r4, r4, #1
007aad50  03 00 54 e1                                      cmp r4, r3
007aad54  d7 ff ff ba                                      blt #0x7aacb8
007aad58  0c 40 96 e5                                      ldr r4, [r6, #0xc]
007aad5c  00 00 54 e3                                      cmp r4, #0
007aad60  05 00 00 0a                                      beq #0x7aad7c
007aad64  24 00 84 e2                                      add r0, r4, #0x24
007aad68  88 fe ff eb                                      bl #0x7aa790
007aad6c  28 00 94 e5                                      ldr r0, [r4, #0x28]
007aad70  00 00 50 e3                                      cmp r0, #0
007aad74  00 00 00 0a                                      beq #0x7aad7c
007aad78  56 a4 ff eb                                      bl #0x793ed8
007aad7c  10 40 96 e5                                      ldr r4, [r6, #0x10]
007aad80  00 00 54 e3                                      cmp r4, #0
007aad84  05 00 00 0a                                      beq #0x7aada0
007aad88  04 00 84 e2                                      add r0, r4, #4
007aad8c  ab fe ff eb                                      bl #0x7aa840
007aad90  0c 00 94 e5                                      ldr r0, [r4, #0xc]
007aad94  00 00 50 e3                                      cmp r0, #0
007aad98  00 00 00 0a                                      beq #0x7aada0
007aad9c  4d a4 ff eb                                      bl #0x793ed8
007aada0  d0 30 dd e1                                      ldrsb r3, [sp]
007aada4  01 00 73 e3                                      cmn r3, #1
007aada8  06 00 00 0a                                      beq #0x7aadc8
007aadac  09 30 97 e7                                      ldr r3, [r7, sb]
007aadb0  14 20 9d e5                                      ldr r2, [sp, #0x14]
007aadb4  00 30 93 e5                                      ldr r3, [r3]
007aadb8  03 00 52 e1                                      cmp r2, r3
007aadbc  09 00 00 1a                                      bne #0x7aade8
007aadc0  18 d0 8d e2                                      add sp, sp, #0x18
007aadc4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007aadc8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007aadcc  08 10 9d e5                                      ldr r1, [sp, #8]
007aadd0  58 9f fe eb                                      bl #0x752b38
007aadd4  f4 ff ff ea                                      b #0x7aadac
007aadd8  14 30 9f e5                                      ldr r3, [pc, #0x14]
007aaddc  03 30 97 e7                                      ldr r3, [r7, r3]
007aade0  00 60 93 e5                                      ldr r6, [r3]
007aade4  a4 ff ff ea                                      b #0x7aac7c
007aade8  48 8d ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007aadec  2c 9e 1e 00 ac 40 00 00 30 49 00 00              .byte 0x2c, 0x9e, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x49, 0x00, 0x00

; FUNCTION 0x007aafac, declared_size=268, range_size=268, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX13PreloadGlyphsEPtiPKcibbPKN7gameswf6filterE
; demangled: RenderFX::PreloadGlyphs(unsigned short*, int, char const*, int, bool, bool, gameswf::filter const*)
; decoder-mode: arm
007aafac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007aafb0  f8 50 9f e5                                      ldr r5, [pc, #0xf8]
007aafb4  f8 60 9f e5                                      ldr r6, [pc, #0xf8]
007aafb8  00 70 a0 e1                                      mov r7, r0
007aafbc  05 50 8f e0                                      add r5, pc, r5
007aafc0  06 00 95 e7                                      ldr r0, [r5, r6]
007aafc4  34 d0 4d e2                                      sub sp, sp, #0x34
007aafc8  03 a0 a0 e1                                      mov sl, r3
007aafcc  00 c0 90 e5                                      ldr ip, [r0]
007aafd0  64 30 9d e5                                      ldr r3, [sp, #0x64]
007aafd4  0c 10 8d e5                                      str r1, [sp, #0xc]
007aafd8  88 00 a0 e3                                      mov r0, #0x88
007aafdc  00 10 a0 e3                                      mov r1, #0
007aafe0  38 80 97 e5                                      ldr r8, [r7, #0x38]
007aafe4  5c b0 dd e5                                      ldrb fp, [sp, #0x5c]
007aafe8  2c c0 8d e5                                      str ip, [sp, #0x2c]
007aafec  10 20 8d e5                                      str r2, [sp, #0x10]
007aaff0  14 30 8d e5                                      str r3, [sp, #0x14]
007aaff4  60 90 dd e5                                      ldrb sb, [sp, #0x60]
007aaff8  ea 9e fe eb                                      bl #0x752ba8
007aaffc  00 40 a0 e1                                      mov r4, r0
007ab000  08 10 a0 e1                                      mov r1, r8
007ab004  33 92 00 eb                                      bl #0x7cf8d8
007ab008  00 00 54 e3                                      cmp r4, #0
007ab00c  01 00 00 0a                                      beq #0x7ab018
007ab010  04 00 a0 e1                                      mov r0, r4
007ab014  12 bb fe eb                                      bl #0x759c64
007ab018  18 80 8d e2                                      add r8, sp, #0x18
007ab01c  0a 10 a0 e1                                      mov r1, sl
007ab020  4d b0 c4 e5                                      strb fp, [r4, #0x4d]
007ab024  4c 90 c4 e5                                      strb sb, [r4, #0x4c]
007ab028  08 00 a0 e1                                      mov r0, r8
007ab02c  92 a2 f1 eb                                      bl #0x413a7c
007ab030  08 10 a0 e1                                      mov r1, r8
007ab034  30 00 84 e2                                      add r0, r4, #0x30
007ab038  c4 9f fe eb                                      bl #0x752f50
007ab03c  d8 31 dd e1                                      ldrsb r3, [sp, #0x18]
007ab040  01 00 73 e3                                      cmn r3, #1
007ab044  14 00 00 0a                                      beq #0x7ab09c
007ab048  38 30 97 e5                                      ldr r3, [r7, #0x38]
007ab04c  58 c0 9d e5                                      ldr ip, [sp, #0x58]
007ab050  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ab054  ac 00 93 e5                                      ldr r0, [r3, #0xac]
007ab058  00 c0 8d e5                                      str ip, [sp]
007ab05c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007ab060  04 30 a0 e1                                      mov r3, r4
007ab064  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007ab068  04 c0 8d e5                                      str ip, [sp, #4]
007ab06c  73 80 ff eb                                      bl #0x78b240
007ab070  00 70 a0 e1                                      mov r7, r0
007ab074  04 00 a0 e1                                      mov r0, r4
007ab078  70 bc fe eb                                      bl #0x75a240
007ab07c  06 30 95 e7                                      ldr r3, [r5, r6]
007ab080  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
007ab084  07 00 a0 e1                                      mov r0, r7
007ab088  00 30 93 e5                                      ldr r3, [r3]
007ab08c  03 00 52 e1                                      cmp r2, r3
007ab090  05 00 00 1a                                      bne #0x7ab0ac
007ab094  34 d0 8d e2                                      add sp, sp, #0x34
007ab098  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ab09c  24 00 9d e5                                      ldr r0, [sp, #0x24]
007ab0a0  20 10 9d e5                                      ldr r1, [sp, #0x20]
007ab0a4  a3 9e fe eb                                      bl #0x752b38
007ab0a8  e6 ff ff ea                                      b #0x7ab048
007ab0ac  97 8c ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007ab0b0  d4 9a 1e 00 ac 40 00 00                          .byte 0xd4, 0x9a, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007ab0b8, declared_size=276, range_size=276, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX13PreloadGlyphsEPKcS1_ibbPKN7gameswf6filterE
; demangled: RenderFX::PreloadGlyphs(char const*, char const*, int, bool, bool, gameswf::filter const*)
; decoder-mode: arm
007ab0b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ab0bc  2c d0 4d e2                                      sub sp, sp, #0x2c
007ab0c0  54 c0 dd e5                                      ldrb ip, [sp, #0x54]
007ab0c4  50 80 dd e5                                      ldrb r8, [sp, #0x50]
007ab0c8  14 10 8d e5                                      str r1, [sp, #0x14]
007ab0cc  10 c0 8d e5                                      str ip, [sp, #0x10]
007ab0d0  00 c0 a0 e3                                      mov ip, #0
007ab0d4  24 c0 cd e5                                      strb ip, [sp, #0x24]
007ab0d8  00 70 a0 e1                                      mov r7, r0
007ab0dc  02 60 a0 e1                                      mov r6, r2
007ab0e0  03 50 a0 e1                                      mov r5, r3
007ab0e4  18 c0 8d e5                                      str ip, [sp, #0x18]
007ab0e8  1c c0 8d e5                                      str ip, [sp, #0x1c]
007ab0ec  20 c0 8d e5                                      str ip, [sp, #0x20]
007ab0f0  14 b0 8d e2                                      add fp, sp, #0x14
007ab0f4  18 40 8d e2                                      add r4, sp, #0x18
007ab0f8  03 00 00 ea                                      b #0x7ab10c
007ab0fc  18 20 9d e5                                      ldr r2, [sp, #0x18]
007ab100  83 30 a0 e1                                      lsl r3, r3, #1
007ab104  b3 90 82 e1                                      strh sb, [r2, r3]
007ab108  1c a0 8d e5                                      str sl, [sp, #0x1c]
007ab10c  0b 00 a0 e1                                      mov r0, fp
007ab110  df 9c fe eb                                      bl #0x752494
007ab114  00 90 50 e2                                      subs sb, r0, #0
007ab118  09 00 00 0a                                      beq #0x7ab144
007ab11c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007ab120  20 20 9d e5                                      ldr r2, [sp, #0x20]
007ab124  01 a0 83 e2                                      add sl, r3, #1
007ab128  02 00 5a e1                                      cmp sl, r2
007ab12c  f2 ff ff da                                      ble #0x7ab0fc
007ab130  04 00 a0 e1                                      mov r0, r4
007ab134  ca 10 8a e0                                      add r1, sl, sl, asr #1
007ab138  4f 3b ff eb                                      bl #0x779e7c
007ab13c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007ab140  ed ff ff ea                                      b #0x7ab0fc
007ab144  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007ab148  00 00 52 e3                                      cmp r2, #0
007ab14c  14 00 00 da                                      ble #0x7ab1a4
007ab150  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007ab154  07 00 a0 e1                                      mov r0, r7
007ab158  18 10 9d e5                                      ldr r1, [sp, #0x18]
007ab15c  08 c0 8d e5                                      str ip, [sp, #8]
007ab160  58 c0 9d e5                                      ldr ip, [sp, #0x58]
007ab164  06 30 a0 e1                                      mov r3, r6
007ab168  20 01 8d e8                                      stm sp, {r5, r8}
007ab16c  0c c0 8d e5                                      str ip, [sp, #0xc]
007ab170  8d ff ff eb                                      bl #0x7aafac
007ab174  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007ab178  00 90 a0 e1                                      mov sb, r0
007ab17c  00 00 52 e3                                      cmp r2, #0
007ab180  07 00 00 da                                      ble #0x7ab1a4
007ab184  00 30 a0 e3                                      mov r3, #0
007ab188  04 00 a0 e1                                      mov r0, r4
007ab18c  03 10 a0 e1                                      mov r1, r3
007ab190  1c 30 8d e5                                      str r3, [sp, #0x1c]
007ab194  38 3b ff eb                                      bl #0x779e7c
007ab198  09 00 a0 e1                                      mov r0, sb
007ab19c  2c d0 8d e2                                      add sp, sp, #0x2c
007ab1a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ab1a4  00 00 52 e3                                      cmp r2, #0
007ab1a8  f5 ff ff aa                                      bge #0x7ab184
007ab1ac  82 30 a0 e1                                      lsl r3, r2, #1
007ab1b0  18 10 9d e5                                      ldr r1, [sp, #0x18]
007ab1b4  00 00 a0 e3                                      mov r0, #0
007ab1b8  01 20 92 e2                                      adds r2, r2, #1
007ab1bc  b3 00 81 e1                                      strh r0, [r1, r3]
007ab1c0  02 30 83 e2                                      add r3, r3, #2
007ab1c4  f9 ff ff 1a                                      bne #0x7ab1b0
007ab1c8  ed ff ff ea                                      b #0x7ab184

; FUNCTION 0x007ab1cc, declared_size=248, range_size=248, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFXD1Ev
; demangled: RenderFX::~RenderFX()
; decoder-mode: arm
007ab1cc  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
007ab1d0  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
007ab1d4  70 40 2d e9                                      push {r4, r5, r6, lr}
007ab1d8  03 30 8f e0                                      add r3, pc, r3
007ab1dc  02 20 93 e7                                      ldr r2, [r3, r2]
007ab1e0  00 60 a0 e1                                      mov r6, r0
007ab1e4  00 40 a0 e1                                      mov r4, r0
007ab1e8  08 20 82 e2                                      add r2, r2, #8
007ab1ec  58 20 86 e4                                      str r2, [r6], #0x58
007ab1f0  f8 50 80 e2                                      add r5, r0, #0xf8
007ab1f4  b0 f7 ff eb                                      bl #0x7a90bc
007ab1f8  28 50 45 e2                                      sub r5, r5, #0x28
007ab1fc  05 00 a0 e1                                      mov r0, r5
007ab200  0b fa ff eb                                      bl #0x7a9a34
007ab204  06 00 55 e1                                      cmp r5, r6
007ab208  fa ff ff 1a                                      bne #0x7ab1f8
007ab20c  d4 34 d4 e1                                      ldrsb r3, [r4, #0x44]
007ab210  01 00 73 e3                                      cmn r3, #1
007ab214  17 00 00 0a                                      beq #0x7ab278
007ab218  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007ab21c  00 00 50 e3                                      cmp r0, #0
007ab220  00 00 00 0a                                      beq #0x7ab228
007ab224  05 bc fe eb                                      bl #0x75a240
007ab228  38 00 94 e5                                      ldr r0, [r4, #0x38]
007ab22c  00 00 50 e3                                      cmp r0, #0
007ab230  00 00 00 0a                                      beq #0x7ab238
007ab234  01 bc fe eb                                      bl #0x75a240
007ab238  14 50 84 e2                                      add r5, r4, #0x14
007ab23c  18 00 84 e2                                      add r0, r4, #0x18
007ab240  d2 f3 ff eb                                      bl #0x7a8190
007ab244  05 00 a0 e1                                      mov r0, r5
007ab248  17 fd ff eb                                      bl #0x7aa6ac
007ab24c  05 00 a0 e1                                      mov r0, r5
007ab250  ed fc ff eb                                      bl #0x7aa60c
007ab254  08 30 94 e5                                      ldr r3, [r4, #8]
007ab258  04 00 84 e2                                      add r0, r4, #4
007ab25c  00 00 53 e3                                      cmp r3, #0
007ab260  08 00 00 da                                      ble #0x7ab288
007ab264  00 10 a0 e3                                      mov r1, #0
007ab268  08 10 84 e5                                      str r1, [r4, #8]
007ab26c  e8 a2 f1 eb                                      bl #0x413e14
007ab270  04 00 a0 e1                                      mov r0, r4
007ab274  70 80 bd e8                                      pop {r4, r5, r6, pc}
007ab278  50 00 94 e5                                      ldr r0, [r4, #0x50]
007ab27c  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
007ab280  2c 9e fe eb                                      bl #0x752b38
007ab284  e3 ff ff ea                                      b #0x7ab218
007ab288  f5 ff ff aa                                      bge #0x7ab264
007ab28c  03 21 a0 e1                                      lsl r2, r3, #2
007ab290  00 c0 a0 e3                                      mov ip, #0
007ab294  04 10 94 e5                                      ldr r1, [r4, #4]
007ab298  01 30 93 e2                                      adds r3, r3, #1
007ab29c  02 c0 81 e7                                      str ip, [r1, r2]
007ab2a0  04 20 82 e2                                      add r2, r2, #4
007ab2a4  fa ff ff 1a                                      bne #0x7ab294
007ab2a8  00 10 a0 e3                                      mov r1, #0
007ab2ac  08 10 84 e5                                      str r1, [r4, #8]
007ab2b0  d7 a2 f1 eb                                      bl #0x413e14
007ab2b4  04 00 a0 e1                                      mov r0, r4
007ab2b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007ab2bc  b8 98 1e 00 60 49 00 00                          .byte 0xb8, 0x98, 0x1e, 0x00, 0x60, 0x49, 0x00, 0x00

; FUNCTION 0x007ab2c4, declared_size=28, range_size=28, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFXD0Ev
; demangled: RenderFX::~RenderFX()
; decoder-mode: arm
007ab2c4  10 40 2d e9                                      push {r4, lr}
007ab2c8  00 40 a0 e1                                      mov r4, r0
007ab2cc  be ff ff eb                                      bl #0x7ab1cc
007ab2d0  04 00 a0 e1                                      mov r0, r4
007ab2d4  f5 8b ed eb                                      bl #0x30e2b0
007ab2d8  04 00 a0 e1                                      mov r0, r4
007ab2dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007ab2e0, declared_size=248, range_size=248, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFXD2Ev
; demangled: RenderFX::~RenderFX()
; decoder-mode: arm
007ab2e0  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
007ab2e4  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
007ab2e8  70 40 2d e9                                      push {r4, r5, r6, lr}
007ab2ec  03 30 8f e0                                      add r3, pc, r3
007ab2f0  02 20 93 e7                                      ldr r2, [r3, r2]
007ab2f4  00 60 a0 e1                                      mov r6, r0
007ab2f8  00 40 a0 e1                                      mov r4, r0
007ab2fc  08 20 82 e2                                      add r2, r2, #8
007ab300  58 20 86 e4                                      str r2, [r6], #0x58
007ab304  f8 50 80 e2                                      add r5, r0, #0xf8
007ab308  6b f7 ff eb                                      bl #0x7a90bc
007ab30c  28 50 45 e2                                      sub r5, r5, #0x28
007ab310  05 00 a0 e1                                      mov r0, r5
007ab314  c6 f9 ff eb                                      bl #0x7a9a34
007ab318  06 00 55 e1                                      cmp r5, r6
007ab31c  fa ff ff 1a                                      bne #0x7ab30c
007ab320  d4 34 d4 e1                                      ldrsb r3, [r4, #0x44]
007ab324  01 00 73 e3                                      cmn r3, #1
007ab328  17 00 00 0a                                      beq #0x7ab38c
007ab32c  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007ab330  00 00 50 e3                                      cmp r0, #0
007ab334  00 00 00 0a                                      beq #0x7ab33c
007ab338  c0 bb fe eb                                      bl #0x75a240
007ab33c  38 00 94 e5                                      ldr r0, [r4, #0x38]
007ab340  00 00 50 e3                                      cmp r0, #0
007ab344  00 00 00 0a                                      beq #0x7ab34c
007ab348  bc bb fe eb                                      bl #0x75a240
007ab34c  14 50 84 e2                                      add r5, r4, #0x14
007ab350  18 00 84 e2                                      add r0, r4, #0x18
007ab354  8d f3 ff eb                                      bl #0x7a8190
007ab358  05 00 a0 e1                                      mov r0, r5
007ab35c  d2 fc ff eb                                      bl #0x7aa6ac
007ab360  05 00 a0 e1                                      mov r0, r5
007ab364  a8 fc ff eb                                      bl #0x7aa60c
007ab368  08 30 94 e5                                      ldr r3, [r4, #8]
007ab36c  04 00 84 e2                                      add r0, r4, #4
007ab370  00 00 53 e3                                      cmp r3, #0
007ab374  08 00 00 da                                      ble #0x7ab39c
007ab378  00 10 a0 e3                                      mov r1, #0
007ab37c  08 10 84 e5                                      str r1, [r4, #8]
007ab380  a3 a2 f1 eb                                      bl #0x413e14
007ab384  04 00 a0 e1                                      mov r0, r4
007ab388  70 80 bd e8                                      pop {r4, r5, r6, pc}
007ab38c  50 00 94 e5                                      ldr r0, [r4, #0x50]
007ab390  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
007ab394  e7 9d fe eb                                      bl #0x752b38
007ab398  e3 ff ff ea                                      b #0x7ab32c
007ab39c  f5 ff ff aa                                      bge #0x7ab378
007ab3a0  03 21 a0 e1                                      lsl r2, r3, #2
007ab3a4  00 c0 a0 e3                                      mov ip, #0
007ab3a8  04 10 94 e5                                      ldr r1, [r4, #4]
007ab3ac  01 30 93 e2                                      adds r3, r3, #1
007ab3b0  02 c0 81 e7                                      str ip, [r1, r2]
007ab3b4  04 20 82 e2                                      add r2, r2, #4
007ab3b8  fa ff ff 1a                                      bne #0x7ab3a8
007ab3bc  00 10 a0 e3                                      mov r1, #0
007ab3c0  08 10 84 e5                                      str r1, [r4, #8]
007ab3c4  92 a2 f1 eb                                      bl #0x413e14
007ab3c8  04 00 a0 e1                                      mov r0, r4
007ab3cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007ab3d0  a4 97 1e 00 60 49 00 00                          .byte 0xa4, 0x97, 0x1e, 0x00, 0x60, 0x49, 0x00, 0x00

; FUNCTION 0x007ab3d8, declared_size=244, range_size=244, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX16SetLocalVariableEPKcS1_RN7gameswf8as_valueE
; demangled: RenderFX::SetLocalVariable(char const*, char const*, gameswf::as_value&)
; decoder-mode: arm
007ab3d8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007ab3dc  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
007ab3e0  e0 50 9f e5                                      ldr r5, [pc, #0xe0]
007ab3e4  18 d0 4d e2                                      sub sp, sp, #0x18
007ab3e8  04 40 8f e0                                      add r4, pc, r4
007ab3ec  05 c0 94 e7                                      ldr ip, [r4, r5]
007ab3f0  00 70 a0 e1                                      mov r7, r0
007ab3f4  01 80 a0 e1                                      mov r8, r1
007ab3f8  00 c0 9c e5                                      ldr ip, [ip]
007ab3fc  02 10 a0 e1                                      mov r1, r2
007ab400  0d 00 a0 e1                                      mov r0, sp
007ab404  14 c0 8d e5                                      str ip, [sp, #0x14]
007ab408  03 90 a0 e1                                      mov sb, r3
007ab40c  9a a1 f1 eb                                      bl #0x413a7c
007ab410  07 00 a0 e1                                      mov r0, r7
007ab414  08 10 a0 e1                                      mov r1, r8
007ab418  50 f7 ff eb                                      bl #0x7a9160
007ab41c  00 a0 50 e2                                      subs sl, r0, #0
007ab420  0d 60 a0 e1                                      mov r6, sp
007ab424  1e 00 00 0a                                      beq #0x7ab4a4
007ab428  00 c0 9a e5                                      ldr ip, [sl]
007ab42c  0a 00 a0 e1                                      mov r0, sl
007ab430  02 10 a0 e3                                      mov r1, #2
007ab434  0f e0 a0 e1                                      mov lr, pc
007ab438  08 f0 9c e5                                      ldr pc, [ip, #8]
007ab43c  00 00 50 e3                                      cmp r0, #0
007ab440  09 00 00 1a                                      bne #0x7ab46c
007ab444  d0 30 dd e1                                      ldrsb r3, [sp]
007ab448  01 00 73 e3                                      cmn r3, #1
007ab44c  10 00 00 0a                                      beq #0x7ab494
007ab450  05 30 94 e7                                      ldr r3, [r4, r5]
007ab454  14 20 9d e5                                      ldr r2, [sp, #0x14]
007ab458  00 30 93 e5                                      ldr r3, [r3]
007ab45c  03 00 52 e1                                      cmp r2, r3
007ab460  16 00 00 1a                                      bne #0x7ab4c0
007ab464  18 d0 8d e2                                      add sp, sp, #0x18
007ab468  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007ab46c  00 30 9a e5                                      ldr r3, [sl]
007ab470  0a 00 a0 e1                                      mov r0, sl
007ab474  0f e0 a0 e1                                      mov lr, pc
007ab478  58 f0 93 e5                                      ldr pc, [r3, #0x58]
007ab47c  0d 10 a0 e1                                      mov r1, sp
007ab480  09 20 a0 e1                                      mov r2, sb
007ab484  0c 88 00 eb                                      bl #0x7cd4bc
007ab488  d0 30 dd e1                                      ldrsb r3, [sp]
007ab48c  01 00 73 e3                                      cmn r3, #1
007ab490  ee ff ff 1a                                      bne #0x7ab450
007ab494  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007ab498  08 10 9d e5                                      ldr r1, [sp, #8]
007ab49c  a5 9d fe eb                                      bl #0x752b38
007ab4a0  ea ff ff ea                                      b #0x7ab450
007ab4a4  3c 00 97 e5                                      ldr r0, [r7, #0x3c]
007ab4a8  29 23 ff eb                                      bl #0x774154
007ab4ac  08 10 a0 e1                                      mov r1, r8
007ab4b0  73 ff fe eb                                      bl #0x76b284
007ab4b4  00 a0 50 e2                                      subs sl, r0, #0
007ab4b8  e1 ff ff 0a                                      beq #0x7ab444
007ab4bc  d9 ff ff ea                                      b #0x7ab428
007ab4c0  92 8b ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007ab4c4  a8 96 1e 00 ac 40 00 00                          .byte 0xa8, 0x96, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007ab4cc, declared_size=264, range_size=264, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX14ReplaceTextureEPKcPN6glitch5video8ITextureE
; demangled: RenderFX::ReplaceTexture(char const*, glitch::video::ITexture*)
; decoder-mode: arm
007ab4cc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007ab4d0  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
007ab4d4  f4 50 9f e5                                      ldr r5, [pc, #0xf4]
007ab4d8  1c d0 4d e2                                      sub sp, sp, #0x1c
007ab4dc  04 40 8f e0                                      add r4, pc, r4
007ab4e0  05 30 94 e7                                      ldr r3, [r4, r5]
007ab4e4  01 60 a0 e1                                      mov r6, r1
007ab4e8  02 80 a0 e1                                      mov r8, r2
007ab4ec  00 30 93 e5                                      ldr r3, [r3]
007ab4f0  14 30 8d e5                                      str r3, [sp, #0x14]
007ab4f4  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
007ab4f8  10 30 93 e5                                      ldr r3, [r3, #0x10]
007ab4fc  03 00 a0 e1                                      mov r0, r3
007ab500  00 30 93 e5                                      ldr r3, [r3]
007ab504  0f e0 a0 e1                                      mov lr, pc
007ab508  30 f1 93 e5                                      ldr pc, [r3, #0x130]
007ab50c  00 70 50 e2                                      subs r7, r0, #0
007ab510  21 00 00 0a                                      beq #0x7ab59c
007ab514  00 30 97 e5                                      ldr r3, [r7]
007ab518  08 10 a0 e3                                      mov r1, #8
007ab51c  0f e0 a0 e1                                      mov lr, pc
007ab520  08 f0 93 e5                                      ldr pc, [r3, #8]
007ab524  00 00 50 e3                                      cmp r0, #0
007ab528  1b 00 00 0a                                      beq #0x7ab59c
007ab52c  06 10 a0 e1                                      mov r1, r6
007ab530  0d 00 a0 e1                                      mov r0, sp
007ab534  50 a1 f1 eb                                      bl #0x413a7c
007ab538  07 00 a0 e1                                      mov r0, r7
007ab53c  0d 10 a0 e1                                      mov r1, sp
007ab540  00 30 97 e5                                      ldr r3, [r7]
007ab544  0f e0 a0 e1                                      mov lr, pc
007ab548  58 f0 93 e5                                      ldr pc, [r3, #0x58]
007ab54c  00 60 50 e2                                      subs r6, r0, #0
007ab550  0d a0 a0 e1                                      mov sl, sp
007ab554  0d 00 00 0a                                      beq #0x7ab590
007ab558  00 30 96 e5                                      ldr r3, [r6]
007ab55c  21 10 a0 e3                                      mov r1, #0x21
007ab560  0f e0 a0 e1                                      mov lr, pc
007ab564  08 f0 93 e5                                      ldr pc, [r3, #8]
007ab568  00 00 50 e3                                      cmp r0, #0
007ab56c  07 00 00 0a                                      beq #0x7ab590
007ab570  00 30 96 e5                                      ldr r3, [r6]
007ab574  06 00 a0 e1                                      mov r0, r6
007ab578  0f e0 a0 e1                                      mov lr, pc
007ab57c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
007ab580  08 10 a0 e1                                      mov r1, r8
007ab584  00 30 90 e5                                      ldr r3, [r0]
007ab588  0f e0 a0 e1                                      mov lr, pc
007ab58c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
007ab590  d0 30 dd e1                                      ldrsb r3, [sp]
007ab594  01 00 73 e3                                      cmn r3, #1
007ab598  06 00 00 0a                                      beq #0x7ab5b8
007ab59c  05 30 94 e7                                      ldr r3, [r4, r5]
007ab5a0  14 20 9d e5                                      ldr r2, [sp, #0x14]
007ab5a4  00 30 93 e5                                      ldr r3, [r3]
007ab5a8  03 00 52 e1                                      cmp r2, r3
007ab5ac  05 00 00 1a                                      bne #0x7ab5c8
007ab5b0  1c d0 8d e2                                      add sp, sp, #0x1c
007ab5b4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007ab5b8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007ab5bc  08 10 9d e5                                      ldr r1, [sp, #8]
007ab5c0  5c 9d fe eb                                      bl #0x752b38
007ab5c4  f4 ff ff ea                                      b #0x7ab59c
007ab5c8  50 8b ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007ab5cc  b4 95 1e 00 ac 40 00 00                          .byte 0xb4, 0x95, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007ab5d4, declared_size=244, range_size=244, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX9SetMemberEPKcS1_RN7gameswf8as_valueE
; demangled: RenderFX::SetMember(char const*, char const*, gameswf::as_value&)
; decoder-mode: arm
007ab5d4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007ab5d8  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
007ab5dc  e0 50 9f e5                                      ldr r5, [pc, #0xe0]
007ab5e0  30 d0 4d e2                                      sub sp, sp, #0x30
007ab5e4  04 40 8f e0                                      add r4, pc, r4
007ab5e8  05 c0 94 e7                                      ldr ip, [r4, r5]
007ab5ec  18 60 8d e2                                      add r6, sp, #0x18
007ab5f0  00 70 a0 e1                                      mov r7, r0
007ab5f4  00 c0 9c e5                                      ldr ip, [ip]
007ab5f8  01 80 a0 e1                                      mov r8, r1
007ab5fc  06 00 a0 e1                                      mov r0, r6
007ab600  02 10 a0 e1                                      mov r1, r2
007ab604  2c c0 8d e5                                      str ip, [sp, #0x2c]
007ab608  03 90 a0 e1                                      mov sb, r3
007ab60c  1a a1 f1 eb                                      bl #0x413a7c
007ab610  07 00 a0 e1                                      mov r0, r7
007ab614  08 10 a0 e1                                      mov r1, r8
007ab618  d0 f6 ff eb                                      bl #0x7a9160
007ab61c  00 a0 50 e2                                      subs sl, r0, #0
007ab620  1e 00 00 0a                                      beq #0x7ab6a0
007ab624  00 30 9a e5                                      ldr r3, [sl]
007ab628  04 70 8d e2                                      add r7, sp, #4
007ab62c  06 10 a0 e1                                      mov r1, r6
007ab630  07 00 a0 e1                                      mov r0, r7
007ab634  1c 60 93 e5                                      ldr r6, [r3, #0x1c]
007ab638  7b 9e fe eb                                      bl #0x75302c
007ab63c  0a 00 a0 e1                                      mov r0, sl
007ab640  07 10 a0 e1                                      mov r1, r7
007ab644  09 20 a0 e1                                      mov r2, sb
007ab648  36 ff 2f e1                                      blx r6
007ab64c  d4 30 dd e1                                      ldrsb r3, [sp, #4]
007ab650  01 00 73 e3                                      cmn r3, #1
007ab654  0d 00 00 0a                                      beq #0x7ab690
007ab658  d8 31 dd e1                                      ldrsb r3, [sp, #0x18]
007ab65c  01 00 73 e3                                      cmn r3, #1
007ab660  06 00 00 0a                                      beq #0x7ab680
007ab664  05 30 94 e7                                      ldr r3, [r4, r5]
007ab668  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
007ab66c  00 30 93 e5                                      ldr r3, [r3]
007ab670  03 00 52 e1                                      cmp r2, r3
007ab674  10 00 00 1a                                      bne #0x7ab6bc
007ab678  30 d0 8d e2                                      add sp, sp, #0x30
007ab67c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007ab680  24 00 9d e5                                      ldr r0, [sp, #0x24]
007ab684  20 10 9d e5                                      ldr r1, [sp, #0x20]
007ab688  2a 9d fe eb                                      bl #0x752b38
007ab68c  f4 ff ff ea                                      b #0x7ab664
007ab690  10 00 9d e5                                      ldr r0, [sp, #0x10]
007ab694  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007ab698  26 9d fe eb                                      bl #0x752b38
007ab69c  ed ff ff ea                                      b #0x7ab658
007ab6a0  3c 00 97 e5                                      ldr r0, [r7, #0x3c]
007ab6a4  aa 22 ff eb                                      bl #0x774154
007ab6a8  08 10 a0 e1                                      mov r1, r8
007ab6ac  f4 fe fe eb                                      bl #0x76b284
007ab6b0  00 a0 50 e2                                      subs sl, r0, #0
007ab6b4  e7 ff ff 0a                                      beq #0x7ab658
007ab6b8  d9 ff ff ea                                      b #0x7ab624
007ab6bc  13 8b ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007ab6c0  ac 94 1e 00 ac 40 00 00                          .byte 0xac, 0x94, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007ab6c8, declared_size=104, range_size=104, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX9SetMemberEPKcS1_i
; demangled: RenderFX::SetMember(char const*, char const*, int)
; decoder-mode: arm
007ab6c8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007ab6cc  00 50 a0 e1                                      mov r5, r0
007ab6d0  1c d0 4d e2                                      sub sp, sp, #0x1c
007ab6d4  03 00 a0 e1                                      mov r0, r3
007ab6d8  00 30 a0 e3                                      mov r3, #0
007ab6dc  04 30 cd e5                                      strb r3, [sp, #4]
007ab6e0  02 30 a0 e3                                      mov r3, #2
007ab6e4  05 30 cd e5                                      strb r3, [sp, #5]
007ab6e8  01 60 a0 e1                                      mov r6, r1
007ab6ec  02 70 a0 e1                                      mov r7, r2
007ab6f0  8e 8d ed eb                                      bl #0x30ed30
007ab6f4  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
007ab6f8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007ab6fc  04 40 8d e2                                      add r4, sp, #4
007ab700  05 00 a0 e1                                      mov r0, r5
007ab704  08 c0 8d e5                                      str ip, [sp, #8]
007ab708  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007ab70c  06 10 a0 e1                                      mov r1, r6
007ab710  07 20 a0 e1                                      mov r2, r7
007ab714  04 30 a0 e1                                      mov r3, r4
007ab718  08 c0 84 e5                                      str ip, [r4, #8]
007ab71c  ac ff ff eb                                      bl #0x7ab5d4
007ab720  04 00 a0 e1                                      mov r0, r4
007ab724  7e ae ff eb                                      bl #0x797124
007ab728  1c d0 8d e2                                      add sp, sp, #0x1c
007ab72c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x007ab730, declared_size=84, range_size=84, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX9SetMemberEPKcS1_S1_
; demangled: RenderFX::SetMember(char const*, char const*, char const*)
; decoder-mode: arm
007ab730  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007ab734  14 d0 4d e2                                      sub sp, sp, #0x14
007ab738  04 40 8d e2                                      add r4, sp, #4
007ab73c  00 60 a0 e1                                      mov r6, r0
007ab740  01 50 a0 e1                                      mov r5, r1
007ab744  02 70 a0 e1                                      mov r7, r2
007ab748  03 10 a0 e1                                      mov r1, r3
007ab74c  04 00 a0 e1                                      mov r0, r4
007ab750  00 30 a0 e3                                      mov r3, #0
007ab754  05 30 cd e5                                      strb r3, [sp, #5]
007ab758  04 30 cd e5                                      strb r3, [sp, #4]
007ab75c  fb ae ff eb                                      bl #0x797350
007ab760  06 00 a0 e1                                      mov r0, r6
007ab764  05 10 a0 e1                                      mov r1, r5
007ab768  07 20 a0 e1                                      mov r2, r7
007ab76c  04 30 a0 e1                                      mov r3, r4
007ab770  97 ff ff eb                                      bl #0x7ab5d4
007ab774  04 00 a0 e1                                      mov r0, r4
007ab778  69 ae ff eb                                      bl #0x797124
007ab77c  14 d0 8d e2                                      add sp, sp, #0x14
007ab780  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x007ab784, declared_size=416, range_size=416, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX4LoadEPKcPN7gameswf14player_contextE
; demangled: RenderFX::Load(char const*, gameswf::player_context*)
; decoder-mode: arm
007ab784  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007ab788  88 61 9f e5                                      ldr r6, [pc, #0x188]
007ab78c  88 71 9f e5                                      ldr r7, [pc, #0x188]
007ab790  34 d0 4d e2                                      sub sp, sp, #0x34
007ab794  06 60 8f e0                                      add r6, pc, r6
007ab798  07 30 96 e7                                      ldr r3, [r6, r7]
007ab79c  00 80 52 e2                                      subs r8, r2, #0
007ab7a0  00 50 a0 e1                                      mov r5, r0
007ab7a4  00 30 93 e5                                      ldr r3, [r3]
007ab7a8  01 40 a0 e1                                      mov r4, r1
007ab7ac  2c 30 8d e5                                      str r3, [sp, #0x2c]
007ab7b0  4f 00 00 0a                                      beq #0x7ab8f4
007ab7b4  44 00 85 e2                                      add r0, r5, #0x44
007ab7b8  04 10 a0 e1                                      mov r1, r4
007ab7bc  15 04 ff eb                                      bl #0x76c818
007ab7c0  00 10 a0 e3                                      mov r1, #0
007ab7c4  e0 00 a0 e3                                      mov r0, #0xe0
007ab7c8  f6 9c fe eb                                      bl #0x752ba8
007ab7cc  08 10 a0 e1                                      mov r1, r8
007ab7d0  00 a0 a0 e1                                      mov sl, r0
007ab7d4  69 0e ff eb                                      bl #0x76f180
007ab7d8  0a 10 a0 e1                                      mov r1, sl
007ab7dc  38 00 85 e2                                      add r0, r5, #0x38
007ab7e0  f5 f3 ff eb                                      bl #0x7a87bc
007ab7e4  38 30 95 e5                                      ldr r3, [r5, #0x38]
007ab7e8  04 00 a0 e1                                      mov r0, r4
007ab7ec  94 50 83 e5                                      str r5, [r3, #0x94]
007ab7f0  01 30 a0 e3                                      mov r3, #1
007ab7f4  18 30 cd e5                                      strb r3, [sp, #0x18]
007ab7f8  00 30 a0 e3                                      mov r3, #0
007ab7fc  19 30 cd e5                                      strb r3, [sp, #0x19]
007ab800  93 89 ed eb                                      bl #0x30de54
007ab804  00 30 94 e0                                      adds r3, r4, r0
007ab808  07 00 00 2a                                      bhs #0x7ab82c
007ab80c  d0 20 94 e1                                      ldrsb r2, [r4, r0]
007ab810  2f 00 52 e3                                      cmp r2, #0x2f
007ab814  04 00 00 0a                                      beq #0x7ab82c
007ab818  5c 00 52 e3                                      cmp r2, #0x5c
007ab81c  02 00 00 0a                                      beq #0x7ab82c
007ab820  01 30 43 e2                                      sub r3, r3, #1
007ab824  03 00 54 e1                                      cmp r4, r3
007ab828  29 00 00 9a                                      bls #0x7ab8d4
007ab82c  01 20 64 e2                                      rsb r2, r4, #1
007ab830  02 20 83 e0                                      add r2, r3, r2
007ab834  00 00 52 e3                                      cmp r2, #0
007ab838  0c 00 00 da                                      ble #0x7ab870
007ab83c  04 80 8d e2                                      add r8, sp, #4
007ab840  04 10 a0 e1                                      mov r1, r4
007ab844  08 00 a0 e1                                      mov r0, r8
007ab848  99 99 fe eb                                      bl #0x751eb4
007ab84c  d4 30 dd e1                                      ldrsb r3, [sp, #4]
007ab850  38 00 95 e5                                      ldr r0, [r5, #0x38]
007ab854  01 00 73 e3                                      cmn r3, #1
007ab858  01 10 88 12                                      addne r1, r8, #1
007ab85c  10 10 9d 05                                      ldreq r1, [sp, #0x10]
007ab860  00 04 ff eb                                      bl #0x76c868
007ab864  d4 30 dd e1                                      ldrsb r3, [sp, #4]
007ab868  01 00 73 e3                                      cmn r3, #1
007ab86c  24 00 00 0a                                      beq #0x7ab904
007ab870  d8 31 dd e1                                      ldrsb r3, [sp, #0x18]
007ab874  01 00 73 e3                                      cmn r3, #1
007ab878  19 00 00 0a                                      beq #0x7ab8e4
007ab87c  04 20 a0 e1                                      mov r2, r4
007ab880  0d 00 a0 e1                                      mov r0, sp
007ab884  38 10 95 e5                                      ldr r1, [r5, #0x38]
007ab888  99 1f ff eb                                      bl #0x7736f4
007ab88c  3c 00 85 e2                                      add r0, r5, #0x3c
007ab890  00 10 9d e5                                      ldr r1, [sp]
007ab894  6f ba fe eb                                      bl #0x75a258
007ab898  00 00 9d e5                                      ldr r0, [sp]
007ab89c  00 00 50 e3                                      cmp r0, #0
007ab8a0  00 00 00 0a                                      beq #0x7ab8a8
007ab8a4  65 ba fe eb                                      bl #0x75a240
007ab8a8  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
007ab8ac  05 00 a0 e1                                      mov r0, r5
007ab8b0  10 10 93 e5                                      ldr r1, [r3, #0x10]
007ab8b4  8b f1 ff eb                                      bl #0x7a7ee8
007ab8b8  07 30 96 e7                                      ldr r3, [r6, r7]
007ab8bc  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
007ab8c0  00 30 93 e5                                      ldr r3, [r3]
007ab8c4  03 00 52 e1                                      cmp r2, r3
007ab8c8  11 00 00 1a                                      bne #0x7ab914
007ab8cc  34 d0 8d e2                                      add sp, sp, #0x34
007ab8d0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007ab8d4  d0 20 d3 e1                                      ldrsb r2, [r3]
007ab8d8  2f 00 52 e3                                      cmp r2, #0x2f
007ab8dc  cd ff ff 1a                                      bne #0x7ab818
007ab8e0  d1 ff ff ea                                      b #0x7ab82c
007ab8e4  24 00 9d e5                                      ldr r0, [sp, #0x24]
007ab8e8  20 10 9d e5                                      ldr r1, [sp, #0x20]
007ab8ec  91 9c fe eb                                      bl #0x752b38
007ab8f0  e1 ff ff ea                                      b #0x7ab87c
007ab8f4  24 30 9f e5                                      ldr r3, [pc, #0x24]
007ab8f8  03 30 96 e7                                      ldr r3, [r6, r3]
007ab8fc  00 80 93 e5                                      ldr r8, [r3]
007ab900  ab ff ff ea                                      b #0x7ab7b4
007ab904  10 00 9d e5                                      ldr r0, [sp, #0x10]
007ab908  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007ab90c  89 9c fe eb                                      bl #0x752b38
007ab910  d6 ff ff ea                                      b #0x7ab870
007ab914  7d 8a ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007ab918  fc 92 1e 00 ac 40 00 00 30 49 00 00              .byte 0xfc, 0x92, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x49, 0x00, 0x00

; FUNCTION 0x007ab924, declared_size=224, range_size=224, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX9GotoFrameEPN7gameswf9characterEPKcb
; demangled: RenderFX::GotoFrame(gameswf::character*, char const*, bool)
; decoder-mode: arm
007ab924  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007ab928  cc 40 9f e5                                      ldr r4, [pc, #0xcc]
007ab92c  cc 60 9f e5                                      ldr r6, [pc, #0xcc]
007ab930  03 80 a0 e1                                      mov r8, r3
007ab934  04 40 8f e0                                      add r4, pc, r4
007ab938  06 00 94 e7                                      ldr r0, [r4, r6]
007ab93c  1c d0 4d e2                                      sub sp, sp, #0x1c
007ab940  00 50 51 e2                                      subs r5, r1, #0
007ab944  00 30 90 e5                                      ldr r3, [r0]
007ab948  02 70 a0 e1                                      mov r7, r2
007ab94c  14 30 8d e5                                      str r3, [sp, #0x14]
007ab950  1c 00 00 0a                                      beq #0x7ab9c8
007ab954  00 20 95 e5                                      ldr r2, [r5]
007ab958  05 00 a0 e1                                      mov r0, r5
007ab95c  02 10 a0 e3                                      mov r1, #2
007ab960  0f e0 a0 e1                                      mov lr, pc
007ab964  08 f0 92 e5                                      ldr pc, [r2, #8]
007ab968  00 00 50 e3                                      cmp r0, #0
007ab96c  15 00 00 0a                                      beq #0x7ab9c8
007ab970  00 30 95 e5                                      ldr r3, [r5]
007ab974  07 10 a0 e1                                      mov r1, r7
007ab978  0d 00 a0 e1                                      mov r0, sp
007ab97c  9c 70 93 e5                                      ldr r7, [r3, #0x9c]
007ab980  3d a0 f1 eb                                      bl #0x413a7c
007ab984  05 00 a0 e1                                      mov r0, r5
007ab988  0d 10 a0 e1                                      mov r1, sp
007ab98c  37 ff 2f e1                                      blx r7
007ab990  d0 30 dd e1                                      ldrsb r3, [sp]
007ab994  0d a0 a0 e1                                      mov sl, sp
007ab998  00 70 a0 e1                                      mov r7, r0
007ab99c  01 00 73 e3                                      cmn r3, #1
007ab9a0  10 00 00 0a                                      beq #0x7ab9e8
007ab9a4  00 00 57 e3                                      cmp r7, #0
007ab9a8  06 00 00 0a                                      beq #0x7ab9c8
007ab9ac  05 00 a0 e1                                      mov r0, r5
007ab9b0  01 10 28 e2                                      eor r1, r8, #1
007ab9b4  00 30 95 e5                                      ldr r3, [r5]
007ab9b8  0f e0 a0 e1                                      mov lr, pc
007ab9bc  94 f0 93 e5                                      ldr pc, [r3, #0x94]
007ab9c0  01 00 a0 e3                                      mov r0, #1
007ab9c4  00 00 00 ea                                      b #0x7ab9cc
007ab9c8  00 00 a0 e3                                      mov r0, #0
007ab9cc  06 30 94 e7                                      ldr r3, [r4, r6]
007ab9d0  14 20 9d e5                                      ldr r2, [sp, #0x14]
007ab9d4  00 30 93 e5                                      ldr r3, [r3]
007ab9d8  03 00 52 e1                                      cmp r2, r3
007ab9dc  05 00 00 1a                                      bne #0x7ab9f8
007ab9e0  1c d0 8d e2                                      add sp, sp, #0x1c
007ab9e4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007ab9e8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007ab9ec  08 10 9d e5                                      ldr r1, [sp, #8]
007ab9f0  50 9c fe eb                                      bl #0x752b38
007ab9f4  ea ff ff ea                                      b #0x7ab9a4
007ab9f8  44 8a ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007ab9fc  5c 91 1e 00 ac 40 00 00                          .byte 0x5c, 0x91, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007aba04, declared_size=8, range_size=8, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX8PlayAnimEPN7gameswf9characterEPKci
; demangled: RenderFX::PlayAnim(gameswf::character*, char const*, int)
; decoder-mode: arm
007aba04  01 30 a0 e3                                      mov r3, #1
007aba08  c5 ff ff ea                                      b #0x7ab924

; FUNCTION 0x007aba0c, declared_size=188, range_size=188, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10SetEnabledEPN7gameswf9characterEb
; demangled: RenderFX::SetEnabled(gameswf::character*, bool)
; decoder-mode: arm
007aba0c  70 40 2d e9                                      push {r4, r5, r6, lr}
007aba10  00 40 51 e2                                      subs r4, r1, #0
007aba14  00 60 a0 e1                                      mov r6, r0
007aba18  02 50 a0 e1                                      mov r5, r2
007aba1c  16 00 00 0a                                      beq #0x7aba7c
007aba20  00 30 94 e5                                      ldr r3, [r4]
007aba24  04 00 a0 e1                                      mov r0, r4
007aba28  02 10 a0 e3                                      mov r1, #2
007aba2c  0f e0 a0 e1                                      mov lr, pc
007aba30  08 f0 93 e5                                      ldr pc, [r3, #8]
007aba34  00 00 50 e3                                      cmp r0, #0
007aba38  0f 00 00 0a                                      beq #0x7aba7c
007aba3c  ea 30 d4 e5                                      ldrb r3, [r4, #0xea]
007aba40  05 00 53 e1                                      cmp r3, r5
007aba44  0b 00 00 0a                                      beq #0x7aba78
007aba48  f8 30 96 e5                                      ldr r3, [r6, #0xf8]
007aba4c  40 30 13 e2                                      ands r3, r3, #0x40
007aba50  08 00 00 1a                                      bne #0x7aba78
007aba54  00 00 55 e3                                      cmp r5, #0
007aba58  08 00 00 0a                                      beq #0x7aba80
007aba5c  58 20 9f e5                                      ldr r2, [pc, #0x58]
007aba60  06 00 a0 e1                                      mov r0, r6
007aba64  04 10 a0 e1                                      mov r1, r4
007aba68  02 20 8f e0                                      add r2, pc, r2
007aba6c  e4 ff ff eb                                      bl #0x7aba04
007aba70  00 30 50 e2                                      subs r3, r0, #0
007aba74  09 00 00 0a                                      beq #0x7abaa0
007aba78  ea 50 c4 e5                                      strb r5, [r4, #0xea]
007aba7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007aba80  38 20 9f e5                                      ldr r2, [pc, #0x38]
007aba84  06 00 a0 e1                                      mov r0, r6
007aba88  04 10 a0 e1                                      mov r1, r4
007aba8c  02 20 8f e0                                      add r2, pc, r2
007aba90  05 30 a0 e1                                      mov r3, r5
007aba94  da ff ff eb                                      bl #0x7aba04
007aba98  ea 50 c4 e5                                      strb r5, [r4, #0xea]
007aba9c  f6 ff ff ea                                      b #0x7aba7c
007abaa0  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
007abaa4  06 00 a0 e1                                      mov r0, r6
007abaa8  04 10 a0 e1                                      mov r1, r4
007abaac  02 20 8f e0                                      add r2, pc, r2
007abab0  d3 ff ff eb                                      bl #0x7aba04
007abab4  ea 50 c4 e5                                      strb r5, [r4, #0xea]
007abab8  ef ff ff ea                                      b #0x7aba7c
; mapping-symbol data/literal pool
007ababc  60 ee 15 00 4c ee 15 00 f4 ff 11 00              .byte 0x60, 0xee, 0x15, 0x00, 0x4c, 0xee, 0x15, 0x00, 0xf4, 0xff, 0x11, 0x00

; FUNCTION 0x007abac8, declared_size=36, range_size=36, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10SetEnabledEPKcb
; demangled: RenderFX::SetEnabled(char const*, bool)
; decoder-mode: arm
007abac8  70 40 2d e9                                      push {r4, r5, r6, lr}
007abacc  02 40 a0 e1                                      mov r4, r2
007abad0  00 50 a0 e1                                      mov r5, r0
007abad4  a1 f5 ff eb                                      bl #0x7a9160
007abad8  04 20 a0 e1                                      mov r2, r4
007abadc  00 10 a0 e1                                      mov r1, r0
007abae0  05 00 a0 e1                                      mov r0, r5
007abae4  70 40 bd e8                                      pop {r4, r5, r6, lr}
007abae8  c7 ff ff ea                                      b #0x7aba0c

; FUNCTION 0x007abaec, declared_size=44, range_size=44, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX9GotoFrameEPKcS1_b
; demangled: RenderFX::GotoFrame(char const*, char const*, bool)
; decoder-mode: arm
007abaec  70 40 2d e9                                      push {r4, r5, r6, lr}
007abaf0  02 50 a0 e1                                      mov r5, r2
007abaf4  03 40 a0 e1                                      mov r4, r3
007abaf8  00 60 a0 e1                                      mov r6, r0
007abafc  97 f5 ff eb                                      bl #0x7a9160
007abb00  05 20 a0 e1                                      mov r2, r5
007abb04  00 10 a0 e1                                      mov r1, r0
007abb08  04 30 a0 e1                                      mov r3, r4
007abb0c  06 00 a0 e1                                      mov r0, r6
007abb10  70 40 bd e8                                      pop {r4, r5, r6, lr}
007abb14  82 ff ff ea                                      b #0x7ab924

; FUNCTION 0x007abb18, declared_size=8, range_size=8, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX8PlayAnimEPKcS1_i
; demangled: RenderFX::PlayAnim(char const*, char const*, int)
; decoder-mode: arm
007abb18  01 30 a0 e3                                      mov r3, #1
007abb1c  f2 ff ff ea                                      b #0x7abaec

; FUNCTION 0x007abe0c, declared_size=296, range_size=296, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX16InvokeASCallbackEPN7gameswf9characterEPKcPKNS0_8as_valueEi
; demangled: RenderFX::InvokeASCallback(gameswf::character*, char const*, gameswf::as_value const*, int)
; decoder-mode: arm
007abe0c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007abe10  14 41 9f e5                                      ldr r4, [pc, #0x114]
007abe14  14 61 9f e5                                      ldr r6, [pc, #0x114]
007abe18  00 50 51 e2                                      subs r5, r1, #0
007abe1c  04 40 8f e0                                      add r4, pc, r4
007abe20  06 10 94 e7                                      ldr r1, [r4, r6]
007abe24  03 70 a0 e1                                      mov r7, r3
007abe28  24 d0 4d e2                                      sub sp, sp, #0x24
007abe2c  00 30 91 e5                                      ldr r3, [r1]
007abe30  02 80 a0 e1                                      mov r8, r2
007abe34  1c 30 8d e5                                      str r3, [sp, #0x1c]
007abe38  26 00 00 0a                                      beq #0x7abed8
007abe3c  00 30 95 e5                                      ldr r3, [r5]
007abe40  05 00 a0 e1                                      mov r0, r5
007abe44  02 10 a0 e3                                      mov r1, #2
007abe48  0f e0 a0 e1                                      mov lr, pc
007abe4c  08 f0 93 e5                                      ldr pc, [r3, #8]
007abe50  00 00 50 e3                                      cmp r0, #0
007abe54  05 a0 a0 11                                      movne sl, r5
007abe58  19 00 00 0a                                      beq #0x7abec4
007abe5c  05 00 a0 e1                                      mov r0, r5
007abe60  7f b7 fe eb                                      bl #0x759c64
007abe64  00 30 9a e5                                      ldr r3, [sl]
007abe68  0a 00 a0 e1                                      mov r0, sl
007abe6c  0f e0 a0 e1                                      mov lr, pc
007abe70  58 f0 93 e5                                      ldr pc, [r3, #0x58]
007abe74  40 c0 9d e5                                      ldr ip, [sp, #0x40]
007abe78  00 10 a0 e1                                      mov r1, r0
007abe7c  08 30 a0 e1                                      mov r3, r8
007abe80  08 00 8d e2                                      add r0, sp, #8
007abe84  05 20 a0 e1                                      mov r2, r5
007abe88  80 10 8d e8                                      stm sp, {r7, ip}
007abe8c  5a 3f 00 eb                                      bl #0x7bbbfc
007abe90  d8 30 dd e1                                      ldrsb r3, [sp, #8]
007abe94  01 00 73 e3                                      cmn r3, #1
007abe98  10 00 00 0a                                      beq #0x7abee0
007abe9c  05 00 a0 e1                                      mov r0, r5
007abea0  e6 b8 fe eb                                      bl #0x75a240
007abea4  01 00 a0 e3                                      mov r0, #1
007abea8  06 30 94 e7                                      ldr r3, [r4, r6]
007abeac  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007abeb0  00 30 93 e5                                      ldr r3, [r3]
007abeb4  03 00 52 e1                                      cmp r2, r3
007abeb8  1a 00 00 1a                                      bne #0x7abf28
007abebc  24 d0 8d e2                                      add sp, sp, #0x24
007abec0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007abec4  3c a0 85 e2                                      add sl, r5, #0x3c
007abec8  0a 00 a0 e1                                      mov r0, sl
007abecc  d4 30 f2 eb                                      bl #0x438224
007abed0  00 00 50 e3                                      cmp r0, #0
007abed4  05 00 00 1a                                      bne #0x7abef0
007abed8  00 00 a0 e3                                      mov r0, #0
007abedc  f1 ff ff ea                                      b #0x7abea8
007abee0  14 00 9d e5                                      ldr r0, [sp, #0x14]
007abee4  10 10 9d e5                                      ldr r1, [sp, #0x10]
007abee8  12 9b fe eb                                      bl #0x752b38
007abeec  ea ff ff ea                                      b #0x7abe9c
007abef0  0a 00 a0 e1                                      mov r0, sl
007abef4  ca 30 f2 eb                                      bl #0x438224
007abef8  02 10 a0 e3                                      mov r1, #2
007abefc  00 30 90 e5                                      ldr r3, [r0]
007abf00  0f e0 a0 e1                                      mov lr, pc
007abf04  08 f0 93 e5                                      ldr pc, [r3, #8]
007abf08  00 00 50 e3                                      cmp r0, #0
007abf0c  f1 ff ff 0a                                      beq #0x7abed8
007abf10  0a 00 a0 e1                                      mov r0, sl
007abf14  c2 30 f2 eb                                      bl #0x438224
007abf18  00 a0 50 e2                                      subs sl, r0, #0
007abf1c  ce ff ff 1a                                      bne #0x7abe5c
007abf20  00 00 a0 e3                                      mov r0, #0
007abf24  df ff ff ea                                      b #0x7abea8
007abf28  f8 88 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007abf2c  74 8c 1e 00 ac 40 00 00                          .byte 0x74, 0x8c, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007abf34, declared_size=756, range_size=756, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX9SendEventERNS_5EventE
; demangled: RenderFX::SendEvent(RenderFX::Event&)
; decoder-mode: arm
007abf34  70 40 2d e9                                      push {r4, r5, r6, lr}
007abf38  fc 30 90 e5                                      ldr r3, [r0, #0xfc]
007abf3c  01 50 a0 e1                                      mov r5, r1
007abf40  08 d0 4d e2                                      sub sp, sp, #8
007abf44  00 60 a0 e1                                      mov r6, r0
007abf48  03 00 a0 e1                                      mov r0, r3
007abf4c  00 30 93 e5                                      ldr r3, [r3]
007abf50  0f e0 a0 e1                                      mov lr, pc
007abf54  00 f0 93 e5                                      ldr pc, [r3]
007abf58  24 30 d5 e5                                      ldrb r3, [r5, #0x24]
007abf5c  80 42 9f e5                                      ldr r4, [pc, #0x280]
007abf60  00 00 53 e3                                      cmp r3, #0
007abf64  04 40 8f e0                                      add r4, pc, r4
007abf68  43 00 00 1a                                      bne #0x7ac07c
007abf6c  08 30 95 e5                                      ldr r3, [r5, #8]
007abf70  0b 00 53 e3                                      cmp r3, #0xb
007abf74  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
007abf78  3f 00 00 ea                                      b #0x7ac07c
007abf7c  49 00 00 ea                                      b #0x7ac0a8
007abf80  51 00 00 ea                                      b #0x7ac0cc
007abf84  59 00 00 ea                                      b #0x7ac0f0
007abf88  3b 00 00 ea                                      b #0x7ac07c
007abf8c  60 00 00 ea                                      b #0x7ac114
007abf90  39 00 00 ea                                      b #0x7ac07c
007abf94  04 00 00 ea                                      b #0x7abfac
007abf98  66 00 00 ea                                      b #0x7ac138
007abf9c  80 00 00 ea                                      b #0x7ac1a4
007abfa0  6d 00 00 ea                                      b #0x7ac15c
007abfa4  75 00 00 ea                                      b #0x7ac180
007abfa8  35 00 00 ea                                      b #0x7ac084
007abfac  34 22 9f e5                                      ldr r2, [pc, #0x234]
007abfb0  00 c0 a0 e3                                      mov ip, #0
007abfb4  00 10 95 e5                                      ldr r1, [r5]
007abfb8  02 20 8f e0                                      add r2, pc, r2
007abfbc  0c 30 a0 e1                                      mov r3, ip
007abfc0  06 00 a0 e1                                      mov r0, r6
007abfc4  00 c0 8d e5                                      str ip, [sp]
007abfc8  8f ff ff eb                                      bl #0x7abe0c
007abfcc  04 60 95 e5                                      ldr r6, [r5, #4]
007abfd0  14 12 9f e5                                      ldr r1, [pc, #0x214]
007abfd4  06 00 a0 e1                                      mov r0, r6
007abfd8  01 10 8f e0                                      add r1, pc, r1
007abfdc  ce 88 ed eb                                      bl #0x30e31c
007abfe0  00 00 50 e3                                      cmp r0, #0
007abfe4  04 00 00 1a                                      bne #0x7abffc
007abfe8  00 32 9f e5                                      ldr r3, [pc, #0x200]
007abfec  13 20 a0 e3                                      mov r2, #0x13
007abff0  03 30 94 e7                                      ldr r3, [r4, r3]
007abff4  00 20 83 e5                                      str r2, [r3]
007abff8  04 60 95 e5                                      ldr r6, [r5, #4]
007abffc  f0 11 9f e5                                      ldr r1, [pc, #0x1f0]
007ac000  06 00 a0 e1                                      mov r0, r6
007ac004  01 10 8f e0                                      add r1, pc, r1
007ac008  c3 88 ed eb                                      bl #0x30e31c
007ac00c  00 00 50 e3                                      cmp r0, #0
007ac010  6c 00 00 1a                                      bne #0x7ac1c8
007ac014  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
007ac018  01 20 a0 e3                                      mov r2, #1
007ac01c  03 30 94 e7                                      ldr r3, [r4, r3]
007ac020  00 20 83 e5                                      str r2, [r3]
007ac024  04 60 95 e5                                      ldr r6, [r5, #4]
007ac028  c8 11 9f e5                                      ldr r1, [pc, #0x1c8]
007ac02c  06 00 a0 e1                                      mov r0, r6
007ac030  01 10 8f e0                                      add r1, pc, r1
007ac034  b8 88 ed eb                                      bl #0x30e31c
007ac038  00 00 50 e3                                      cmp r0, #0
007ac03c  04 00 00 1a                                      bne #0x7ac054
007ac040  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
007ac044  14 20 a0 e3                                      mov r2, #0x14
007ac048  03 30 94 e7                                      ldr r3, [r4, r3]
007ac04c  00 20 83 e5                                      str r2, [r3]
007ac050  04 60 95 e5                                      ldr r6, [r5, #4]
007ac054  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
007ac058  06 00 a0 e1                                      mov r0, r6
007ac05c  01 10 8f e0                                      add r1, pc, r1
007ac060  ad 88 ed eb                                      bl #0x30e31c
007ac064  00 00 50 e3                                      cmp r0, #0
007ac068  03 00 00 1a                                      bne #0x7ac07c
007ac06c  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
007ac070  0c 20 a0 e3                                      mov r2, #0xc
007ac074  03 30 94 e7                                      ldr r3, [r4, r3]
007ac078  00 20 83 e5                                      str r2, [r3]
007ac07c  08 d0 8d e2                                      add sp, sp, #8
007ac080  70 80 bd e8                                      pop {r4, r5, r6, pc}
007ac084  74 21 9f e5                                      ldr r2, [pc, #0x174]
007ac088  00 c0 a0 e3                                      mov ip, #0
007ac08c  00 10 95 e5                                      ldr r1, [r5]
007ac090  06 00 a0 e1                                      mov r0, r6
007ac094  02 20 8f e0                                      add r2, pc, r2
007ac098  0c 30 a0 e1                                      mov r3, ip
007ac09c  00 c0 8d e5                                      str ip, [sp]
007ac0a0  59 ff ff eb                                      bl #0x7abe0c
007ac0a4  f4 ff ff ea                                      b #0x7ac07c
007ac0a8  54 21 9f e5                                      ldr r2, [pc, #0x154]
007ac0ac  00 c0 a0 e3                                      mov ip, #0
007ac0b0  00 10 95 e5                                      ldr r1, [r5]
007ac0b4  06 00 a0 e1                                      mov r0, r6
007ac0b8  02 20 8f e0                                      add r2, pc, r2
007ac0bc  0c 30 a0 e1                                      mov r3, ip
007ac0c0  00 c0 8d e5                                      str ip, [sp]
007ac0c4  50 ff ff eb                                      bl #0x7abe0c
007ac0c8  eb ff ff ea                                      b #0x7ac07c
007ac0cc  34 21 9f e5                                      ldr r2, [pc, #0x134]
007ac0d0  00 c0 a0 e3                                      mov ip, #0
007ac0d4  00 10 95 e5                                      ldr r1, [r5]
007ac0d8  06 00 a0 e1                                      mov r0, r6
007ac0dc  02 20 8f e0                                      add r2, pc, r2
007ac0e0  0c 30 a0 e1                                      mov r3, ip
007ac0e4  00 c0 8d e5                                      str ip, [sp]
007ac0e8  47 ff ff eb                                      bl #0x7abe0c
007ac0ec  e2 ff ff ea                                      b #0x7ac07c
007ac0f0  14 21 9f e5                                      ldr r2, [pc, #0x114]
007ac0f4  00 c0 a0 e3                                      mov ip, #0
007ac0f8  00 10 95 e5                                      ldr r1, [r5]
007ac0fc  06 00 a0 e1                                      mov r0, r6
007ac100  02 20 8f e0                                      add r2, pc, r2
007ac104  0c 30 a0 e1                                      mov r3, ip
007ac108  00 c0 8d e5                                      str ip, [sp]
007ac10c  3e ff ff eb                                      bl #0x7abe0c
007ac110  d9 ff ff ea                                      b #0x7ac07c
007ac114  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
007ac118  00 c0 a0 e3                                      mov ip, #0
007ac11c  00 10 95 e5                                      ldr r1, [r5]
007ac120  06 00 a0 e1                                      mov r0, r6
007ac124  02 20 8f e0                                      add r2, pc, r2
007ac128  0c 30 a0 e1                                      mov r3, ip
007ac12c  00 c0 8d e5                                      str ip, [sp]
007ac130  35 ff ff eb                                      bl #0x7abe0c
007ac134  d0 ff ff ea                                      b #0x7ac07c
007ac138  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
007ac13c  00 c0 a0 e3                                      mov ip, #0
007ac140  00 10 95 e5                                      ldr r1, [r5]
007ac144  06 00 a0 e1                                      mov r0, r6
007ac148  02 20 8f e0                                      add r2, pc, r2
007ac14c  0c 30 a0 e1                                      mov r3, ip
007ac150  00 c0 8d e5                                      str ip, [sp]
007ac154  2c ff ff eb                                      bl #0x7abe0c
007ac158  c7 ff ff ea                                      b #0x7ac07c
007ac15c  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
007ac160  00 c0 a0 e3                                      mov ip, #0
007ac164  00 10 95 e5                                      ldr r1, [r5]
007ac168  06 00 a0 e1                                      mov r0, r6
007ac16c  02 20 8f e0                                      add r2, pc, r2
007ac170  0c 30 a0 e1                                      mov r3, ip
007ac174  00 c0 8d e5                                      str ip, [sp]
007ac178  23 ff ff eb                                      bl #0x7abe0c
007ac17c  be ff ff ea                                      b #0x7ac07c
007ac180  94 20 9f e5                                      ldr r2, [pc, #0x94]
007ac184  00 c0 a0 e3                                      mov ip, #0
007ac188  00 10 95 e5                                      ldr r1, [r5]
007ac18c  06 00 a0 e1                                      mov r0, r6
007ac190  02 20 8f e0                                      add r2, pc, r2
007ac194  0c 30 a0 e1                                      mov r3, ip
007ac198  00 c0 8d e5                                      str ip, [sp]
007ac19c  1a ff ff eb                                      bl #0x7abe0c
007ac1a0  b5 ff ff ea                                      b #0x7ac07c
007ac1a4  74 20 9f e5                                      ldr r2, [pc, #0x74]
007ac1a8  00 c0 a0 e3                                      mov ip, #0
007ac1ac  00 10 95 e5                                      ldr r1, [r5]
007ac1b0  06 00 a0 e1                                      mov r0, r6
007ac1b4  02 20 8f e0                                      add r2, pc, r2
007ac1b8  0c 30 a0 e1                                      mov r3, ip
007ac1bc  00 c0 8d e5                                      str ip, [sp]
007ac1c0  11 ff ff eb                                      bl #0x7abe0c
007ac1c4  ac ff ff ea                                      b #0x7ac07c
007ac1c8  54 10 9f e5                                      ldr r1, [pc, #0x54]
007ac1cc  06 00 a0 e1                                      mov r0, r6
007ac1d0  01 10 8f e0                                      add r1, pc, r1
007ac1d4  50 88 ed eb                                      bl #0x30e31c
007ac1d8  00 00 50 e3                                      cmp r0, #0
007ac1dc  91 ff ff 1a                                      bne #0x7ac028
007ac1e0  8b ff ff ea                                      b #0x7ac014
; mapping-symbol data/literal pool
007ac1e4  2c 8b 1e 00 d8 dc 15 00 40 e9 15 00 50 38 00 00  .byte 0x2c, 0x8b, 0x1e, 0x00, 0xd8, 0xdc, 0x15, 0x00, 0x40, 0xe9, 0x15, 0x00, 0x50, 0x38, 0x00, 0x00
007ac1f4  24 e9 15 00 38 e9 15 00 1c e9 15 00 1c dc 15 00  .byte 0x24, 0xe9, 0x15, 0x00, 0x38, 0xe9, 0x15, 0x00, 0x1c, 0xe9, 0x15, 0x00, 0x1c, 0xdc, 0x15, 0x00
007ac204  30 e8 15 00 1c e8 15 00 08 e8 15 00 9c db 15 00  .byte 0x30, 0xe8, 0x15, 0x00, 0x1c, 0xe8, 0x15, 0x00, 0x08, 0xe8, 0x15, 0x00, 0x9c, 0xdb, 0x15, 0x00
007ac214  80 db 15 00 2c e8 15 00 10 db 15 00 d4 e7 15 00  .byte 0x80, 0xdb, 0x15, 0x00, 0x2c, 0xe8, 0x15, 0x00, 0x10, 0xdb, 0x15, 0x00, 0xd4, 0xe7, 0x15, 0x00
007ac224  78 e7 15 00                                      .byte 0x78, 0xe7, 0x15, 0x00

; FUNCTION 0x007ac228, declared_size=488, range_size=488, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX8SetFocusEPN7gameswf9characterEi
; demangled: RenderFX::SetFocus(gameswf::character*, int)
; decoder-mode: arm
007ac228  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ac22c  cc 41 9f e5                                      ldr r4, [pc, #0x1cc]
007ac230  cc a1 9f e5                                      ldr sl, [pc, #0x1cc]
007ac234  02 80 a0 e1                                      mov r8, r2
007ac238  04 40 8f e0                                      add r4, pc, r4
007ac23c  0a 30 94 e7                                      ldr r3, [r4, sl]
007ac240  4d df 4d e2                                      sub sp, sp, #0x134
007ac244  00 50 a0 e1                                      mov r5, r0
007ac248  00 20 93 e5                                      ldr r2, [r3]
007ac24c  28 30 a0 e3                                      mov r3, #0x28
007ac250  93 08 23 e0                                      mla r3, r3, r8, r0
007ac254  2c 21 8d e5                                      str r2, [sp, #0x12c]
007ac258  68 70 93 e5                                      ldr r7, [r3, #0x68]
007ac25c  01 60 a0 e1                                      mov r6, r1
007ac260  07 00 51 e1                                      cmp r1, r7
007ac264  53 00 00 0a                                      beq #0x7ac3b8
007ac268  f8 90 90 e5                                      ldr sb, [r0, #0xf8]
007ac26c  40 90 19 e2                                      ands sb, sb, #0x40
007ac270  27 00 00 1a                                      bne #0x7ac314
007ac274  00 00 57 e3                                      cmp r7, #0
007ac278  25 00 00 0a                                      beq #0x7ac314
007ac27c  00 30 97 e5                                      ldr r3, [r7]
007ac280  07 00 a0 e1                                      mov r0, r7
007ac284  02 10 a0 e3                                      mov r1, #2
007ac288  0f e0 a0 e1                                      mov lr, pc
007ac28c  08 f0 93 e5                                      ldr pc, [r3, #8]
007ac290  00 00 50 e3                                      cmp r0, #0
007ac294  1e 00 00 0a                                      beq #0x7ac314
007ac298  ea 30 d7 e5                                      ldrb r3, [r7, #0xea]
007ac29c  00 00 53 e3                                      cmp r3, #0
007ac2a0  1b 00 00 0a                                      beq #0x7ac314
007ac2a4  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
007ac2a8  07 10 a0 e1                                      mov r1, r7
007ac2ac  09 30 a0 e1                                      mov r3, sb
007ac2b0  02 20 8f e0                                      add r2, pc, r2
007ac2b4  05 00 a0 e1                                      mov r0, r5
007ac2b8  d1 fd ff eb                                      bl #0x7aba04
007ac2bc  00 30 a0 e3                                      mov r3, #0
007ac2c0  01 20 a0 e3                                      mov r2, #1
007ac2c4  1c 90 8d e5                                      str sb, [sp, #0x1c]
007ac2c8  18 30 8d e5                                      str r3, [sp, #0x18]
007ac2cc  0c 20 8d e5                                      str r2, [sp, #0xc]
007ac2d0  14 30 8d e5                                      str r3, [sp, #0x14]
007ac2d4  10 30 8d e5                                      str r3, [sp, #0x10]
007ac2d8  04 70 8d e5                                      str r7, [sp, #4]
007ac2dc  44 20 97 e5                                      ldr r2, [r7, #0x44]
007ac2e0  05 00 a0 e1                                      mov r0, r5
007ac2e4  04 10 8d e2                                      add r1, sp, #4
007ac2e8  d0 30 d2 e1                                      ldrsb r3, [r2]
007ac2ec  01 00 73 e3                                      cmn r3, #1
007ac2f0  0c 20 92 05                                      ldreq r2, [r2, #0xc]
007ac2f4  00 30 a0 e3                                      mov r3, #0
007ac2f8  01 20 82 12                                      addne r2, r2, #1
007ac2fc  08 20 8d e5                                      str r2, [sp, #8]
007ac300  28 30 cd e5                                      strb r3, [sp, #0x28]
007ac304  29 30 cd e5                                      strb r3, [sp, #0x29]
007ac308  20 30 8d e5                                      str r3, [sp, #0x20]
007ac30c  24 80 8d e5                                      str r8, [sp, #0x24]
007ac310  07 ff ff eb                                      bl #0x7abf34
007ac314  28 b0 a0 e3                                      mov fp, #0x28
007ac318  9b 08 0b e0                                      mul fp, fp, r8
007ac31c  06 10 a0 e1                                      mov r1, r6
007ac320  68 b0 8b e2                                      add fp, fp, #0x68
007ac324  0b b0 85 e0                                      add fp, r5, fp
007ac328  0b 00 a0 e1                                      mov r0, fp
007ac32c  96 a3 fe eb                                      bl #0x75518c
007ac330  f8 30 95 e5                                      ldr r3, [r5, #0xf8]
007ac334  40 30 13 e2                                      ands r3, r3, #0x40
007ac338  1e 00 00 1a                                      bne #0x7ac3b8
007ac33c  00 00 56 e3                                      cmp r6, #0
007ac340  1c 00 00 0a                                      beq #0x7ac3b8
007ac344  44 10 96 e5                                      ldr r1, [r6, #0x44]
007ac348  00 20 a0 e3                                      mov r2, #0
007ac34c  0c 30 8d e5                                      str r3, [sp, #0xc]
007ac350  18 20 8d e5                                      str r2, [sp, #0x18]
007ac354  14 20 8d e5                                      str r2, [sp, #0x14]
007ac358  10 20 8d e5                                      str r2, [sp, #0x10]
007ac35c  1c 30 8d e5                                      str r3, [sp, #0x1c]
007ac360  04 60 8d e5                                      str r6, [sp, #4]
007ac364  d0 30 d1 e1                                      ldrsb r3, [r1]
007ac368  00 90 a0 e3                                      mov sb, #0
007ac36c  04 70 8d e2                                      add r7, sp, #4
007ac370  01 00 73 e3                                      cmn r3, #1
007ac374  0c 10 91 05                                      ldreq r1, [r1, #0xc]
007ac378  fc 30 95 e5                                      ldr r3, [r5, #0xfc]
007ac37c  01 10 81 12                                      addne r1, r1, #1
007ac380  08 10 8d e5                                      str r1, [sp, #8]
007ac384  24 80 8d e5                                      str r8, [sp, #0x24]
007ac388  29 90 cd e5                                      strb sb, [sp, #0x29]
007ac38c  20 90 8d e5                                      str sb, [sp, #0x20]
007ac390  28 90 cd e5                                      strb sb, [sp, #0x28]
007ac394  03 00 a0 e1                                      mov r0, r3
007ac398  07 10 a0 e1                                      mov r1, r7
007ac39c  00 30 93 e5                                      ldr r3, [r3]
007ac3a0  0f e0 a0 e1                                      mov lr, pc
007ac3a4  08 f0 93 e5                                      ldr pc, [r3, #8]
007ac3a8  00 10 50 e2                                      subs r1, r0, #0
007ac3ac  08 00 00 1a                                      bne #0x7ac3d4
007ac3b0  0b 00 a0 e1                                      mov r0, fp
007ac3b4  74 a3 fe eb                                      bl #0x75518c
007ac3b8  0a 30 94 e7                                      ldr r3, [r4, sl]
007ac3bc  2c 21 9d e5                                      ldr r2, [sp, #0x12c]
007ac3c0  00 30 93 e5                                      ldr r3, [r3]
007ac3c4  03 00 52 e1                                      cmp r2, r3
007ac3c8  0b 00 00 1a                                      bne #0x7ac3fc
007ac3cc  4d df 8d e2                                      add sp, sp, #0x134
007ac3d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ac3d4  30 20 9f e5                                      ldr r2, [pc, #0x30]
007ac3d8  06 10 a0 e1                                      mov r1, r6
007ac3dc  09 30 a0 e1                                      mov r3, sb
007ac3e0  02 20 8f e0                                      add r2, pc, r2
007ac3e4  05 00 a0 e1                                      mov r0, r5
007ac3e8  85 fd ff eb                                      bl #0x7aba04
007ac3ec  05 00 a0 e1                                      mov r0, r5
007ac3f0  07 10 a0 e1                                      mov r1, r7
007ac3f4  ce fe ff eb                                      bl #0x7abf34
007ac3f8  ee ff ff ea                                      b #0x7ac3b8
007ac3fc  c3 87 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007ac400  58 88 1e 00 ac 40 00 00 f0 f7 11 00 38 f7 11 00  .byte 0x58, 0x88, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0xf7, 0x11, 0x00, 0x38, 0xf7, 0x11, 0x00

; FUNCTION 0x007ac410, declared_size=52, range_size=52, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10ResetFocusEi
; demangled: RenderFX::ResetFocus(int)
; decoder-mode: arm
007ac410  70 40 2d e9                                      push {r4, r5, r6, lr}
007ac414  01 20 a0 e1                                      mov r2, r1
007ac418  01 40 a0 e1                                      mov r4, r1
007ac41c  00 10 a0 e3                                      mov r1, #0
007ac420  00 50 a0 e1                                      mov r5, r0
007ac424  7f ff ff eb                                      bl #0x7ac228
007ac428  28 00 a0 e3                                      mov r0, #0x28
007ac42c  90 04 04 e0                                      mul r4, r0, r4
007ac430  00 10 a0 e3                                      mov r1, #0
007ac434  78 00 84 e2                                      add r0, r4, #0x78
007ac438  00 00 85 e0                                      add r0, r5, r0
007ac43c  70 40 bd e8                                      pop {r4, r5, r6, lr}
007ac440  51 a3 fe ea                                      b #0x75518c

; FUNCTION 0x007ac498, declared_size=36, range_size=36, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX8SetFocusEPKci
; demangled: RenderFX::SetFocus(char const*, int)
; decoder-mode: arm
007ac498  70 40 2d e9                                      push {r4, r5, r6, lr}
007ac49c  02 40 a0 e1                                      mov r4, r2
007ac4a0  00 50 a0 e1                                      mov r5, r0
007ac4a4  2d f3 ff eb                                      bl #0x7a9160
007ac4a8  04 20 a0 e1                                      mov r2, r4
007ac4ac  00 10 a0 e1                                      mov r1, r0
007ac4b0  05 00 a0 e1                                      mov r0, r5
007ac4b4  70 40 bd e8                                      pop {r4, r5, r6, lr}
007ac4b8  5a ff ff ea                                      b #0x7ac228

; FUNCTION 0x007ac4bc, declared_size=1128, range_size=1128, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX11UpdateInputEii
; demangled: RenderFX::UpdateInput(int, int)
; decoder-mode: arm
007ac4bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ac4c0  4c 44 9f e5                                      ldr r4, [pc, #0x44c]
007ac4c4  4c 64 9f e5                                      ldr r6, [pc, #0x44c]
007ac4c8  28 90 a0 e3                                      mov sb, #0x28
007ac4cc  04 40 8f e0                                      add r4, pc, r4
007ac4d0  06 30 94 e7                                      ldr r3, [r4, r6]
007ac4d4  99 02 29 e0                                      mla sb, sb, r2, r0
007ac4d8  00 30 93 e5                                      ldr r3, [r3]
007ac4dc  6b df 4d e2                                      sub sp, sp, #0x1ac
007ac4e0  00 70 a0 e1                                      mov r7, r0
007ac4e4  a4 31 8d e5                                      str r3, [sp, #0x1a4]
007ac4e8  68 50 99 e5                                      ldr r5, [sb, #0x68]
007ac4ec  02 80 a0 e1                                      mov r8, r2
007ac4f0  01 a0 a0 e1                                      mov sl, r1
007ac4f4  00 00 55 e3                                      cmp r5, #0
007ac4f8  05 00 00 0a                                      beq #0x7ac514
007ac4fc  05 00 a0 e1                                      mov r0, r5
007ac500  d7 b5 fe eb                                      bl #0x759c64
007ac504  00 00 5a e3                                      cmp sl, #0
007ac508  08 00 00 1a                                      bne #0x7ac530
007ac50c  05 00 a0 e1                                      mov r0, r5
007ac510  4a b7 fe eb                                      bl #0x75a240
007ac514  06 30 94 e7                                      ldr r3, [r4, r6]
007ac518  a4 21 9d e5                                      ldr r2, [sp, #0x1a4]
007ac51c  00 30 93 e5                                      ldr r3, [r3]
007ac520  03 00 52 e1                                      cmp r2, r3
007ac524  f9 00 00 1a                                      bne #0x7ac910
007ac528  6b df 8d e2                                      add sp, sp, #0x1ac
007ac52c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ac530  74 30 99 e5                                      ldr r3, [sb, #0x74]
007ac534  00 00 53 e3                                      cmp r3, #0
007ac538  f3 ff ff 1a                                      bne #0x7ac50c
007ac53c  94 30 8d e5                                      str r3, [sp, #0x94]
007ac540  00 20 a0 e3                                      mov r2, #0
007ac544  03 30 a0 e3                                      mov r3, #3
007ac548  90 20 8d e5                                      str r2, [sp, #0x90]
007ac54c  84 30 8d e5                                      str r3, [sp, #0x84]
007ac550  8c 20 8d e5                                      str r2, [sp, #0x8c]
007ac554  88 20 8d e5                                      str r2, [sp, #0x88]
007ac558  7c 50 8d e5                                      str r5, [sp, #0x7c]
007ac55c  44 20 95 e5                                      ldr r2, [r5, #0x44]
007ac560  07 00 a0 e1                                      mov r0, r7
007ac564  7c 10 8d e2                                      add r1, sp, #0x7c
007ac568  d0 30 d2 e1                                      ldrsb r3, [r2]
007ac56c  01 00 73 e3                                      cmn r3, #1
007ac570  0c 20 92 05                                      ldreq r2, [r2, #0xc]
007ac574  00 30 a0 e3                                      mov r3, #0
007ac578  01 20 82 12                                      addne r2, r2, #1
007ac57c  a0 30 cd e5                                      strb r3, [sp, #0xa0]
007ac580  a1 30 cd e5                                      strb r3, [sp, #0xa1]
007ac584  80 20 8d e5                                      str r2, [sp, #0x80]
007ac588  9c 80 8d e5                                      str r8, [sp, #0x9c]
007ac58c  98 a0 8d e5                                      str sl, [sp, #0x98]
007ac590  67 fe ff eb                                      bl #0x7abf34
007ac594  a0 30 dd e5                                      ldrb r3, [sp, #0xa0]
007ac598  00 00 53 e3                                      cmp r3, #0
007ac59c  da ff ff 1a                                      bne #0x7ac50c
007ac5a0  05 00 a0 e1                                      mov r0, r5
007ac5a4  72 9e fe eb                                      bl #0x753f74
007ac5a8  64 e0 8d e2                                      add lr, sp, #0x64
007ac5ac  00 c0 a0 e1                                      mov ip, r0
007ac5b0  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
007ac5b4  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
007ac5b8  03 00 9c e8                                      ldm ip, {r0, r1}
007ac5bc  0c 00 1a e3                                      tst sl, #0xc
007ac5c0  03 00 8e e8                                      stm lr, {r0, r1}
007ac5c4  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
007ac5c8  78 e0 9d e5                                      ldr lr, [sp, #0x78]
007ac5cc  41 94 a0 03                                      moveq sb, #0x41000000
007ac5d0  04 30 8d e5                                      str r3, [sp, #4]
007ac5d4  02 96 89 02                                      addeq sb, sb, #0x200000
007ac5d8  fe 95 a0 13                                      movne sb, #0x3f800000
007ac5dc  01 30 1a e2                                      ands r3, sl, #1
007ac5e0  00 e0 8d e5                                      str lr, [sp]
007ac5e4  2c 30 8d e5                                      str r3, [sp, #0x2c]
007ac5e8  04 00 00 1a                                      bne #0x7ac600
007ac5ec  02 00 1a e3                                      tst sl, #2
007ac5f0  41 e4 a0 03                                      moveq lr, #0x41000000
007ac5f4  02 e6 8e 02                                      addeq lr, lr, #0x200000
007ac5f8  08 e0 8d 05                                      streq lr, [sp, #8]
007ac5fc  01 00 00 0a                                      beq #0x7ac608
007ac600  fe 35 a0 e3                                      mov r3, #0x3f800000
007ac604  08 30 8d e5                                      str r3, [sp, #8]
007ac608  0c 23 9f e5                                      ldr r2, [pc, #0x30c]
007ac60c  03 30 a0 e3                                      mov r3, #3
007ac610  07 00 a0 e1                                      mov r0, r7
007ac614  40 10 97 e5                                      ldr r1, [r7, #0x40]
007ac618  02 20 8f e0                                      add r2, pc, r2
007ac61c  79 f1 ff eb                                      bl #0x7a8c08
007ac620  04 30 90 e5                                      ldr r3, [r0, #4]
007ac624  00 00 53 e3                                      cmp r3, #0
007ac628  b2 00 00 da                                      ble #0x7ac8f8
007ac62c  4f 34 a0 e3                                      mov r3, #0x4f000000
007ac630  00 e0 a0 e3                                      mov lr, #0
007ac634  0c 30 8d e5                                      str r3, [sp, #0xc]
007ac638  1c 30 8d e5                                      str r3, [sp, #0x1c]
007ac63c  18 30 8d e5                                      str r3, [sp, #0x18]
007ac640  14 30 8d e5                                      str r3, [sp, #0x14]
007ac644  4c 30 8d e2                                      add r3, sp, #0x4c
007ac648  30 50 8d e5                                      str r5, [sp, #0x30]
007ac64c  34 70 8d e5                                      str r7, [sp, #0x34]
007ac650  3c 80 8d e5                                      str r8, [sp, #0x3c]
007ac654  40 40 8d e5                                      str r4, [sp, #0x40]
007ac658  10 e0 8d e5                                      str lr, [sp, #0x10]
007ac65c  20 e0 8d e5                                      str lr, [sp, #0x20]
007ac660  24 e0 8d e5                                      str lr, [sp, #0x24]
007ac664  28 e0 8d e5                                      str lr, [sp, #0x28]
007ac668  0e 50 a0 e1                                      mov r5, lr
007ac66c  00 70 a0 e1                                      mov r7, r0
007ac670  38 a0 8d e5                                      str sl, [sp, #0x38]
007ac674  09 80 a0 e1                                      mov r8, sb
007ac678  44 60 8d e5                                      str r6, [sp, #0x44]
007ac67c  03 40 a0 e1                                      mov r4, r3
007ac680  00 30 97 e5                                      ldr r3, [r7]
007ac684  05 61 93 e7                                      ldr r6, [r3, r5, lsl #2]
007ac688  06 00 a0 e1                                      mov r0, r6
007ac68c  38 9e fe eb                                      bl #0x753f74
007ac690  04 e0 a0 e1                                      mov lr, r4
007ac694  00 c0 a0 e1                                      mov ip, r0
007ac698  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
007ac69c  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
007ac6a0  03 00 9c e8                                      ldm ip, {r0, r1}
007ac6a4  03 00 8e e8                                      stm lr, {r0, r1}
007ac6a8  04 10 9d e5                                      ldr r1, [sp, #4]
007ac6ac  54 00 9d e5                                      ldr r0, [sp, #0x54]
007ac6b0  3d 87 ed eb                                      bl #0x30e3ac
007ac6b4  00 10 a0 e1                                      mov r1, r0
007ac6b8  08 00 a0 e1                                      mov r0, r8
007ac6bc  aa 89 ed eb                                      bl #0x30ed6c
007ac6c0  00 10 9d e5                                      ldr r1, [sp]
007ac6c4  00 a0 a0 e1                                      mov sl, r0
007ac6c8  60 00 9d e5                                      ldr r0, [sp, #0x60]
007ac6cc  36 87 ed eb                                      bl #0x30e3ac
007ac6d0  00 10 a0 e1                                      mov r1, r0
007ac6d4  08 00 9d e5                                      ldr r0, [sp, #8]
007ac6d8  a3 89 ed eb                                      bl #0x30ed6c
007ac6dc  0a 10 a0 e1                                      mov r1, sl
007ac6e0  00 90 a0 e1                                      mov sb, r0
007ac6e4  0a 00 a0 e1                                      mov r0, sl
007ac6e8  9f 89 ed eb                                      bl #0x30ed6c
007ac6ec  09 10 a0 e1                                      mov r1, sb
007ac6f0  00 b0 a0 e1                                      mov fp, r0
007ac6f4  09 00 a0 e1                                      mov r0, sb
007ac6f8  9b 89 ed eb                                      bl #0x30ed6c
007ac6fc  00 10 a0 e1                                      mov r1, r0
007ac700  0b 00 a0 e1                                      mov r0, fp
007ac704  26 89 ed eb                                      bl #0x30eba4
007ac708  00 10 a0 e3                                      mov r1, #0
007ac70c  00 b0 a0 e1                                      mov fp, r0
007ac710  09 00 a0 e1                                      mov r0, sb
007ac714  fc 87 ed eb                                      bl #0x30e70c
007ac718  00 00 50 e3                                      cmp r0, #0
007ac71c  0a 00 00 0a                                      beq #0x7ac74c
007ac720  02 01 c9 e3                                      bic r0, sb, #0x80000000
007ac724  00 10 a0 e3                                      mov r1, #0
007ac728  f2 86 ed eb                                      bl #0x30e2f8
007ac72c  00 00 50 e3                                      cmp r0, #0
007ac730  05 00 00 0a                                      beq #0x7ac74c
007ac734  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007ac738  0b 00 a0 e1                                      mov r0, fp
007ac73c  f2 87 ed eb                                      bl #0x30e70c
007ac740  00 00 50 e3                                      cmp r0, #0
007ac744  1c b0 8d 15                                      strne fp, [sp, #0x1c]
007ac748  20 60 8d 15                                      strne r6, [sp, #0x20]
007ac74c  09 00 a0 e1                                      mov r0, sb
007ac750  00 10 a0 e3                                      mov r1, #0
007ac754  e7 86 ed eb                                      bl #0x30e2f8
007ac758  00 00 50 e3                                      cmp r0, #0
007ac75c  0a 00 00 0a                                      beq #0x7ac78c
007ac760  02 01 c9 e3                                      bic r0, sb, #0x80000000
007ac764  00 10 a0 e3                                      mov r1, #0
007ac768  e2 86 ed eb                                      bl #0x30e2f8
007ac76c  00 00 50 e3                                      cmp r0, #0
007ac770  05 00 00 0a                                      beq #0x7ac78c
007ac774  18 00 9d e5                                      ldr r0, [sp, #0x18]
007ac778  0b 10 a0 e1                                      mov r1, fp
007ac77c  dd 86 ed eb                                      bl #0x30e2f8
007ac780  00 00 50 e3                                      cmp r0, #0
007ac784  18 b0 8d 15                                      strne fp, [sp, #0x18]
007ac788  24 60 8d 15                                      strne r6, [sp, #0x24]
007ac78c  0a 00 a0 e1                                      mov r0, sl
007ac790  00 10 a0 e3                                      mov r1, #0
007ac794  dc 87 ed eb                                      bl #0x30e70c
007ac798  00 00 50 e3                                      cmp r0, #0
007ac79c  0a 00 00 0a                                      beq #0x7ac7cc
007ac7a0  02 01 ca e3                                      bic r0, sl, #0x80000000
007ac7a4  00 10 a0 e3                                      mov r1, #0
007ac7a8  d2 86 ed eb                                      bl #0x30e2f8
007ac7ac  00 00 50 e3                                      cmp r0, #0
007ac7b0  05 00 00 0a                                      beq #0x7ac7cc
007ac7b4  14 00 9d e5                                      ldr r0, [sp, #0x14]
007ac7b8  0b 10 a0 e1                                      mov r1, fp
007ac7bc  cd 86 ed eb                                      bl #0x30e2f8
007ac7c0  00 00 50 e3                                      cmp r0, #0
007ac7c4  14 b0 8d 15                                      strne fp, [sp, #0x14]
007ac7c8  10 60 8d 15                                      strne r6, [sp, #0x10]
007ac7cc  0a 00 a0 e1                                      mov r0, sl
007ac7d0  00 10 a0 e3                                      mov r1, #0
007ac7d4  c7 86 ed eb                                      bl #0x30e2f8
007ac7d8  00 00 50 e3                                      cmp r0, #0
007ac7dc  0a 00 00 0a                                      beq #0x7ac80c
007ac7e0  02 01 ca e3                                      bic r0, sl, #0x80000000
007ac7e4  00 10 a0 e3                                      mov r1, #0
007ac7e8  c2 86 ed eb                                      bl #0x30e2f8
007ac7ec  00 00 50 e3                                      cmp r0, #0
007ac7f0  05 00 00 0a                                      beq #0x7ac80c
007ac7f4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007ac7f8  0b 00 a0 e1                                      mov r0, fp
007ac7fc  c2 87 ed eb                                      bl #0x30e70c
007ac800  00 00 50 e3                                      cmp r0, #0
007ac804  0c b0 8d 15                                      strne fp, [sp, #0xc]
007ac808  28 60 8d 15                                      strne r6, [sp, #0x28]
007ac80c  04 30 97 e5                                      ldr r3, [r7, #4]
007ac810  01 50 85 e2                                      add r5, r5, #1
007ac814  03 00 55 e1                                      cmp r5, r3
007ac818  98 ff ff ba                                      blt #0x7ac680
007ac81c  30 50 8d e2                                      add r5, sp, #0x30
007ac820  a0 04 95 e8                                      ldm r5, {r5, r7, sl}
007ac824  3c 80 9d e5                                      ldr r8, [sp, #0x3c]
007ac828  40 40 9d e5                                      ldr r4, [sp, #0x40]
007ac82c  44 60 9d e5                                      ldr r6, [sp, #0x44]
007ac830  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007ac834  00 00 53 e3                                      cmp r3, #0
007ac838  07 00 00 0a                                      beq #0x7ac85c
007ac83c  20 e0 9d e5                                      ldr lr, [sp, #0x20]
007ac840  00 00 5e e3                                      cmp lr, #0
007ac844  04 00 00 0a                                      beq #0x7ac85c
007ac848  07 00 a0 e1                                      mov r0, r7
007ac84c  0e 10 a0 e1                                      mov r1, lr
007ac850  08 20 a0 e1                                      mov r2, r8
007ac854  73 fe ff eb                                      bl #0x7ac228
007ac858  2b ff ff ea                                      b #0x7ac50c
007ac85c  02 00 1a e3                                      tst sl, #2
007ac860  07 00 00 0a                                      beq #0x7ac884
007ac864  24 30 9d e5                                      ldr r3, [sp, #0x24]
007ac868  00 00 53 e3                                      cmp r3, #0
007ac86c  04 00 00 0a                                      beq #0x7ac884
007ac870  07 00 a0 e1                                      mov r0, r7
007ac874  03 10 a0 e1                                      mov r1, r3
007ac878  08 20 a0 e1                                      mov r2, r8
007ac87c  69 fe ff eb                                      bl #0x7ac228
007ac880  21 ff ff ea                                      b #0x7ac50c
007ac884  04 00 1a e3                                      tst sl, #4
007ac888  02 00 00 0a                                      beq #0x7ac898
007ac88c  10 e0 9d e5                                      ldr lr, [sp, #0x10]
007ac890  00 00 5e e3                                      cmp lr, #0
007ac894  eb ff ff 1a                                      bne #0x7ac848
007ac898  08 00 1a e3                                      tst sl, #8
007ac89c  02 00 00 0a                                      beq #0x7ac8ac
007ac8a0  28 30 9d e5                                      ldr r3, [sp, #0x28]
007ac8a4  00 00 53 e3                                      cmp r3, #0
007ac8a8  f0 ff ff 1a                                      bne #0x7ac870
007ac8ac  10 00 1a e3                                      tst sl, #0x10
007ac8b0  15 ff ff 0a                                      beq #0x7ac50c
007ac8b4  fc 30 97 e5                                      ldr r3, [r7, #0xfc]
007ac8b8  00 00 53 e3                                      cmp r3, #0
007ac8bc  12 ff ff 0a                                      beq #0x7ac50c
007ac8c0  f8 30 97 e5                                      ldr r3, [r7, #0xf8]
007ac8c4  40 30 13 e2                                      ands r3, r3, #0x40
007ac8c8  0f ff ff 1a                                      bne #0x7ac50c
007ac8cc  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
007ac8d0  05 10 a0 e1                                      mov r1, r5
007ac8d4  07 00 a0 e1                                      mov r0, r7
007ac8d8  02 20 8f e0                                      add r2, pc, r2
007ac8dc  48 fc ff eb                                      bl #0x7aba04
007ac8e0  28 00 a0 e3                                      mov r0, #0x28
007ac8e4  90 78 20 e0                                      mla r0, r0, r8, r7
007ac8e8  05 10 a0 e1                                      mov r1, r5
007ac8ec  74 00 80 e2                                      add r0, r0, #0x74
007ac8f0  25 a2 fe eb                                      bl #0x75518c
007ac8f4  04 ff ff ea                                      b #0x7ac50c
007ac8f8  00 e0 a0 e3                                      mov lr, #0
007ac8fc  10 e0 8d e5                                      str lr, [sp, #0x10]
007ac900  20 e0 8d e5                                      str lr, [sp, #0x20]
007ac904  24 e0 8d e5                                      str lr, [sp, #0x24]
007ac908  28 e0 8d e5                                      str lr, [sp, #0x28]
007ac90c  c7 ff ff ea                                      b #0x7ac830
007ac910  7e 86 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007ac914  c4 85 1e 00 ac 40 00 00 68 ca 11 00 d0 e0 15 00  .byte 0xc4, 0x85, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x68, 0xca, 0x11, 0x00, 0xd0, 0xe0, 0x15, 0x00

; FUNCTION 0x007ac924, declared_size=3432, range_size=3432, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX12UpdateCursorERNS_6CursorEi
; demangled: RenderFX::UpdateCursor(RenderFX::Cursor&, int)
; decoder-mode: arm
007ac924  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ac928  48 5d 9f e5                                      ldr r5, [pc, #0xd48]
007ac92c  48 8d 9f e5                                      ldr r8, [pc, #0xd48]
007ac930  af df 4d e2                                      sub sp, sp, #0x2bc
007ac934  05 50 8f e0                                      add r5, pc, r5
007ac938  08 30 95 e7                                      ldr r3, [r5, r8]
007ac93c  03 00 52 e3                                      cmp r2, #3
007ac940  02 60 a0 e1                                      mov r6, r2
007ac944  00 30 93 e5                                      ldr r3, [r3]
007ac948  00 40 a0 e1                                      mov r4, r0
007ac94c  01 70 a0 e1                                      mov r7, r1
007ac950  b4 32 8d e5                                      str r3, [sp, #0x2b4]
007ac954  67 00 00 8a                                      bhi #0x7acaf8
007ac958  28 a0 a0 e3                                      mov sl, #0x28
007ac95c  9a 02 2a e0                                      mla sl, sl, r2, r0
007ac960  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
007ac964  5c e0 9a e5                                      ldr lr, [sl, #0x5c]
007ac968  58 c0 8a e2                                      add ip, sl, #0x58
007ac96c  18 e0 8d e5                                      str lr, [sp, #0x18]
007ac970  58 e0 9a e5                                      ldr lr, [sl, #0x58]
007ac974  14 e0 8d e5                                      str lr, [sp, #0x14]
007ac978  64 e0 9a e5                                      ldr lr, [sl, #0x64]
007ac97c  1c e0 8d e5                                      str lr, [sp, #0x1c]
007ac980  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007ac984  04 10 97 e5                                      ldr r1, [r7, #4]
007ac988  00 20 97 e5                                      ldr r2, [r7]
007ac98c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
007ac990  60 10 8d e5                                      str r1, [sp, #0x60]
007ac994  5c 20 8d e5                                      str r2, [sp, #0x5c]
007ac998  4c 10 83 e5                                      str r1, [r3, #0x4c]
007ac99c  48 20 83 e5                                      str r2, [r3, #0x48]
007ac9a0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
007ac9a4  5c 10 8d e2                                      add r1, sp, #0x5c
007ac9a8  50 60 83 e5                                      str r6, [r3, #0x50]
007ac9ac  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007ac9b0  02 1d ff eb                                      bl #0x773dc0
007ac9b4  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
007ac9b8  70 30 9a e5                                      ldr r3, [sl, #0x70]
007ac9bc  08 20 8d e5                                      str r2, [sp, #8]
007ac9c0  60 20 9d e5                                      ldr r2, [sp, #0x60]
007ac9c4  00 00 53 e3                                      cmp r3, #0
007ac9c8  0c 20 8d e5                                      str r2, [sp, #0xc]
007ac9cc  44 00 00 0a                                      beq #0x7acae4
007ac9d0  44 a0 8d e2                                      add sl, sp, #0x44
007ac9d4  00 20 a0 e3                                      mov r2, #0
007ac9d8  0c 30 8a e2                                      add r3, sl, #0xc
007ac9dc  04 20 83 e4                                      str r2, [r3], #4
007ac9e0  04 20 83 e4                                      str r2, [r3], #4
007ac9e4  41 14 a0 e3                                      mov r1, #0x41000000
007ac9e8  fe c5 a0 e3                                      mov ip, #0x3f800000
007ac9ec  00 20 83 e5                                      str r2, [r3]
007ac9f0  0a 16 81 e2                                      add r1, r1, #0xa00000
007ac9f4  08 00 9d e5                                      ldr r0, [sp, #8]
007ac9f8  54 c0 8d e5                                      str ip, [sp, #0x54]
007ac9fc  48 20 8d e5                                      str r2, [sp, #0x48]
007aca00  44 c0 8d e5                                      str ip, [sp, #0x44]
007aca04  d8 88 ed eb                                      bl #0x30ed6c
007aca08  41 14 a0 e3                                      mov r1, #0x41000000
007aca0c  00 b0 a0 e1                                      mov fp, r0
007aca10  0a 16 81 e2                                      add r1, r1, #0xa00000
007aca14  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007aca18  d3 88 ed eb                                      bl #0x30ed6c
007aca1c  00 10 a0 e3                                      mov r1, #0
007aca20  10 00 8d e5                                      str r0, [sp, #0x10]
007aca24  d0 88 ed eb                                      bl #0x30ed6c
007aca28  00 10 a0 e1                                      mov r1, r0
007aca2c  0b 00 a0 e1                                      mov r0, fp
007aca30  5b 88 ed eb                                      bl #0x30eba4
007aca34  00 10 a0 e3                                      mov r1, #0
007aca38  59 88 ed eb                                      bl #0x30eba4
007aca3c  02 15 e0 e3                                      mvn r1, #0x800000
007aca40  00 90 a0 e1                                      mov sb, r0
007aca44  9a 86 ed eb                                      bl #0x30e4b4
007aca48  00 00 50 e3                                      cmp r0, #0
007aca4c  6c 01 00 0a                                      beq #0x7ad004
007aca50  02 11 e0 e3                                      mvn r1, #0x80000000
007aca54  09 00 a0 e1                                      mov r0, sb
007aca58  02 15 41 e2                                      sub r1, r1, #0x800000
007aca5c  d2 87 ed eb                                      bl #0x30e9ac
007aca60  00 00 50 e3                                      cmp r0, #0
007aca64  66 01 00 0a                                      beq #0x7ad004
007aca68  50 10 9d e5                                      ldr r1, [sp, #0x50]
007aca6c  0b 00 a0 e1                                      mov r0, fp
007aca70  4c 90 8d e5                                      str sb, [sp, #0x4c]
007aca74  bc 88 ed eb                                      bl #0x30ed6c
007aca78  00 10 a0 e1                                      mov r1, r0
007aca7c  10 00 9d e5                                      ldr r0, [sp, #0x10]
007aca80  47 88 ed eb                                      bl #0x30eba4
007aca84  58 10 9d e5                                      ldr r1, [sp, #0x58]
007aca88  45 88 ed eb                                      bl #0x30eba4
007aca8c  02 15 e0 e3                                      mvn r1, #0x800000
007aca90  00 90 a0 e1                                      mov sb, r0
007aca94  86 86 ed eb                                      bl #0x30e4b4
007aca98  00 00 50 e3                                      cmp r0, #0
007aca9c  56 01 00 0a                                      beq #0x7acffc
007acaa0  02 11 e0 e3                                      mvn r1, #0x80000000
007acaa4  09 00 a0 e1                                      mov r0, sb
007acaa8  02 15 41 e2                                      sub r1, r1, #0x800000
007acaac  be 87 ed eb                                      bl #0x30e9ac
007acab0  00 00 50 e3                                      cmp r0, #0
007acab4  50 01 00 0a                                      beq #0x7acffc
007acab8  fe 15 a0 e3                                      mov r1, #0x3f800000
007acabc  08 30 97 e5                                      ldr r3, [r7, #8]
007acac0  0a 00 a0 e1                                      mov r0, sl
007acac4  01 20 a0 e1                                      mov r2, r1
007acac8  58 90 8d e5                                      str sb, [sp, #0x58]
007acacc  93 a7 ff eb                                      bl #0x796920
007acad0  28 30 a0 e3                                      mov r3, #0x28
007acad4  93 46 23 e0                                      mla r3, r3, r6, r4
007acad8  0a 10 a0 e1                                      mov r1, sl
007acadc  70 00 93 e5                                      ldr r0, [r3, #0x70]
007acae0  c4 95 f1 eb                                      bl #0x4121f8
007acae4  28 30 a0 e3                                      mov r3, #0x28
007acae8  93 46 23 e0                                      mla r3, r3, r6, r4
007acaec  7c 20 d3 e5                                      ldrb r2, [r3, #0x7c]
007acaf0  00 00 52 e3                                      cmp r2, #0
007acaf4  06 00 00 1a                                      bne #0x7acb14
007acaf8  08 30 95 e7                                      ldr r3, [r5, r8]
007acafc  b4 22 9d e5                                      ldr r2, [sp, #0x2b4]
007acb00  00 30 93 e5                                      ldr r3, [r3]
007acb04  03 00 52 e1                                      cmp r2, r3
007acb08  cc 02 00 1a                                      bne #0x7ad640
007acb0c  af df 8d e2                                      add sp, sp, #0x2bc
007acb10  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007acb14  40 20 94 e5                                      ldr r2, [r4, #0x40]
007acb18  00 00 52 e3                                      cmp r2, #0
007acb1c  f5 ff ff 0a                                      beq #0x7acaf8
007acb20  f8 20 94 e5                                      ldr r2, [r4, #0xf8]
007acb24  20 00 12 e3                                      tst r2, #0x20
007acb28  37 01 00 1a                                      bne #0x7ad00c
007acb2c  08 00 9d e5                                      ldr r0, [sp, #8]
007acb30  65 86 ed eb                                      bl #0x30e4cc
007acb34  00 a0 a0 e1                                      mov sl, r0
007acb38  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007acb3c  62 86 ed eb                                      bl #0x30e4cc
007acb40  3c 90 94 e5                                      ldr sb, [r4, #0x3c]
007acb44  00 20 a0 e1                                      mov r2, r0
007acb48  00 30 a0 e3                                      mov r3, #0
007acb4c  09 00 a0 e1                                      mov r0, sb
007acb50  0a 10 a0 e1                                      mov r1, sl
007acb54  73 1d ff eb                                      bl #0x774128
007acb58  0c 30 97 e5                                      ldr r3, [r7, #0xc]
007acb5c  00 00 53 e3                                      cmp r3, #0
007acb60  58 01 00 1a                                      bne #0x7ad0c8
007acb64  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007acb68  00 00 52 e3                                      cmp r2, #0
007acb6c  1c e0 9d 05                                      ldreq lr, [sp, #0x1c]
007acb70  20 30 8d 15                                      strne r3, [sp, #0x20]
007acb74  01 30 a0 13                                      movne r3, #1
007acb78  1c 30 8d 15                                      strne r3, [sp, #0x1c]
007acb7c  20 e0 8d 05                                      streq lr, [sp, #0x20]
007acb80  00 20 a0 e3                                      mov r2, #0
007acb84  18 20 8d e5                                      str r2, [sp, #0x18]
007acb88  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007acb8c  04 00 13 e3                                      tst r3, #4
007acb90  46 01 00 0a                                      beq #0x7ad0b0
007acb94  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
007acb98  10 a0 93 e5                                      ldr sl, [r3, #0x10]
007acb9c  00 00 5a e3                                      cmp sl, #0
007acba0  45 01 00 0a                                      beq #0x7ad0bc
007acba4  0a 00 a0 e1                                      mov r0, sl
007acba8  24 a0 8d e5                                      str sl, [sp, #0x24]
007acbac  2c b4 fe eb                                      bl #0x759c64
007acbb0  41 14 a0 e3                                      mov r1, #0x41000000
007acbb4  0a 16 81 e2                                      add r1, r1, #0xa00000
007acbb8  08 00 9d e5                                      ldr r0, [sp, #8]
007acbbc  6a 88 ed eb                                      bl #0x30ed6c
007acbc0  41 14 a0 e3                                      mov r1, #0x41000000
007acbc4  14 00 8d e5                                      str r0, [sp, #0x14]
007acbc8  0a 16 81 e2                                      add r1, r1, #0xa00000
007acbcc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007acbd0  65 88 ed eb                                      bl #0x30ed6c
007acbd4  10 00 8d e5                                      str r0, [sp, #0x10]
007acbd8  00 30 9a e5                                      ldr r3, [sl]
007acbdc  0a 00 a0 e1                                      mov r0, sl
007acbe0  14 10 9d e5                                      ldr r1, [sp, #0x14]
007acbe4  10 20 9d e5                                      ldr r2, [sp, #0x10]
007acbe8  0f e0 a0 e1                                      mov lr, pc
007acbec  68 f0 93 e5                                      ldr pc, [r3, #0x68]
007acbf0  00 a0 50 e2                                      subs sl, r0, #0
007acbf4  00 00 00 0a                                      beq #0x7acbfc
007acbf8  19 b4 fe eb                                      bl #0x759c64
007acbfc  28 30 a0 e3                                      mov r3, #0x28
007acc00  93 46 23 e0                                      mla r3, r3, r6, r4
007acc04  68 b0 93 e5                                      ldr fp, [r3, #0x68]
007acc08  00 00 5b e3                                      cmp fp, #0
007acc0c  01 00 00 0a                                      beq #0x7acc18
007acc10  0b 00 a0 e1                                      mov r0, fp
007acc14  12 b4 fe eb                                      bl #0x759c64
007acc18  28 30 a0 e3                                      mov r3, #0x28
007acc1c  93 46 23 e0                                      mla r3, r3, r6, r4
007acc20  78 30 93 e5                                      ldr r3, [r3, #0x78]
007acc24  00 00 53 e3                                      cmp r3, #0
007acc28  67 01 00 0a                                      beq #0x7ad1cc
007acc2c  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007acc30  80 00 13 e3                                      tst r3, #0x80
007acc34  04 00 00 0a                                      beq #0x7acc4c
007acc38  00 00 5a e3                                      cmp sl, #0
007acc3c  02 00 00 0a                                      beq #0x7acc4c
007acc40  18 20 9d e5                                      ldr r2, [sp, #0x18]
007acc44  00 00 52 e3                                      cmp r2, #0
007acc48  6c 01 00 1a                                      bne #0x7ad200
007acc4c  20 30 9d e5                                      ldr r3, [sp, #0x20]
007acc50  00 00 53 e3                                      cmp r3, #0
007acc54  02 00 00 1a                                      bne #0x7acc64
007acc58  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
007acc5c  00 00 5e e3                                      cmp lr, #0
007acc60  0a 00 00 0a                                      beq #0x7acc90
007acc64  28 20 a0 e3                                      mov r2, #0x28
007acc68  92 06 02 e0                                      mul r2, r2, r6
007acc6c  02 30 84 e0                                      add r3, r4, r2
007acc70  74 10 93 e5                                      ldr r1, [r3, #0x74]
007acc74  68 30 93 e5                                      ldr r3, [r3, #0x68]
007acc78  01 00 53 e1                                      cmp r3, r1
007acc7c  03 00 00 0a                                      beq #0x7acc90
007acc80  02 20 84 e0                                      add r2, r4, r2
007acc84  74 00 82 e2                                      add r0, r2, #0x74
007acc88  00 10 a0 e3                                      mov r1, #0
007acc8c  3e a1 fe eb                                      bl #0x75518c
007acc90  28 90 a0 e3                                      mov sb, #0x28
007acc94  99 06 09 e0                                      mul sb, sb, r6
007acc98  09 30 84 e0                                      add r3, r4, sb
007acc9c  78 00 93 e5                                      ldr r0, [r3, #0x78]
007acca0  00 00 50 e3                                      cmp r0, #0
007acca4  05 00 00 0a                                      beq #0x7accc0
007acca8  ef ef ff eb                                      bl #0x7a8c6c
007accac  00 10 50 e2                                      subs r1, r0, #0
007accb0  02 00 00 1a                                      bne #0x7accc0
007accb4  78 00 89 e2                                      add r0, sb, #0x78
007accb8  00 00 84 e0                                      add r0, r4, r0
007accbc  32 a1 fe eb                                      bl #0x75518c
007accc0  28 90 a0 e3                                      mov sb, #0x28
007accc4  99 46 29 e0                                      mla sb, sb, r6, r4
007accc8  68 30 99 e5                                      ldr r3, [sb, #0x68]
007acccc  03 00 5b e1                                      cmp fp, r3
007accd0  5c 00 00 0a                                      beq #0x7ace48
007accd4  6c 00 99 e5                                      ldr r0, [sb, #0x6c]
007accd8  00 00 50 e3                                      cmp r0, #0
007accdc  2b 00 00 0a                                      beq #0x7acd90
007acce0  e1 ef ff eb                                      bl #0x7a8c6c
007acce4  00 00 50 e3                                      cmp r0, #0
007acce8  28 00 00 0a                                      beq #0x7acd90
007accec  6c 10 99 e5                                      ldr r1, [sb, #0x6c]
007accf0  44 00 8d e2                                      add r0, sp, #0x44
007accf4  08 20 9d e5                                      ldr r2, [sp, #8]
007accf8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007accfc  77 f5 ff eb                                      bl #0x7aa2e0
007acd00  6c 20 99 e5                                      ldr r2, [sb, #0x6c]
007acd04  00 10 a0 e3                                      mov r1, #0
007acd08  a4 11 8d e5                                      str r1, [sp, #0x1a4]
007acd0c  00 30 a0 e3                                      mov r3, #0
007acd10  09 10 a0 e3                                      mov r1, #9
007acd14  9c 31 8d e5                                      str r3, [sp, #0x19c]
007acd18  98 31 8d e5                                      str r3, [sp, #0x198]
007acd1c  8c 21 8d e5                                      str r2, [sp, #0x18c]
007acd20  a0 31 8d e5                                      str r3, [sp, #0x1a0]
007acd24  94 11 8d e5                                      str r1, [sp, #0x194]
007acd28  44 10 92 e5                                      ldr r1, [r2, #0x44]
007acd2c  0c 00 97 e5                                      ldr r0, [r7, #0xc]
007acd30  00 20 a0 e3                                      mov r2, #0
007acd34  d0 30 d1 e1                                      ldrsb r3, [r1]
007acd38  63 9f 8d e2                                      add sb, sp, #0x18c
007acd3c  01 00 73 e3                                      cmn r3, #1
007acd40  0c 10 91 05                                      ldreq r1, [r1, #0xc]
007acd44  01 10 81 12                                      addne r1, r1, #1
007acd48  fc 30 94 e5                                      ldr r3, [r4, #0xfc]
007acd4c  90 11 8d e5                                      str r1, [sp, #0x190]
007acd50  44 10 9d e5                                      ldr r1, [sp, #0x44]
007acd54  a4 01 8d e5                                      str r0, [sp, #0x1a4]
007acd58  b0 21 cd e5                                      strb r2, [sp, #0x1b0]
007acd5c  98 11 8d e5                                      str r1, [sp, #0x198]
007acd60  48 10 9d e5                                      ldr r1, [sp, #0x48]
007acd64  b1 21 cd e5                                      strb r2, [sp, #0x1b1]
007acd68  a8 21 8d e5                                      str r2, [sp, #0x1a8]
007acd6c  9c 11 8d e5                                      str r1, [sp, #0x19c]
007acd70  ac 61 8d e5                                      str r6, [sp, #0x1ac]
007acd74  03 00 a0 e1                                      mov r0, r3
007acd78  09 10 a0 e1                                      mov r1, sb
007acd7c  00 30 93 e5                                      ldr r3, [r3]
007acd80  0f e0 a0 e1                                      mov lr, pc
007acd84  08 f0 93 e5                                      ldr pc, [r3, #8]
007acd88  00 00 50 e3                                      cmp r0, #0
007acd8c  d6 01 00 1a                                      bne #0x7ad4ec
007acd90  00 00 5a e3                                      cmp sl, #0
007acd94  2b 00 00 0a                                      beq #0x7ace48
007acd98  0a 00 a0 e1                                      mov r0, sl
007acd9c  b2 ef ff eb                                      bl #0x7a8c6c
007acda0  00 00 50 e3                                      cmp r0, #0
007acda4  27 00 00 0a                                      beq #0x7ace48
007acda8  44 00 8d e2                                      add r0, sp, #0x44
007acdac  0a 10 a0 e1                                      mov r1, sl
007acdb0  08 20 9d e5                                      ldr r2, [sp, #8]
007acdb4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007acdb8  48 f5 ff eb                                      bl #0x7aa2e0
007acdbc  00 20 a0 e3                                      mov r2, #0
007acdc0  a4 21 8d e5                                      str r2, [sp, #0x1a4]
007acdc4  00 30 a0 e3                                      mov r3, #0
007acdc8  08 20 a0 e3                                      mov r2, #8
007acdcc  94 21 8d e5                                      str r2, [sp, #0x194]
007acdd0  9c 31 8d e5                                      str r3, [sp, #0x19c]
007acdd4  98 31 8d e5                                      str r3, [sp, #0x198]
007acdd8  a0 31 8d e5                                      str r3, [sp, #0x1a0]
007acddc  8c a1 8d e5                                      str sl, [sp, #0x18c]
007acde0  44 10 9a e5                                      ldr r1, [sl, #0x44]
007acde4  0c 00 97 e5                                      ldr r0, [r7, #0xc]
007acde8  00 20 a0 e3                                      mov r2, #0
007acdec  d0 30 d1 e1                                      ldrsb r3, [r1]
007acdf0  63 9f 8d e2                                      add sb, sp, #0x18c
007acdf4  01 00 73 e3                                      cmn r3, #1
007acdf8  0c 10 91 05                                      ldreq r1, [r1, #0xc]
007acdfc  01 10 81 12                                      addne r1, r1, #1
007ace00  fc 30 94 e5                                      ldr r3, [r4, #0xfc]
007ace04  90 11 8d e5                                      str r1, [sp, #0x190]
007ace08  44 10 9d e5                                      ldr r1, [sp, #0x44]
007ace0c  a4 01 8d e5                                      str r0, [sp, #0x1a4]
007ace10  b0 21 cd e5                                      strb r2, [sp, #0x1b0]
007ace14  98 11 8d e5                                      str r1, [sp, #0x198]
007ace18  48 10 9d e5                                      ldr r1, [sp, #0x48]
007ace1c  b1 21 cd e5                                      strb r2, [sp, #0x1b1]
007ace20  a8 21 8d e5                                      str r2, [sp, #0x1a8]
007ace24  9c 11 8d e5                                      str r1, [sp, #0x19c]
007ace28  ac 61 8d e5                                      str r6, [sp, #0x1ac]
007ace2c  03 00 a0 e1                                      mov r0, r3
007ace30  09 10 a0 e1                                      mov r1, sb
007ace34  00 30 93 e5                                      ldr r3, [r3]
007ace38  0f e0 a0 e1                                      mov lr, pc
007ace3c  08 f0 93 e5                                      ldr pc, [r3, #8]
007ace40  00 00 50 e3                                      cmp r0, #0
007ace44  a4 01 00 1a                                      bne #0x7ad4dc
007ace48  18 20 9d e5                                      ldr r2, [sp, #0x18]
007ace4c  00 00 52 e3                                      cmp r2, #0
007ace50  09 00 00 0a                                      beq #0x7ace7c
007ace54  28 90 a0 e3                                      mov sb, #0x28
007ace58  99 46 29 e0                                      mla sb, sb, r6, r4
007ace5c  68 00 99 e5                                      ldr r0, [sb, #0x68]
007ace60  00 00 50 e3                                      cmp r0, #0
007ace64  04 00 00 0a                                      beq #0x7ace7c
007ace68  6c 30 99 e5                                      ldr r3, [sb, #0x6c]
007ace6c  03 00 50 e1                                      cmp r0, r3
007ace70  15 01 00 0a                                      beq #0x7ad2cc
007ace74  00 00 5a e1                                      cmp sl, r0
007ace78  a9 01 00 0a                                      beq #0x7ad524
007ace7c  28 30 a0 e3                                      mov r3, #0x28
007ace80  93 06 03 e0                                      mul r3, r3, r6
007ace84  0a 10 a0 e1                                      mov r1, sl
007ace88  03 00 84 e0                                      add r0, r4, r3
007ace8c  6c 00 80 e2                                      add r0, r0, #0x6c
007ace90  03 30 84 e0                                      add r3, r4, r3
007ace94  0c 30 8d e5                                      str r3, [sp, #0xc]
007ace98  bb a0 fe eb                                      bl #0x75518c
007ace9c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007acea0  68 90 93 e5                                      ldr sb, [r3, #0x68]
007acea4  00 00 59 e3                                      cmp sb, #0
007acea8  48 00 00 0a                                      beq #0x7acfd0
007aceac  09 00 a0 e1                                      mov r0, sb
007aceb0  6b b3 fe eb                                      bl #0x759c64
007aceb4  09 00 a0 e1                                      mov r0, sb
007aceb8  6b ef ff eb                                      bl #0x7a8c6c
007acebc  00 00 50 e3                                      cmp r0, #0
007acec0  40 00 00 0a                                      beq #0x7acfc8
007acec4  09 00 a0 e1                                      mov r0, sb
007acec8  29 9c fe eb                                      bl #0x753f74
007acecc  44 c0 8d e2                                      add ip, sp, #0x44
007aced0  00 e0 a0 e1                                      mov lr, r0
007aced4  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007aced8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007acedc  08 e0 8d e5                                      str lr, [sp, #8]
007acee0  08 20 9d e5                                      ldr r2, [sp, #8]
007acee4  2c e0 8d e2                                      add lr, sp, #0x2c
007acee8  08 30 8e e2                                      add r3, lr, #8
007aceec  03 00 92 e8                                      ldm r2, {r0, r1}
007acef0  00 20 a0 e3                                      mov r2, #0
007acef4  04 20 83 e4                                      str r2, [r3], #4
007acef8  04 20 83 e4                                      str r2, [r3], #4
007acefc  04 20 83 e4                                      str r2, [r3], #4
007acf00  03 00 8c e8                                      stm ip, {r0, r1}
007acf04  00 20 83 e5                                      str r2, [r3]
007acf08  0e 00 a0 e1                                      mov r0, lr
007acf0c  fe 35 a0 e3                                      mov r3, #0x3f800000
007acf10  44 10 8d e2                                      add r1, sp, #0x44
007acf14  30 20 8d e5                                      str r2, [sp, #0x30]
007acf18  3c 30 8d e5                                      str r3, [sp, #0x3c]
007acf1c  2c 30 8d e5                                      str r3, [sp, #0x2c]
007acf20  ed a2 ff eb                                      bl #0x795adc
007acf24  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
007acf28  14 00 9d e5                                      ldr r0, [sp, #0x14]
007acf2c  8e 87 ed eb                                      bl #0x30ed6c
007acf30  30 10 9d e5                                      ldr r1, [sp, #0x30]
007acf34  00 30 a0 e1                                      mov r3, r0
007acf38  10 00 9d e5                                      ldr r0, [sp, #0x10]
007acf3c  04 30 8d e5                                      str r3, [sp, #4]
007acf40  89 87 ed eb                                      bl #0x30ed6c
007acf44  04 30 9d e5                                      ldr r3, [sp, #4]
007acf48  00 10 a0 e1                                      mov r1, r0
007acf4c  03 00 a0 e1                                      mov r0, r3
007acf50  13 87 ed eb                                      bl #0x30eba4
007acf54  34 10 9d e5                                      ldr r1, [sp, #0x34]
007acf58  11 87 ed eb                                      bl #0x30eba4
007acf5c  38 10 9d e5                                      ldr r1, [sp, #0x38]
007acf60  08 00 8d e5                                      str r0, [sp, #8]
007acf64  14 00 9d e5                                      ldr r0, [sp, #0x14]
007acf68  7f 87 ed eb                                      bl #0x30ed6c
007acf6c  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
007acf70  00 30 a0 e1                                      mov r3, r0
007acf74  10 00 9d e5                                      ldr r0, [sp, #0x10]
007acf78  04 30 8d e5                                      str r3, [sp, #4]
007acf7c  7a 87 ed eb                                      bl #0x30ed6c
007acf80  04 30 9d e5                                      ldr r3, [sp, #4]
007acf84  00 10 a0 e1                                      mov r1, r0
007acf88  03 00 a0 e1                                      mov r0, r3
007acf8c  04 87 ed eb                                      bl #0x30eba4
007acf90  40 10 9d e5                                      ldr r1, [sp, #0x40]
007acf94  02 87 ed eb                                      bl #0x30eba4
007acf98  20 e0 9d e5                                      ldr lr, [sp, #0x20]
007acf9c  00 c0 a0 e1                                      mov ip, r0
007acfa0  00 00 5e e3                                      cmp lr, #0
007acfa4  5a 00 00 0a                                      beq #0x7ad114
007acfa8  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007acfac  01 00 13 e3                                      tst r3, #1
007acfb0  19 00 00 1a                                      bne #0x7ad01c
007acfb4  00 00 5a e3                                      cmp sl, #0
007acfb8  17 00 00 1a                                      bne #0x7ad01c
007acfbc  04 00 a0 e1                                      mov r0, r4
007acfc0  06 10 a0 e1                                      mov r1, r6
007acfc4  11 fd ff eb                                      bl #0x7ac410
007acfc8  09 00 a0 e1                                      mov r0, sb
007acfcc  9b b4 fe eb                                      bl #0x75a240
007acfd0  00 00 5b e3                                      cmp fp, #0
007acfd4  01 00 00 0a                                      beq #0x7acfe0
007acfd8  0b 00 a0 e1                                      mov r0, fp
007acfdc  97 b4 fe eb                                      bl #0x75a240
007acfe0  00 00 5a e3                                      cmp sl, #0
007acfe4  01 00 00 0a                                      beq #0x7acff0
007acfe8  0a 00 a0 e1                                      mov r0, sl
007acfec  93 b4 fe eb                                      bl #0x75a240
007acff0  24 00 9d e5                                      ldr r0, [sp, #0x24]
007acff4  91 b4 fe eb                                      bl #0x75a240
007acff8  be fe ff ea                                      b #0x7acaf8
007acffc  00 90 a0 e3                                      mov sb, #0
007ad000  ac fe ff ea                                      b #0x7acab8
007ad004  00 90 a0 e3                                      mov sb, #0
007ad008  96 fe ff ea                                      b #0x7aca68
007ad00c  74 30 93 e5                                      ldr r3, [r3, #0x74]
007ad010  00 00 53 e3                                      cmp r3, #0
007ad014  b7 fe ff 1a                                      bne #0x7acaf8
007ad018  c3 fe ff ea                                      b #0x7acb2c
007ad01c  40 30 13 e2                                      ands r3, r3, #0x40
007ad020  a1 00 00 0a                                      beq #0x7ad2ac
007ad024  00 20 a0 e3                                      mov r2, #0
007ad028  a4 21 8d e5                                      str r2, [sp, #0x1a4]
007ad02c  00 30 a0 e3                                      mov r3, #0
007ad030  04 20 a0 e3                                      mov r2, #4
007ad034  9c 31 8d e5                                      str r3, [sp, #0x19c]
007ad038  98 31 8d e5                                      str r3, [sp, #0x198]
007ad03c  a0 31 8d e5                                      str r3, [sp, #0x1a0]
007ad040  94 21 8d e5                                      str r2, [sp, #0x194]
007ad044  8c 91 8d e5                                      str sb, [sp, #0x18c]
007ad048  44 20 99 e5                                      ldr r2, [sb, #0x44]
007ad04c  0c e0 97 e5                                      ldr lr, [r7, #0xc]
007ad050  04 00 a0 e1                                      mov r0, r4
007ad054  d0 30 d2 e1                                      ldrsb r3, [r2]
007ad058  63 1f 8d e2                                      add r1, sp, #0x18c
007ad05c  01 00 73 e3                                      cmn r3, #1
007ad060  0c 20 92 05                                      ldreq r2, [r2, #0xc]
007ad064  01 20 82 12                                      addne r2, r2, #1
007ad068  00 30 a0 e3                                      mov r3, #0
007ad06c  90 21 8d e5                                      str r2, [sp, #0x190]
007ad070  08 20 9d e5                                      ldr r2, [sp, #8]
007ad074  b0 31 cd e5                                      strb r3, [sp, #0x1b0]
007ad078  a4 e1 8d e5                                      str lr, [sp, #0x1a4]
007ad07c  98 21 8d e5                                      str r2, [sp, #0x198]
007ad080  9c c1 8d e5                                      str ip, [sp, #0x19c]
007ad084  b1 31 cd e5                                      strb r3, [sp, #0x1b1]
007ad088  a8 31 8d e5                                      str r3, [sp, #0x1a8]
007ad08c  ac 61 8d e5                                      str r6, [sp, #0x1ac]
007ad090  a7 fb ff eb                                      bl #0x7abf34
007ad094  28 00 a0 e3                                      mov r0, #0x28
007ad098  90 06 00 e0                                      mul r0, r0, r6
007ad09c  09 10 a0 e1                                      mov r1, sb
007ad0a0  78 00 80 e2                                      add r0, r0, #0x78
007ad0a4  00 00 84 e0                                      add r0, r4, r0
007ad0a8  37 a0 fe eb                                      bl #0x75518c
007ad0ac  c5 ff ff ea                                      b #0x7acfc8
007ad0b0  40 a0 94 e5                                      ldr sl, [r4, #0x40]
007ad0b4  00 00 5a e3                                      cmp sl, #0
007ad0b8  b9 fe ff 1a                                      bne #0x7acba4
007ad0bc  00 20 a0 e3                                      mov r2, #0
007ad0c0  24 20 8d e5                                      str r2, [sp, #0x24]
007ad0c4  b9 fe ff ea                                      b #0x7acbb0
007ad0c8  00 00 97 e5                                      ldr r0, [r7]
007ad0cc  14 10 9d e5                                      ldr r1, [sp, #0x14]
007ad0d0  ad 83 ed eb                                      bl #0x30df8c
007ad0d4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007ad0d8  01 30 73 e2                                      rsbs r3, r3, #1
007ad0dc  00 30 a0 33                                      movlo r3, #0
007ad0e0  00 00 50 e3                                      cmp r0, #0
007ad0e4  20 30 8d e5                                      str r3, [sp, #0x20]
007ad0e8  04 00 00 0a                                      beq #0x7ad100
007ad0ec  18 10 9d e5                                      ldr r1, [sp, #0x18]
007ad0f0  04 00 97 e5                                      ldr r0, [r7, #4]
007ad0f4  a4 83 ed eb                                      bl #0x30df8c
007ad0f8  00 00 50 e3                                      cmp r0, #0
007ad0fc  44 00 00 1a                                      bne #0x7ad214
007ad100  00 30 a0 e3                                      mov r3, #0
007ad104  01 e0 a0 e3                                      mov lr, #1
007ad108  1c 30 8d e5                                      str r3, [sp, #0x1c]
007ad10c  18 e0 8d e5                                      str lr, [sp, #0x18]
007ad110  9c fe ff ea                                      b #0x7acb88
007ad114  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007ad118  00 00 53 e3                                      cmp r3, #0
007ad11c  3f 00 00 0a                                      beq #0x7ad220
007ad120  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007ad124  01 00 13 e3                                      tst r3, #1
007ad128  a3 00 00 1a                                      bne #0x7ad3bc
007ad12c  09 00 5a e1                                      cmp sl, sb
007ad130  a1 00 00 0a                                      beq #0x7ad3bc
007ad134  20 e0 9d e5                                      ldr lr, [sp, #0x20]
007ad138  00 30 a0 e3                                      mov r3, #0
007ad13c  07 20 a0 e3                                      mov r2, #7
007ad140  a4 e1 8d e5                                      str lr, [sp, #0x1a4]
007ad144  9c 31 8d e5                                      str r3, [sp, #0x19c]
007ad148  98 31 8d e5                                      str r3, [sp, #0x198]
007ad14c  a0 31 8d e5                                      str r3, [sp, #0x1a0]
007ad150  94 21 8d e5                                      str r2, [sp, #0x194]
007ad154  8c 91 8d e5                                      str sb, [sp, #0x18c]
007ad158  44 20 99 e5                                      ldr r2, [sb, #0x44]
007ad15c  0c e0 97 e5                                      ldr lr, [r7, #0xc]
007ad160  04 00 a0 e1                                      mov r0, r4
007ad164  d0 30 d2 e1                                      ldrsb r3, [r2]
007ad168  63 1f 8d e2                                      add r1, sp, #0x18c
007ad16c  01 00 73 e3                                      cmn r3, #1
007ad170  0c 20 92 05                                      ldreq r2, [r2, #0xc]
007ad174  01 20 82 12                                      addne r2, r2, #1
007ad178  00 30 a0 e3                                      mov r3, #0
007ad17c  90 21 8d e5                                      str r2, [sp, #0x190]
007ad180  08 20 9d e5                                      ldr r2, [sp, #8]
007ad184  b0 31 cd e5                                      strb r3, [sp, #0x1b0]
007ad188  a4 e1 8d e5                                      str lr, [sp, #0x1a4]
007ad18c  98 21 8d e5                                      str r2, [sp, #0x198]
007ad190  9c c1 8d e5                                      str ip, [sp, #0x19c]
007ad194  b1 31 cd e5                                      strb r3, [sp, #0x1b1]
007ad198  a8 31 8d e5                                      str r3, [sp, #0x1a8]
007ad19c  ac 61 8d e5                                      str r6, [sp, #0x1ac]
007ad1a0  63 fb ff eb                                      bl #0x7abf34
007ad1a4  04 00 a0 e1                                      mov r0, r4
007ad1a8  06 10 a0 e1                                      mov r1, r6
007ad1ac  97 fc ff eb                                      bl #0x7ac410
007ad1b0  28 00 a0 e3                                      mov r0, #0x28
007ad1b4  90 06 00 e0                                      mul r0, r0, r6
007ad1b8  00 10 a0 e3                                      mov r1, #0
007ad1bc  78 00 80 e2                                      add r0, r0, #0x78
007ad1c0  00 00 84 e0                                      add r0, r4, r0
007ad1c4  f0 9f fe eb                                      bl #0x75518c
007ad1c8  7e ff ff ea                                      b #0x7acfc8
007ad1cc  20 30 9d e5                                      ldr r3, [sp, #0x20]
007ad1d0  00 00 53 e3                                      cmp r3, #0
007ad1d4  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007ad1d8  08 00 00 1a                                      bne #0x7ad200
007ad1dc  10 00 13 e3                                      tst r3, #0x10
007ad1e0  06 00 00 0a                                      beq #0x7ad200
007ad1e4  80 00 13 e3                                      tst r3, #0x80
007ad1e8  9a fe ff 0a                                      beq #0x7acc58
007ad1ec  18 e0 9d e5                                      ldr lr, [sp, #0x18]
007ad1f0  00 00 5e e3                                      cmp lr, #0
007ad1f4  97 fe ff 0a                                      beq #0x7acc58
007ad1f8  00 00 5a e3                                      cmp sl, #0
007ad1fc  95 fe ff 0a                                      beq #0x7acc58
007ad200  04 00 a0 e1                                      mov r0, r4
007ad204  0a 10 a0 e1                                      mov r1, sl
007ad208  06 20 a0 e1                                      mov r2, r6
007ad20c  05 fc ff eb                                      bl #0x7ac228
007ad210  8d fe ff ea                                      b #0x7acc4c
007ad214  00 e0 a0 e3                                      mov lr, #0
007ad218  1c e0 8d e5                                      str lr, [sp, #0x1c]
007ad21c  57 fe ff ea                                      b #0x7acb80
007ad220  18 20 9d e5                                      ldr r2, [sp, #0x18]
007ad224  00 00 52 e3                                      cmp r2, #0
007ad228  b3 00 00 0a                                      beq #0x7ad4fc
007ad22c  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007ad230  40 00 13 e3                                      tst r3, #0x40
007ad234  96 ff ff 1a                                      bne #0x7ad094
007ad238  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
007ad23c  00 30 a0 e3                                      mov r3, #0
007ad240  05 20 a0 e3                                      mov r2, #5
007ad244  7c e0 8d e5                                      str lr, [sp, #0x7c]
007ad248  74 30 8d e5                                      str r3, [sp, #0x74]
007ad24c  70 30 8d e5                                      str r3, [sp, #0x70]
007ad250  78 30 8d e5                                      str r3, [sp, #0x78]
007ad254  6c 20 8d e5                                      str r2, [sp, #0x6c]
007ad258  64 90 8d e5                                      str sb, [sp, #0x64]
007ad25c  44 20 99 e5                                      ldr r2, [sb, #0x44]
007ad260  0c e0 97 e5                                      ldr lr, [r7, #0xc]
007ad264  04 00 a0 e1                                      mov r0, r4
007ad268  d0 30 d2 e1                                      ldrsb r3, [r2]
007ad26c  64 10 8d e2                                      add r1, sp, #0x64
007ad270  01 00 73 e3                                      cmn r3, #1
007ad274  0c 20 92 05                                      ldreq r2, [r2, #0xc]
007ad278  01 20 82 12                                      addne r2, r2, #1
007ad27c  00 30 a0 e3                                      mov r3, #0
007ad280  68 20 8d e5                                      str r2, [sp, #0x68]
007ad284  08 20 9d e5                                      ldr r2, [sp, #8]
007ad288  88 30 cd e5                                      strb r3, [sp, #0x88]
007ad28c  7c e0 8d e5                                      str lr, [sp, #0x7c]
007ad290  70 20 8d e5                                      str r2, [sp, #0x70]
007ad294  74 c0 8d e5                                      str ip, [sp, #0x74]
007ad298  89 30 cd e5                                      strb r3, [sp, #0x89]
007ad29c  80 30 8d e5                                      str r3, [sp, #0x80]
007ad2a0  84 60 8d e5                                      str r6, [sp, #0x84]
007ad2a4  22 fb ff eb                                      bl #0x7abf34
007ad2a8  79 ff ff ea                                      b #0x7ad094
007ad2ac  cc 23 9f e5                                      ldr r2, [pc, #0x3cc]
007ad2b0  04 00 a0 e1                                      mov r0, r4
007ad2b4  09 10 a0 e1                                      mov r1, sb
007ad2b8  02 20 8f e0                                      add r2, pc, r2
007ad2bc  04 c0 8d e5                                      str ip, [sp, #4]
007ad2c0  cf f9 ff eb                                      bl #0x7aba04
007ad2c4  04 c0 9d e5                                      ldr ip, [sp, #4]
007ad2c8  55 ff ff ea                                      b #0x7ad024
007ad2cc  00 00 5a e1                                      cmp sl, r0
007ad2d0  0a 00 a0 01                                      moveq r0, sl
007ad2d4  0a 30 a0 01                                      moveq r3, sl
007ad2d8  34 00 00 0a                                      beq #0x7ad3b0
007ad2dc  62 ee ff eb                                      bl #0x7a8c6c
007ad2e0  00 00 50 e3                                      cmp r0, #0
007ad2e4  2f 00 00 0a                                      beq #0x7ad3a8
007ad2e8  68 20 99 e5                                      ldr r2, [sb, #0x68]
007ad2ec  00 10 a0 e3                                      mov r1, #0
007ad2f0  a4 11 8d e5                                      str r1, [sp, #0x1a4]
007ad2f4  00 30 a0 e3                                      mov r3, #0
007ad2f8  0b 10 a0 e3                                      mov r1, #0xb
007ad2fc  a0 31 8d e5                                      str r3, [sp, #0x1a0]
007ad300  94 11 8d e5                                      str r1, [sp, #0x194]
007ad304  9c 31 8d e5                                      str r3, [sp, #0x19c]
007ad308  98 31 8d e5                                      str r3, [sp, #0x198]
007ad30c  8c 21 8d e5                                      str r2, [sp, #0x18c]
007ad310  44 20 92 e5                                      ldr r2, [r2, #0x44]
007ad314  28 90 a0 e3                                      mov sb, #0x28
007ad318  99 46 29 e0                                      mla sb, sb, r6, r4
007ad31c  d0 30 d2 e1                                      ldrsb r3, [r2]
007ad320  44 00 8d e2                                      add r0, sp, #0x44
007ad324  01 00 73 e3                                      cmn r3, #1
007ad328  0c 20 92 05                                      ldreq r2, [r2, #0xc]
007ad32c  01 20 82 12                                      addne r2, r2, #1
007ad330  00 30 a0 e3                                      mov r3, #0
007ad334  90 21 8d e5                                      str r2, [sp, #0x190]
007ad338  b0 31 cd e5                                      strb r3, [sp, #0x1b0]
007ad33c  b1 31 cd e5                                      strb r3, [sp, #0x1b1]
007ad340  a8 31 8d e5                                      str r3, [sp, #0x1a8]
007ad344  ac 61 8d e5                                      str r6, [sp, #0x1ac]
007ad348  68 10 99 e5                                      ldr r1, [sb, #0x68]
007ad34c  08 20 9d e5                                      ldr r2, [sp, #8]
007ad350  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007ad354  e1 f3 ff eb                                      bl #0x7aa2e0
007ad358  0c 20 97 e5                                      ldr r2, [r7, #0xc]
007ad35c  fc 30 94 e5                                      ldr r3, [r4, #0xfc]
007ad360  a4 21 8d e5                                      str r2, [sp, #0x1a4]
007ad364  44 20 9d e5                                      ldr r2, [sp, #0x44]
007ad368  03 00 a0 e1                                      mov r0, r3
007ad36c  98 21 8d e5                                      str r2, [sp, #0x198]
007ad370  48 20 9d e5                                      ldr r2, [sp, #0x48]
007ad374  9c 21 8d e5                                      str r2, [sp, #0x19c]
007ad378  63 2f 8d e2                                      add r2, sp, #0x18c
007ad37c  00 30 93 e5                                      ldr r3, [r3]
007ad380  02 10 a0 e1                                      mov r1, r2
007ad384  04 20 8d e5                                      str r2, [sp, #4]
007ad388  0f e0 a0 e1                                      mov lr, pc
007ad38c  08 f0 93 e5                                      ldr pc, [r3, #8]
007ad390  00 00 50 e3                                      cmp r0, #0
007ad394  04 20 9d e5                                      ldr r2, [sp, #4]
007ad398  02 00 00 0a                                      beq #0x7ad3a8
007ad39c  02 10 a0 e1                                      mov r1, r2
007ad3a0  04 00 a0 e1                                      mov r0, r4
007ad3a4  e2 fa ff eb                                      bl #0x7abf34
007ad3a8  68 00 99 e5                                      ldr r0, [sb, #0x68]
007ad3ac  6c 30 99 e5                                      ldr r3, [sb, #0x6c]
007ad3b0  03 00 50 e1                                      cmp r0, r3
007ad3b4  b0 fe ff 0a                                      beq #0x7ace7c
007ad3b8  ad fe ff ea                                      b #0x7ace74
007ad3bc  00 20 a0 e3                                      mov r2, #0
007ad3c0  00 30 a0 e3                                      mov r3, #0
007ad3c4  a4 21 8d e5                                      str r2, [sp, #0x1a4]
007ad3c8  06 20 a0 e3                                      mov r2, #6
007ad3cc  a0 31 8d e5                                      str r3, [sp, #0x1a0]
007ad3d0  94 21 8d e5                                      str r2, [sp, #0x194]
007ad3d4  9c 31 8d e5                                      str r3, [sp, #0x19c]
007ad3d8  98 31 8d e5                                      str r3, [sp, #0x198]
007ad3dc  8c 91 8d e5                                      str sb, [sp, #0x18c]
007ad3e0  44 30 99 e5                                      ldr r3, [sb, #0x44]
007ad3e4  d0 20 d3 e1                                      ldrsb r2, [r3]
007ad3e8  01 00 72 e3                                      cmn r2, #1
007ad3ec  01 10 83 12                                      addne r1, r3, #1
007ad3f0  80 00 00 0a                                      beq #0x7ad5f8
007ad3f4  0c 00 97 e5                                      ldr r0, [r7, #0xc]
007ad3f8  08 e0 9d e5                                      ldr lr, [sp, #8]
007ad3fc  fc 30 94 e5                                      ldr r3, [r4, #0xfc]
007ad400  00 20 a0 e3                                      mov r2, #0
007ad404  b0 21 cd e5                                      strb r2, [sp, #0x1b0]
007ad408  b1 21 cd e5                                      strb r2, [sp, #0x1b1]
007ad40c  a8 21 8d e5                                      str r2, [sp, #0x1a8]
007ad410  63 2f 8d e2                                      add r2, sp, #0x18c
007ad414  90 11 8d e5                                      str r1, [sp, #0x190]
007ad418  a4 01 8d e5                                      str r0, [sp, #0x1a4]
007ad41c  9c c1 8d e5                                      str ip, [sp, #0x19c]
007ad420  ac 61 8d e5                                      str r6, [sp, #0x1ac]
007ad424  98 e1 8d e5                                      str lr, [sp, #0x198]
007ad428  0c 20 8d e5                                      str r2, [sp, #0xc]
007ad42c  03 00 a0 e1                                      mov r0, r3
007ad430  02 10 a0 e1                                      mov r1, r2
007ad434  00 30 93 e5                                      ldr r3, [r3]
007ad438  04 c0 8d e5                                      str ip, [sp, #4]
007ad43c  0f e0 a0 e1                                      mov lr, pc
007ad440  08 f0 93 e5                                      ldr pc, [r3, #8]
007ad444  00 00 50 e3                                      cmp r0, #0
007ad448  04 c0 9d e5                                      ldr ip, [sp, #4]
007ad44c  57 ff ff 0a                                      beq #0x7ad1b0
007ad450  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007ad454  40 30 13 e2                                      ands r3, r3, #0x40
007ad458  68 00 00 0a                                      beq #0x7ad600
007ad45c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007ad460  04 00 a0 e1                                      mov r0, r4
007ad464  04 c0 8d e5                                      str ip, [sp, #4]
007ad468  b1 fa ff eb                                      bl #0x7abf34
007ad46c  04 c0 9d e5                                      ldr ip, [sp, #4]
007ad470  00 20 a0 e3                                      mov r2, #0
007ad474  7c 20 8d e5                                      str r2, [sp, #0x7c]
007ad478  00 30 a0 e3                                      mov r3, #0
007ad47c  02 20 a0 e3                                      mov r2, #2
007ad480  74 30 8d e5                                      str r3, [sp, #0x74]
007ad484  70 30 8d e5                                      str r3, [sp, #0x70]
007ad488  78 30 8d e5                                      str r3, [sp, #0x78]
007ad48c  6c 20 8d e5                                      str r2, [sp, #0x6c]
007ad490  64 90 8d e5                                      str sb, [sp, #0x64]
007ad494  44 20 99 e5                                      ldr r2, [sb, #0x44]
007ad498  08 e0 9d e5                                      ldr lr, [sp, #8]
007ad49c  04 00 a0 e1                                      mov r0, r4
007ad4a0  d0 30 d2 e1                                      ldrsb r3, [r2]
007ad4a4  64 10 8d e2                                      add r1, sp, #0x64
007ad4a8  01 00 73 e3                                      cmn r3, #1
007ad4ac  0c 20 92 05                                      ldreq r2, [r2, #0xc]
007ad4b0  00 30 a0 e3                                      mov r3, #0
007ad4b4  01 20 82 12                                      addne r2, r2, #1
007ad4b8  68 20 8d e5                                      str r2, [sp, #0x68]
007ad4bc  88 30 cd e5                                      strb r3, [sp, #0x88]
007ad4c0  70 e0 8d e5                                      str lr, [sp, #0x70]
007ad4c4  74 c0 8d e5                                      str ip, [sp, #0x74]
007ad4c8  89 30 cd e5                                      strb r3, [sp, #0x89]
007ad4cc  80 30 8d e5                                      str r3, [sp, #0x80]
007ad4d0  84 60 8d e5                                      str r6, [sp, #0x84]
007ad4d4  96 fa ff eb                                      bl #0x7abf34
007ad4d8  34 ff ff ea                                      b #0x7ad1b0
007ad4dc  09 10 a0 e1                                      mov r1, sb
007ad4e0  04 00 a0 e1                                      mov r0, r4
007ad4e4  92 fa ff eb                                      bl #0x7abf34
007ad4e8  56 fe ff ea                                      b #0x7ace48
007ad4ec  09 10 a0 e1                                      mov r1, sb
007ad4f0  04 00 a0 e1                                      mov r0, r4
007ad4f4  8e fa ff eb                                      bl #0x7abf34
007ad4f8  24 fe ff ea                                      b #0x7acd90
007ad4fc  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007ad500  01 00 13 e3                                      tst r3, #1
007ad504  af fe ff 1a                                      bne #0x7acfc8
007ad508  00 00 5a e3                                      cmp sl, #0
007ad50c  ad fe ff 1a                                      bne #0x7acfc8
007ad510  0c e0 9d e5                                      ldr lr, [sp, #0xc]
007ad514  78 30 9e e5                                      ldr r3, [lr, #0x78]
007ad518  00 00 53 e3                                      cmp r3, #0
007ad51c  a9 fe ff 1a                                      bne #0x7acfc8
007ad520  a5 fe ff ea                                      b #0x7acfbc
007ad524  0a 00 a0 e1                                      mov r0, sl
007ad528  cf ed ff eb                                      bl #0x7a8c6c
007ad52c  00 00 50 e3                                      cmp r0, #0
007ad530  51 fe ff 0a                                      beq #0x7ace7c
007ad534  28 30 a0 e3                                      mov r3, #0x28
007ad538  93 46 22 e0                                      mla r2, r3, r6, r4
007ad53c  00 10 a0 e3                                      mov r1, #0
007ad540  68 20 92 e5                                      ldr r2, [r2, #0x68]
007ad544  00 30 a0 e3                                      mov r3, #0
007ad548  a4 11 8d e5                                      str r1, [sp, #0x1a4]
007ad54c  0a 10 a0 e3                                      mov r1, #0xa
007ad550  8c 21 8d e5                                      str r2, [sp, #0x18c]
007ad554  a0 31 8d e5                                      str r3, [sp, #0x1a0]
007ad558  94 11 8d e5                                      str r1, [sp, #0x194]
007ad55c  9c 31 8d e5                                      str r3, [sp, #0x19c]
007ad560  98 31 8d e5                                      str r3, [sp, #0x198]
007ad564  44 10 92 e5                                      ldr r1, [r2, #0x44]
007ad568  28 20 a0 e3                                      mov r2, #0x28
007ad56c  92 46 22 e0                                      mla r2, r2, r6, r4
007ad570  d0 30 d1 e1                                      ldrsb r3, [r1]
007ad574  44 00 8d e2                                      add r0, sp, #0x44
007ad578  63 9f 8d e2                                      add sb, sp, #0x18c
007ad57c  01 00 73 e3                                      cmn r3, #1
007ad580  0c 10 91 05                                      ldreq r1, [r1, #0xc]
007ad584  01 10 81 12                                      addne r1, r1, #1
007ad588  00 30 a0 e3                                      mov r3, #0
007ad58c  b0 31 cd e5                                      strb r3, [sp, #0x1b0]
007ad590  b1 31 cd e5                                      strb r3, [sp, #0x1b1]
007ad594  a8 31 8d e5                                      str r3, [sp, #0x1a8]
007ad598  90 11 8d e5                                      str r1, [sp, #0x190]
007ad59c  ac 61 8d e5                                      str r6, [sp, #0x1ac]
007ad5a0  68 10 92 e5                                      ldr r1, [r2, #0x68]
007ad5a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007ad5a8  08 20 9d e5                                      ldr r2, [sp, #8]
007ad5ac  4b f3 ff eb                                      bl #0x7aa2e0
007ad5b0  0c 20 97 e5                                      ldr r2, [r7, #0xc]
007ad5b4  fc 30 94 e5                                      ldr r3, [r4, #0xfc]
007ad5b8  09 10 a0 e1                                      mov r1, sb
007ad5bc  a4 21 8d e5                                      str r2, [sp, #0x1a4]
007ad5c0  44 20 9d e5                                      ldr r2, [sp, #0x44]
007ad5c4  03 00 a0 e1                                      mov r0, r3
007ad5c8  98 21 8d e5                                      str r2, [sp, #0x198]
007ad5cc  48 20 9d e5                                      ldr r2, [sp, #0x48]
007ad5d0  9c 21 8d e5                                      str r2, [sp, #0x19c]
007ad5d4  00 30 93 e5                                      ldr r3, [r3]
007ad5d8  0f e0 a0 e1                                      mov lr, pc
007ad5dc  08 f0 93 e5                                      ldr pc, [r3, #8]
007ad5e0  00 00 50 e3                                      cmp r0, #0
007ad5e4  24 fe ff 0a                                      beq #0x7ace7c
007ad5e8  09 10 a0 e1                                      mov r1, sb
007ad5ec  04 00 a0 e1                                      mov r0, r4
007ad5f0  4f fa ff eb                                      bl #0x7abf34
007ad5f4  20 fe ff ea                                      b #0x7ace7c
007ad5f8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
007ad5fc  7c ff ff ea                                      b #0x7ad3f4
007ad600  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
007ad604  04 00 a0 e1                                      mov r0, r4
007ad608  09 10 a0 e1                                      mov r1, sb
007ad60c  02 20 8f e0                                      add r2, pc, r2
007ad610  fb f8 ff eb                                      bl #0x7aba04
007ad614  00 30 50 e2                                      subs r3, r0, #0
007ad618  09 00 00 0a                                      beq #0x7ad644
007ad61c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007ad620  04 00 a0 e1                                      mov r0, r4
007ad624  42 fa ff eb                                      bl #0x7abf34
007ad628  28 00 a0 e3                                      mov r0, #0x28
007ad62c  90 46 20 e0                                      mla r0, r0, r6, r4
007ad630  09 10 a0 e1                                      mov r1, sb
007ad634  74 00 80 e2                                      add r0, r0, #0x74
007ad638  d3 9e fe eb                                      bl #0x75518c
007ad63c  db fe ff ea                                      b #0x7ad1b0
007ad640  32 83 ed eb                                      bl #0x30e310
007ad644  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
007ad648  09 10 a0 e1                                      mov r1, sb
007ad64c  04 00 a0 e1                                      mov r0, r4
007ad650  02 20 8f e0                                      add r2, pc, r2
007ad654  ea f8 ff eb                                      bl #0x7aba04
007ad658  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007ad65c  00 70 a0 e1                                      mov r7, r0
007ad660  04 00 a0 e1                                      mov r0, r4
007ad664  32 fa ff eb                                      bl #0x7abf34
007ad668  00 00 57 e3                                      cmp r7, #0
007ad66c  04 c0 9d e5                                      ldr ip, [sp, #4]
007ad670  ec ff ff 1a                                      bne #0x7ad628
007ad674  7d ff ff ea                                      b #0x7ad470
; mapping-symbol data/literal pool
007ad678  5c 81 1e 00 ac 40 00 00 f8 d6 15 00 ac d3 15 00  .byte 0x5c, 0x81, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf8, 0xd6, 0x15, 0x00, 0xac, 0xd3, 0x15, 0x00
007ad688  58 d3 15 00                                      .byte 0x58, 0xd3, 0x15, 0x00

; FUNCTION 0x007ad68c, declared_size=348, range_size=348, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX6UpdateEib
; demangled: RenderFX::Update(int, bool)
; decoder-mode: arm
007ad68c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ad690  48 51 9f e5                                      ldr r5, [pc, #0x148]
007ad694  48 71 9f e5                                      ldr r7, [pc, #0x148]
007ad698  4f df 4d e2                                      sub sp, sp, #0x13c
007ad69c  05 50 8f e0                                      add r5, pc, r5
007ad6a0  07 30 95 e7                                      ldr r3, [r5, r7]
007ad6a4  00 40 a0 e1                                      mov r4, r0
007ad6a8  38 00 90 e5                                      ldr r0, [r0, #0x38]
007ad6ac  00 30 93 e5                                      ldr r3, [r3]
007ad6b0  01 a0 a0 e1                                      mov sl, r1
007ad6b4  02 80 a0 e1                                      mov r8, r2
007ad6b8  34 31 8d e5                                      str r3, [sp, #0x134]
007ad6bc  bc ff fe eb                                      bl #0x76d5b4
007ad6c0  00 60 50 e2                                      subs r6, r0, #0
007ad6c4  00 00 00 0a                                      beq #0x7ad6cc
007ad6c8  65 b1 fe eb                                      bl #0x759c64
007ad6cc  0a 00 a0 e1                                      mov r0, sl
007ad6d0  a3 84 ed eb                                      bl #0x30e964
007ad6d4  11 13 a0 e3                                      mov r1, #0x44000000
007ad6d8  7a 18 81 e2                                      add r1, r1, #0x7a0000
007ad6dc  6c 85 ed eb                                      bl #0x30ec94
007ad6e0  08 20 a0 e1                                      mov r2, r8
007ad6e4  00 10 a0 e1                                      mov r1, r0
007ad6e8  06 00 a0 e1                                      mov r0, r6
007ad6ec  04 1f ff eb                                      bl #0x775304
007ad6f0  f8 80 94 e5                                      ldr r8, [r4, #0xf8]
007ad6f4  40 80 18 e2                                      ands r8, r8, #0x40
007ad6f8  11 00 00 1a                                      bne #0x7ad744
007ad6fc  0c 20 8d e2                                      add r2, sp, #0xc
007ad700  00 b0 a0 e3                                      mov fp, #0
007ad704  04 a0 a0 e1                                      mov sl, r4
007ad708  08 90 a0 e1                                      mov sb, r8
007ad70c  04 20 8d e5                                      str r2, [sp, #4]
007ad710  74 30 9a e5                                      ldr r3, [sl, #0x74]
007ad714  00 00 53 e3                                      cmp r3, #0
007ad718  05 00 00 0a                                      beq #0x7ad734
007ad71c  03 00 a0 e1                                      mov r0, r3
007ad720  00 30 93 e5                                      ldr r3, [r3]
007ad724  0f e0 a0 e1                                      mov lr, pc
007ad728  98 f0 93 e5                                      ldr pc, [r3, #0x98]
007ad72c  01 00 50 e3                                      cmp r0, #1
007ad730  0e 00 00 0a                                      beq #0x7ad770
007ad734  01 80 88 e2                                      add r8, r8, #1
007ad738  04 00 58 e3                                      cmp r8, #4
007ad73c  28 a0 8a e2                                      add sl, sl, #0x28
007ad740  f2 ff ff 1a                                      bne #0x7ad710
007ad744  00 00 56 e3                                      cmp r6, #0
007ad748  01 00 00 0a                                      beq #0x7ad754
007ad74c  06 00 a0 e1                                      mov r0, r6
007ad750  ba b2 fe eb                                      bl #0x75a240
007ad754  07 30 95 e7                                      ldr r3, [r5, r7]
007ad758  34 21 9d e5                                      ldr r2, [sp, #0x134]
007ad75c  00 30 93 e5                                      ldr r3, [r3]
007ad760  03 00 52 e1                                      cmp r2, r3
007ad764  1c 00 00 1a                                      bne #0x7ad7dc
007ad768  4f df 8d e2                                      add sp, sp, #0x13c
007ad76c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ad770  74 30 9a e5                                      ldr r3, [sl, #0x74]
007ad774  02 20 a0 e3                                      mov r2, #2
007ad778  1c b0 8d e5                                      str fp, [sp, #0x1c]
007ad77c  18 b0 8d e5                                      str fp, [sp, #0x18]
007ad780  20 b0 8d e5                                      str fp, [sp, #0x20]
007ad784  24 90 8d e5                                      str sb, [sp, #0x24]
007ad788  14 20 8d e5                                      str r2, [sp, #0x14]
007ad78c  0c 30 8d e5                                      str r3, [sp, #0xc]
007ad790  44 30 93 e5                                      ldr r3, [r3, #0x44]
007ad794  04 00 a0 e1                                      mov r0, r4
007ad798  04 10 9d e5                                      ldr r1, [sp, #4]
007ad79c  d0 20 d3 e1                                      ldrsb r2, [r3]
007ad7a0  01 00 72 e3                                      cmn r2, #1
007ad7a4  0c 30 93 05                                      ldreq r3, [r3, #0xc]
007ad7a8  01 30 83 12                                      addne r3, r3, #1
007ad7ac  31 90 cd e5                                      strb sb, [sp, #0x31]
007ad7b0  10 30 8d e5                                      str r3, [sp, #0x10]
007ad7b4  28 90 8d e5                                      str sb, [sp, #0x28]
007ad7b8  30 90 cd e5                                      strb sb, [sp, #0x30]
007ad7bc  2c 80 8d e5                                      str r8, [sp, #0x2c]
007ad7c0  db f9 ff eb                                      bl #0x7abf34
007ad7c4  28 30 a0 e3                                      mov r3, #0x28
007ad7c8  93 48 20 e0                                      mla r0, r3, r8, r4
007ad7cc  09 10 a0 e1                                      mov r1, sb
007ad7d0  74 00 80 e2                                      add r0, r0, #0x74
007ad7d4  6c 9e fe eb                                      bl #0x75518c
007ad7d8  d5 ff ff ea                                      b #0x7ad734
007ad7dc  cb 82 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007ad7e0  f4 73 1e 00 ac 40 00 00                          .byte 0xf4, 0x73, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007ad7e8, declared_size=52, range_size=52, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX16InvokeASCallbackEPKcS1_PKN7gameswf8as_valueEi
; demangled: RenderFX::InvokeASCallback(char const*, char const*, gameswf::as_value const*, int)
; decoder-mode: arm
007ad7e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007ad7ec  18 40 9d e5                                      ldr r4, [sp, #0x18]
007ad7f0  02 60 a0 e1                                      mov r6, r2
007ad7f4  03 50 a0 e1                                      mov r5, r3
007ad7f8  00 70 a0 e1                                      mov r7, r0
007ad7fc  57 ee ff eb                                      bl #0x7a9160
007ad800  06 20 a0 e1                                      mov r2, r6
007ad804  00 10 a0 e1                                      mov r1, r0
007ad808  05 30 a0 e1                                      mov r3, r5
007ad80c  07 00 a0 e1                                      mov r0, r7
007ad810  18 40 8d e5                                      str r4, [sp, #0x18]
007ad814  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007ad818  7b f9 ff ea                                      b #0x7abe0c

; FUNCTION 0x007add94, declared_size=28, range_size=28, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX14GetSearchIndexEv
; demangled: RenderFX::GetSearchIndex()
; decoder-mode: arm
007add94  10 40 2d e9                                      push {r4, lr}
007add98  14 40 80 e2                                      add r4, r0, #0x14
007add9c  00 10 a0 e1                                      mov r1, r0
007adda0  04 00 a0 e1                                      mov r0, r4
007adda4  5a ff ff eb                                      bl #0x7adb14
007adda8  04 00 a0 e1                                      mov r0, r4
007addac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007ae6ac, declared_size=348, range_size=348, mode=arm
; class-group: RenderFX
; alias: _ZN8RenderFX10SetTextureEPKcPN6glitch5video8ITextureEb
; demangled: RenderFX::SetTexture(char const*, glitch::video::ITexture*, bool)
; decoder-mode: arm
007ae6ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007ae6b0  28 d0 4d e2                                      sub sp, sp, #0x28
007ae6b4  02 50 a0 e1                                      mov r5, r2
007ae6b8  03 60 a0 e1                                      mov r6, r3
007ae6bc  a7 ea ff eb                                      bl #0x7a9160
007ae6c0  00 40 50 e2                                      subs r4, r0, #0
007ae6c4  18 00 00 0a                                      beq #0x7ae72c
007ae6c8  05 00 a0 e1                                      mov r0, r5
007ae6cc  e2 14 ff eb                                      bl #0x773a5c
007ae6d0  00 00 56 e3                                      cmp r6, #0
007ae6d4  00 70 a0 e1                                      mov r7, r0
007ae6d8  15 00 00 1a                                      bne #0x7ae734
007ae6dc  30 60 94 e5                                      ldr r6, [r4, #0x30]
007ae6e0  00 00 56 e3                                      cmp r6, #0
007ae6e4  03 00 00 0a                                      beq #0x7ae6f8
007ae6e8  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007ae6ec  04 30 d0 e5                                      ldrb r3, [r0, #4]
007ae6f0  00 00 53 e3                                      cmp r3, #0
007ae6f4  39 00 00 0a                                      beq #0x7ae7e0
007ae6f8  00 10 a0 e3                                      mov r1, #0
007ae6fc  34 00 a0 e3                                      mov r0, #0x34
007ae700  28 91 fe eb                                      bl #0x752ba8
007ae704  06 10 a0 e1                                      mov r1, r6
007ae708  07 20 a0 e1                                      mov r2, r7
007ae70c  00 30 a0 e3                                      mov r3, #0
007ae710  00 50 a0 e1                                      mov r5, r0
007ae714  ab fe ff eb                                      bl #0x7ae1c8
007ae718  04 00 a0 e1                                      mov r0, r4
007ae71c  05 10 a0 e1                                      mov r1, r5
007ae720  00 30 94 e5                                      ldr r3, [r4]
007ae724  0f e0 a0 e1                                      mov lr, pc
007ae728  ac f0 93 e5                                      ldr pc, [r3, #0xac]
007ae72c  28 d0 8d e2                                      add sp, sp, #0x28
007ae730  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007ae734  18 60 8d e2                                      add r6, sp, #0x18
007ae738  04 00 a0 e1                                      mov r0, r4
007ae73c  06 10 a0 e1                                      mov r1, r6
007ae740  00 30 94 e5                                      ldr r3, [r4]
007ae744  0f e0 a0 e1                                      mov lr, pc
007ae748  2c f1 93 e5                                      ldr pc, [r3, #0x12c]
007ae74c  00 20 a0 e3                                      mov r2, #0
007ae750  08 30 8d e2                                      add r3, sp, #8
007ae754  04 20 83 e4                                      str r2, [r3], #4
007ae758  04 20 83 e4                                      str r2, [r3], #4
007ae75c  04 20 83 e4                                      str r2, [r3], #4
007ae760  fe 15 a0 e3                                      mov r1, #0x3f800000
007ae764  00 20 83 e5                                      str r2, [r3]
007ae768  04 20 8d e5                                      str r2, [sp, #4]
007ae76c  10 10 8d e5                                      str r1, [sp, #0x10]
007ae770  00 10 8d e5                                      str r1, [sp]
007ae774  0d 00 a0 e1                                      mov r0, sp
007ae778  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
007ae77c  d6 9c ff eb                                      bl #0x795adc
007ae780  0d 00 a0 e1                                      mov r0, sp
007ae784  06 10 a0 e1                                      mov r1, r6
007ae788  a1 98 ff eb                                      bl #0x794a14
007ae78c  30 80 94 e5                                      ldr r8, [r4, #0x30]
007ae790  00 00 58 e3                                      cmp r8, #0
007ae794  08 00 00 0a                                      beq #0x7ae7bc
007ae798  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
007ae79c  04 50 d3 e5                                      ldrb r5, [r3, #4]
007ae7a0  00 00 55 e3                                      cmp r5, #0
007ae7a4  04 00 00 1a                                      bne #0x7ae7bc
007ae7a8  2c 00 84 e2                                      add r0, r4, #0x2c
007ae7ac  05 10 a0 e1                                      mov r1, r5
007ae7b0  b3 c5 f1 eb                                      bl #0x41fe84
007ae7b4  05 80 a0 e1                                      mov r8, r5
007ae7b8  30 50 84 e5                                      str r5, [r4, #0x30]
007ae7bc  00 10 a0 e3                                      mov r1, #0
007ae7c0  34 00 a0 e3                                      mov r0, #0x34
007ae7c4  f7 90 fe eb                                      bl #0x752ba8
007ae7c8  08 10 a0 e1                                      mov r1, r8
007ae7cc  07 20 a0 e1                                      mov r2, r7
007ae7d0  06 30 a0 e1                                      mov r3, r6
007ae7d4  00 50 a0 e1                                      mov r5, r0
007ae7d8  7a fe ff eb                                      bl #0x7ae1c8
007ae7dc  cd ff ff ea                                      b #0x7ae718
007ae7e0  00 10 90 e5                                      ldr r1, [r0]
007ae7e4  01 10 41 e2                                      sub r1, r1, #1
007ae7e8  00 00 51 e3                                      cmp r1, #0
007ae7ec  00 10 80 e5                                      str r1, [r0]
007ae7f0  00 00 00 1a                                      bne #0x7ae7f8
007ae7f4  cf 90 fe eb                                      bl #0x752b38
007ae7f8  00 60 a0 e3                                      mov r6, #0
007ae7fc  2c 60 84 e5                                      str r6, [r4, #0x2c]
007ae800  30 60 84 e5                                      str r6, [r4, #0x30]
007ae804  bb ff ff ea                                      b #0x7ae6f8
