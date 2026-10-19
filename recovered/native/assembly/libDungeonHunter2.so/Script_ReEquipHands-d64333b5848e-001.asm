; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455808, declared_size=8, range_size=8, mode=arm
; class-group: Script_ReEquipHands
; alias: _ZNK19Script_ReEquipHands10IsBlockingEv
; demangled: Script_ReEquipHands::IsBlocking() const
; decoder-mode: arm
00455808  00 00 a0 e3                                      mov r0, #0
0045580c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045d95c, declared_size=304, range_size=304, mode=arm
; class-group: Script_ReEquipHands
; alias: _ZN19Script_ReEquipHands7ExecuteEbi
; demangled: Script_ReEquipHands::Execute(bool, int)
; decoder-mode: arm
0045d95c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045d960  10 41 9f e5                                      ldr r4, [pc, #0x110]
0045d964  10 61 9f e5                                      ldr r6, [pc, #0x110]
0045d968  10 11 9f e5                                      ldr r1, [pc, #0x110]
0045d96c  04 40 8f e0                                      add r4, pc, r4
0045d970  06 30 94 e7                                      ldr r3, [r4, r6]
0045d974  01 80 94 e7                                      ldr r8, [r4, r1]
0045d978  38 d0 4d e2                                      sub sp, sp, #0x38
0045d97c  00 30 93 e5                                      ldr r3, [r3]
0045d980  02 90 a0 e1                                      mov sb, r2
0045d984  1c 70 8d e2                                      add r7, sp, #0x1c
0045d988  34 30 8d e5                                      str r3, [sp, #0x34]
0045d98c  0c a0 90 e5                                      ldr sl, [r0, #0xc]
0045d990  08 00 a0 e1                                      mov r0, r8
0045d994  bb 67 fb eb                                      bl #0x337888
0045d998  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
0045d99c  18 20 8d e2                                      add r2, sp, #0x18
0045d9a0  07 00 a0 e1                                      mov r0, r7
0045d9a4  01 10 8f e0                                      add r1, pc, r1
0045d9a8  cf d9 fa eb                                      bl #0x3140ec
0045d9ac  07 10 a0 e1                                      mov r1, r7
0045d9b0  08 00 a0 e1                                      mov r0, r8
0045d9b4  33 68 fb eb                                      bl #0x337a88
0045d9b8  07 00 a0 e1                                      mov r0, r7
0045d9bc  24 ea fa eb                                      bl #0x318254
0045d9c0  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
0045d9c4  0c 50 8d e2                                      add r5, sp, #0xc
0045d9c8  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0045d9cc  01 10 94 e7                                      ldr r1, [r4, r1]
0045d9d0  00 70 a0 e3                                      mov r7, #0
0045d9d4  09 30 a0 e1                                      mov r3, sb
0045d9d8  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045d9dc  05 00 a0 e1                                      mov r0, r5
0045d9e0  00 70 8d e5                                      str r7, [sp]
0045d9e4  04 70 8d e5                                      str r7, [sp, #4]
0045d9e8  ac b4 fb eb                                      bl #0x34aca0
0045d9ec  05 00 a0 e1                                      mov r0, r5
0045d9f0  07 10 a0 e1                                      mov r1, r7
0045d9f4  f1 88 fb eb                                      bl #0x33fdc0
0045d9f8  07 00 50 e1                                      cmp r0, r7
0045d9fc  06 00 00 1a                                      bne #0x45da1c
0045da00  06 30 94 e7                                      ldr r3, [r4, r6]
0045da04  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045da08  00 30 93 e5                                      ldr r3, [r3]
0045da0c  03 00 52 e1                                      cmp r2, r3
0045da10  17 00 00 1a                                      bne #0x45da74
0045da14  38 d0 8d e2                                      add sp, sp, #0x38
0045da18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045da1c  05 00 a0 e1                                      mov r0, r5
0045da20  4b 89 fb eb                                      bl #0x33ff54
0045da24  00 50 50 e2                                      subs r5, r0, #0
0045da28  f4 ff ff 0a                                      beq #0x45da00
0045da2c  f4 34 01 e3                                      movw r3, #0x14f4
0045da30  03 20 95 e7                                      ldr r2, [r5, r3]
0045da34  01 00 72 e3                                      cmn r2, #1
0045da38  03 00 00 0a                                      beq #0x45da4c
0045da3c  00 30 95 e5                                      ldr r3, [r5]
0045da40  01 10 a0 e3                                      mov r1, #1
0045da44  0f e0 a0 e1                                      mov lr, pc
0045da48  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
0045da4c  f8 34 01 e3                                      movw r3, #0x14f8
0045da50  03 20 95 e7                                      ldr r2, [r5, r3]
0045da54  01 00 72 e3                                      cmn r2, #1
0045da58  e8 ff ff 0a                                      beq #0x45da00
0045da5c  05 00 a0 e1                                      mov r0, r5
0045da60  00 30 95 e5                                      ldr r3, [r5]
0045da64  02 10 a0 e3                                      mov r1, #2
0045da68  0f e0 a0 e1                                      mov lr, pc
0045da6c  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
0045da70  e2 ff ff ea                                      b #0x45da00
0045da74  25 c2 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045da78  24 71 53 00 ac 40 00 00 84 08 00 00 dc f6 46 00  .byte 0x24, 0x71, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xdc, 0xf6, 0x46, 0x00
0045da88  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
