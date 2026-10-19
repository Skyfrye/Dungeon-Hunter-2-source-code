; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052df10, declared_size=68, range_size=68, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManagerC2Ev
; demangled: CXPlayerManager::CXPlayerManager()
; decoder-mode: arm
0052df10  34 10 9f e5                                      ldr r1, [pc, #0x34]
0052df14  34 c0 9f e5                                      ldr ip, [pc, #0x34]
0052df18  00 20 a0 e3                                      mov r2, #0
0052df1c  01 10 8f e0                                      add r1, pc, r1
0052df20  0c c0 91 e7                                      ldr ip, [r1, ip]
0052df24  7c 20 80 e5                                      str r2, [r0, #0x7c]
0052df28  04 20 c0 e5                                      strb r2, [r0, #4]
0052df2c  08 c0 8c e2                                      add ip, ip, #8
0052df30  00 c0 80 e5                                      str ip, [r0]
0052df34  05 20 c0 e5                                      strb r2, [r0, #5]
0052df38  08 20 80 e5                                      str r2, [r0, #8]
0052df3c  18 20 80 e5                                      str r2, [r0, #0x18]
0052df40  1c 20 80 e5                                      str r2, [r0, #0x1c]
0052df44  14 20 80 e5                                      str r2, [r0, #0x14]
0052df48  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0052df4c  74 6b 46 00 48 4c 00 00                          .byte 0x74, 0x6b, 0x46, 0x00, 0x48, 0x4c, 0x00, 0x00

; FUNCTION 0x0052df54, declared_size=68, range_size=68, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManagerC1Ev
; demangled: CXPlayerManager::CXPlayerManager()
; decoder-mode: arm
0052df54  34 10 9f e5                                      ldr r1, [pc, #0x34]
0052df58  34 c0 9f e5                                      ldr ip, [pc, #0x34]
0052df5c  00 20 a0 e3                                      mov r2, #0
0052df60  01 10 8f e0                                      add r1, pc, r1
0052df64  0c c0 91 e7                                      ldr ip, [r1, ip]
0052df68  7c 20 80 e5                                      str r2, [r0, #0x7c]
0052df6c  04 20 c0 e5                                      strb r2, [r0, #4]
0052df70  08 c0 8c e2                                      add ip, ip, #8
0052df74  00 c0 80 e5                                      str ip, [r0]
0052df78  05 20 c0 e5                                      strb r2, [r0, #5]
0052df7c  08 20 80 e5                                      str r2, [r0, #8]
0052df80  18 20 80 e5                                      str r2, [r0, #0x18]
0052df84  1c 20 80 e5                                      str r2, [r0, #0x1c]
0052df88  14 20 80 e5                                      str r2, [r0, #0x14]
0052df8c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0052df90  30 6b 46 00 48 4c 00 00                          .byte 0x30, 0x6b, 0x46, 0x00, 0x48, 0x4c, 0x00, 0x00

; FUNCTION 0x0052df98, declared_size=156, range_size=156, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManagerD2Ev
; demangled: CXPlayerManager::~CXPlayerManager()
; decoder-mode: arm
0052df98  10 40 2d e9                                      push {r4, lr}
0052df9c  88 30 9f e5                                      ldr r3, [pc, #0x88]
0052dfa0  88 20 9f e5                                      ldr r2, [pc, #0x88]
0052dfa4  10 10 90 e5                                      ldr r1, [r0, #0x10]
0052dfa8  03 30 8f e0                                      add r3, pc, r3
0052dfac  02 20 93 e7                                      ldr r2, [r3, r2]
0052dfb0  00 00 51 e3                                      cmp r1, #0
0052dfb4  00 40 a0 e1                                      mov r4, r0
0052dfb8  08 20 82 e2                                      add r2, r2, #8
0052dfbc  00 20 80 e5                                      str r2, [r0]
0052dfc0  05 00 00 0a                                      beq #0x52dfdc
0052dfc4  00 30 91 e5                                      ldr r3, [r1]
0052dfc8  01 00 a0 e1                                      mov r0, r1
0052dfcc  0f e0 a0 e1                                      mov lr, pc
0052dfd0  04 f0 93 e5                                      ldr pc, [r3, #4]
0052dfd4  00 30 a0 e3                                      mov r3, #0
0052dfd8  10 30 84 e5                                      str r3, [r4, #0x10]
0052dfdc  08 30 94 e5                                      ldr r3, [r4, #8]
0052dfe0  00 00 53 e3                                      cmp r3, #0
0052dfe4  05 00 00 0a                                      beq #0x52e000
0052dfe8  03 00 a0 e1                                      mov r0, r3
0052dfec  00 30 93 e5                                      ldr r3, [r3]
0052dff0  0f e0 a0 e1                                      mov lr, pc
0052dff4  04 f0 93 e5                                      ldr pc, [r3, #4]
0052dff8  00 30 a0 e3                                      mov r3, #0
0052dffc  08 30 84 e5                                      str r3, [r4, #8]
0052e000  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0052e004  00 00 53 e3                                      cmp r3, #0
0052e008  05 00 00 0a                                      beq #0x52e024
0052e00c  03 00 a0 e1                                      mov r0, r3
0052e010  00 30 93 e5                                      ldr r3, [r3]
0052e014  0f e0 a0 e1                                      mov lr, pc
0052e018  04 f0 93 e5                                      ldr pc, [r3, #4]
0052e01c  00 30 a0 e3                                      mov r3, #0
0052e020  0c 30 84 e5                                      str r3, [r4, #0xc]
0052e024  04 00 a0 e1                                      mov r0, r4
0052e028  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0052e02c  e8 6a 46 00 48 4c 00 00                          .byte 0xe8, 0x6a, 0x46, 0x00, 0x48, 0x4c, 0x00, 0x00

; FUNCTION 0x0052e034, declared_size=156, range_size=156, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManagerD1Ev
; demangled: CXPlayerManager::~CXPlayerManager()
; decoder-mode: arm
0052e034  10 40 2d e9                                      push {r4, lr}
0052e038  88 30 9f e5                                      ldr r3, [pc, #0x88]
0052e03c  88 20 9f e5                                      ldr r2, [pc, #0x88]
0052e040  10 10 90 e5                                      ldr r1, [r0, #0x10]
0052e044  03 30 8f e0                                      add r3, pc, r3
0052e048  02 20 93 e7                                      ldr r2, [r3, r2]
0052e04c  00 00 51 e3                                      cmp r1, #0
0052e050  00 40 a0 e1                                      mov r4, r0
0052e054  08 20 82 e2                                      add r2, r2, #8
0052e058  00 20 80 e5                                      str r2, [r0]
0052e05c  05 00 00 0a                                      beq #0x52e078
0052e060  00 30 91 e5                                      ldr r3, [r1]
0052e064  01 00 a0 e1                                      mov r0, r1
0052e068  0f e0 a0 e1                                      mov lr, pc
0052e06c  04 f0 93 e5                                      ldr pc, [r3, #4]
0052e070  00 30 a0 e3                                      mov r3, #0
0052e074  10 30 84 e5                                      str r3, [r4, #0x10]
0052e078  08 30 94 e5                                      ldr r3, [r4, #8]
0052e07c  00 00 53 e3                                      cmp r3, #0
0052e080  05 00 00 0a                                      beq #0x52e09c
0052e084  03 00 a0 e1                                      mov r0, r3
0052e088  00 30 93 e5                                      ldr r3, [r3]
0052e08c  0f e0 a0 e1                                      mov lr, pc
0052e090  04 f0 93 e5                                      ldr pc, [r3, #4]
0052e094  00 30 a0 e3                                      mov r3, #0
0052e098  08 30 84 e5                                      str r3, [r4, #8]
0052e09c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0052e0a0  00 00 53 e3                                      cmp r3, #0
0052e0a4  05 00 00 0a                                      beq #0x52e0c0
0052e0a8  03 00 a0 e1                                      mov r0, r3
0052e0ac  00 30 93 e5                                      ldr r3, [r3]
0052e0b0  0f e0 a0 e1                                      mov lr, pc
0052e0b4  04 f0 93 e5                                      ldr pc, [r3, #4]
0052e0b8  00 30 a0 e3                                      mov r3, #0
0052e0bc  0c 30 84 e5                                      str r3, [r4, #0xc]
0052e0c0  04 00 a0 e1                                      mov r0, r4
0052e0c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0052e0c8  4c 6a 46 00 48 4c 00 00                          .byte 0x4c, 0x6a, 0x46, 0x00, 0x48, 0x4c, 0x00, 0x00

; FUNCTION 0x0052e0d0, declared_size=8, range_size=8, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManager11SwitchStateE20CXPlayerManagerState
; demangled: CXPlayerManager::SwitchState(CXPlayerManagerState)
; decoder-mode: arm
0052e0d0  14 10 80 e5                                      str r1, [r0, #0x14]
0052e0d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0052e0d8, declared_size=20, range_size=20, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManager7IsReadyEv
; demangled: CXPlayerManager::IsReady()
; decoder-mode: arm
0052e0d8  14 00 90 e5                                      ldr r0, [r0, #0x14]
0052e0dc  10 00 50 e3                                      cmp r0, #0x10
0052e0e0  00 00 a0 13                                      movne r0, #0
0052e0e4  01 00 a0 03                                      moveq r0, #1
0052e0e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0052e0ec, declared_size=80, range_size=80, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManager10IsLoggedInEv
; demangled: CXPlayerManager::IsLoggedIn()
; decoder-mode: arm
0052e0ec  14 30 90 e5                                      ldr r3, [r0, #0x14]
0052e0f0  00 00 53 e3                                      cmp r3, #0
0052e0f4  0e 00 00 0a                                      beq #0x52e134
0052e0f8  08 20 90 e5                                      ldr r2, [r0, #8]
0052e0fc  00 00 52 e3                                      cmp r2, #0
0052e100  0b 00 00 0a                                      beq #0x52e134
0052e104  40 20 d2 e5                                      ldrb r2, [r2, #0x40]
0052e108  00 00 52 e3                                      cmp r2, #0
0052e10c  08 00 00 0a                                      beq #0x52e134
0052e110  08 00 53 e3                                      cmp r3, #8
0052e114  06 00 00 0a                                      beq #0x52e134
0052e118  09 00 53 e3                                      cmp r3, #9
0052e11c  04 00 00 0a                                      beq #0x52e134
0052e120  0a 00 53 e3                                      cmp r3, #0xa
0052e124  02 00 00 0a                                      beq #0x52e134
0052e128  0b 00 53 e2                                      subs r0, r3, #0xb
0052e12c  01 00 a0 13                                      movne r0, #1
0052e130  1e ff 2f e1                                      bx lr
0052e134  00 00 a0 e3                                      mov r0, #0
0052e138  1e ff 2f e1                                      bx lr

; FUNCTION 0x0052e15c, declared_size=88, range_size=88, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManager16OnRequestTimeoutEi
; demangled: CXPlayerManager::OnRequestTimeout(int)
; decoder-mode: arm
0052e15c  10 40 2d e9                                      push {r4, lr}
0052e160  14 30 90 e5                                      ldr r3, [r0, #0x14]
0052e164  00 40 a0 e1                                      mov r4, r0
0052e168  0b 00 53 e3                                      cmp r3, #0xb
0052e16c  08 00 00 0a                                      beq #0x52e194
0052e170  38 00 9f e5                                      ldr r0, [pc, #0x38]
0052e174  00 00 8f e0                                      add r0, pc, r0
0052e178  41 7f f7 eb                                      bl #0x30de84
0052e17c  03 30 a0 e3                                      mov r3, #3
0052e180  04 00 a0 e1                                      mov r0, r4
0052e184  11 10 a0 e3                                      mov r1, #0x11
0052e188  7c 30 84 e5                                      str r3, [r4, #0x7c]
0052e18c  10 40 bd e8                                      pop {r4, lr}
0052e190  ce ff ff ea                                      b #0x52e0d0
0052e194  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
0052e198  18 30 90 e5                                      ldr r3, [r0, #0x18]
0052e19c  00 10 a0 e3                                      mov r1, #0
0052e1a0  18 10 80 e5                                      str r1, [r0, #0x18]
0052e1a4  03 30 82 e0                                      add r3, r2, r3
0052e1a8  1c 30 80 e5                                      str r3, [r0, #0x1c]
0052e1ac  f2 ff ff ea                                      b #0x52e17c
; mapping-symbol data/literal pool
0052e1b0  94 ea 3a 00                                      .byte 0x94, 0xea, 0x3a, 0x00

; FUNCTION 0x0052e1b4, declared_size=288, range_size=288, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManager16OnRequestFailureEii
; demangled: CXPlayerManager::OnRequestFailure(int, int)
; decoder-mode: arm
0052e1b4  70 40 2d e9                                      push {r4, r5, r6, lr}
0052e1b8  00 40 a0 e1                                      mov r4, r0
0052e1bc  04 01 9f e5                                      ldr r0, [pc, #0x104]
0052e1c0  02 50 a0 e1                                      mov r5, r2
0052e1c4  01 60 a0 e1                                      mov r6, r1
0052e1c8  00 00 8f e0                                      add r0, pc, r0
0052e1cc  2c 7f f7 eb                                      bl #0x30de84
0052e1d0  f4 00 9f e5                                      ldr r0, [pc, #0xf4]
0052e1d4  06 10 a0 e1                                      mov r1, r6
0052e1d8  05 20 a0 e1                                      mov r2, r5
0052e1dc  00 00 8f e0                                      add r0, pc, r0
0052e1e0  27 7f f7 eb                                      bl #0x30de84
0052e1e4  14 30 94 e5                                      ldr r3, [r4, #0x14]
0052e1e8  04 00 53 e3                                      cmp r3, #4
0052e1ec  07 00 00 0a                                      beq #0x52e210
0052e1f0  0b 00 53 e3                                      cmp r3, #0xb
0052e1f4  24 00 00 0a                                      beq #0x52e28c
0052e1f8  03 30 a0 e3                                      mov r3, #3
0052e1fc  7c 30 84 e5                                      str r3, [r4, #0x7c]
0052e200  04 00 a0 e1                                      mov r0, r4
0052e204  11 10 a0 e3                                      mov r1, #0x11
0052e208  70 40 bd e8                                      pop {r4, r5, r6, lr}
0052e20c  af ff ff ea                                      b #0x52e0d0
0052e210  0f 00 56 e3                                      cmp r6, #0xf
0052e214  02 00 00 0a                                      beq #0x52e224
0052e218  b0 00 9f e5                                      ldr r0, [pc, #0xb0]
0052e21c  00 00 8f e0                                      add r0, pc, r0
0052e220  a7 7f f7 eb                                      bl #0x30e0c4
0052e224  2e 50 45 e2                                      sub r5, r5, #0x2e
0052e228  15 00 55 e3                                      cmp r5, #0x15
0052e22c  05 f1 8f 90                                      addls pc, pc, r5, lsl #2
0052e230  f0 ff ff ea                                      b #0x52e1f8
0052e234  1d 00 00 ea                                      b #0x52e2b0
0052e238  1f 00 00 ea                                      b #0x52e2bc
0052e23c  ed ff ff ea                                      b #0x52e1f8
0052e240  1d 00 00 ea                                      b #0x52e2bc
0052e244  eb ff ff ea                                      b #0x52e1f8
0052e248  ea ff ff ea                                      b #0x52e1f8
0052e24c  e9 ff ff ea                                      b #0x52e1f8
0052e250  e8 ff ff ea                                      b #0x52e1f8
0052e254  e7 ff ff ea                                      b #0x52e1f8
0052e258  e6 ff ff ea                                      b #0x52e1f8
0052e25c  e5 ff ff ea                                      b #0x52e1f8
0052e260  e4 ff ff ea                                      b #0x52e1f8
0052e264  e3 ff ff ea                                      b #0x52e1f8
0052e268  e2 ff ff ea                                      b #0x52e1f8
0052e26c  e1 ff ff ea                                      b #0x52e1f8
0052e270  e0 ff ff ea                                      b #0x52e1f8
0052e274  df ff ff ea                                      b #0x52e1f8
0052e278  de ff ff ea                                      b #0x52e1f8
0052e27c  dd ff ff ea                                      b #0x52e1f8
0052e280  dc ff ff ea                                      b #0x52e1f8
0052e284  db ff ff ea                                      b #0x52e1f8
0052e288  08 00 00 ea                                      b #0x52e2b0
0052e28c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0052e290  18 30 94 e5                                      ldr r3, [r4, #0x18]
0052e294  03 30 82 e0                                      add r3, r2, r3
0052e298  1c 30 84 e5                                      str r3, [r4, #0x1c]
0052e29c  00 30 a0 e3                                      mov r3, #0
0052e2a0  18 30 84 e5                                      str r3, [r4, #0x18]
0052e2a4  03 30 a0 e3                                      mov r3, #3
0052e2a8  7c 30 84 e5                                      str r3, [r4, #0x7c]
0052e2ac  d3 ff ff ea                                      b #0x52e200
0052e2b0  01 30 a0 e3                                      mov r3, #1
0052e2b4  7c 30 84 e5                                      str r3, [r4, #0x7c]
0052e2b8  d0 ff ff ea                                      b #0x52e200
0052e2bc  02 30 a0 e3                                      mov r3, #2
0052e2c0  7c 30 84 e5                                      str r3, [r4, #0x7c]
0052e2c4  cd ff ff ea                                      b #0x52e200
; mapping-symbol data/literal pool
0052e2c8  40 ea 3a 00 5c ea 3a 00 64 ea 3a 00              .byte 0x40, 0xea, 0x3a, 0x00, 0x5c, 0xea, 0x3a, 0x00, 0x64, 0xea, 0x3a, 0x00

; FUNCTION 0x0052e2d4, declared_size=48, range_size=48, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManager14OnNetworkErrorEv
; demangled: CXPlayerManager::OnNetworkError()
; decoder-mode: arm
0052e2d4  10 40 2d e9                                      push {r4, lr}
0052e2d8  00 40 a0 e1                                      mov r4, r0
0052e2dc  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
0052e2e0  00 00 8f e0                                      add r0, pc, r0
0052e2e4  76 7f f7 eb                                      bl #0x30e0c4
0052e2e8  03 30 a0 e3                                      mov r3, #3
0052e2ec  04 00 a0 e1                                      mov r0, r4
0052e2f0  11 10 a0 e3                                      mov r1, #0x11
0052e2f4  7c 30 84 e5                                      str r3, [r4, #0x7c]
0052e2f8  10 40 bd e8                                      pop {r4, lr}
0052e2fc  73 ff ff ea                                      b #0x52e0d0
; mapping-symbol data/literal pool
0052e300  d0 e9 3a 00                                      .byte 0xd0, 0xe9, 0x3a, 0x00

; FUNCTION 0x0052e304, declared_size=84, range_size=84, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManager6LogoutEv
; demangled: CXPlayerManager::Logout()
; decoder-mode: arm
0052e304  10 40 2d e9                                      push {r4, lr}
0052e308  08 30 90 e5                                      ldr r3, [r0, #8]
0052e30c  00 40 a0 e1                                      mov r4, r0
0052e310  00 00 53 e3                                      cmp r3, #0
0052e314  09 00 00 0a                                      beq #0x52e340
0052e318  34 00 9f e5                                      ldr r0, [pc, #0x34]
0052e31c  00 00 8f e0                                      add r0, pc, r0
0052e320  67 7f f7 eb                                      bl #0x30e0c4
0052e324  04 00 a0 e1                                      mov r0, r4
0052e328  05 10 a0 e3                                      mov r1, #5
0052e32c  67 ff ff eb                                      bl #0x52e0d0
0052e330  00 30 a0 e3                                      mov r3, #0
0052e334  7c 30 84 e5                                      str r3, [r4, #0x7c]
0052e338  18 30 84 e5                                      str r3, [r4, #0x18]
0052e33c  10 80 bd e8                                      pop {r4, pc}
0052e340  03 30 a0 e3                                      mov r3, #3
0052e344  11 10 a0 e3                                      mov r1, #0x11
0052e348  7c 30 80 e5                                      str r3, [r0, #0x7c]
0052e34c  10 40 bd e8                                      pop {r4, lr}
0052e350  5e ff ff ea                                      b #0x52e0d0
; mapping-symbol data/literal pool
0052e354  bc e9 3a 00                                      .byte 0xbc, 0xe9, 0x3a, 0x00

; FUNCTION 0x0052e358, declared_size=160, range_size=160, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManager5LoginEPcS0_
; demangled: CXPlayerManager::Login(char*, char*)
; decoder-mode: arm
0052e358  70 40 2d e9                                      push {r4, r5, r6, lr}
0052e35c  08 30 90 e5                                      ldr r3, [r0, #8]
0052e360  00 40 a0 e1                                      mov r4, r0
0052e364  01 60 a0 e1                                      mov r6, r1
0052e368  00 00 53 e3                                      cmp r3, #0
0052e36c  02 50 a0 e1                                      mov r5, r2
0052e370  1a 00 00 0a                                      beq #0x52e3e0
0052e374  40 30 d3 e5                                      ldrb r3, [r3, #0x40]
0052e378  00 00 53 e3                                      cmp r3, #0
0052e37c  0a 00 00 0a                                      beq #0x52e3ac
0052e380  df ff ff eb                                      bl #0x52e304
0052e384  06 10 a0 e1                                      mov r1, r6
0052e388  20 00 84 e2                                      add r0, r4, #0x20
0052e38c  63 80 f7 eb                                      bl #0x30e520
0052e390  05 10 a0 e1                                      mov r1, r5
0052e394  4e 00 84 e2                                      add r0, r4, #0x4e
0052e398  60 80 f7 eb                                      bl #0x30e520
0052e39c  04 00 a0 e1                                      mov r0, r4
0052e3a0  02 10 a0 e3                                      mov r1, #2
0052e3a4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0052e3a8  48 ff ff ea                                      b #0x52e0d0
0052e3ac  40 00 9f e5                                      ldr r0, [pc, #0x40]
0052e3b0  00 00 8f e0                                      add r0, pc, r0
0052e3b4  b2 7e f7 eb                                      bl #0x30de84
0052e3b8  06 10 a0 e1                                      mov r1, r6
0052e3bc  20 00 84 e2                                      add r0, r4, #0x20
0052e3c0  56 80 f7 eb                                      bl #0x30e520
0052e3c4  05 10 a0 e1                                      mov r1, r5
0052e3c8  4e 00 84 e2                                      add r0, r4, #0x4e
0052e3cc  53 80 f7 eb                                      bl #0x30e520
0052e3d0  04 00 a0 e1                                      mov r0, r4
0052e3d4  03 10 a0 e3                                      mov r1, #3
0052e3d8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0052e3dc  3b ff ff ea                                      b #0x52e0d0
0052e3e0  03 30 a0 e3                                      mov r3, #3
0052e3e4  11 10 a0 e3                                      mov r1, #0x11
0052e3e8  7c 30 80 e5                                      str r3, [r0, #0x7c]
0052e3ec  70 40 bd e8                                      pop {r4, r5, r6, lr}
0052e3f0  36 ff ff ea                                      b #0x52e0d0
; mapping-symbol data/literal pool
0052e3f4  48 e9 3a 00                                      .byte 0x48, 0xe9, 0x3a, 0x00

; FUNCTION 0x0052e3f8, declared_size=300, range_size=300, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManager16OnRequestSuccessEiPci
; demangled: CXPlayerManager::OnRequestSuccess(int, char*, int)
; decoder-mode: arm
0052e3f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0052e3fc  00 40 a0 e1                                      mov r4, r0
0052e400  14 01 9f e5                                      ldr r0, [pc, #0x114]
0052e404  02 10 a0 e1                                      mov r1, r2
0052e408  03 20 a0 e1                                      mov r2, r3
0052e40c  00 00 8f e0                                      add r0, pc, r0
0052e410  9b 7e f7 eb                                      bl #0x30de84
0052e414  14 30 94 e5                                      ldr r3, [r4, #0x14]
0052e418  0f 00 53 e3                                      cmp r3, #0xf
0052e41c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0052e420  19 00 00 ea                                      b #0x52e48c
0052e424  1c 00 00 ea                                      b #0x52e49c
0052e428  17 00 00 ea                                      b #0x52e48c
0052e42c  11 00 00 ea                                      b #0x52e478
0052e430  15 00 00 ea                                      b #0x52e48c
0052e434  0e 00 00 ea                                      b #0x52e474
0052e438  13 00 00 ea                                      b #0x52e48c
0052e43c  2c 00 00 ea                                      b #0x52e4f4
0052e440  11 00 00 ea                                      b #0x52e48c
0052e444  10 00 00 ea                                      b #0x52e48c
0052e448  0f 00 00 ea                                      b #0x52e48c
0052e44c  0e 00 00 ea                                      b #0x52e48c
0052e450  2b 00 00 ea                                      b #0x52e504
0052e454  0c 00 00 ea                                      b #0x52e48c
0052e458  01 00 00 ea                                      b #0x52e464
0052e45c  0a 00 00 ea                                      b #0x52e48c
0052e460  ff ff ff ea                                      b #0x52e464
0052e464  04 00 a0 e1                                      mov r0, r4
0052e468  10 10 a0 e3                                      mov r1, #0x10
0052e46c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0052e470  16 ff ff ea                                      b #0x52e0d0
0052e474  70 80 bd e8                                      pop {r4, r5, r6, pc}
0052e478  04 00 a0 e1                                      mov r0, r4
0052e47c  20 10 84 e2                                      add r1, r4, #0x20
0052e480  4e 20 84 e2                                      add r2, r4, #0x4e
0052e484  70 40 bd e8                                      pop {r4, r5, r6, lr}
0052e488  b2 ff ff ea                                      b #0x52e358
0052e48c  8c 00 9f e5                                      ldr r0, [pc, #0x8c]
0052e490  00 00 8f e0                                      add r0, pc, r0
0052e494  70 40 bd e8                                      pop {r4, r5, r6, lr}
0052e498  09 7f f7 ea                                      b #0x30e0c4
0052e49c  88 00 a0 e3                                      mov r0, #0x88
0052e4a0  eb 87 f7 eb                                      bl #0x310454
0052e4a4  00 50 a0 e1                                      mov r5, r0
0052e4a8  c9 19 0c eb                                      bl #0x834bd4
0052e4ac  04 10 a0 e1                                      mov r1, r4
0052e4b0  05 00 a0 e1                                      mov r0, r5
0052e4b4  08 50 84 e5                                      str r5, [r4, #8]
0052e4b8  0e fa 0b eb                                      bl #0x82ccf8
0052e4bc  6c 00 a0 e3                                      mov r0, #0x6c
0052e4c0  e3 87 f7 eb                                      bl #0x310454
0052e4c4  00 50 a0 e1                                      mov r5, r0
0052e4c8  5d 13 0c eb                                      bl #0x833244
0052e4cc  0c 50 84 e5                                      str r5, [r4, #0xc]
0052e4d0  05 00 a0 e1                                      mov r0, r5
0052e4d4  04 10 a0 e1                                      mov r1, r4
0052e4d8  06 fa 0b eb                                      bl #0x82ccf8
0052e4dc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0052e4e0  01 20 a0 e3                                      mov r2, #1
0052e4e4  54 20 83 e5                                      str r2, [r3, #0x54]
0052e4e8  04 30 a0 e3                                      mov r3, #4
0052e4ec  14 30 84 e5                                      str r3, [r4, #0x14]
0052e4f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0052e4f4  04 00 a0 e1                                      mov r0, r4
0052e4f8  00 10 a0 e3                                      mov r1, #0
0052e4fc  70 40 bd e8                                      pop {r4, r5, r6, lr}
0052e500  f2 fe ff ea                                      b #0x52e0d0
0052e504  00 30 a0 e3                                      mov r3, #0
0052e508  04 00 a0 e1                                      mov r0, r4
0052e50c  10 10 a0 e3                                      mov r1, #0x10
0052e510  18 30 84 e5                                      str r3, [r4, #0x18]
0052e514  70 40 bd e8                                      pop {r4, r5, r6, lr}
0052e518  ec fe ff ea                                      b #0x52e0d0
; mapping-symbol data/literal pool
0052e51c  2c e9 3a 00 e8 e8 3a 00                          .byte 0x2c, 0xe9, 0x3a, 0x00, 0xe8, 0xe8, 0x3a, 0x00

; FUNCTION 0x0052e524, declared_size=424, range_size=424, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManager4InitEv
; demangled: CXPlayerManager::Init()
; decoder-mode: arm
0052e524  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0052e528  80 41 9f e5                                      ldr r4, [pc, #0x180]
0052e52c  80 61 9f e5                                      ldr r6, [pc, #0x180]
0052e530  04 70 d0 e5                                      ldrb r7, [r0, #4]
0052e534  04 40 8f e0                                      add r4, pc, r4
0052e538  06 30 94 e7                                      ldr r3, [r4, r6]
0052e53c  24 d0 4d e2                                      sub sp, sp, #0x24
0052e540  00 00 57 e3                                      cmp r7, #0
0052e544  00 30 93 e5                                      ldr r3, [r3]
0052e548  00 50 a0 e1                                      mov r5, r0
0052e54c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0052e550  06 00 00 0a                                      beq #0x52e570
0052e554  06 30 94 e7                                      ldr r3, [r4, r6]
0052e558  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0052e55c  00 30 93 e5                                      ldr r3, [r3]
0052e560  03 00 52 e1                                      cmp r2, r3
0052e564  50 00 00 1a                                      bne #0x52e6ac
0052e568  24 d0 8d e2                                      add sp, sp, #0x24
0052e56c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0052e570  40 31 9f e5                                      ldr r3, [pc, #0x140]
0052e574  04 80 8d e2                                      add r8, sp, #4
0052e578  00 70 8d e5                                      str r7, [sp]
0052e57c  03 a0 94 e7                                      ldr sl, [r4, r3]
0052e580  0a 00 a0 e1                                      mov r0, sl
0052e584  bf 24 f8 eb                                      bl #0x337888
0052e588  08 00 a0 e1                                      mov r0, r8
0052e58c  14 10 a0 e3                                      mov r1, #0x14
0052e590  14 80 8d e5                                      str r8, [sp, #0x14]
0052e594  18 80 8d e5                                      str r8, [sp, #0x18]
0052e598  37 8c f7 eb                                      bl #0x31167c
0052e59c  18 11 9f e5                                      ldr r1, [pc, #0x118]
0052e5a0  13 20 a0 e3                                      mov r2, #0x13
0052e5a4  18 00 9d e5                                      ldr r0, [sp, #0x18]
0052e5a8  01 10 8f e0                                      add r1, pc, r1
0052e5ac  ad 80 f7 eb                                      bl #0x30e868
0052e5b0  13 30 80 e2                                      add r3, r0, #0x13
0052e5b4  14 30 8d e5                                      str r3, [sp, #0x14]
0052e5b8  08 10 a0 e1                                      mov r1, r8
0052e5bc  13 70 c0 e5                                      strb r7, [r0, #0x13]
0052e5c0  0a 00 a0 e1                                      mov r0, sl
0052e5c4  2f 25 f8 eb                                      bl #0x337a88
0052e5c8  00 70 a0 e1                                      mov r7, r0
0052e5cc  08 00 a0 e1                                      mov r0, r8
0052e5d0  f5 94 f7 eb                                      bl #0x3139ac
0052e5d4  00 00 57 e3                                      cmp r7, #0
0052e5d8  16 00 00 1a                                      bne #0x52e638
0052e5dc  44 00 a0 e3                                      mov r0, #0x44
0052e5e0  9b 87 f7 eb                                      bl #0x310454
0052e5e4  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
0052e5e8  00 70 a0 e1                                      mov r7, r0
0052e5ec  01 10 8f e0                                      add r1, pc, r1
0052e5f0  a8 00 0c eb                                      bl #0x82e898
0052e5f4  10 70 85 e5                                      str r7, [r5, #0x10]
0052e5f8  07 00 a0 e1                                      mov r0, r7
0052e5fc  0d 10 a0 e1                                      mov r1, sp
0052e600  29 01 0c eb                                      bl #0x82eaac
0052e604  10 00 95 e5                                      ldr r0, [r5, #0x10]
0052e608  05 10 a0 e1                                      mov r1, r5
0052e60c  b9 f9 0b eb                                      bl #0x82ccf8
0052e610  ac 00 9f e5                                      ldr r0, [pc, #0xac]
0052e614  00 10 9d e5                                      ldr r1, [sp]
0052e618  00 00 8f e0                                      add r0, pc, r0
0052e61c  18 7e f7 eb                                      bl #0x30de84
0052e620  00 70 9d e5                                      ldr r7, [sp]
0052e624  01 00 57 e3                                      cmp r7, #1
0052e628  0a 00 00 0a                                      beq #0x52e658
0052e62c  01 30 a0 e3                                      mov r3, #1
0052e630  04 30 c5 e5                                      strb r3, [r5, #4]
0052e634  c6 ff ff ea                                      b #0x52e554
0052e638  44 00 a0 e3                                      mov r0, #0x44
0052e63c  84 87 f7 eb                                      bl #0x310454
0052e640  80 10 9f e5                                      ldr r1, [pc, #0x80]
0052e644  00 70 a0 e1                                      mov r7, r0
0052e648  01 10 8f e0                                      add r1, pc, r1
0052e64c  91 00 0c eb                                      bl #0x82e898
0052e650  10 70 85 e5                                      str r7, [r5, #0x10]
0052e654  e7 ff ff ea                                      b #0x52e5f8
0052e658  88 00 a0 e3                                      mov r0, #0x88
0052e65c  7c 87 f7 eb                                      bl #0x310454
0052e660  00 80 a0 e1                                      mov r8, r0
0052e664  5a 19 0c eb                                      bl #0x834bd4
0052e668  05 10 a0 e1                                      mov r1, r5
0052e66c  08 00 a0 e1                                      mov r0, r8
0052e670  08 80 85 e5                                      str r8, [r5, #8]
0052e674  9f f9 0b eb                                      bl #0x82ccf8
0052e678  6c 00 a0 e3                                      mov r0, #0x6c
0052e67c  74 87 f7 eb                                      bl #0x310454
0052e680  00 80 a0 e1                                      mov r8, r0
0052e684  ee 12 0c eb                                      bl #0x833244
0052e688  0c 80 85 e5                                      str r8, [r5, #0xc]
0052e68c  08 00 a0 e1                                      mov r0, r8
0052e690  05 10 a0 e1                                      mov r1, r5
0052e694  97 f9 0b eb                                      bl #0x82ccf8
0052e698  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0052e69c  54 70 83 e5                                      str r7, [r3, #0x54]
0052e6a0  04 30 a0 e3                                      mov r3, #4
0052e6a4  14 30 85 e5                                      str r3, [r5, #0x14]
0052e6a8  df ff ff ea                                      b #0x52e62c
0052e6ac  17 7f f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0052e6b0  5c 65 46 00 ac 40 00 00 84 08 00 00 20 19 39 00  .byte 0x5c, 0x65, 0x46, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x20, 0x19, 0x39, 0x00
0052e6c0  c4 e7 3a 00 a0 e7 3a 00 c0 6e 3a 00              .byte 0xc4, 0xe7, 0x3a, 0x00, 0xa0, 0xe7, 0x3a, 0x00, 0xc0, 0x6e, 0x3a, 0x00

; FUNCTION 0x0052e6cc, declared_size=184, range_size=184, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManager13UploadMyScoreEi
; demangled: CXPlayerManager::UploadMyScore(int)
; decoder-mode: arm
0052e6cc  70 40 2d e9                                      push {r4, r5, r6, lr}
0052e6d0  18 20 90 e5                                      ldr r2, [r0, #0x18]
0052e6d4  00 00 51 e3                                      cmp r1, #0
0052e6d8  00 60 a0 d3                                      movle r6, #0
0052e6dc  01 60 a0 c3                                      movgt r6, #1
0052e6e0  00 40 a0 e1                                      mov r4, r0
0052e6e4  01 00 52 e1                                      cmp r2, r1
0052e6e8  00 60 a0 c3                                      movgt r6, #0
0052e6ec  00 00 56 e3                                      cmp r6, #0
0052e6f0  01 50 a0 e1                                      mov r5, r1
0052e6f4  14 00 00 0a                                      beq #0x52e74c
0052e6f8  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
0052e6fc  00 00 8f e0                                      add r0, pc, r0
0052e700  df 7d f7 eb                                      bl #0x30de84
0052e704  08 60 94 e5                                      ldr r6, [r4, #8]
0052e708  18 50 84 e5                                      str r5, [r4, #0x18]
0052e70c  00 00 56 e3                                      cmp r6, #0
0052e710  15 00 00 0a                                      beq #0x52e76c
0052e714  40 00 d6 e5                                      ldrb r0, [r6, #0x40]
0052e718  00 00 50 e3                                      cmp r0, #0
0052e71c  11 00 00 0a                                      beq #0x52e768
0052e720  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0052e724  04 00 a0 e1                                      mov r0, r4
0052e728  0a 10 a0 e3                                      mov r1, #0xa
0052e72c  00 00 53 e3                                      cmp r3, #0
0052e730  03 50 85 c0                                      addgt r5, r5, r3
0052e734  00 30 a0 c3                                      movgt r3, #0
0052e738  18 50 84 c5                                      strgt r5, [r4, #0x18]
0052e73c  1c 30 84 c5                                      strgt r3, [r4, #0x1c]
0052e740  62 fe ff eb                                      bl #0x52e0d0
0052e744  01 00 a0 e3                                      mov r0, #1
0052e748  70 80 bd e8                                      pop {r4, r5, r6, pc}
0052e74c  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
0052e750  00 00 8f e0                                      add r0, pc, r0
0052e754  ca 7d f7 eb                                      bl #0x30de84
0052e758  04 00 a0 e1                                      mov r0, r4
0052e75c  10 10 a0 e3                                      mov r1, #0x10
0052e760  5a fe ff eb                                      bl #0x52e0d0
0052e764  06 00 a0 e1                                      mov r0, r6
0052e768  70 80 bd e8                                      pop {r4, r5, r6, pc}
0052e76c  04 00 a0 e1                                      mov r0, r4
0052e770  6b ff ff eb                                      bl #0x52e524
0052e774  06 00 a0 e1                                      mov r0, r6
0052e778  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0052e77c  dc e6 3a 00 d8 e6 3a 00                          .byte 0xdc, 0xe6, 0x3a, 0x00, 0xd8, 0xe6, 0x3a, 0x00

; FUNCTION 0x0052e784, declared_size=752, range_size=752, mode=arm
; class-group: CXPlayerManager
; alias: _ZN15CXPlayerManager6UpdateEv
; demangled: CXPlayerManager::Update()
; decoder-mode: arm
0052e784  30 40 2d e9                                      push {r4, r5, lr}
0052e788  04 30 d0 e5                                      ldrb r3, [r0, #4]
0052e78c  14 d0 4d e2                                      sub sp, sp, #0x14
0052e790  00 40 a0 e1                                      mov r4, r0
0052e794  00 00 53 e3                                      cmp r3, #0
0052e798  37 00 00 0a                                      beq #0x52e87c
0052e79c  14 20 90 e5                                      ldr r2, [r0, #0x14]
0052e7a0  0f 00 52 e3                                      cmp r2, #0xf
0052e7a4  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
0052e7a8  2b 00 00 ea                                      b #0x52e85c
0052e7ac  81 00 00 ea                                      b #0x52e9b8
0052e7b0  29 00 00 ea                                      b #0x52e85c
0052e7b4  40 00 00 ea                                      b #0x52e8bc
0052e7b8  62 00 00 ea                                      b #0x52e948
0052e7bc  0a 00 00 ea                                      b #0x52e7ec
0052e7c0  41 00 00 ea                                      b #0x52e8cc
0052e7c4  3c 00 00 ea                                      b #0x52e8bc
0052e7c8  23 00 00 ea                                      b #0x52e85c
0052e7cc  94 00 00 ea                                      b #0x52ea24
0052e7d0  46 00 00 ea                                      b #0x52e8f0
0052e7d4  7b 00 00 ea                                      b #0x52e9c8
0052e7d8  2c 00 00 ea                                      b #0x52e890
0052e7dc  6d 00 00 ea                                      b #0x52e998
0052e7e0  2a 00 00 ea                                      b #0x52e890
0052e7e4  96 00 00 ea                                      b #0x52ea44
0052e7e8  28 00 00 ea                                      b #0x52e890
0052e7ec  08 30 90 e5                                      ldr r3, [r0, #8]
0052e7f0  00 00 53 e3                                      cmp r3, #0
0052e7f4  18 00 00 0a                                      beq #0x52e85c
0052e7f8  03 00 a0 e1                                      mov r0, r3
0052e7fc  00 30 93 e5                                      ldr r3, [r3]
0052e800  0f e0 a0 e1                                      mov lr, pc
0052e804  08 f0 93 e5                                      ldr pc, [r3, #8]
0052e808  08 00 94 e5                                      ldr r0, [r4, #8]
0052e80c  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
0052e810  00 00 53 e3                                      cmp r3, #0
0052e814  24 00 00 0a                                      beq #0x52e8ac
0052e818  3c f9 0b eb                                      bl #0x82cd10
0052e81c  00 10 a0 e1                                      mov r1, r0
0052e820  3c 02 9f e5                                      ldr r0, [pc, #0x23c]
0052e824  00 00 8f e0                                      add r0, pc, r0
0052e828  95 7d f7 eb                                      bl #0x30de84
0052e82c  0c 50 94 e5                                      ldr r5, [r4, #0xc]
0052e830  00 00 55 e3                                      cmp r5, #0
0052e834  04 00 00 0a                                      beq #0x52e84c
0052e838  08 00 94 e5                                      ldr r0, [r4, #8]
0052e83c  33 f9 0b eb                                      bl #0x82cd10
0052e840  00 10 a0 e1                                      mov r1, r0
0052e844  05 00 a0 e1                                      mov r0, r5
0052e848  5f f9 0b eb                                      bl #0x82cdcc
0052e84c  04 00 a0 e1                                      mov r0, r4
0052e850  08 10 a0 e3                                      mov r1, #8
0052e854  1d fe ff eb                                      bl #0x52e0d0
0052e858  14 20 94 e5                                      ldr r2, [r4, #0x14]
0052e85c  00 00 52 e3                                      cmp r2, #0
0052e860  05 00 00 0a                                      beq #0x52e87c
0052e864  08 00 94 e5                                      ldr r0, [r4, #8]
0052e868  00 00 50 e3                                      cmp r0, #0
0052e86c  02 00 00 0a                                      beq #0x52e87c
0052e870  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
0052e874  00 00 53 e3                                      cmp r3, #0
0052e878  01 00 00 1a                                      bne #0x52e884
0052e87c  14 d0 8d e2                                      add sp, sp, #0x14
0052e880  30 80 bd e8                                      pop {r4, r5, pc}
0052e884  14 d0 8d e2                                      add sp, sp, #0x14
0052e888  30 40 bd e8                                      pop {r4, r5, lr}
0052e88c  42 14 0c ea                                      b #0x83399c
0052e890  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0052e894  00 00 53 e3                                      cmp r3, #0
0052e898  ef ff ff 0a                                      beq #0x52e85c
0052e89c  03 00 a0 e1                                      mov r0, r3
0052e8a0  00 30 93 e5                                      ldr r3, [r3]
0052e8a4  0f e0 a0 e1                                      mov lr, pc
0052e8a8  08 f0 93 e5                                      ldr pc, [r3, #8]
0052e8ac  14 20 94 e5                                      ldr r2, [r4, #0x14]
0052e8b0  00 00 52 e3                                      cmp r2, #0
0052e8b4  ea ff ff 1a                                      bne #0x52e864
0052e8b8  ef ff ff ea                                      b #0x52e87c
0052e8bc  08 30 90 e5                                      ldr r3, [r0, #8]
0052e8c0  00 00 53 e3                                      cmp r3, #0
0052e8c4  f4 ff ff 1a                                      bne #0x52e89c
0052e8c8  e3 ff ff ea                                      b #0x52e85c
0052e8cc  08 00 90 e5                                      ldr r0, [r0, #8]
0052e8d0  00 00 50 e3                                      cmp r0, #0
0052e8d4  e0 ff ff 0a                                      beq #0x52e85c
0052e8d8  38 14 0c eb                                      bl #0x8339c0
0052e8dc  04 00 a0 e1                                      mov r0, r4
0052e8e0  06 10 a0 e3                                      mov r1, #6
0052e8e4  f9 fd ff eb                                      bl #0x52e0d0
0052e8e8  14 20 94 e5                                      ldr r2, [r4, #0x14]
0052e8ec  da ff ff ea                                      b #0x52e85c
0052e8f0  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0052e8f4  00 00 53 e3                                      cmp r3, #0
0052e8f8  03 00 00 0a                                      beq #0x52e90c
0052e8fc  03 00 a0 e1                                      mov r0, r3
0052e900  00 30 93 e5                                      ldr r3, [r3]
0052e904  0f e0 a0 e1                                      mov lr, pc
0052e908  08 f0 93 e5                                      ldr pc, [r3, #8]
0052e90c  54 01 9f e5                                      ldr r0, [pc, #0x154]
0052e910  18 10 94 e5                                      ldr r1, [r4, #0x18]
0052e914  00 00 8f e0                                      add r0, pc, r0
0052e918  59 7d f7 eb                                      bl #0x30de84
0052e91c  04 00 a0 e1                                      mov r0, r4
0052e920  18 10 94 e5                                      ldr r1, [r4, #0x18]
0052e924  68 ff ff eb                                      bl #0x52e6cc
0052e928  14 20 94 e5                                      ldr r2, [r4, #0x14]
0052e92c  09 00 52 e3                                      cmp r2, #9
0052e930  c9 ff ff 1a                                      bne #0x52e85c
0052e934  04 00 a0 e1                                      mov r0, r4
0052e938  10 10 a0 e3                                      mov r1, #0x10
0052e93c  e3 fd ff eb                                      bl #0x52e0d0
0052e940  14 20 94 e5                                      ldr r2, [r4, #0x14]
0052e944  c4 ff ff ea                                      b #0x52e85c
0052e948  08 00 90 e5                                      ldr r0, [r0, #8]
0052e94c  00 00 50 e3                                      cmp r0, #0
0052e950  c1 ff ff 0a                                      beq #0x52e85c
0052e954  10 c1 9f e5                                      ldr ip, [pc, #0x110]
0052e958  00 e0 a0 e3                                      mov lr, #0
0052e95c  4e 20 84 e2                                      add r2, r4, #0x4e
0052e960  0c c0 8f e0                                      add ip, pc, ip
0052e964  0e 30 a0 e1                                      mov r3, lr
0052e968  01 50 a0 e3                                      mov r5, #1
0052e96c  20 10 84 e2                                      add r1, r4, #0x20
0052e970  08 c0 8d e5                                      str ip, [sp, #8]
0052e974  04 e0 8d e5                                      str lr, [sp, #4]
0052e978  0c 50 8d e5                                      str r5, [sp, #0xc]
0052e97c  00 50 8d e5                                      str r5, [sp]
0052e980  cd 14 0c eb                                      bl #0x833cbc
0052e984  04 00 a0 e1                                      mov r0, r4
0052e988  04 10 a0 e3                                      mov r1, #4
0052e98c  cf fd ff eb                                      bl #0x52e0d0
0052e990  14 20 94 e5                                      ldr r2, [r4, #0x14]
0052e994  b0 ff ff ea                                      b #0x52e85c
0052e998  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0052e99c  0d 10 a0 e3                                      mov r1, #0xd
0052e9a0  00 00 53 e3                                      cmp r3, #0
0052e9a4  01 20 a0 13                                      movne r2, #1
0052e9a8  54 20 83 15                                      strne r2, [r3, #0x54]
0052e9ac  c7 fd ff eb                                      bl #0x52e0d0
0052e9b0  14 20 94 e5                                      ldr r2, [r4, #0x14]
0052e9b4  a8 ff ff ea                                      b #0x52e85c
0052e9b8  10 30 90 e5                                      ldr r3, [r0, #0x10]
0052e9bc  00 00 53 e3                                      cmp r3, #0
0052e9c0  b5 ff ff 1a                                      bne #0x52e89c
0052e9c4  a4 ff ff ea                                      b #0x52e85c
0052e9c8  08 30 90 e5                                      ldr r3, [r0, #8]
0052e9cc  00 00 53 e3                                      cmp r3, #0
0052e9d0  d7 ff ff 0a                                      beq #0x52e934
0052e9d4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0052e9d8  00 00 52 e3                                      cmp r2, #0
0052e9dc  d4 ff ff 0a                                      beq #0x52e934
0052e9e0  40 30 d3 e5                                      ldrb r3, [r3, #0x40]
0052e9e4  00 00 53 e3                                      cmp r3, #0
0052e9e8  d1 ff ff 0a                                      beq #0x52e934
0052e9ec  18 10 90 e5                                      ldr r1, [r0, #0x18]
0052e9f0  78 00 9f e5                                      ldr r0, [pc, #0x78]
0052e9f4  00 00 8f e0                                      add r0, pc, r0
0052e9f8  21 7d f7 eb                                      bl #0x30de84
0052e9fc  00 20 e0 e3                                      mvn r2, #0
0052ea00  18 10 94 e5                                      ldr r1, [r4, #0x18]
0052ea04  01 30 a0 e3                                      mov r3, #1
0052ea08  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0052ea0c  69 11 0c eb                                      bl #0x832fb8
0052ea10  04 00 a0 e1                                      mov r0, r4
0052ea14  0b 10 a0 e3                                      mov r1, #0xb
0052ea18  ac fd ff eb                                      bl #0x52e0d0
0052ea1c  14 20 94 e5                                      ldr r2, [r4, #0x14]
0052ea20  8d ff ff ea                                      b #0x52e85c
0052ea24  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0052ea28  09 10 a0 e3                                      mov r1, #9
0052ea2c  00 00 53 e3                                      cmp r3, #0
0052ea30  01 20 a0 13                                      movne r2, #1
0052ea34  54 20 83 15                                      strne r2, [r3, #0x54]
0052ea38  a4 fd ff eb                                      bl #0x52e0d0
0052ea3c  14 20 94 e5                                      ldr r2, [r4, #0x14]
0052ea40  85 ff ff ea                                      b #0x52e85c
0052ea44  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0052ea48  0f 10 a0 e3                                      mov r1, #0xf
0052ea4c  00 00 53 e3                                      cmp r3, #0
0052ea50  01 20 a0 13                                      movne r2, #1
0052ea54  54 20 83 15                                      strne r2, [r3, #0x54]
0052ea58  9c fd ff eb                                      bl #0x52e0d0
0052ea5c  14 20 94 e5                                      ldr r2, [r4, #0x14]
0052ea60  7d ff ff ea                                      b #0x52e85c
; mapping-symbol data/literal pool
0052ea64  5c e6 3a 00 94 e5 3a 00 18 e5 3a 00 e4 e4 3a 00  .byte 0x5c, 0xe6, 0x3a, 0x00, 0x94, 0xe5, 0x3a, 0x00, 0x18, 0xe5, 0x3a, 0x00, 0xe4, 0xe4, 0x3a, 0x00
