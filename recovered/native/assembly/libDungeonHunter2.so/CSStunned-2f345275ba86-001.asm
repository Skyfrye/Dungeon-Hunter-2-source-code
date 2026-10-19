; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c002c, declared_size=4, range_size=4, mode=arm
; class-group: CSStunned
; alias: _ZN9CSStunnedD1Ev
; demangled: CSStunned::~CSStunned()
; decoder-mode: arm
003c002c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0030, declared_size=4, range_size=4, mode=arm
; class-group: CSStunned
; alias: _ZN9CSStunned7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSStunned::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c0030  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c08c0, declared_size=52, range_size=52, mode=arm
; class-group: CSStunned
; alias: _ZN9CSStunnedD0Ev
; demangled: CSStunned::~CSStunned()
; decoder-mode: arm
003c08c0  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c08c4  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c08c8  10 40 2d e9                                      push {r4, lr}
003c08cc  03 30 8f e0                                      add r3, pc, r3
003c08d0  02 20 93 e7                                      ldr r2, [r3, r2]
003c08d4  00 40 a0 e1                                      mov r4, r0
003c08d8  08 20 82 e2                                      add r2, r2, #8
003c08dc  00 20 80 e5                                      str r2, [r0]
003c08e0  d6 3e fd eb                                      bl #0x310440
003c08e4  04 00 a0 e1                                      mov r0, r4
003c08e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c08ec  c4 41 5d 00 08 2a 00 00                          .byte 0xc4, 0x41, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c3b4c, declared_size=172, range_size=172, mode=arm
; class-group: CSStunned
; alias: _ZN9CSStunned6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSStunned::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c3b4c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c3b50  90 40 9f e5                                      ldr r4, [pc, #0x90]
003c3b54  90 60 9f e5                                      ldr r6, [pc, #0x90]
003c3b58  90 10 9f e5                                      ldr r1, [pc, #0x90]
003c3b5c  04 40 8f e0                                      add r4, pc, r4
003c3b60  06 30 94 e7                                      ldr r3, [r4, r6]
003c3b64  01 80 94 e7                                      ldr r8, [r4, r1]
003c3b68  20 d0 4d e2                                      sub sp, sp, #0x20
003c3b6c  00 30 93 e5                                      ldr r3, [r3]
003c3b70  08 00 a0 e1                                      mov r0, r8
003c3b74  02 70 a0 e1                                      mov r7, r2
003c3b78  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c3b7c  41 cf fd eb                                      bl #0x337888
003c3b80  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003c3b84  04 50 8d e2                                      add r5, sp, #4
003c3b88  0d 20 a0 e1                                      mov r2, sp
003c3b8c  01 10 8f e0                                      add r1, pc, r1
003c3b90  05 00 a0 e1                                      mov r0, r5
003c3b94  54 41 fd eb                                      bl #0x3140ec
003c3b98  05 10 a0 e1                                      mov r1, r5
003c3b9c  08 00 a0 e1                                      mov r0, r8
003c3ba0  b8 cf fd eb                                      bl #0x337a88
003c3ba4  05 00 a0 e1                                      mov r0, r5
003c3ba8  a9 51 fd eb                                      bl #0x318254
003c3bac  78 33 97 e5                                      ldr r3, [r7, #0x378]
003c3bb0  00 20 a0 e3                                      mov r2, #0
003c3bb4  08 20 c3 e5                                      strb r2, [r3, #8]
003c3bb8  dc 02 97 e5                                      ldr r0, [r7, #0x2dc]
003c3bbc  02 00 50 e1                                      cmp r0, r2
003c3bc0  00 00 00 0a                                      beq #0x3c3bc8
003c3bc4  d5 ab 02 eb                                      bl #0x46eb20
003c3bc8  06 30 94 e7                                      ldr r3, [r4, r6]
003c3bcc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c3bd0  00 30 93 e5                                      ldr r3, [r3]
003c3bd4  03 00 52 e1                                      cmp r2, r3
003c3bd8  01 00 00 1a                                      bne #0x3c3be4
003c3bdc  20 d0 8d e2                                      add sp, sp, #0x20
003c3be0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c3be4  c9 29 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c3be8  34 0f 5d 00 ac 40 00 00 84 08 00 00 c4 12 50 00  .byte 0x34, 0x0f, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc4, 0x12, 0x50, 0x00

; FUNCTION 0x003c3cc0, declared_size=384, range_size=384, mode=arm
; class-group: CSStunned
; alias: _ZN9CSStunned7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSStunned::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c3cc0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c3cc4  50 41 9f e5                                      ldr r4, [pc, #0x150]
003c3cc8  50 81 9f e5                                      ldr r8, [pc, #0x150]
003c3ccc  50 11 9f e5                                      ldr r1, [pc, #0x150]
003c3cd0  04 40 8f e0                                      add r4, pc, r4
003c3cd4  08 30 94 e7                                      ldr r3, [r4, r8]
003c3cd8  01 60 94 e7                                      ldr r6, [r4, r1]
003c3cdc  40 d0 4d e2                                      sub sp, sp, #0x40
003c3ce0  00 30 93 e5                                      ldr r3, [r3]
003c3ce4  06 00 a0 e1                                      mov r0, r6
003c3ce8  02 50 a0 e1                                      mov r5, r2
003c3cec  3c 30 8d e5                                      str r3, [sp, #0x3c]
003c3cf0  e4 ce fd eb                                      bl #0x337888
003c3cf4  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
003c3cf8  24 70 8d e2                                      add r7, sp, #0x24
003c3cfc  08 20 8d e2                                      add r2, sp, #8
003c3d00  07 00 a0 e1                                      mov r0, r7
003c3d04  01 10 8f e0                                      add r1, pc, r1
003c3d08  f7 40 fd eb                                      bl #0x3140ec
003c3d0c  07 10 a0 e1                                      mov r1, r7
003c3d10  06 00 a0 e1                                      mov r0, r6
003c3d14  5b cf fd eb                                      bl #0x337a88
003c3d18  07 00 a0 e1                                      mov r0, r7
003c3d1c  4c 51 fd eb                                      bl #0x318254
003c3d20  06 00 a0 e1                                      mov r0, r6
003c3d24  d7 ce fd eb                                      bl #0x337888
003c3d28  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
003c3d2c  0c 70 8d e2                                      add r7, sp, #0xc
003c3d30  04 20 8d e2                                      add r2, sp, #4
003c3d34  01 10 8f e0                                      add r1, pc, r1
003c3d38  07 00 a0 e1                                      mov r0, r7
003c3d3c  ea 40 fd eb                                      bl #0x3140ec
003c3d40  07 10 a0 e1                                      mov r1, r7
003c3d44  06 00 a0 e1                                      mov r0, r6
003c3d48  4e cf fd eb                                      bl #0x337a88
003c3d4c  07 00 a0 e1                                      mov r0, r7
003c3d50  3f 51 fd eb                                      bl #0x318254
003c3d54  02 32 02 e3                                      movw r3, #0x2202
003c3d58  20 35 85 e5                                      str r3, [r5, #0x520]
003c3d5c  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
003c3d60  05 00 a0 e1                                      mov r0, r5
003c3d64  49 6e 85 e2                                      add r6, r5, #0x490
003c3d68  03 30 94 e7                                      ldr r3, [r4, r3]
003c3d6c  0c 60 86 e2                                      add r6, r6, #0xc
003c3d70  00 70 93 e5                                      ldr r7, [r3]
003c3d74  2b 7d ff eb                                      bl #0x3a3228
003c3d78  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
003c3d7c  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
003c3d80  03 20 94 e7                                      ldr r2, [r4, r3]
003c3d84  a0 30 a0 e3                                      mov r3, #0xa0
003c3d88  93 70 23 e0                                      mla r3, r3, r0, r7
003c3d8c  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c3d90  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
003c3d94  01 10 8f e0                                      add r1, pc, r1
003c3d98  8c 70 93 e5                                      ldr r7, [r3, #0x8c]
003c3d9c  02 20 8f e0                                      add r2, pc, r2
003c3da0  8d 03 04 eb                                      bl #0x4c4bdc
003c3da4  02 0c 10 e2                                      ands r0, r0, #0x200
003c3da8  17 00 00 1a                                      bne #0x3c3e0c
003c3dac  07 10 80 e0                                      add r1, r0, r7
003c3db0  06 00 a0 e1                                      mov r0, r6
003c3db4  bd 1b 00 eb                                      bl #0x3cacb0
003c3db8  00 30 95 e5                                      ldr r3, [r5]
003c3dbc  05 00 a0 e1                                      mov r0, r5
003c3dc0  0f e0 a0 e1                                      mov lr, pc
003c3dc4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c3dc8  00 00 50 e3                                      cmp r0, #0
003c3dcc  78 33 95 15                                      ldrne r3, [r5, #0x378]
003c3dd0  01 20 a0 13                                      movne r2, #1
003c3dd4  05 00 a0 e1                                      mov r0, r5
003c3dd8  08 20 c3 15                                      strbne r2, [r3, #8]
003c3ddc  35 e2 ff eb                                      bl #0x3bc6b8
003c3de0  dc 02 95 e5                                      ldr r0, [r5, #0x2dc]
003c3de4  00 00 50 e3                                      cmp r0, #0
003c3de8  00 00 00 0a                                      beq #0x3c3df0
003c3dec  3b ab 02 eb                                      bl #0x46eae0
003c3df0  08 30 94 e7                                      ldr r3, [r4, r8]
003c3df4  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003c3df8  00 30 93 e5                                      ldr r3, [r3]
003c3dfc  03 00 52 e1                                      cmp r2, r3
003c3e00  04 00 00 1a                                      bne #0x3c3e18
003c3e04  40 d0 8d e2                                      add sp, sp, #0x40
003c3e08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c3e0c  05 00 a0 e1                                      mov r0, r5
003c3e10  72 85 ff eb                                      bl #0x3a53e0
003c3e14  e4 ff ff ea                                      b #0x3c3dac
003c3e18  3c 29 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c3e1c  c0 0d 5d 00 ac 40 00 00 84 08 00 00 4c 11 50 00  .byte 0xc0, 0x0d, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x4c, 0x11, 0x50, 0x00
003c3e2c  7c 11 50 00 44 48 00 00 f4 37 00 00 24 0e 50 00  .byte 0x7c, 0x11, 0x50, 0x00, 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x24, 0x0e, 0x50, 0x00
003c3e3c  2c 0e 50 00                                      .byte 0x2c, 0x0e, 0x50, 0x00

; FUNCTION 0x003c549c, declared_size=172, range_size=172, mode=arm
; class-group: CSStunned
; alias: _ZN9CSStunned8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSStunned::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c549c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c54a0  90 40 9f e5                                      ldr r4, [pc, #0x90]
003c54a4  90 50 9f e5                                      ldr r5, [pc, #0x90]
003c54a8  28 85 92 e5                                      ldr r8, [r2, #0x528]
003c54ac  04 40 8f e0                                      add r4, pc, r4
003c54b0  05 30 94 e7                                      ldr r3, [r4, r5]
003c54b4  24 d0 4d e2                                      sub sp, sp, #0x24
003c54b8  02 80 18 e2                                      ands r8, r8, #2
003c54bc  00 30 93 e5                                      ldr r3, [r3]
003c54c0  02 60 a0 e1                                      mov r6, r2
003c54c4  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c54c8  12 00 00 1a                                      bne #0x3c5518
003c54cc  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003c54d0  04 70 8d e2                                      add r7, sp, #4
003c54d4  03 a0 94 e7                                      ldr sl, [r4, r3]
003c54d8  0a 00 a0 e1                                      mov r0, sl
003c54dc  e9 c8 fd eb                                      bl #0x337888
003c54e0  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
003c54e4  0d 20 a0 e1                                      mov r2, sp
003c54e8  07 00 a0 e1                                      mov r0, r7
003c54ec  01 10 8f e0                                      add r1, pc, r1
003c54f0  fd 3a fd eb                                      bl #0x3140ec
003c54f4  07 10 a0 e1                                      mov r1, r7
003c54f8  0a 00 a0 e1                                      mov r0, sl
003c54fc  61 c9 fd eb                                      bl #0x337a88
003c5500  07 00 a0 e1                                      mov r0, r7
003c5504  52 4b fd eb                                      bl #0x318254
003c5508  4f 0e 86 e2                                      add r0, r6, #0x4f0
003c550c  0c 00 80 e2                                      add r0, r0, #0xc
003c5510  08 10 a0 e1                                      mov r1, r8
003c5514  39 f1 ff eb                                      bl #0x3c1a00
003c5518  05 30 94 e7                                      ldr r3, [r4, r5]
003c551c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c5520  00 30 93 e5                                      ldr r3, [r3]
003c5524  03 00 52 e1                                      cmp r2, r3
003c5528  01 00 00 1a                                      bne #0x3c5534
003c552c  24 d0 8d e2                                      add sp, sp, #0x24
003c5530  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003c5534  75 23 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c5538  e4 f5 5c 00 ac 40 00 00 84 08 00 00 c4 f9 4f 00  .byte 0xe4, 0xf5, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc4, 0xf9, 0x4f, 0x00

; FUNCTION 0x003c8730, declared_size=168, range_size=168, mode=arm
; class-group: CSStunned
; alias: _ZN9CSStunned6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSStunned::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c8730  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c8734  4f 6e 82 e2                                      add r6, r2, #0x4f0
003c8738  0c 60 86 e2                                      add r6, r6, #0xc
003c873c  24 d0 4d e2                                      sub sp, sp, #0x24
003c8740  00 40 a0 e3                                      mov r4, #0
003c8744  06 00 a0 e1                                      mov r0, r6
003c8748  58 23 0c e3                                      movw r2, #0xc358
003c874c  0c 30 a0 e3                                      mov r3, #0xc
003c8750  74 50 9f e5                                      ldr r5, [pc, #0x74]
003c8754  01 70 a0 e1                                      mov r7, r1
003c8758  18 40 8d e5                                      str r4, [sp, #0x18]
003c875c  1c 40 8d e5                                      str r4, [sp, #0x1c]
003c8760  00 40 8d e5                                      str r4, [sp]
003c8764  04 40 8d e5                                      str r4, [sp, #4]
003c8768  ea fc ff eb                                      bl #0x3c7b18
003c876c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
003c8770  05 50 8f e0                                      add r5, pc, r5
003c8774  06 00 a0 e1                                      mov r0, r6
003c8778  03 c0 95 e7                                      ldr ip, [r5, r3]
003c877c  07 10 a0 e1                                      mov r1, r7
003c8780  5a 23 0c e3                                      movw r2, #0xc35a
003c8784  0b 30 a0 e3                                      mov r3, #0xb
003c8788  00 c0 8d e5                                      str ip, [sp]
003c878c  10 c0 8d e5                                      str ip, [sp, #0x10]
003c8790  14 40 8d e5                                      str r4, [sp, #0x14]
003c8794  04 40 8d e5                                      str r4, [sp, #4]
003c8798  de fc ff eb                                      bl #0x3c7b18
003c879c  30 30 9f e5                                      ldr r3, [pc, #0x30]
003c87a0  06 00 a0 e1                                      mov r0, r6
003c87a4  07 10 a0 e1                                      mov r1, r7
003c87a8  03 c0 95 e7                                      ldr ip, [r5, r3]
003c87ac  5b 23 0c e3                                      movw r2, #0xc35b
003c87b0  0a 30 a0 e3                                      mov r3, #0xa
003c87b4  00 c0 8d e5                                      str ip, [sp]
003c87b8  10 10 8d e9                                      stmib sp, {r4, ip}
003c87bc  0c 40 8d e5                                      str r4, [sp, #0xc]
003c87c0  d4 fc ff eb                                      bl #0x3c7b18
003c87c4  24 d0 8d e2                                      add sp, sp, #0x24
003c87c8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003c87cc  20 c3 5c 00 84 2e 00 00 cc 34 00 00              .byte 0x20, 0xc3, 0x5c, 0x00, 0x84, 0x2e, 0x00, 0x00, 0xcc, 0x34, 0x00, 0x00
