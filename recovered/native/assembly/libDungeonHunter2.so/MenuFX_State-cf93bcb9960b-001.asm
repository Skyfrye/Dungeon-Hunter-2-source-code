; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0041b3a4, declared_size=20, range_size=20, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5State6UpdateEi
; demangled: MenuFX::State::Update(int)
; decoder-mode: arm
0041b3a4  10 40 2d e9                                      push {r4, lr}
0041b3a8  00 30 90 e5                                      ldr r3, [r0]
0041b3ac  0f e0 a0 e1                                      mov lr, pc
0041b3b0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0041b3b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0041b3b8, declared_size=4, range_size=4, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5State16UpdateBackgroundEv
; demangled: MenuFX::State::UpdateBackground()
; decoder-mode: arm
0041b3b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041b3bc, declared_size=20, range_size=20, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5State16UpdateBackgroundEi
; demangled: MenuFX::State::UpdateBackground(int)
; decoder-mode: arm
0041b3bc  10 40 2d e9                                      push {r4, lr}
0041b3c0  00 30 90 e5                                      ldr r3, [r0]
0041b3c4  0f e0 a0 e1                                      mov lr, pc
0041b3c8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0041b3cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0041f3cc, declared_size=4, range_size=4, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5State6CreateEv
; demangled: MenuFX::State::Create()
; decoder-mode: arm
0041f3cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041f3d0, declared_size=4, range_size=4, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5State4ShowEv
; demangled: MenuFX::State::Show()
; decoder-mode: arm
0041f3d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041f3d4, declared_size=4, range_size=4, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5State4HideEv
; demangled: MenuFX::State::Hide()
; decoder-mode: arm
0041f3d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041f3d8, declared_size=4, range_size=4, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5State8GotFocusEv
; demangled: MenuFX::State::GotFocus()
; decoder-mode: arm
0041f3d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041f3dc, declared_size=4, range_size=4, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5State9LostFocusEv
; demangled: MenuFX::State::LostFocus()
; decoder-mode: arm
0041f3dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041f3e0, declared_size=4, range_size=4, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5State6UpdateEv
; demangled: MenuFX::State::Update()
; decoder-mode: arm
0041f3e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041f3e4, declared_size=4, range_size=4, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5State7OnEventERN8RenderFX5EventE
; demangled: MenuFX::State::OnEvent(RenderFX::Event&)
; decoder-mode: arm
0041f3e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041f3e8, declared_size=4, range_size=4, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5State11OnFSCommandEPKcS2_
; demangled: MenuFX::State::OnFSCommand(char const*, char const*)
; decoder-mode: arm
0041f3e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041f3ec, declared_size=8, range_size=8, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5State14CanHandleEventERN8RenderFX5EventE
; demangled: MenuFX::State::CanHandleEvent(RenderFX::Event&)
; decoder-mode: arm
0041f3ec  01 00 a0 e3                                      mov r0, #1
0041f3f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00421db4, declared_size=120, range_size=120, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5StateD1Ev
; demangled: MenuFX::State::~State()
; decoder-mode: arm
00421db4  10 40 2d e9                                      push {r4, lr}
00421db8  64 30 9f e5                                      ldr r3, [pc, #0x64]
00421dbc  64 20 9f e5                                      ldr r2, [pc, #0x64]
00421dc0  00 40 a0 e1                                      mov r4, r0
00421dc4  03 30 8f e0                                      add r3, pc, r3
00421dc8  50 00 90 e5                                      ldr r0, [r0, #0x50]
00421dcc  02 20 93 e7                                      ldr r2, [r3, r2]
00421dd0  00 00 50 e3                                      cmp r0, #0
00421dd4  08 20 82 e2                                      add r2, r2, #8
00421dd8  00 20 84 e5                                      str r2, [r4]
00421ddc  05 00 00 0a                                      beq #0x421df8
00421de0  00 10 90 e5                                      ldr r1, [r0]
00421de4  01 10 41 e2                                      sub r1, r1, #1
00421de8  00 00 51 e3                                      cmp r1, #0
00421dec  00 10 80 e5                                      str r1, [r0]
00421df0  00 00 00 1a                                      bne #0x421df8
00421df4  4f c3 0c eb                                      bl #0x752b38
00421df8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00421dfc  00 00 50 e3                                      cmp r0, #0
00421e00  05 00 00 0a                                      beq #0x421e1c
00421e04  00 10 90 e5                                      ldr r1, [r0]
00421e08  01 10 41 e2                                      sub r1, r1, #1
00421e0c  00 00 51 e3                                      cmp r1, #0
00421e10  00 10 80 e5                                      str r1, [r0]
00421e14  00 00 00 1a                                      bne #0x421e1c
00421e18  46 c3 0c eb                                      bl #0x752b38
00421e1c  04 00 a0 e1                                      mov r0, r4
00421e20  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00421e24  cc 2c 57 00 30 17 00 00                          .byte 0xcc, 0x2c, 0x57, 0x00, 0x30, 0x17, 0x00, 0x00

; FUNCTION 0x00421e2c, declared_size=28, range_size=28, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5StateD0Ev
; demangled: MenuFX::State::~State()
; decoder-mode: arm
00421e2c  10 40 2d e9                                      push {r4, lr}
00421e30  00 40 a0 e1                                      mov r4, r0
00421e34  de ff ff eb                                      bl #0x421db4
00421e38  04 00 a0 e1                                      mov r0, r4
00421e3c  7f b9 fb eb                                      bl #0x310440
00421e40  04 00 a0 e1                                      mov r0, r4
00421e44  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00421f80, declared_size=96, range_size=96, mode=arm
; class-group: MenuFX::State
; alias: _ZN6MenuFX5StateC2EPKc
; demangled: MenuFX::State::State(char const*)
; decoder-mode: arm
00421f80  50 30 9f e5                                      ldr r3, [pc, #0x50]
00421f84  50 20 9f e5                                      ldr r2, [pc, #0x50]
00421f88  70 40 2d e9                                      push {r4, r5, r6, lr}
00421f8c  03 30 8f e0                                      add r3, pc, r3
00421f90  02 20 93 e7                                      ldr r2, [r3, r2]
00421f94  00 50 a0 e3                                      mov r5, #0
00421f98  00 40 a0 e1                                      mov r4, r0
00421f9c  08 20 82 e2                                      add r2, r2, #8
00421fa0  00 20 80 e5                                      str r2, [r0]
00421fa4  48 50 80 e5                                      str r5, [r0, #0x48]
00421fa8  4c 50 80 e5                                      str r5, [r0, #0x4c]
00421fac  50 50 80 e5                                      str r5, [r0, #0x50]
00421fb0  54 50 80 e5                                      str r5, [r0, #0x54]
00421fb4  08 00 80 e2                                      add r0, r0, #8
00421fb8  58 b1 fb eb                                      bl #0x30e520
00421fbc  48 00 84 e2                                      add r0, r4, #0x48
00421fc0  eb ff ff eb                                      bl #0x421f74
00421fc4  50 00 84 e2                                      add r0, r4, #0x50
00421fc8  e9 ff ff eb                                      bl #0x421f74
00421fcc  58 50 84 e5                                      str r5, [r4, #0x58]
00421fd0  04 00 a0 e1                                      mov r0, r4
00421fd4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00421fd8  04 2b 57 00 30 17 00 00                          .byte 0x04, 0x2b, 0x57, 0x00, 0x30, 0x17, 0x00, 0x00

; FUNCTION 0x0042db28, declared_size=84, range_size=84, mode=arm
; class-group: MenuFX::State
; alias: _ZNK6MenuFX5State12GetCharacterEv
; demangled: MenuFX::State::GetCharacter() const
; decoder-mode: arm
0042db28  10 40 2d e9                                      push {r4, lr}
0042db2c  00 40 a0 e1                                      mov r4, r0
0042db30  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
0042db34  00 00 50 e3                                      cmp r0, #0
0042db38  03 00 00 0a                                      beq #0x42db4c
0042db3c  48 30 94 e5                                      ldr r3, [r4, #0x48]
0042db40  04 20 d3 e5                                      ldrb r2, [r3, #4]
0042db44  00 00 52 e3                                      cmp r2, #0
0042db48  00 00 00 0a                                      beq #0x42db50
0042db4c  10 80 bd e8                                      pop {r4, pc}
0042db50  00 10 93 e5                                      ldr r1, [r3]
0042db54  01 10 41 e2                                      sub r1, r1, #1
0042db58  00 00 51 e3                                      cmp r1, #0
0042db5c  00 10 83 e5                                      str r1, [r3]
0042db60  01 00 00 1a                                      bne #0x42db6c
0042db64  03 00 a0 e1                                      mov r0, r3
0042db68  f2 93 0c eb                                      bl #0x752b38
0042db6c  00 00 a0 e3                                      mov r0, #0
0042db70  4c 00 84 e5                                      str r0, [r4, #0x4c]
0042db74  48 00 84 e5                                      str r0, [r4, #0x48]
0042db78  10 80 bd e8                                      pop {r4, pc}
