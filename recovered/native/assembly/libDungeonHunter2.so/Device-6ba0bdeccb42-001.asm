; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00381668, declared_size=64, range_size=64, mode=arm
; class-group: Device
; alias: _ZN6Device15IsFixedPipelineEv
; demangled: Device::IsFixedPipeline()
; decoder-mode: arm
00381668  30 30 9f e5                                      ldr r3, [pc, #0x30]
0038166c  30 20 9f e5                                      ldr r2, [pc, #0x30]
00381670  10 40 2d e9                                      push {r4, lr}
00381674  03 30 8f e0                                      add r3, pc, r3
00381678  02 20 93 e7                                      ldr r2, [r3, r2]
0038167c  10 30 92 e5                                      ldr r3, [r2, #0x10]
00381680  10 30 93 e5                                      ldr r3, [r3, #0x10]
00381684  03 00 a0 e1                                      mov r0, r3
00381688  00 30 93 e5                                      ldr r3, [r3]
0038168c  0f e0 a0 e1                                      mov lr, pc
00381690  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00381694  07 00 10 e2                                      ands r0, r0, #7
00381698  01 00 a0 13                                      movne r0, #1
0038169c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003816a0  1c 34 61 00 f4 37 00 00                          .byte 0x1c, 0x34, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003816a8, declared_size=148, range_size=148, mode=arm
; class-group: Device
; alias: _ZN6Device22IsProgrammablePipelineEv
; demangled: Device::IsProgrammablePipeline()
; decoder-mode: arm
003816a8  78 30 9f e5                                      ldr r3, [pc, #0x78]
003816ac  78 20 9f e5                                      ldr r2, [pc, #0x78]
003816b0  10 40 2d e9                                      push {r4, lr}
003816b4  03 30 8f e0                                      add r3, pc, r3
003816b8  02 20 93 e7                                      ldr r2, [r3, r2]
003816bc  00 20 d2 e5                                      ldrb r2, [r2]
003816c0  00 00 52 e3                                      cmp r2, #0
003816c4  09 00 00 1a                                      bne #0x3816f0
003816c8  60 20 9f e5                                      ldr r2, [pc, #0x60]
003816cc  02 20 93 e7                                      ldr r2, [r3, r2]
003816d0  00 20 d2 e5                                      ldrb r2, [r2]
003816d4  00 00 52 e3                                      cmp r2, #0
003816d8  04 00 00 1a                                      bne #0x3816f0
003816dc  50 20 9f e5                                      ldr r2, [pc, #0x50]
003816e0  02 20 93 e7                                      ldr r2, [r3, r2]
003816e4  00 20 d2 e5                                      ldrb r2, [r2]
003816e8  00 00 52 e3                                      cmp r2, #0
003816ec  01 00 00 0a                                      beq #0x3816f8
003816f0  00 00 a0 e3                                      mov r0, #0
003816f4  10 80 bd e8                                      pop {r4, pc}
003816f8  38 20 9f e5                                      ldr r2, [pc, #0x38]
003816fc  02 30 93 e7                                      ldr r3, [r3, r2]
00381700  10 30 93 e5                                      ldr r3, [r3, #0x10]
00381704  10 30 93 e5                                      ldr r3, [r3, #0x10]
00381708  03 00 a0 e1                                      mov r0, r3
0038170c  00 30 93 e5                                      ldr r3, [r3]
00381710  0f e0 a0 e1                                      mov lr, pc
00381714  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00381718  78 00 10 e3                                      tst r0, #0x78
0038171c  00 00 a0 03                                      moveq r0, #0
00381720  01 00 a0 13                                      movne r0, #1
00381724  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00381728  dc 33 61 00 58 44 00 00 68 27 00 00 d4 29 00 00  .byte 0xdc, 0x33, 0x61, 0x00, 0x58, 0x44, 0x00, 0x00, 0x68, 0x27, 0x00, 0x00, 0xd4, 0x29, 0x00, 0x00
00381738  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0038173c, declared_size=8, range_size=8, mode=arm
; class-group: Device
; alias: _ZN6Device8GetModelEv
; demangled: Device::GetModel()
; decoder-mode: arm
0038173c  00 00 e0 e3                                      mvn r0, #0
00381740  1e ff 2f e1                                      bx lr

; FUNCTION 0x00381744, declared_size=8, range_size=8, mode=arm
; class-group: Device
; alias: _ZN6Device21IsiOSVersionSupportedEPKc
; demangled: Device::IsiOSVersionSupported(char const*)
; decoder-mode: arm
00381744  01 00 a0 e3                                      mov r0, #1
00381748  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038174c, declared_size=4, range_size=4, mode=arm
; class-group: Device
; alias: _ZN6Device17IsHighPerformanceEv
; demangled: Device::IsHighPerformance()
; decoder-mode: arm
0038174c  d5 ff ff ea                                      b #0x3816a8

; FUNCTION 0x00381750, declared_size=8, range_size=8, mode=arm
; class-group: Device
; alias: _ZN6Device15IsIphoneHighRezEv
; demangled: Device::IsIphoneHighRez()
; decoder-mode: arm
00381750  01 00 a0 e3                                      mov r0, #1
00381754  1e ff 2f e1                                      bx lr

; FUNCTION 0x00381758, declared_size=20, range_size=20, mode=arm
; class-group: Device
; alias: _ZN6Device19GetScreenResolutionEv
; demangled: Device::GetScreenResolution()
; decoder-mode: arm
00381758  0a 2d a0 e3                                      mov r2, #0x280
0038175c  04 20 80 e5                                      str r2, [r0, #4]
00381760  0f 2d a0 e3                                      mov r2, #0x3c0
00381764  00 20 80 e5                                      str r2, [r0]
00381768  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038176c, declared_size=8, range_size=8, mode=arm
; class-group: Device
; alias: _ZN6Device20IsMultitaskSupportedEv
; demangled: Device::IsMultitaskSupported()
; decoder-mode: arm
0038176c  01 00 a0 e3                                      mov r0, #1
00381770  1e ff 2f e1                                      bx lr

; FUNCTION 0x00381774, declared_size=8, range_size=8, mode=arm
; class-group: Device
; alias: _ZN6Device21IsGameCenterSupportedEv
; demangled: Device::IsGameCenterSupported()
; decoder-mode: arm
00381774  00 00 a0 e3                                      mov r0, #0
00381778  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038177c, declared_size=8, range_size=8, mode=arm
; class-group: Device
; alias: _ZN6Device20IsBluetoothSupportedEv
; demangled: Device::IsBluetoothSupported()
; decoder-mode: arm
0038177c  01 00 a0 e3                                      mov r0, #1
00381780  1e ff 2f e1                                      bx lr

; FUNCTION 0x00381954, declared_size=188, range_size=188, mode=arm
; class-group: Device
; alias: _ZN6Device21GetPreferredLanguagesEv
; demangled: Device::GetPreferredLanguages()
; decoder-mode: arm
00381954  10 40 2d e9                                      push {r4, lr}
00381958  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0038195c  10 d0 4d e2                                      sub sp, sp, #0x10
00381960  00 10 a0 e3                                      mov r1, #0
00381964  10 20 8d e2                                      add r2, sp, #0x10
00381968  03 30 8f e0                                      add r3, pc, r3
0038196c  04 30 22 e5                                      str r3, [r2, #-4]!
00381970  00 40 a0 e1                                      mov r4, r0
00381974  00 10 80 e5                                      str r1, [r0]
00381978  04 10 80 e5                                      str r1, [r0, #4]
0038197c  08 10 80 e5                                      str r1, [r0, #8]
00381980  c3 ff ff eb                                      bl #0x381894
00381984  06 00 94 e9                                      ldmib r4, {r1, r2}
00381988  78 30 9f e5                                      ldr r3, [pc, #0x78]
0038198c  02 00 51 e1                                      cmp r1, r2
00381990  03 30 8f e0                                      add r3, pc, r3
00381994  08 30 8d e5                                      str r3, [sp, #8]
00381998  10 00 00 0a                                      beq #0x3819e0
0038199c  00 30 81 e5                                      str r3, [r1]
003819a0  04 10 94 e5                                      ldr r1, [r4, #4]
003819a4  04 10 81 e2                                      add r1, r1, #4
003819a8  04 10 84 e5                                      str r1, [r4, #4]
003819ac  08 20 94 e5                                      ldr r2, [r4, #8]
003819b0  54 30 9f e5                                      ldr r3, [pc, #0x54]
003819b4  02 00 51 e1                                      cmp r1, r2
003819b8  03 30 8f e0                                      add r3, pc, r3
003819bc  04 30 8d e5                                      str r3, [sp, #4]
003819c0  0b 00 00 0a                                      beq #0x3819f4
003819c4  00 30 81 e5                                      str r3, [r1]
003819c8  04 30 94 e5                                      ldr r3, [r4, #4]
003819cc  04 30 83 e2                                      add r3, r3, #4
003819d0  04 30 84 e5                                      str r3, [r4, #4]
003819d4  04 00 a0 e1                                      mov r0, r4
003819d8  10 d0 8d e2                                      add sp, sp, #0x10
003819dc  10 80 bd e8                                      pop {r4, pc}
003819e0  04 00 a0 e1                                      mov r0, r4
003819e4  08 20 8d e2                                      add r2, sp, #8
003819e8  a9 ff ff eb                                      bl #0x381894
003819ec  04 10 94 e5                                      ldr r1, [r4, #4]
003819f0  ed ff ff ea                                      b #0x3819ac
003819f4  04 00 a0 e1                                      mov r0, r4
003819f8  04 20 8d e2                                      add r2, sp, #4
003819fc  a4 ff ff eb                                      bl #0x381894
00381a00  f3 ff ff ea                                      b #0x3819d4
; mapping-symbol data/literal pool
00381a04  68 03 54 00 50 03 54 00 38 03 54 00              .byte 0x68, 0x03, 0x54, 0x00, 0x50, 0x03, 0x54, 0x00, 0x38, 0x03, 0x54, 0x00
