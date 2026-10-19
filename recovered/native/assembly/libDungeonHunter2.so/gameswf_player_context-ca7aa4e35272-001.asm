; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076ce38, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::player_context
; alias: _ZN7gameswf14player_contextC1Ev
; demangled: gameswf::player_context::player_context()
; decoder-mode: arm
0076ce38  70 40 2d e9                                      push {r4, r5, r6, lr}
0076ce3c  44 50 9f e5                                      ldr r5, [pc, #0x44]
0076ce40  00 40 a0 e1                                      mov r4, r0
0076ce44  6e b3 ff eb                                      bl #0x759c04
0076ce48  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0076ce4c  05 50 8f e0                                      add r5, pc, r5
0076ce50  00 30 a0 e3                                      mov r3, #0
0076ce54  02 20 95 e7                                      ldr r2, [r5, r2]
0076ce58  28 30 84 e5                                      str r3, [r4, #0x28]
0076ce5c  0c 30 84 e5                                      str r3, [r4, #0xc]
0076ce60  08 20 82 e2                                      add r2, r2, #8
0076ce64  00 20 84 e5                                      str r2, [r4]
0076ce68  10 30 84 e5                                      str r3, [r4, #0x10]
0076ce6c  14 30 84 e5                                      str r3, [r4, #0x14]
0076ce70  18 30 84 e5                                      str r3, [r4, #0x18]
0076ce74  1c 30 84 e5                                      str r3, [r4, #0x1c]
0076ce78  20 30 c4 e5                                      strb r3, [r4, #0x20]
0076ce7c  24 30 84 e5                                      str r3, [r4, #0x24]
0076ce80  04 00 a0 e1                                      mov r0, r4
0076ce84  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0076ce88  44 7c 22 00 60 4c 00 00                          .byte 0x44, 0x7c, 0x22, 0x00, 0x60, 0x4c, 0x00, 0x00

; FUNCTION 0x0076ce90, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::player_context
; alias: _ZN7gameswf14player_contextC2Ev
; demangled: gameswf::player_context::player_context()
; decoder-mode: arm
0076ce90  70 40 2d e9                                      push {r4, r5, r6, lr}
0076ce94  44 50 9f e5                                      ldr r5, [pc, #0x44]
0076ce98  00 40 a0 e1                                      mov r4, r0
0076ce9c  58 b3 ff eb                                      bl #0x759c04
0076cea0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0076cea4  05 50 8f e0                                      add r5, pc, r5
0076cea8  00 30 a0 e3                                      mov r3, #0
0076ceac  02 20 95 e7                                      ldr r2, [r5, r2]
0076ceb0  28 30 84 e5                                      str r3, [r4, #0x28]
0076ceb4  0c 30 84 e5                                      str r3, [r4, #0xc]
0076ceb8  08 20 82 e2                                      add r2, r2, #8
0076cebc  00 20 84 e5                                      str r2, [r4]
0076cec0  10 30 84 e5                                      str r3, [r4, #0x10]
0076cec4  14 30 84 e5                                      str r3, [r4, #0x14]
0076cec8  18 30 84 e5                                      str r3, [r4, #0x18]
0076cecc  1c 30 84 e5                                      str r3, [r4, #0x1c]
0076ced0  20 30 c4 e5                                      strb r3, [r4, #0x20]
0076ced4  24 30 84 e5                                      str r3, [r4, #0x24]
0076ced8  04 00 a0 e1                                      mov r0, r4
0076cedc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0076cee0  ec 7b 22 00 60 4c 00 00                          .byte 0xec, 0x7b, 0x22, 0x00, 0x60, 0x4c, 0x00, 0x00

; FUNCTION 0x0076cee8, declared_size=172, range_size=172, mode=arm
; class-group: gameswf::player_context
; alias: _ZN7gameswf14player_contextD2Ev
; demangled: gameswf::player_context::~player_context()
; decoder-mode: arm
0076cee8  70 40 2d e9                                      push {r4, r5, r6, lr}
0076ceec  98 30 9f e5                                      ldr r3, [pc, #0x98]
0076cef0  98 20 9f e5                                      ldr r2, [pc, #0x98]
0076cef4  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0076cef8  03 30 8f e0                                      add r3, pc, r3
0076cefc  02 20 93 e7                                      ldr r2, [r3, r2]
0076cf00  00 00 55 e3                                      cmp r5, #0
0076cf04  00 40 a0 e1                                      mov r4, r0
0076cf08  08 20 82 e2                                      add r2, r2, #8
0076cf0c  00 20 80 e5                                      str r2, [r0]
0076cf10  04 00 00 0a                                      beq #0x76cf28
0076cf14  05 00 a0 e1                                      mov r0, r5
0076cf18  08 93 01 eb                                      bl #0x7d1b40
0076cf1c  05 00 a0 e1                                      mov r0, r5
0076cf20  00 10 a0 e3                                      mov r1, #0
0076cf24  03 97 ff eb                                      bl #0x752b38
0076cf28  10 00 94 e5                                      ldr r0, [r4, #0x10]
0076cf2c  00 00 50 e3                                      cmp r0, #0
0076cf30  00 00 00 0a                                      beq #0x76cf38
0076cf34  9c fe ff eb                                      bl #0x76c9ac
0076cf38  18 30 94 e5                                      ldr r3, [r4, #0x18]
0076cf3c  14 00 84 e2                                      add r0, r4, #0x14
0076cf40  00 00 53 e3                                      cmp r3, #0
0076cf44  07 00 00 da                                      ble #0x76cf68
0076cf48  00 30 a0 e3                                      mov r3, #0
0076cf4c  03 10 a0 e1                                      mov r1, r3
0076cf50  18 30 84 e5                                      str r3, [r4, #0x18]
0076cf54  ab fe ff eb                                      bl #0x76ca08
0076cf58  04 00 a0 e1                                      mov r0, r4
0076cf5c  50 c3 ff eb                                      bl #0x75dca4
0076cf60  04 00 a0 e1                                      mov r0, r4
0076cf64  70 80 bd e8                                      pop {r4, r5, r6, pc}
0076cf68  f6 ff ff aa                                      bge #0x76cf48
0076cf6c  03 21 a0 e1                                      lsl r2, r3, #2
0076cf70  00 c0 a0 e3                                      mov ip, #0
0076cf74  14 10 94 e5                                      ldr r1, [r4, #0x14]
0076cf78  01 30 93 e2                                      adds r3, r3, #1
0076cf7c  02 c0 81 e7                                      str ip, [r1, r2]
0076cf80  04 20 82 e2                                      add r2, r2, #4
0076cf84  fa ff ff 1a                                      bne #0x76cf74
0076cf88  ee ff ff ea                                      b #0x76cf48
; mapping-symbol data/literal pool
0076cf8c  98 7b 22 00 60 4c 00 00                          .byte 0x98, 0x7b, 0x22, 0x00, 0x60, 0x4c, 0x00, 0x00

; FUNCTION 0x0076d4cc, declared_size=172, range_size=172, mode=arm
; class-group: gameswf::player_context
; alias: _ZN7gameswf14player_contextD1Ev
; demangled: gameswf::player_context::~player_context()
; decoder-mode: arm
0076d4cc  70 40 2d e9                                      push {r4, r5, r6, lr}
0076d4d0  98 30 9f e5                                      ldr r3, [pc, #0x98]
0076d4d4  98 20 9f e5                                      ldr r2, [pc, #0x98]
0076d4d8  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0076d4dc  03 30 8f e0                                      add r3, pc, r3
0076d4e0  02 20 93 e7                                      ldr r2, [r3, r2]
0076d4e4  00 00 55 e3                                      cmp r5, #0
0076d4e8  00 40 a0 e1                                      mov r4, r0
0076d4ec  08 20 82 e2                                      add r2, r2, #8
0076d4f0  00 20 80 e5                                      str r2, [r0]
0076d4f4  04 00 00 0a                                      beq #0x76d50c
0076d4f8  05 00 a0 e1                                      mov r0, r5
0076d4fc  8f 91 01 eb                                      bl #0x7d1b40
0076d500  05 00 a0 e1                                      mov r0, r5
0076d504  00 10 a0 e3                                      mov r1, #0
0076d508  8a 95 ff eb                                      bl #0x752b38
0076d50c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0076d510  00 00 50 e3                                      cmp r0, #0
0076d514  00 00 00 0a                                      beq #0x76d51c
0076d518  23 fd ff eb                                      bl #0x76c9ac
0076d51c  18 30 94 e5                                      ldr r3, [r4, #0x18]
0076d520  14 00 84 e2                                      add r0, r4, #0x14
0076d524  00 00 53 e3                                      cmp r3, #0
0076d528  07 00 00 da                                      ble #0x76d54c
0076d52c  00 30 a0 e3                                      mov r3, #0
0076d530  03 10 a0 e1                                      mov r1, r3
0076d534  18 30 84 e5                                      str r3, [r4, #0x18]
0076d538  32 fd ff eb                                      bl #0x76ca08
0076d53c  04 00 a0 e1                                      mov r0, r4
0076d540  d7 c1 ff eb                                      bl #0x75dca4
0076d544  04 00 a0 e1                                      mov r0, r4
0076d548  70 80 bd e8                                      pop {r4, r5, r6, pc}
0076d54c  f6 ff ff aa                                      bge #0x76d52c
0076d550  03 21 a0 e1                                      lsl r2, r3, #2
0076d554  00 c0 a0 e3                                      mov ip, #0
0076d558  14 10 94 e5                                      ldr r1, [r4, #0x14]
0076d55c  01 30 93 e2                                      adds r3, r3, #1
0076d560  02 c0 81 e7                                      str ip, [r1, r2]
0076d564  04 20 82 e2                                      add r2, r2, #4
0076d568  fa ff ff 1a                                      bne #0x76d558
0076d56c  ee ff ff ea                                      b #0x76d52c
; mapping-symbol data/literal pool
0076d570  b4 75 22 00 60 4c 00 00                          .byte 0xb4, 0x75, 0x22, 0x00, 0x60, 0x4c, 0x00, 0x00

; FUNCTION 0x0076d578, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::player_context
; alias: _ZN7gameswf14player_contextD0Ev
; demangled: gameswf::player_context::~player_context()
; decoder-mode: arm
0076d578  10 40 2d e9                                      push {r4, lr}
0076d57c  00 40 a0 e1                                      mov r4, r0
0076d580  d1 ff ff eb                                      bl #0x76d4cc
0076d584  04 00 a0 e1                                      mov r0, r4
0076d588  48 83 ee eb                                      bl #0x30e2b0
0076d58c  04 00 a0 e1                                      mov r0, r4
0076d590  10 80 bd e8                                      pop {r4, pc}
