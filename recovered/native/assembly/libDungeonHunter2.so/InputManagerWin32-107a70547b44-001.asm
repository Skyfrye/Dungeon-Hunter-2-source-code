; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034da9c, declared_size=12, range_size=12, mode=arm
; class-group: InputManagerWin32
; alias: _ZN17InputManagerWin328GetMouseEi
; demangled: InputManagerWin32::GetMouse(int)
; decoder-mode: arm
0034da9c  31 0d 80 e2                                      add r0, r0, #0xc40
0034daa0  04 00 80 e2                                      add r0, r0, #4
0034daa4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034daa8, declared_size=8, range_size=8, mode=arm
; class-group: InputManagerWin32
; alias: _ZN17InputManagerWin3211GetKeyboardEi
; demangled: InputManagerWin32::GetKeyboard(int)
; decoder-mode: arm
0034daa8  18 00 80 e2                                      add r0, r0, #0x18
0034daac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034dbb4, declared_size=168, range_size=168, mode=arm
; class-group: InputManagerWin32
; alias: _ZN17InputManagerWin3210GetGamepadEi
; demangled: InputManagerWin32::GetGamepad(int)
; decoder-mode: arm
0034dbb4  30 40 2d e9                                      push {r4, r5, lr}
0034dbb8  84 30 9f e5                                      ldr r3, [pc, #0x84]
0034dbbc  03 00 51 e3                                      cmp r1, #3
0034dbc0  0c d0 4d e2                                      sub sp, sp, #0xc
0034dbc4  01 40 a0 e1                                      mov r4, r1
0034dbc8  03 30 8f e0                                      add r3, pc, r3
0034dbcc  00 50 a0 e1                                      mov r5, r0
0034dbd0  08 00 00 da                                      ble #0x34dbf8
0034dbd4  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0034dbd8  02 20 93 e7                                      ldr r2, [r3, r2]
0034dbdc  00 20 92 e5                                      ldr r2, [r2]
0034dbe0  02 00 52 e3                                      cmp r2, #2
0034dbe4  00 30 a0 03                                      moveq r3, #0
0034dbe8  00 30 83 05                                      streq r3, [r3]
0034dbec  01 00 00 0a                                      beq #0x34dbf8
0034dbf0  01 00 52 e3                                      cmp r2, #1
0034dbf4  05 00 00 0a                                      beq #0x34dc10
0034dbf8  5c 07 00 e3                                      movw r0, #0x75c
0034dbfc  90 04 04 e0                                      mul r4, r0, r4
0034dc00  e5 0e 84 e2                                      add r0, r4, #0xe50
0034dc04  00 00 85 e0                                      add r0, r5, r0
0034dc08  0c d0 8d e2                                      add sp, sp, #0xc
0034dc0c  30 80 bd e8                                      pop {r4, r5, pc}
0034dc10  34 00 9f e5                                      ldr r0, [pc, #0x34]
0034dc14  34 10 9f e5                                      ldr r1, [pc, #0x34]
0034dc18  34 20 9f e5                                      ldr r2, [pc, #0x34]
0034dc1c  00 00 93 e7                                      ldr r0, [r3, r0]
0034dc20  30 30 9f e5                                      ldr r3, [pc, #0x30]
0034dc24  0a cd a0 e3                                      mov ip, #0x280
0034dc28  01 10 8f e0                                      add r1, pc, r1
0034dc2c  02 20 8f e0                                      add r2, pc, r2
0034dc30  03 30 8f e0                                      add r3, pc, r3
0034dc34  a8 00 80 e2                                      add r0, r0, #0xa8
0034dc38  00 c0 8d e5                                      str ip, [sp]
0034dc3c  f0 00 ff eb                                      bl #0x30e004
0034dc40  ec ff ff ea                                      b #0x34dbf8
; mapping-symbol data/literal pool
0034dc44  c8 6e 64 00 c0 39 00 00 c0 19 00 00 b0 07 57 00  .byte 0xc8, 0x6e, 0x64, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xb0, 0x07, 0x57, 0x00
0034dc54  34 2a 57 00 38 2a 57 00                          .byte 0x34, 0x2a, 0x57, 0x00, 0x38, 0x2a, 0x57, 0x00

; FUNCTION 0x0034dc90, declared_size=4, range_size=4, mode=arm
; class-group: InputManagerWin32
; alias: _ZN17InputManagerWin3211UpdateFrameEf
; demangled: InputManagerWin32::UpdateFrame(float)
; decoder-mode: arm
0034dc90  e2 fe ff ea                                      b #0x34d820

; FUNCTION 0x0034dc94, declared_size=52, range_size=52, mode=arm
; class-group: InputManagerWin32
; alias: _ZN17InputManagerWin32D1Ev
; demangled: InputManagerWin32::~InputManagerWin32()
; decoder-mode: arm
0034dc94  24 30 9f e5                                      ldr r3, [pc, #0x24]
0034dc98  24 20 9f e5                                      ldr r2, [pc, #0x24]
0034dc9c  10 40 2d e9                                      push {r4, lr}
0034dca0  03 30 8f e0                                      add r3, pc, r3
0034dca4  02 20 93 e7                                      ldr r2, [r3, r2]
0034dca8  00 40 a0 e1                                      mov r4, r0
0034dcac  08 20 82 e2                                      add r2, r2, #8
0034dcb0  00 20 80 e5                                      str r2, [r0]
0034dcb4  a0 fe ff eb                                      bl #0x34d73c
0034dcb8  04 00 a0 e1                                      mov r0, r4
0034dcbc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034dcc0  f0 6d 64 00 94 18 00 00                          .byte 0xf0, 0x6d, 0x64, 0x00, 0x94, 0x18, 0x00, 0x00

; FUNCTION 0x0034dcc8, declared_size=28, range_size=28, mode=arm
; class-group: InputManagerWin32
; alias: _ZN17InputManagerWin32D0Ev
; demangled: InputManagerWin32::~InputManagerWin32()
; decoder-mode: arm
0034dcc8  10 40 2d e9                                      push {r4, lr}
0034dccc  00 40 a0 e1                                      mov r4, r0
0034dcd0  ef ff ff eb                                      bl #0x34dc94
0034dcd4  04 00 a0 e1                                      mov r0, r4
0034dcd8  d8 09 ff eb                                      bl #0x310440
0034dcdc  04 00 a0 e1                                      mov r0, r4
0034dce0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0034dce4, declared_size=52, range_size=52, mode=arm
; class-group: InputManagerWin32
; alias: _ZN17InputManagerWin32D2Ev
; demangled: InputManagerWin32::~InputManagerWin32()
; decoder-mode: arm
0034dce4  24 30 9f e5                                      ldr r3, [pc, #0x24]
0034dce8  24 20 9f e5                                      ldr r2, [pc, #0x24]
0034dcec  10 40 2d e9                                      push {r4, lr}
0034dcf0  03 30 8f e0                                      add r3, pc, r3
0034dcf4  02 20 93 e7                                      ldr r2, [r3, r2]
0034dcf8  00 40 a0 e1                                      mov r4, r0
0034dcfc  08 20 82 e2                                      add r2, r2, #8
0034dd00  00 20 80 e5                                      str r2, [r0]
0034dd04  8c fe ff eb                                      bl #0x34d73c
0034dd08  04 00 a0 e1                                      mov r0, r4
0034dd0c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034dd10  a0 6d 64 00 94 18 00 00                          .byte 0xa0, 0x6d, 0x64, 0x00, 0x94, 0x18, 0x00, 0x00

; FUNCTION 0x0034dd18, declared_size=140, range_size=140, mode=arm
; class-group: InputManagerWin32
; alias: _ZN17InputManagerWin32C1Ev
; demangled: InputManagerWin32::InputManagerWin32()
; decoder-mode: arm
0034dd18  01 10 a0 e3                                      mov r1, #1
0034dd1c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0034dd20  01 20 a0 e1                                      mov r2, r1
0034dd24  04 30 a0 e3                                      mov r3, #4
0034dd28  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
0034dd2c  00 40 a0 e1                                      mov r4, r0
0034dd30  61 fe ff eb                                      bl #0x34d6bc
0034dd34  64 30 9f e5                                      ldr r3, [pc, #0x64]
0034dd38  05 50 8f e0                                      add r5, pc, r5
0034dd3c  04 00 a0 e1                                      mov r0, r4
0034dd40  03 30 95 e7                                      ldr r3, [r5, r3]
0034dd44  e5 7e 84 e2                                      add r7, r4, #0xe50
0034dd48  75 6e 87 e2                                      add r6, r7, #0x750
0034dd4c  08 30 83 e2                                      add r3, r3, #8
0034dd50  18 30 80 e4                                      str r3, [r0], #0x18
0034dd54  ce fb ff eb                                      bl #0x34cc94
0034dd58  31 0d 84 e2                                      add r0, r4, #0xc40
0034dd5c  0c 60 86 e2                                      add r6, r6, #0xc
0034dd60  04 00 80 e2                                      add r0, r0, #4
0034dd64  81 fb ff eb                                      bl #0x34cb70
0034dd68  75 5e 86 e2                                      add r5, r6, #0x750
0034dd6c  07 00 a0 e1                                      mov r0, r7
0034dd70  0c 50 85 e2                                      add r5, r5, #0xc
0034dd74  43 fc ff eb                                      bl #0x34ce88
0034dd78  06 00 a0 e1                                      mov r0, r6
0034dd7c  41 fc ff eb                                      bl #0x34ce88
0034dd80  05 00 a0 e1                                      mov r0, r5
0034dd84  3f fc ff eb                                      bl #0x34ce88
0034dd88  75 0e 85 e2                                      add r0, r5, #0x750
0034dd8c  0c 00 80 e2                                      add r0, r0, #0xc
0034dd90  3c fc ff eb                                      bl #0x34ce88
0034dd94  04 00 a0 e1                                      mov r0, r4
0034dd98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0034dd9c  58 6d 64 00 94 18 00 00                          .byte 0x58, 0x6d, 0x64, 0x00, 0x94, 0x18, 0x00, 0x00

; FUNCTION 0x0034de68, declared_size=140, range_size=140, mode=arm
; class-group: InputManagerWin32
; alias: _ZN17InputManagerWin32C2Ev
; demangled: InputManagerWin32::InputManagerWin32()
; decoder-mode: arm
0034de68  01 10 a0 e3                                      mov r1, #1
0034de6c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0034de70  01 20 a0 e1                                      mov r2, r1
0034de74  04 30 a0 e3                                      mov r3, #4
0034de78  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
0034de7c  00 40 a0 e1                                      mov r4, r0
0034de80  0d fe ff eb                                      bl #0x34d6bc
0034de84  64 30 9f e5                                      ldr r3, [pc, #0x64]
0034de88  05 50 8f e0                                      add r5, pc, r5
0034de8c  04 00 a0 e1                                      mov r0, r4
0034de90  03 30 95 e7                                      ldr r3, [r5, r3]
0034de94  e5 7e 84 e2                                      add r7, r4, #0xe50
0034de98  75 6e 87 e2                                      add r6, r7, #0x750
0034de9c  08 30 83 e2                                      add r3, r3, #8
0034dea0  18 30 80 e4                                      str r3, [r0], #0x18
0034dea4  7a fb ff eb                                      bl #0x34cc94
0034dea8  31 0d 84 e2                                      add r0, r4, #0xc40
0034deac  0c 60 86 e2                                      add r6, r6, #0xc
0034deb0  04 00 80 e2                                      add r0, r0, #4
0034deb4  2d fb ff eb                                      bl #0x34cb70
0034deb8  75 5e 86 e2                                      add r5, r6, #0x750
0034debc  07 00 a0 e1                                      mov r0, r7
0034dec0  0c 50 85 e2                                      add r5, r5, #0xc
0034dec4  ef fb ff eb                                      bl #0x34ce88
0034dec8  06 00 a0 e1                                      mov r0, r6
0034decc  ed fb ff eb                                      bl #0x34ce88
0034ded0  05 00 a0 e1                                      mov r0, r5
0034ded4  eb fb ff eb                                      bl #0x34ce88
0034ded8  75 0e 85 e2                                      add r0, r5, #0x750
0034dedc  0c 00 80 e2                                      add r0, r0, #0xc
0034dee0  e8 fb ff eb                                      bl #0x34ce88
0034dee4  04 00 a0 e1                                      mov r0, r4
0034dee8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0034deec  08 6c 64 00 94 18 00 00                          .byte 0x08, 0x6c, 0x64, 0x00, 0x94, 0x18, 0x00, 0x00
