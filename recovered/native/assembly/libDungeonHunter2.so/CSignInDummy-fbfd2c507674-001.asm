; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081a4c8, declared_size=8, range_size=8, mode=arm
; class-group: CSignInDummy
; alias: _ZN12CSignInDummy6SignInEv
; demangled: CSignInDummy::SignIn()
; decoder-mode: arm
0081a4c8  01 00 a0 e3                                      mov r0, #1
0081a4cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081a4d0, declared_size=8, range_size=8, mode=arm
; class-group: CSignInDummy
; alias: _ZN12CSignInDummy6SignInER18CSignInCredentials
; demangled: CSignInDummy::SignIn(CSignInCredentials&)
; decoder-mode: arm
0081a4d0  01 00 a0 e3                                      mov r0, #1
0081a4d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081a4d8, declared_size=4, range_size=4, mode=arm
; class-group: CSignInDummy
; alias: _ZN12CSignInDummy7SignOutEv
; demangled: CSignInDummy::SignOut()
; decoder-mode: arm
0081a4d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081a954, declared_size=52, range_size=52, mode=arm
; class-group: CSignInDummy
; alias: _ZN12CSignInDummyD1Ev
; demangled: CSignInDummy::~CSignInDummy()
; decoder-mode: arm
0081a954  24 30 9f e5                                      ldr r3, [pc, #0x24]
0081a958  24 20 9f e5                                      ldr r2, [pc, #0x24]
0081a95c  10 40 2d e9                                      push {r4, lr}
0081a960  03 30 8f e0                                      add r3, pc, r3
0081a964  02 20 93 e7                                      ldr r2, [r3, r2]
0081a968  00 40 a0 e1                                      mov r4, r0
0081a96c  08 20 82 e2                                      add r2, r2, #8
0081a970  00 20 80 e5                                      str r2, [r0]
0081a974  ce ff ff eb                                      bl #0x81a8b4
0081a978  04 00 a0 e1                                      mov r0, r4
0081a97c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081a980  30 a1 17 00 18 2a 00 00                          .byte 0x30, 0xa1, 0x17, 0x00, 0x18, 0x2a, 0x00, 0x00

; FUNCTION 0x0081a988, declared_size=60, range_size=60, mode=arm
; class-group: CSignInDummy
; alias: _ZN12CSignInDummyD0Ev
; demangled: CSignInDummy::~CSignInDummy()
; decoder-mode: arm
0081a988  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0081a98c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0081a990  10 40 2d e9                                      push {r4, lr}
0081a994  03 30 8f e0                                      add r3, pc, r3
0081a998  02 20 93 e7                                      ldr r2, [r3, r2]
0081a99c  00 40 a0 e1                                      mov r4, r0
0081a9a0  08 20 82 e2                                      add r2, r2, #8
0081a9a4  00 20 80 e5                                      str r2, [r0]
0081a9a8  c1 ff ff eb                                      bl #0x81a8b4
0081a9ac  04 00 a0 e1                                      mov r0, r4
0081a9b0  a2 d6 eb eb                                      bl #0x310440
0081a9b4  04 00 a0 e1                                      mov r0, r4
0081a9b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081a9bc  fc a0 17 00 18 2a 00 00                          .byte 0xfc, 0xa0, 0x17, 0x00, 0x18, 0x2a, 0x00, 0x00
