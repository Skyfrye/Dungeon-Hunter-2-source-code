; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004592cc, declared_size=96, range_size=96, mode=arm
; class-group: Script_SetCameraTarget
; alias: _ZNK22Script_SetCameraTarget10IsBlockingEv
; demangled: Script_SetCameraTarget::IsBlocking() const
; decoder-mode: arm
004592cc  10 40 2d e9                                      push {r4, lr}
004592d0  0c 20 90 e5                                      ldr r2, [r0, #0xc]
004592d4  48 30 9f e5                                      ldr r3, [pc, #0x48]
004592d8  14 20 d2 e5                                      ldrb r2, [r2, #0x14]
004592dc  03 30 8f e0                                      add r3, pc, r3
004592e0  00 00 52 e3                                      cmp r2, #0
004592e4  01 00 00 1a                                      bne #0x4592f0
004592e8  00 00 a0 e3                                      mov r0, #0
004592ec  10 80 bd e8                                      pop {r4, pc}
004592f0  30 20 9f e5                                      ldr r2, [pc, #0x30]
004592f4  02 00 93 e7                                      ldr r0, [r3, r2]
004592f8  a5 18 fb eb                                      bl #0x31f594
004592fc  00 00 50 e3                                      cmp r0, #0
00459300  f8 ff ff 0a                                      beq #0x4592e8
00459304  28 31 90 e5                                      ldr r3, [r0, #0x128]
00459308  00 00 53 e3                                      cmp r3, #0
0045930c  f5 ff ff 0a                                      beq #0x4592e8
00459310  20 00 93 e5                                      ldr r0, [r3, #0x20]
00459314  00 00 50 e3                                      cmp r0, #0
00459318  00 00 a0 d3                                      movle r0, #0
0045931c  01 00 a0 c3                                      movgt r0, #1
00459320  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00459324  b4 b7 53 00 f4 37 00 00                          .byte 0xb4, 0xb7, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00460004, declared_size=268, range_size=268, mode=arm
; class-group: Script_SetCameraTarget
; alias: _ZN22Script_SetCameraTarget7ExecuteEbi
; demangled: Script_SetCameraTarget::Execute(bool, int)
; decoder-mode: arm
00460004  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00460008  ec 40 9f e5                                      ldr r4, [pc, #0xec]
0046000c  ec 60 9f e5                                      ldr r6, [pc, #0xec]
00460010  ec 20 9f e5                                      ldr r2, [pc, #0xec]
00460014  04 40 8f e0                                      add r4, pc, r4
00460018  06 30 94 e7                                      ldr r3, [r4, r6]
0046001c  02 70 94 e7                                      ldr r7, [r4, r2]
00460020  20 d0 4d e2                                      sub sp, sp, #0x20
00460024  00 30 93 e5                                      ldr r3, [r3]
00460028  01 a0 a0 e1                                      mov sl, r1
0046002c  04 50 8d e2                                      add r5, sp, #4
00460030  1c 30 8d e5                                      str r3, [sp, #0x1c]
00460034  0c 80 90 e5                                      ldr r8, [r0, #0xc]
00460038  07 00 a0 e1                                      mov r0, r7
0046003c  11 5e fb eb                                      bl #0x337888
00460040  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
00460044  0d 20 a0 e1                                      mov r2, sp
00460048  05 00 a0 e1                                      mov r0, r5
0046004c  01 10 8f e0                                      add r1, pc, r1
00460050  25 d0 fa eb                                      bl #0x3140ec
00460054  05 10 a0 e1                                      mov r1, r5
00460058  07 00 a0 e1                                      mov r0, r7
0046005c  89 5e fb eb                                      bl #0x337a88
00460060  05 00 a0 e1                                      mov r0, r5
00460064  7a e0 fa eb                                      bl #0x318254
00460068  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0046006c  03 90 94 e7                                      ldr sb, [r4, r3]
00460070  09 00 a0 e1                                      mov r0, sb
00460074  46 fd fa eb                                      bl #0x31f594
00460078  00 00 50 e3                                      cmp r0, #0
0046007c  0b 00 00 0a                                      beq #0x4600b0
00460080  28 51 90 e5                                      ldr r5, [r0, #0x128]
00460084  00 00 55 e3                                      cmp r5, #0
00460088  08 00 00 0a                                      beq #0x4600b0
0046008c  10 10 98 e5                                      ldr r1, [r8, #0x10]
00460090  00 70 d1 e5                                      ldrb r7, [r1]
00460094  00 00 57 e3                                      cmp r7, #0
00460098  0b 00 00 0a                                      beq #0x4600cc
0046009c  00 00 5a e3                                      cmp sl, #0
004600a0  00 20 a0 13                                      movne r2, #0
004600a4  08 20 98 05                                      ldreq r2, [r8, #8]
004600a8  05 00 a0 e1                                      mov r0, r5
004600ac  a1 c6 fe eb                                      bl #0x411b38
004600b0  06 30 94 e7                                      ldr r3, [r4, r6]
004600b4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004600b8  00 30 93 e5                                      ldr r3, [r3]
004600bc  03 00 52 e1                                      cmp r2, r3
004600c0  0c 00 00 1a                                      bne #0x4600f8
004600c4  20 d0 8d e2                                      add sp, sp, #0x20
004600c8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
004600cc  01 20 a0 e3                                      mov r2, #1
004600d0  07 10 a0 e1                                      mov r1, r7
004600d4  40 00 99 e5                                      ldr r0, [sb, #0x40]
004600d8  e6 38 fc eb                                      bl #0x36e478
004600dc  00 00 5a e3                                      cmp sl, #0
004600e0  60 16 90 e5                                      ldr r1, [r0, #0x660]
004600e4  07 20 a0 11                                      movne r2, r7
004600e8  08 20 98 05                                      ldreq r2, [r8, #8]
004600ec  05 00 a0 e1                                      mov r0, r5
004600f0  33 c6 fe eb                                      bl #0x4119c4
004600f4  ed ff ff ea                                      b #0x4600b0
004600f8  84 b8 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004600fc  7c 4a 53 00 ac 40 00 00 84 08 00 00 34 d0 46 00  .byte 0x7c, 0x4a, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x34, 0xd0, 0x46, 0x00
0046010c  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
