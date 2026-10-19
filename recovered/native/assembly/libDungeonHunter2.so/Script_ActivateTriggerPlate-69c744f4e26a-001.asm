; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004558cc, declared_size=8, range_size=8, mode=arm
; class-group: Script_ActivateTriggerPlate
; alias: _ZNK27Script_ActivateTriggerPlate10IsBlockingEv
; demangled: Script_ActivateTriggerPlate::IsBlocking() const
; decoder-mode: arm
004558cc  00 00 a0 e3                                      mov r0, #0
004558d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045d1d8, declared_size=252, range_size=252, mode=arm
; class-group: Script_ActivateTriggerPlate
; alias: _ZN27Script_ActivateTriggerPlate7ExecuteEbi
; demangled: Script_ActivateTriggerPlate::Execute(bool, int)
; decoder-mode: arm
0045d1d8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045d1dc  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
0045d1e0  dc 50 9f e5                                      ldr r5, [pc, #0xdc]
0045d1e4  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
0045d1e8  04 40 8f e0                                      add r4, pc, r4
0045d1ec  05 30 94 e7                                      ldr r3, [r4, r5]
0045d1f0  01 70 94 e7                                      ldr r7, [r4, r1]
0045d1f4  38 d0 4d e2                                      sub sp, sp, #0x38
0045d1f8  00 30 93 e5                                      ldr r3, [r3]
0045d1fc  00 80 a0 e1                                      mov r8, r0
0045d200  07 00 a0 e1                                      mov r0, r7
0045d204  34 30 8d e5                                      str r3, [sp, #0x34]
0045d208  02 90 a0 e1                                      mov sb, r2
0045d20c  0c a0 98 e5                                      ldr sl, [r8, #0xc]
0045d210  9c 69 fb eb                                      bl #0x337888
0045d214  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0045d218  1c 60 8d e2                                      add r6, sp, #0x1c
0045d21c  18 20 8d e2                                      add r2, sp, #0x18
0045d220  01 10 8f e0                                      add r1, pc, r1
0045d224  06 00 a0 e1                                      mov r0, r6
0045d228  af db fa eb                                      bl #0x3140ec
0045d22c  06 10 a0 e1                                      mov r1, r6
0045d230  07 00 a0 e1                                      mov r0, r7
0045d234  13 6a fb eb                                      bl #0x337a88
0045d238  06 00 a0 e1                                      mov r0, r6
0045d23c  04 ec fa eb                                      bl #0x318254
0045d240  88 30 9f e5                                      ldr r3, [pc, #0x88]
0045d244  0c 70 8d e2                                      add r7, sp, #0xc
0045d248  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0045d24c  03 10 94 e7                                      ldr r1, [r4, r3]
0045d250  00 60 a0 e3                                      mov r6, #0
0045d254  09 30 a0 e1                                      mov r3, sb
0045d258  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045d25c  07 00 a0 e1                                      mov r0, r7
0045d260  00 60 8d e5                                      str r6, [sp]
0045d264  04 60 8d e5                                      str r6, [sp, #4]
0045d268  8c b6 fb eb                                      bl #0x34aca0
0045d26c  07 00 a0 e1                                      mov r0, r7
0045d270  06 10 a0 e1                                      mov r1, r6
0045d274  d1 8a fb eb                                      bl #0x33fdc0
0045d278  00 00 50 e3                                      cmp r0, #0
0045d27c  05 00 00 0a                                      beq #0x45d298
0045d280  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0045d284  12 00 53 e3                                      cmp r3, #0x12
0045d288  01 30 a0 03                                      moveq r3, #1
0045d28c  10 00 88 05                                      streq r0, [r8, #0x10]
0045d290  79 37 c0 05                                      strbeq r3, [r0, #0x779]
0045d294  01 00 00 0a                                      beq #0x45d2a0
0045d298  00 30 a0 e3                                      mov r3, #0
0045d29c  10 30 88 e5                                      str r3, [r8, #0x10]
0045d2a0  05 30 94 e7                                      ldr r3, [r4, r5]
0045d2a4  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045d2a8  00 30 93 e5                                      ldr r3, [r3]
0045d2ac  03 00 52 e1                                      cmp r2, r3
0045d2b0  01 00 00 1a                                      bne #0x45d2bc
0045d2b4  38 d0 8d e2                                      add sp, sp, #0x38
0045d2b8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045d2bc  13 c4 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045d2c0  a8 78 53 00 ac 40 00 00 84 08 00 00 60 fe 46 00  .byte 0xa8, 0x78, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x60, 0xfe, 0x46, 0x00
0045d2d0  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
