; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004557f8, declared_size=8, range_size=8, mode=arm
; class-group: Script_UnEquipItemFromSlot
; alias: _ZNK26Script_UnEquipItemFromSlot10IsBlockingEv
; demangled: Script_UnEquipItemFromSlot::IsBlocking() const
; decoder-mode: arm
004557f8  00 00 a0 e3                                      mov r0, #0
004557fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045da8c, declared_size=252, range_size=252, mode=arm
; class-group: Script_UnEquipItemFromSlot
; alias: _ZN26Script_UnEquipItemFromSlot7ExecuteEbi
; demangled: Script_UnEquipItemFromSlot::Execute(bool, int)
; decoder-mode: arm
0045da8c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045da90  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
0045da94  dc 80 9f e5                                      ldr r8, [pc, #0xdc]
0045da98  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
0045da9c  04 40 8f e0                                      add r4, pc, r4
0045daa0  08 30 94 e7                                      ldr r3, [r4, r8]
0045daa4  01 a0 94 e7                                      ldr sl, [r4, r1]
0045daa8  38 d0 4d e2                                      sub sp, sp, #0x38
0045daac  00 30 93 e5                                      ldr r3, [r3]
0045dab0  02 90 a0 e1                                      mov sb, r2
0045dab4  1c 50 8d e2                                      add r5, sp, #0x1c
0045dab8  34 30 8d e5                                      str r3, [sp, #0x34]
0045dabc  0c 70 90 e5                                      ldr r7, [r0, #0xc]
0045dac0  0a 00 a0 e1                                      mov r0, sl
0045dac4  6f 67 fb eb                                      bl #0x337888
0045dac8  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0045dacc  18 20 8d e2                                      add r2, sp, #0x18
0045dad0  05 00 a0 e1                                      mov r0, r5
0045dad4  01 10 8f e0                                      add r1, pc, r1
0045dad8  83 d9 fa eb                                      bl #0x3140ec
0045dadc  05 10 a0 e1                                      mov r1, r5
0045dae0  0a 00 a0 e1                                      mov r0, sl
0045dae4  e7 67 fb eb                                      bl #0x337a88
0045dae8  05 00 a0 e1                                      mov r0, r5
0045daec  d8 e9 fa eb                                      bl #0x318254
0045daf0  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
0045daf4  0c 60 8d e2                                      add r6, sp, #0xc
0045daf8  10 20 97 e5                                      ldr r2, [r7, #0x10]
0045dafc  01 10 94 e7                                      ldr r1, [r4, r1]
0045db00  00 50 a0 e3                                      mov r5, #0
0045db04  09 30 a0 e1                                      mov r3, sb
0045db08  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045db0c  06 00 a0 e1                                      mov r0, r6
0045db10  00 50 8d e5                                      str r5, [sp]
0045db14  04 50 8d e5                                      str r5, [sp, #4]
0045db18  60 b4 fb eb                                      bl #0x34aca0
0045db1c  06 00 a0 e1                                      mov r0, r6
0045db20  05 10 a0 e1                                      mov r1, r5
0045db24  a5 88 fb eb                                      bl #0x33fdc0
0045db28  05 00 50 e1                                      cmp r0, r5
0045db2c  06 00 00 1a                                      bne #0x45db4c
0045db30  08 30 94 e7                                      ldr r3, [r4, r8]
0045db34  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045db38  00 30 93 e5                                      ldr r3, [r3]
0045db3c  03 00 52 e1                                      cmp r2, r3
0045db40  0a 00 00 1a                                      bne #0x45db70
0045db44  38 d0 8d e2                                      add sp, sp, #0x38
0045db48  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045db4c  06 00 a0 e1                                      mov r0, r6
0045db50  ff 88 fb eb                                      bl #0x33ff54
0045db54  00 30 50 e2                                      subs r3, r0, #0
0045db58  f4 ff ff 0a                                      beq #0x45db30
0045db5c  00 30 93 e5                                      ldr r3, [r3]
0045db60  08 10 97 e5                                      ldr r1, [r7, #8]
0045db64  0f e0 a0 e1                                      mov lr, pc
0045db68  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0045db6c  ef ff ff ea                                      b #0x45db30
0045db70  e6 c1 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045db74  f4 6f 53 00 ac 40 00 00 84 08 00 00 ac f5 46 00  .byte 0xf4, 0x6f, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xac, 0xf5, 0x46, 0x00
0045db84  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
