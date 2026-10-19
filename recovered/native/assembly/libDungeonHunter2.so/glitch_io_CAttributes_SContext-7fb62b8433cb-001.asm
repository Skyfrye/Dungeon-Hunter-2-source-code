; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00562964, declared_size=112, range_size=112, mode=arm
; class-group: glitch::io::CAttributes::SContext
; alias: _ZN6glitch2io11CAttributes8SContext10hasContextEPKc
; demangled: glitch::io::CAttributes::SContext::hasContext(char const*)
; decoder-mode: arm
00562964  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00562968  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
0056296c  30 20 90 e5                                      ldr r2, [r0, #0x30]
00562970  00 50 a0 e1                                      mov r5, r0
00562974  01 60 a0 e1                                      mov r6, r1
00562978  02 20 63 e0                                      rsb r2, r3, r2
0056297c  22 21 b0 e1                                      lsrs r2, r2, #2
00562980  11 00 00 0a                                      beq #0x5629cc
00562984  00 40 a0 e3                                      mov r4, #0
00562988  04 00 00 ea                                      b #0x5629a0
0056298c  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
00562990  30 20 95 e5                                      ldr r2, [r5, #0x30]
00562994  02 20 63 e0                                      rsb r2, r3, r2
00562998  42 01 54 e1                                      cmp r4, r2, asr #2
0056299c  0a 00 00 2a                                      bhs #0x5629cc
005629a0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
005629a4  06 10 a0 e1                                      mov r1, r6
005629a8  04 71 a0 e1                                      lsl r7, r4, #2
005629ac  08 00 80 e2                                      add r0, r0, #8
005629b0  62 4e ff eb                                      bl #0x536340
005629b4  00 00 50 e3                                      cmp r0, #0
005629b8  01 40 84 e2                                      add r4, r4, #1
005629bc  f2 ff ff 0a                                      beq #0x56298c
005629c0  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
005629c4  07 00 93 e7                                      ldr r0, [r3, r7]
005629c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005629cc  00 00 a0 e3                                      mov r0, #0
005629d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00562b10, declared_size=104, range_size=104, mode=arm
; class-group: glitch::io::CAttributes::SContext
; alias: _ZN6glitch2io11CAttributes8SContextC1EPKc
; demangled: glitch::io::CAttributes::SContext::SContext(char const*)
; decoder-mode: arm
00562b10  58 30 9f e5                                      ldr r3, [pc, #0x58]
00562b14  58 20 9f e5                                      ldr r2, [pc, #0x58]
00562b18  10 40 2d e9                                      push {r4, lr}
00562b1c  03 30 8f e0                                      add r3, pc, r3
00562b20  02 20 93 e7                                      ldr r2, [r3, r2]
00562b24  00 40 a0 e1                                      mov r4, r0
00562b28  08 d0 4d e2                                      sub sp, sp, #8
00562b2c  01 c0 a0 e3                                      mov ip, #1
00562b30  08 20 82 e2                                      add r2, r2, #8
00562b34  04 c0 84 e5                                      str ip, [r4, #4]
00562b38  08 20 80 e4                                      str r2, [r0], #8
00562b3c  04 20 8d e2                                      add r2, sp, #4
00562b40  3d 0d f7 eb                                      bl #0x32603c
00562b44  00 30 a0 e3                                      mov r3, #0
00562b48  38 30 84 e5                                      str r3, [r4, #0x38]
00562b4c  20 30 84 e5                                      str r3, [r4, #0x20]
00562b50  24 30 84 e5                                      str r3, [r4, #0x24]
00562b54  28 30 84 e5                                      str r3, [r4, #0x28]
00562b58  2c 30 84 e5                                      str r3, [r4, #0x2c]
00562b5c  30 30 84 e5                                      str r3, [r4, #0x30]
00562b60  34 30 84 e5                                      str r3, [r4, #0x34]
00562b64  04 00 a0 e1                                      mov r0, r4
00562b68  08 d0 8d e2                                      add sp, sp, #8
00562b6c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00562b70  74 1f 43 00 94 43 00 00                          .byte 0x74, 0x1f, 0x43, 0x00, 0x94, 0x43, 0x00, 0x00

; FUNCTION 0x00562c80, declared_size=104, range_size=104, mode=arm
; class-group: glitch::io::CAttributes::SContext
; alias: _ZN6glitch2io11CAttributes8SContextC2EPKc
; demangled: glitch::io::CAttributes::SContext::SContext(char const*)
; decoder-mode: arm
00562c80  58 30 9f e5                                      ldr r3, [pc, #0x58]
00562c84  58 20 9f e5                                      ldr r2, [pc, #0x58]
00562c88  10 40 2d e9                                      push {r4, lr}
00562c8c  03 30 8f e0                                      add r3, pc, r3
00562c90  02 20 93 e7                                      ldr r2, [r3, r2]
00562c94  00 40 a0 e1                                      mov r4, r0
00562c98  08 d0 4d e2                                      sub sp, sp, #8
00562c9c  01 c0 a0 e3                                      mov ip, #1
00562ca0  08 20 82 e2                                      add r2, r2, #8
00562ca4  04 c0 84 e5                                      str ip, [r4, #4]
00562ca8  08 20 80 e4                                      str r2, [r0], #8
00562cac  04 20 8d e2                                      add r2, sp, #4
00562cb0  e1 0c f7 eb                                      bl #0x32603c
00562cb4  00 30 a0 e3                                      mov r3, #0
00562cb8  38 30 84 e5                                      str r3, [r4, #0x38]
00562cbc  20 30 84 e5                                      str r3, [r4, #0x20]
00562cc0  24 30 84 e5                                      str r3, [r4, #0x24]
00562cc4  28 30 84 e5                                      str r3, [r4, #0x28]
00562cc8  2c 30 84 e5                                      str r3, [r4, #0x2c]
00562ccc  30 30 84 e5                                      str r3, [r4, #0x30]
00562cd0  34 30 84 e5                                      str r3, [r4, #0x34]
00562cd4  04 00 a0 e1                                      mov r0, r4
00562cd8  08 d0 8d e2                                      add sp, sp, #8
00562cdc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00562ce0  04 1e 43 00 94 43 00 00                          .byte 0x04, 0x1e, 0x43, 0x00, 0x94, 0x43, 0x00, 0x00

; FUNCTION 0x00563690, declared_size=236, range_size=236, mode=arm
; class-group: glitch::io::CAttributes::SContext
; alias: _ZN6glitch2io11CAttributes8SContext10getContextEPKcb
; demangled: glitch::io::CAttributes::SContext::getContext(char const*, bool)
; decoder-mode: arm
00563690  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00563694  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
00563698  30 c0 90 e5                                      ldr ip, [r0, #0x30]
0056369c  10 d0 4d e2                                      sub sp, sp, #0x10
005636a0  00 40 a0 e1                                      mov r4, r0
005636a4  0c c0 63 e0                                      rsb ip, r3, ip
005636a8  2c c1 b0 e1                                      lsrs ip, ip, #2
005636ac  01 50 a0 e1                                      mov r5, r1
005636b0  02 80 a0 e1                                      mov r8, r2
005636b4  12 00 00 0a                                      beq #0x563704
005636b8  00 60 a0 e3                                      mov r6, #0
005636bc  04 00 00 ea                                      b #0x5636d4
005636c0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005636c4  30 20 94 e5                                      ldr r2, [r4, #0x30]
005636c8  02 20 63 e0                                      rsb r2, r3, r2
005636cc  42 01 56 e1                                      cmp r6, r2, asr #2
005636d0  0b 00 00 2a                                      bhs #0x563704
005636d4  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
005636d8  05 10 a0 e1                                      mov r1, r5
005636dc  06 71 a0 e1                                      lsl r7, r6, #2
005636e0  08 00 80 e2                                      add r0, r0, #8
005636e4  15 4b ff eb                                      bl #0x536340
005636e8  00 00 50 e3                                      cmp r0, #0
005636ec  01 60 86 e2                                      add r6, r6, #1
005636f0  f2 ff ff 0a                                      beq #0x5636c0
005636f4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005636f8  07 00 93 e7                                      ldr r0, [r3, r7]
005636fc  10 d0 8d e2                                      add sp, sp, #0x10
00563700  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00563704  00 00 58 e3                                      cmp r8, #0
00563708  08 00 a0 01                                      moveq r0, r8
0056370c  fa ff ff 0a                                      beq #0x5636fc
00563710  00 10 a0 e3                                      mov r1, #0
00563714  3c 00 a0 e3                                      mov r0, #0x3c
00563718  a3 42 ff eb                                      bl #0x5341ac
0056371c  05 10 a0 e1                                      mov r1, r5
00563720  00 60 a0 e1                                      mov r6, r0
00563724  f9 fc ff eb                                      bl #0x562b10
00563728  30 10 94 e5                                      ldr r1, [r4, #0x30]
0056372c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00563730  08 60 8d e5                                      str r6, [sp, #8]
00563734  03 00 51 e1                                      cmp r1, r3
00563738  07 00 00 0a                                      beq #0x56375c
0056373c  00 60 81 e5                                      str r6, [r1]
00563740  30 30 94 e5                                      ldr r3, [r4, #0x30]
00563744  04 30 83 e2                                      add r3, r3, #4
00563748  30 30 84 e5                                      str r3, [r4, #0x30]
0056374c  08 30 9d e5                                      ldr r3, [sp, #8]
00563750  38 40 83 e5                                      str r4, [r3, #0x38]
00563754  08 00 9d e5                                      ldr r0, [sp, #8]
00563758  e7 ff ff ea                                      b #0x5636fc
0056375c  01 c0 a0 e3                                      mov ip, #1
00563760  2c 00 84 e2                                      add r0, r4, #0x2c
00563764  08 20 8d e2                                      add r2, sp, #8
00563768  0c 30 8d e2                                      add r3, sp, #0xc
0056376c  04 c0 8d e5                                      str ip, [sp, #4]
00563770  00 c0 8d e5                                      str ip, [sp]
00563774  95 ff ff eb                                      bl #0x5635d0
00563778  f3 ff ff ea                                      b #0x56374c

; FUNCTION 0x00563a54, declared_size=220, range_size=220, mode=arm
; class-group: glitch::io::CAttributes::SContext
; alias: _ZN6glitch2io11CAttributes8SContext5clearEv
; demangled: glitch::io::CAttributes::SContext::clear()
; decoder-mode: arm
00563a54  30 40 2d e9                                      push {r4, r5, lr}
00563a58  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
00563a5c  30 10 90 e5                                      ldr r1, [r0, #0x30]
00563a60  0c d0 4d e2                                      sub sp, sp, #0xc
00563a64  00 40 a0 e1                                      mov r4, r0
00563a68  01 20 63 e0                                      rsb r2, r3, r1
00563a6c  22 21 b0 e1                                      lsrs r2, r2, #2
00563a70  08 00 00 0a                                      beq #0x563a98
00563a74  00 50 a0 e3                                      mov r5, #0
00563a78  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00563a7c  c0 e6 f6 eb                                      bl #0x31d584
00563a80  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00563a84  30 10 94 e5                                      ldr r1, [r4, #0x30]
00563a88  01 50 85 e2                                      add r5, r5, #1
00563a8c  01 20 63 e0                                      rsb r2, r3, r1
00563a90  42 01 55 e1                                      cmp r5, r2, asr #2
00563a94  f7 ff ff 3a                                      blo #0x563a78
00563a98  01 20 63 e0                                      rsb r2, r3, r1
00563a9c  00 00 a0 e3                                      mov r0, #0
00563aa0  42 21 b0 e1                                      asrs r2, r2, #2
00563aa4  04 00 8d e5                                      str r0, [sp, #4]
00563aa8  18 00 00 0a                                      beq #0x563b10
00563aac  03 00 51 e1                                      cmp r1, r3
00563ab0  30 30 84 15                                      strne r3, [r4, #0x30]
00563ab4  20 30 94 e5                                      ldr r3, [r4, #0x20]
00563ab8  24 10 94 e5                                      ldr r1, [r4, #0x24]
00563abc  01 20 63 e0                                      rsb r2, r3, r1
00563ac0  22 21 b0 e1                                      lsrs r2, r2, #2
00563ac4  00 50 a0 13                                      movne r5, #0
00563ac8  07 00 00 0a                                      beq #0x563aec
00563acc  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00563ad0  ab e6 f6 eb                                      bl #0x31d584
00563ad4  20 30 94 e5                                      ldr r3, [r4, #0x20]
00563ad8  24 10 94 e5                                      ldr r1, [r4, #0x24]
00563adc  01 50 85 e2                                      add r5, r5, #1
00563ae0  01 20 63 e0                                      rsb r2, r3, r1
00563ae4  42 01 55 e1                                      cmp r5, r2, asr #2
00563ae8  f7 ff ff 3a                                      blo #0x563acc
00563aec  01 20 63 e0                                      rsb r2, r3, r1
00563af0  00 00 a0 e3                                      mov r0, #0
00563af4  42 21 b0 e1                                      asrs r2, r2, #2
00563af8  00 00 8d e5                                      str r0, [sp]
00563afc  07 00 00 0a                                      beq #0x563b20
00563b00  03 00 51 e1                                      cmp r1, r3
00563b04  24 30 84 15                                      strne r3, [r4, #0x24]
00563b08  0c d0 8d e2                                      add sp, sp, #0xc
00563b0c  30 80 bd e8                                      pop {r4, r5, pc}
00563b10  2c 00 84 e2                                      add r0, r4, #0x2c
00563b14  04 30 8d e2                                      add r3, sp, #4
00563b18  b8 ff ff eb                                      bl #0x563a00
00563b1c  e4 ff ff ea                                      b #0x563ab4
00563b20  20 00 84 e2                                      add r0, r4, #0x20
00563b24  0d 30 a0 e1                                      mov r3, sp
00563b28  93 fe ff eb                                      bl #0x56357c
00563b2c  f5 ff ff ea                                      b #0x563b08

; FUNCTION 0x005643a8, declared_size=112, range_size=112, mode=arm
; class-group: glitch::io::CAttributes::SContext
; alias: _ZN6glitch2io11CAttributes8SContextD1Ev
; demangled: glitch::io::CAttributes::SContext::~SContext()
; decoder-mode: arm
005643a8  60 30 9f e5                                      ldr r3, [pc, #0x60]
005643ac  60 20 9f e5                                      ldr r2, [pc, #0x60]
005643b0  10 40 2d e9                                      push {r4, lr}
005643b4  03 30 8f e0                                      add r3, pc, r3
005643b8  02 20 93 e7                                      ldr r2, [r3, r2]
005643bc  00 40 a0 e1                                      mov r4, r0
005643c0  08 20 82 e2                                      add r2, r2, #8
005643c4  00 20 80 e5                                      str r2, [r0]
005643c8  a1 fd ff eb                                      bl #0x563a54
005643cc  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
005643d0  00 00 50 e3                                      cmp r0, #0
005643d4  00 00 00 0a                                      beq #0x5643dc
005643d8  1c b0 f6 eb                                      bl #0x310450
005643dc  20 00 94 e5                                      ldr r0, [r4, #0x20]
005643e0  00 00 50 e3                                      cmp r0, #0
005643e4  00 00 00 0a                                      beq #0x5643ec
005643e8  18 b0 f6 eb                                      bl #0x310450
005643ec  08 30 84 e2                                      add r3, r4, #8
005643f0  14 00 93 e5                                      ldr r0, [r3, #0x14]
005643f4  03 00 50 e1                                      cmp r0, r3
005643f8  02 00 00 0a                                      beq #0x564408
005643fc  00 00 50 e3                                      cmp r0, #0
00564400  00 00 00 0a                                      beq #0x564408
00564404  11 b0 f6 eb                                      bl #0x310450
00564408  04 00 a0 e1                                      mov r0, r4
0056440c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564410  dc 06 43 00 94 43 00 00                          .byte 0xdc, 0x06, 0x43, 0x00, 0x94, 0x43, 0x00, 0x00

; FUNCTION 0x005644dc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CAttributes::SContext
; alias: _ZN6glitch2io11CAttributes8SContextD0Ev
; demangled: glitch::io::CAttributes::SContext::~SContext()
; decoder-mode: arm
005644dc  10 40 2d e9                                      push {r4, lr}
005644e0  00 40 a0 e1                                      mov r4, r0
005644e4  af ff ff eb                                      bl #0x5643a8
005644e8  04 00 a0 e1                                      mov r0, r4
005644ec  6f a7 f6 eb                                      bl #0x30e2b0
005644f0  04 00 a0 e1                                      mov r0, r4
005644f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005644f8, declared_size=112, range_size=112, mode=arm
; class-group: glitch::io::CAttributes::SContext
; alias: _ZN6glitch2io11CAttributes8SContextD2Ev
; demangled: glitch::io::CAttributes::SContext::~SContext()
; decoder-mode: arm
005644f8  60 30 9f e5                                      ldr r3, [pc, #0x60]
005644fc  60 20 9f e5                                      ldr r2, [pc, #0x60]
00564500  10 40 2d e9                                      push {r4, lr}
00564504  03 30 8f e0                                      add r3, pc, r3
00564508  02 20 93 e7                                      ldr r2, [r3, r2]
0056450c  00 40 a0 e1                                      mov r4, r0
00564510  08 20 82 e2                                      add r2, r2, #8
00564514  00 20 80 e5                                      str r2, [r0]
00564518  4d fd ff eb                                      bl #0x563a54
0056451c  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00564520  00 00 50 e3                                      cmp r0, #0
00564524  00 00 00 0a                                      beq #0x56452c
00564528  c8 af f6 eb                                      bl #0x310450
0056452c  20 00 94 e5                                      ldr r0, [r4, #0x20]
00564530  00 00 50 e3                                      cmp r0, #0
00564534  00 00 00 0a                                      beq #0x56453c
00564538  c4 af f6 eb                                      bl #0x310450
0056453c  08 30 84 e2                                      add r3, r4, #8
00564540  14 00 93 e5                                      ldr r0, [r3, #0x14]
00564544  03 00 50 e1                                      cmp r0, r3
00564548  02 00 00 0a                                      beq #0x564558
0056454c  00 00 50 e3                                      cmp r0, #0
00564550  00 00 00 0a                                      beq #0x564558
00564554  bd af f6 eb                                      bl #0x310450
00564558  04 00 a0 e1                                      mov r0, r4
0056455c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564560  8c 05 43 00 94 43 00 00                          .byte 0x8c, 0x05, 0x43, 0x00, 0x94, 0x43, 0x00, 0x00
