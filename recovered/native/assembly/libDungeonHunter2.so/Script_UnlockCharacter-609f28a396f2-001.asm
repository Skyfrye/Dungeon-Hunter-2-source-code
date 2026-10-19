; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0045574c, declared_size=8, range_size=8, mode=arm
; class-group: Script_UnlockCharacter
; alias: _ZNK22Script_UnlockCharacter10IsBlockingEv
; demangled: Script_UnlockCharacter::IsBlocking() const
; decoder-mode: arm
0045574c  00 00 a0 e3                                      mov r0, #0
00455750  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045dc80, declared_size=288, range_size=288, mode=arm
; class-group: Script_UnlockCharacter
; alias: _ZN22Script_UnlockCharacter7ExecuteEbi
; demangled: Script_UnlockCharacter::Execute(bool, int)
; decoder-mode: arm
0045dc80  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0045dc84  f8 40 9f e5                                      ldr r4, [pc, #0xf8]
0045dc88  f8 50 9f e5                                      ldr r5, [pc, #0xf8]
0045dc8c  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
0045dc90  04 40 8f e0                                      add r4, pc, r4
0045dc94  05 30 94 e7                                      ldr r3, [r4, r5]
0045dc98  01 70 94 e7                                      ldr r7, [r4, r1]
0045dc9c  3c d0 4d e2                                      sub sp, sp, #0x3c
0045dca0  00 30 93 e5                                      ldr r3, [r3]
0045dca4  02 80 a0 e1                                      mov r8, r2
0045dca8  1c 60 8d e2                                      add r6, sp, #0x1c
0045dcac  34 30 8d e5                                      str r3, [sp, #0x34]
0045dcb0  0c a0 90 e5                                      ldr sl, [r0, #0xc]
0045dcb4  07 00 a0 e1                                      mov r0, r7
0045dcb8  f2 66 fb eb                                      bl #0x337888
0045dcbc  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0045dcc0  18 20 8d e2                                      add r2, sp, #0x18
0045dcc4  06 00 a0 e1                                      mov r0, r6
0045dcc8  01 10 8f e0                                      add r1, pc, r1
0045dccc  06 d9 fa eb                                      bl #0x3140ec
0045dcd0  06 10 a0 e1                                      mov r1, r6
0045dcd4  07 00 a0 e1                                      mov r0, r7
0045dcd8  6a 67 fb eb                                      bl #0x337a88
0045dcdc  06 00 a0 e1                                      mov r0, r6
0045dce0  5b e9 fa eb                                      bl #0x318254
0045dce4  0c 60 9a e5                                      ldr r6, [sl, #0xc]
0045dce8  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
0045dcec  06 00 a0 e1                                      mov r0, r6
0045dcf0  01 10 8f e0                                      add r1, pc, r1
0045dcf4  88 c1 fa eb                                      bl #0x30e31c
0045dcf8  00 00 50 e3                                      cmp r0, #0
0045dcfc  09 00 00 1a                                      bne #0x45dd28
0045dd00  90 30 9f e5                                      ldr r3, [pc, #0x90]
0045dd04  03 30 94 e7                                      ldr r3, [r4, r3]
0045dd08  00 00 c3 e5                                      strb r0, [r3]
0045dd0c  05 30 94 e7                                      ldr r3, [r4, r5]
0045dd10  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045dd14  00 30 93 e5                                      ldr r3, [r3]
0045dd18  03 00 52 e1                                      cmp r2, r3
0045dd1c  17 00 00 1a                                      bne #0x45dd80
0045dd20  3c d0 8d e2                                      add sp, sp, #0x3c
0045dd24  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0045dd28  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0045dd2c  0c 70 8d e2                                      add r7, sp, #0xc
0045dd30  06 20 a0 e1                                      mov r2, r6
0045dd34  03 10 94 e7                                      ldr r1, [r4, r3]
0045dd38  00 60 a0 e3                                      mov r6, #0
0045dd3c  08 30 a0 e1                                      mov r3, r8
0045dd40  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045dd44  07 00 a0 e1                                      mov r0, r7
0045dd48  00 60 8d e5                                      str r6, [sp]
0045dd4c  04 60 8d e5                                      str r6, [sp, #4]
0045dd50  d2 b3 fb eb                                      bl #0x34aca0
0045dd54  07 00 a0 e1                                      mov r0, r7
0045dd58  06 10 a0 e1                                      mov r1, r6
0045dd5c  17 88 fb eb                                      bl #0x33fdc0
0045dd60  06 00 50 e1                                      cmp r0, r6
0045dd64  e8 ff ff 0a                                      beq #0x45dd0c
0045dd68  07 00 a0 e1                                      mov r0, r7
0045dd6c  78 88 fb eb                                      bl #0x33ff54
0045dd70  00 00 50 e3                                      cmp r0, #0
0045dd74  78 33 90 15                                      ldrne r3, [r0, #0x378]
0045dd78  08 60 c3 15                                      strbne r6, [r3, #8]
0045dd7c  e2 ff ff ea                                      b #0x45dd0c
0045dd80  62 c1 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045dd84  00 6e 53 00 ac 40 00 00 84 08 00 00 b8 f3 46 00  .byte 0x00, 0x6e, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xb8, 0xf3, 0x46, 0x00
0045dd94  58 b2 46 00 50 36 00 00 f4 37 00 00              .byte 0x58, 0xb2, 0x46, 0x00, 0x50, 0x36, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
