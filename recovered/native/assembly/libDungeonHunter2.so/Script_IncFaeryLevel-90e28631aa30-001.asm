; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455774, declared_size=8, range_size=8, mode=arm
; class-group: Script_IncFaeryLevel
; alias: _ZNK20Script_IncFaeryLevel10IsBlockingEv
; demangled: Script_IncFaeryLevel::IsBlocking() const
; decoder-mode: arm
00455774  00 00 a0 e3                                      mov r0, #0
00455778  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045f5cc, declared_size=252, range_size=252, mode=arm
; class-group: Script_IncFaeryLevel
; alias: _ZN20Script_IncFaeryLevel7ExecuteEbi
; demangled: Script_IncFaeryLevel::Execute(bool, int)
; decoder-mode: arm
0045f5cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0045f5d0  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
0045f5d4  dc 60 9f e5                                      ldr r6, [pc, #0xdc]
0045f5d8  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0045f5dc  04 40 8f e0                                      add r4, pc, r4
0045f5e0  06 30 94 e7                                      ldr r3, [r4, r6]
0045f5e4  02 70 94 e7                                      ldr r7, [r4, r2]
0045f5e8  20 d0 4d e2                                      sub sp, sp, #0x20
0045f5ec  00 30 93 e5                                      ldr r3, [r3]
0045f5f0  04 50 8d e2                                      add r5, sp, #4
0045f5f4  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045f5f8  0c 80 90 e5                                      ldr r8, [r0, #0xc]
0045f5fc  07 00 a0 e1                                      mov r0, r7
0045f600  a0 60 fb eb                                      bl #0x337888
0045f604  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
0045f608  0d 20 a0 e1                                      mov r2, sp
0045f60c  05 00 a0 e1                                      mov r0, r5
0045f610  01 10 8f e0                                      add r1, pc, r1
0045f614  b4 d2 fa eb                                      bl #0x3140ec
0045f618  05 10 a0 e1                                      mov r1, r5
0045f61c  07 00 a0 e1                                      mov r0, r7
0045f620  18 61 fb eb                                      bl #0x337a88
0045f624  05 00 a0 e1                                      mov r0, r5
0045f628  09 e3 fa eb                                      bl #0x318254
0045f62c  58 78 0e eb                                      bl #0x7fd794
0045f630  05 30 d0 e5                                      ldrb r3, [r0, #5]
0045f634  00 00 53 e3                                      cmp r3, #0
0045f638  11 00 00 1a                                      bne #0x45f684
0045f63c  80 30 9f e5                                      ldr r3, [pc, #0x80]
0045f640  03 30 94 e7                                      ldr r3, [r4, r3]
0045f644  40 00 93 e5                                      ldr r0, [r3, #0x40]
0045f648  00 10 a0 e3                                      mov r1, #0
0045f64c  01 20 a0 e3                                      mov r2, #1
0045f650  88 3b fc eb                                      bl #0x36e478
0045f654  60 06 90 e5                                      ldr r0, [r0, #0x660]
0045f658  00 00 50 e3                                      cmp r0, #0
0045f65c  01 00 00 0a                                      beq #0x45f668
0045f660  08 10 98 e5                                      ldr r1, [r8, #8]
0045f664  ec 3b fd eb                                      bl #0x3ae61c
0045f668  06 30 94 e7                                      ldr r3, [r4, r6]
0045f66c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045f670  00 30 93 e5                                      ldr r3, [r3]
0045f674  03 00 52 e1                                      cmp r2, r3
0045f678  0c 00 00 1a                                      bne #0x45f6b0
0045f67c  20 d0 8d e2                                      add sp, sp, #0x20
0045f680  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0045f684  38 30 9f e5                                      ldr r3, [pc, #0x38]
0045f688  03 50 94 e7                                      ldr r5, [r4, r3]
0045f68c  40 00 95 e5                                      ldr r0, [r5, #0x40]
0045f690  77 3e fc eb                                      bl #0x36f074
0045f694  00 00 50 e3                                      cmp r0, #0
0045f698  f2 ff ff 0a                                      beq #0x45f668
0045f69c  40 00 95 e5                                      ldr r0, [r5, #0x40]
0045f6a0  19 37 d0 e5                                      ldrb r3, [r0, #0x719]
0045f6a4  00 00 53 e3                                      cmp r3, #0
0045f6a8  ee ff ff 1a                                      bne #0x45f668
0045f6ac  e5 ff ff ea                                      b #0x45f648
0045f6b0  16 bb fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045f6b4  b4 54 53 00 ac 40 00 00 84 08 00 00 70 da 46 00  .byte 0xb4, 0x54, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x70, 0xda, 0x46, 0x00
0045f6c4  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
