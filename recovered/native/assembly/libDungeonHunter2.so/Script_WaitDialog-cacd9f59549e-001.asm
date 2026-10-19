; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004598d8, declared_size=40, range_size=40, mode=arm
; class-group: Script_WaitDialog
; alias: _ZNK17Script_WaitDialog10IsBlockingEv
; demangled: Script_WaitDialog::IsBlocking() const
; decoder-mode: arm
004598d8  18 30 9f e5                                      ldr r3, [pc, #0x18]
004598dc  18 20 9f e5                                      ldr r2, [pc, #0x18]
004598e0  10 40 2d e9                                      push {r4, lr}
004598e4  03 30 8f e0                                      add r3, pc, r3
004598e8  02 00 93 e7                                      ldr r0, [r3, r2]
004598ec  28 17 fb eb                                      bl #0x31f594
004598f0  10 40 bd e8                                      pop {r4, lr}
004598f4  54 56 fe ea                                      b #0x3ef24c
; mapping-symbol data/literal pool
004598f8  ac b1 53 00 f4 37 00 00                          .byte 0xac, 0xb1, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0045c4d8, declared_size=136, range_size=136, mode=arm
; class-group: Script_WaitDialog
; alias: _ZN17Script_WaitDialog7ExecuteEbi
; demangled: Script_WaitDialog::Execute(bool, int)
; decoder-mode: arm
0045c4d8  70 30 9f e5                                      ldr r3, [pc, #0x70]
0045c4dc  70 20 9f e5                                      ldr r2, [pc, #0x70]
0045c4e0  70 40 2d e9                                      push {r4, r5, r6, lr}
0045c4e4  03 30 8f e0                                      add r3, pc, r3
0045c4e8  02 50 93 e7                                      ldr r5, [r3, r2]
0045c4ec  64 20 9f e5                                      ldr r2, [pc, #0x64]
0045c4f0  20 d0 4d e2                                      sub sp, sp, #0x20
0045c4f4  04 40 8d e2                                      add r4, sp, #4
0045c4f8  02 60 93 e7                                      ldr r6, [r3, r2]
0045c4fc  00 30 95 e5                                      ldr r3, [r5]
0045c500  06 00 a0 e1                                      mov r0, r6
0045c504  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045c508  de 6c fb eb                                      bl #0x337888
0045c50c  48 10 9f e5                                      ldr r1, [pc, #0x48]
0045c510  0d 20 a0 e1                                      mov r2, sp
0045c514  04 00 a0 e1                                      mov r0, r4
0045c518  01 10 8f e0                                      add r1, pc, r1
0045c51c  f2 de fa eb                                      bl #0x3140ec
0045c520  04 10 a0 e1                                      mov r1, r4
0045c524  06 00 a0 e1                                      mov r0, r6
0045c528  56 6d fb eb                                      bl #0x337a88
0045c52c  04 00 a0 e1                                      mov r0, r4
0045c530  47 ef fa eb                                      bl #0x318254
0045c534  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045c538  00 30 95 e5                                      ldr r3, [r5]
0045c53c  03 00 52 e1                                      cmp r2, r3
0045c540  01 00 00 1a                                      bne #0x45c54c
0045c544  20 d0 8d e2                                      add sp, sp, #0x20
0045c548  70 80 bd e8                                      pop {r4, r5, r6, pc}
0045c54c  6f c7 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045c550  ac 85 53 00 ac 40 00 00 84 08 00 00 68 0b 47 00  .byte 0xac, 0x85, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x68, 0x0b, 0x47, 0x00
