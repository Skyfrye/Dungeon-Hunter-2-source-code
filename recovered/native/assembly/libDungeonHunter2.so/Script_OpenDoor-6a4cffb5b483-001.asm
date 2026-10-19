; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455848, declared_size=60, range_size=60, mode=arm
; class-group: Script_OpenDoor
; alias: _ZNK15Script_OpenDoor10IsBlockingEv
; demangled: Script_OpenDoor::IsBlocking() const
; decoder-mode: arm
00455848  10 30 90 e5                                      ldr r3, [r0, #0x10]
0045584c  00 00 53 e3                                      cmp r3, #0
00455850  09 00 00 0a                                      beq #0x45587c
00455854  14 20 d0 e5                                      ldrb r2, [r0, #0x14]
00455858  00 00 52 e3                                      cmp r2, #0
0045585c  06 00 00 0a                                      beq #0x45587c
00455860  a8 03 93 e5                                      ldr r0, [r3, #0x3a8]
00455864  01 00 50 e3                                      cmp r0, #1
00455868  03 00 50 13                                      cmpne r0, #3
0045586c  00 00 a0 13                                      movne r0, #0
00455870  01 00 a0 03                                      moveq r0, #1
00455874  01 00 20 e2                                      eor r0, r0, #1
00455878  1e ff 2f e1                                      bx lr
0045587c  00 00 a0 e3                                      mov r0, #0
00455880  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045d75c, declared_size=268, range_size=268, mode=arm
; class-group: Script_OpenDoor
; alias: _ZN15Script_OpenDoor7ExecuteEbi
; demangled: Script_OpenDoor::Execute(bool, int)
; decoder-mode: arm
0045d75c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045d760  ec 40 9f e5                                      ldr r4, [pc, #0xec]
0045d764  ec 50 9f e5                                      ldr r5, [pc, #0xec]
0045d768  ec c0 9f e5                                      ldr ip, [pc, #0xec]
0045d76c  04 40 8f e0                                      add r4, pc, r4
0045d770  05 30 94 e7                                      ldr r3, [r4, r5]
0045d774  0c a0 94 e7                                      ldr sl, [r4, ip]
0045d778  3c d0 4d e2                                      sub sp, sp, #0x3c
0045d77c  00 30 93 e5                                      ldr r3, [r3]
0045d780  00 80 a0 e1                                      mov r8, r0
0045d784  0a 00 a0 e1                                      mov r0, sl
0045d788  34 30 8d e5                                      str r3, [sp, #0x34]
0045d78c  02 90 a0 e1                                      mov sb, r2
0045d790  01 b0 a0 e1                                      mov fp, r1
0045d794  0c 70 98 e5                                      ldr r7, [r8, #0xc]
0045d798  3a 68 fb eb                                      bl #0x337888
0045d79c  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0045d7a0  1c 60 8d e2                                      add r6, sp, #0x1c
0045d7a4  18 20 8d e2                                      add r2, sp, #0x18
0045d7a8  01 10 8f e0                                      add r1, pc, r1
0045d7ac  06 00 a0 e1                                      mov r0, r6
0045d7b0  4d da fa eb                                      bl #0x3140ec
0045d7b4  06 10 a0 e1                                      mov r1, r6
0045d7b8  0a 00 a0 e1                                      mov r0, sl
0045d7bc  b1 68 fb eb                                      bl #0x337a88
0045d7c0  06 00 a0 e1                                      mov r0, r6
0045d7c4  a2 ea fa eb                                      bl #0x318254
0045d7c8  94 30 9f e5                                      ldr r3, [pc, #0x94]
0045d7cc  0c a0 8d e2                                      add sl, sp, #0xc
0045d7d0  0c 20 97 e5                                      ldr r2, [r7, #0xc]
0045d7d4  03 10 94 e7                                      ldr r1, [r4, r3]
0045d7d8  00 60 a0 e3                                      mov r6, #0
0045d7dc  09 30 a0 e1                                      mov r3, sb
0045d7e0  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045d7e4  0a 00 a0 e1                                      mov r0, sl
0045d7e8  00 60 8d e5                                      str r6, [sp]
0045d7ec  04 60 8d e5                                      str r6, [sp, #4]
0045d7f0  2a b5 fb eb                                      bl #0x34aca0
0045d7f4  0a 00 a0 e1                                      mov r0, sl
0045d7f8  06 10 a0 e1                                      mov r1, r6
0045d7fc  6f 89 fb eb                                      bl #0x33fdc0
0045d800  00 30 50 e2                                      subs r3, r0, #0
0045d804  02 00 00 0a                                      beq #0x45d814
0045d808  f4 20 93 e5                                      ldr r2, [r3, #0xf4]
0045d80c  02 00 52 e3                                      cmp r2, #2
0045d810  08 00 00 0a                                      beq #0x45d838
0045d814  00 30 a0 e3                                      mov r3, #0
0045d818  10 30 88 e5                                      str r3, [r8, #0x10]
0045d81c  05 30 94 e7                                      ldr r3, [r4, r5]
0045d820  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045d824  00 30 93 e5                                      ldr r3, [r3]
0045d828  03 00 52 e1                                      cmp r2, r3
0045d82c  07 00 00 1a                                      bne #0x45d850
0045d830  3c d0 8d e2                                      add sp, sp, #0x3c
0045d834  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045d838  10 30 88 e5                                      str r3, [r8, #0x10]
0045d83c  10 30 d7 e5                                      ldrb r3, [r7, #0x10]
0045d840  0b 10 a0 e1                                      mov r1, fp
0045d844  14 30 c8 e5                                      strb r3, [r8, #0x14]
0045d848  07 28 fe eb                                      bl #0x3e786c
0045d84c  f2 ff ff ea                                      b #0x45d81c
0045d850  ae c2 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045d854  24 73 53 00 ac 40 00 00 84 08 00 00 d8 f8 46 00  .byte 0x24, 0x73, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xd8, 0xf8, 0x46, 0x00
0045d864  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
