; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004558bc, declared_size=8, range_size=8, mode=arm
; class-group: Script_ActivateProjectileTrap
; alias: _ZNK29Script_ActivateProjectileTrap10IsBlockingEv
; demangled: Script_ActivateProjectileTrap::IsBlocking() const
; decoder-mode: arm
004558bc  00 00 a0 e3                                      mov r0, #0
004558c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045d3cc, declared_size=252, range_size=252, mode=arm
; class-group: Script_ActivateProjectileTrap
; alias: _ZN29Script_ActivateProjectileTrap7ExecuteEbi
; demangled: Script_ActivateProjectileTrap::Execute(bool, int)
; decoder-mode: arm
0045d3cc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045d3d0  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
0045d3d4  dc 50 9f e5                                      ldr r5, [pc, #0xdc]
0045d3d8  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
0045d3dc  04 40 8f e0                                      add r4, pc, r4
0045d3e0  05 30 94 e7                                      ldr r3, [r4, r5]
0045d3e4  01 70 94 e7                                      ldr r7, [r4, r1]
0045d3e8  38 d0 4d e2                                      sub sp, sp, #0x38
0045d3ec  00 30 93 e5                                      ldr r3, [r3]
0045d3f0  00 80 a0 e1                                      mov r8, r0
0045d3f4  07 00 a0 e1                                      mov r0, r7
0045d3f8  34 30 8d e5                                      str r3, [sp, #0x34]
0045d3fc  02 90 a0 e1                                      mov sb, r2
0045d400  0c a0 98 e5                                      ldr sl, [r8, #0xc]
0045d404  1f 69 fb eb                                      bl #0x337888
0045d408  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0045d40c  1c 60 8d e2                                      add r6, sp, #0x1c
0045d410  18 20 8d e2                                      add r2, sp, #0x18
0045d414  01 10 8f e0                                      add r1, pc, r1
0045d418  06 00 a0 e1                                      mov r0, r6
0045d41c  32 db fa eb                                      bl #0x3140ec
0045d420  06 10 a0 e1                                      mov r1, r6
0045d424  07 00 a0 e1                                      mov r0, r7
0045d428  96 69 fb eb                                      bl #0x337a88
0045d42c  06 00 a0 e1                                      mov r0, r6
0045d430  87 eb fa eb                                      bl #0x318254
0045d434  88 30 9f e5                                      ldr r3, [pc, #0x88]
0045d438  0c 70 8d e2                                      add r7, sp, #0xc
0045d43c  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0045d440  03 10 94 e7                                      ldr r1, [r4, r3]
0045d444  00 60 a0 e3                                      mov r6, #0
0045d448  09 30 a0 e1                                      mov r3, sb
0045d44c  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045d450  07 00 a0 e1                                      mov r0, r7
0045d454  00 60 8d e5                                      str r6, [sp]
0045d458  04 60 8d e5                                      str r6, [sp, #4]
0045d45c  0f b6 fb eb                                      bl #0x34aca0
0045d460  07 00 a0 e1                                      mov r0, r7
0045d464  06 10 a0 e1                                      mov r1, r6
0045d468  54 8a fb eb                                      bl #0x33fdc0
0045d46c  00 00 50 e3                                      cmp r0, #0
0045d470  05 00 00 0a                                      beq #0x45d48c
0045d474  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0045d478  11 00 53 e3                                      cmp r3, #0x11
0045d47c  01 30 a0 03                                      moveq r3, #1
0045d480  10 00 88 05                                      streq r0, [r8, #0x10]
0045d484  0c 34 c0 05                                      strbeq r3, [r0, #0x40c]
0045d488  01 00 00 0a                                      beq #0x45d494
0045d48c  00 30 a0 e3                                      mov r3, #0
0045d490  10 30 88 e5                                      str r3, [r8, #0x10]
0045d494  05 30 94 e7                                      ldr r3, [r4, r5]
0045d498  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045d49c  00 30 93 e5                                      ldr r3, [r3]
0045d4a0  03 00 52 e1                                      cmp r2, r3
0045d4a4  01 00 00 1a                                      bne #0x45d4b0
0045d4a8  38 d0 8d e2                                      add sp, sp, #0x38
0045d4ac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045d4b0  96 c3 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045d4b4  b4 76 53 00 ac 40 00 00 84 08 00 00 6c fc 46 00  .byte 0xb4, 0x76, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x6c, 0xfc, 0x46, 0x00
0045d4c4  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
