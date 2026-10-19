; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455794, declared_size=8, range_size=8, mode=arm
; class-group: Script_MarkCharacterAsScripted
; alias: _ZNK30Script_MarkCharacterAsScripted10IsBlockingEv
; demangled: Script_MarkCharacterAsScripted::IsBlocking() const
; decoder-mode: arm
00455794  00 00 a0 e3                                      mov r0, #0
00455798  1e ff 2f e1                                      bx lr

; FUNCTION 0x00459550, declared_size=60, range_size=60, mode=arm
; class-group: Script_MarkCharacterAsScripted
; alias: _ZN30Script_MarkCharacterAsScripted5UnsetEP10ObjectBase
; demangled: Script_MarkCharacterAsScripted::Unset(ObjectBase*)
; decoder-mode: arm
00459550  10 40 2d e9                                      push {r4, lr}
00459554  00 10 50 e2                                      subs r1, r0, #0
00459558  10 d0 4d e2                                      sub sp, sp, #0x10
0045955c  08 00 00 0a                                      beq #0x459584
00459560  04 40 8d e2                                      add r4, sp, #4
00459564  04 00 a0 e1                                      mov r0, r4
00459568  ef 91 fb eb                                      bl #0x33dd2c
0045956c  04 00 a0 e1                                      mov r0, r4
00459570  77 9a fb eb                                      bl #0x33ff54
00459574  00 00 50 e3                                      cmp r0, #0
00459578  00 20 a0 13                                      movne r2, #0
0045957c  52 3d a0 13                                      movne r3, #0x1480
00459580  03 20 c0 17                                      strbne r2, [r0, r3]
00459584  10 d0 8d e2                                      add sp, sp, #0x10
00459588  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0045958c, declared_size=60, range_size=60, mode=arm
; class-group: Script_MarkCharacterAsScripted
; alias: _ZN30Script_MarkCharacterAsScripted3SetEP10ObjectBase
; demangled: Script_MarkCharacterAsScripted::Set(ObjectBase*)
; decoder-mode: arm
0045958c  10 40 2d e9                                      push {r4, lr}
00459590  00 10 50 e2                                      subs r1, r0, #0
00459594  10 d0 4d e2                                      sub sp, sp, #0x10
00459598  08 00 00 0a                                      beq #0x4595c0
0045959c  04 40 8d e2                                      add r4, sp, #4
004595a0  04 00 a0 e1                                      mov r0, r4
004595a4  e0 91 fb eb                                      bl #0x33dd2c
004595a8  04 00 a0 e1                                      mov r0, r4
004595ac  68 9a fb eb                                      bl #0x33ff54
004595b0  00 00 50 e3                                      cmp r0, #0
004595b4  01 20 a0 13                                      movne r2, #1
004595b8  52 3d a0 13                                      movne r3, #0x1480
004595bc  03 20 c0 17                                      strbne r2, [r0, r3]
004595c0  10 d0 8d e2                                      add sp, sp, #0x10
004595c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0045d4c8, declared_size=200, range_size=200, mode=arm
; class-group: Script_MarkCharacterAsScripted
; alias: _ZN30Script_MarkCharacterAsScripted7ExecuteEbi
; demangled: Script_MarkCharacterAsScripted::Execute(bool, int)
; decoder-mode: arm
0045d4c8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0045d4cc  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
0045d4d0  a4 60 9f e5                                      ldr r6, [pc, #0xa4]
0045d4d4  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
0045d4d8  04 40 8f e0                                      add r4, pc, r4
0045d4dc  06 30 94 e7                                      ldr r3, [r4, r6]
0045d4e0  01 80 94 e7                                      ldr r8, [r4, r1]
0045d4e4  24 d0 4d e2                                      sub sp, sp, #0x24
0045d4e8  00 30 93 e5                                      ldr r3, [r3]
0045d4ec  02 a0 a0 e1                                      mov sl, r2
0045d4f0  04 50 8d e2                                      add r5, sp, #4
0045d4f4  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045d4f8  0c 70 90 e5                                      ldr r7, [r0, #0xc]
0045d4fc  08 00 a0 e1                                      mov r0, r8
0045d500  e0 68 fb eb                                      bl #0x337888
0045d504  78 10 9f e5                                      ldr r1, [pc, #0x78]
0045d508  0d 20 a0 e1                                      mov r2, sp
0045d50c  05 00 a0 e1                                      mov r0, r5
0045d510  01 10 8f e0                                      add r1, pc, r1
0045d514  f4 da fa eb                                      bl #0x3140ec
0045d518  05 10 a0 e1                                      mov r1, r5
0045d51c  08 00 a0 e1                                      mov r0, r8
0045d520  58 69 fb eb                                      bl #0x337a88
0045d524  05 00 a0 e1                                      mov r0, r5
0045d528  49 eb fa eb                                      bl #0x318254
0045d52c  08 30 d7 e5                                      ldrb r3, [r7, #8]
0045d530  10 00 97 e5                                      ldr r0, [r7, #0x10]
0045d534  00 00 53 e3                                      cmp r3, #0
0045d538  0a 00 00 1a                                      bne #0x45d568
0045d53c  44 30 9f e5                                      ldr r3, [pc, #0x44]
0045d540  03 20 94 e7                                      ldr r2, [r4, r3]
0045d544  0a 10 a0 e1                                      mov r1, sl
0045d548  d6 ef ff eb                                      bl #0x4594a8
0045d54c  06 30 94 e7                                      ldr r3, [r4, r6]
0045d550  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045d554  00 30 93 e5                                      ldr r3, [r3]
0045d558  03 00 52 e1                                      cmp r2, r3
0045d55c  04 00 00 1a                                      bne #0x45d574
0045d560  24 d0 8d e2                                      add sp, sp, #0x24
0045d564  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0045d568  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0045d56c  03 20 94 e7                                      ldr r2, [r4, r3]
0045d570  f3 ff ff ea                                      b #0x45d544
0045d574  65 c3 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045d578  b8 75 53 00 ac 40 00 00 84 08 00 00 70 fb 46 00  .byte 0xb8, 0x75, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x70, 0xfb, 0x46, 0x00
0045d588  b0 37 00 00 68 0c 00 00                          .byte 0xb0, 0x37, 0x00, 0x00, 0x68, 0x0c, 0x00, 0x00
