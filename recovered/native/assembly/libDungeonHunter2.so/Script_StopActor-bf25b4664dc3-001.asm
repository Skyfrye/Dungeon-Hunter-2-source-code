; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004557e0, declared_size=8, range_size=8, mode=arm
; class-group: Script_StopActor
; alias: _ZNK16Script_StopActor10IsBlockingEv
; demangled: Script_StopActor::IsBlocking() const
; decoder-mode: arm
004557e0  00 00 a0 e3                                      mov r0, #0
004557e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045eec0, declared_size=488, range_size=488, mode=arm
; class-group: Script_StopActor
; alias: _ZN16Script_StopActor7ExecuteEbi
; demangled: Script_StopActor::Execute(bool, int)
; decoder-mode: arm
0045eec0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045eec4  c4 41 9f e5                                      ldr r4, [pc, #0x1c4]
0045eec8  c4 51 9f e5                                      ldr r5, [pc, #0x1c4]
0045eecc  c4 11 9f e5                                      ldr r1, [pc, #0x1c4]
0045eed0  04 40 8f e0                                      add r4, pc, r4
0045eed4  05 30 94 e7                                      ldr r3, [r4, r5]
0045eed8  01 70 94 e7                                      ldr r7, [r4, r1]
0045eedc  44 d0 4d e2                                      sub sp, sp, #0x44
0045eee0  00 30 93 e5                                      ldr r3, [r3]
0045eee4  02 80 a0 e1                                      mov r8, r2
0045eee8  24 60 8d e2                                      add r6, sp, #0x24
0045eeec  3c 30 8d e5                                      str r3, [sp, #0x3c]
0045eef0  0c a0 90 e5                                      ldr sl, [r0, #0xc]
0045eef4  07 00 a0 e1                                      mov r0, r7
0045eef8  62 62 fb eb                                      bl #0x337888
0045eefc  98 11 9f e5                                      ldr r1, [pc, #0x198]
0045ef00  20 20 8d e2                                      add r2, sp, #0x20
0045ef04  06 00 a0 e1                                      mov r0, r6
0045ef08  01 10 8f e0                                      add r1, pc, r1
0045ef0c  76 d4 fa eb                                      bl #0x3140ec
0045ef10  06 10 a0 e1                                      mov r1, r6
0045ef14  07 00 a0 e1                                      mov r0, r7
0045ef18  da 62 fb eb                                      bl #0x337a88
0045ef1c  06 00 a0 e1                                      mov r0, r6
0045ef20  cb e4 fa eb                                      bl #0x318254
0045ef24  0c 60 9a e5                                      ldr r6, [sl, #0xc]
0045ef28  70 11 9f e5                                      ldr r1, [pc, #0x170]
0045ef2c  06 00 a0 e1                                      mov r0, r6
0045ef30  01 10 8f e0                                      add r1, pc, r1
0045ef34  eb bd fa eb                                      bl #0x30e6e8
0045ef38  00 90 50 e2                                      subs sb, r0, #0
0045ef3c  36 00 00 1a                                      bne #0x45f01c
0045ef40  5c 31 9f e5                                      ldr r3, [pc, #0x15c]
0045ef44  14 70 8d e2                                      add r7, sp, #0x14
0045ef48  01 a0 a0 e3                                      mov sl, #1
0045ef4c  03 30 94 e7                                      ldr r3, [r4, r3]
0045ef50  38 30 93 e5                                      ldr r3, [r3, #0x38]
0045ef54  14 60 93 e5                                      ldr r6, [r3, #0x14]
0045ef58  0c 80 83 e2                                      add r8, r3, #0xc
0045ef5c  06 00 58 e1                                      cmp r8, r6
0045ef60  19 00 00 0a                                      beq #0x45efcc
0045ef64  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
0045ef68  00 00 51 e3                                      cmp r1, #0
0045ef6c  0b 00 00 0a                                      beq #0x45efa0
0045ef70  07 00 a0 e1                                      mov r0, r7
0045ef74  6c 7b fb eb                                      bl #0x33dd2c
0045ef78  07 00 a0 e1                                      mov r0, r7
0045ef7c  f4 83 fb eb                                      bl #0x33ff54
0045ef80  00 b0 50 e2                                      subs fp, r0, #0
0045ef84  05 00 00 0a                                      beq #0x45efa0
0045ef88  78 33 9b e5                                      ldr r3, [fp, #0x378]
0045ef8c  09 a0 c3 e5                                      strb sl, [r3, #9]
0045ef90  78 03 9b e5                                      ldr r0, [fp, #0x378]
0045ef94  80 99 fe eb                                      bl #0x40559c
0045ef98  78 33 9b e5                                      ldr r3, [fp, #0x378]
0045ef9c  09 90 c3 e5                                      strb sb, [r3, #9]
0045efa0  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0045efa4  00 00 52 e3                                      cmp r2, #0
0045efa8  01 00 00 1a                                      bne #0x45efb4
0045efac  0d 00 00 ea                                      b #0x45efe8
0045efb0  03 20 a0 e1                                      mov r2, r3
0045efb4  08 30 92 e5                                      ldr r3, [r2, #8]
0045efb8  00 00 53 e3                                      cmp r3, #0
0045efbc  fb ff ff 1a                                      bne #0x45efb0
0045efc0  02 60 a0 e1                                      mov r6, r2
0045efc4  06 00 58 e1                                      cmp r8, r6
0045efc8  e5 ff ff 1a                                      bne #0x45ef64
0045efcc  05 30 94 e7                                      ldr r3, [r4, r5]
0045efd0  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0045efd4  00 30 93 e5                                      ldr r3, [r3]
0045efd8  03 00 52 e1                                      cmp r2, r3
0045efdc  2a 00 00 1a                                      bne #0x45f08c
0045efe0  44 d0 8d e2                                      add sp, sp, #0x44
0045efe4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045efe8  04 30 96 e5                                      ldr r3, [r6, #4]
0045efec  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0045eff0  01 00 56 e1                                      cmp r6, r1
0045eff4  05 00 00 1a                                      bne #0x45f010
0045eff8  03 60 a0 e1                                      mov r6, r3
0045effc  04 30 93 e5                                      ldr r3, [r3, #4]
0045f000  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0045f004  06 00 52 e1                                      cmp r2, r6
0045f008  fa ff ff 0a                                      beq #0x45eff8
0045f00c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0045f010  03 00 52 e1                                      cmp r2, r3
0045f014  03 60 a0 11                                      movne r6, r3
0045f018  cf ff ff ea                                      b #0x45ef5c
0045f01c  80 30 9f e5                                      ldr r3, [pc, #0x80]
0045f020  08 70 8d e2                                      add r7, sp, #8
0045f024  06 20 a0 e1                                      mov r2, r6
0045f028  03 10 94 e7                                      ldr r1, [r4, r3]
0045f02c  00 60 a0 e3                                      mov r6, #0
0045f030  08 30 a0 e1                                      mov r3, r8
0045f034  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045f038  07 00 a0 e1                                      mov r0, r7
0045f03c  00 60 8d e5                                      str r6, [sp]
0045f040  04 60 8d e5                                      str r6, [sp, #4]
0045f044  15 af fb eb                                      bl #0x34aca0
0045f048  07 00 a0 e1                                      mov r0, r7
0045f04c  06 10 a0 e1                                      mov r1, r6
0045f050  5a 83 fb eb                                      bl #0x33fdc0
0045f054  06 00 50 e1                                      cmp r0, r6
0045f058  db ff ff 0a                                      beq #0x45efcc
0045f05c  07 00 a0 e1                                      mov r0, r7
0045f060  bb 83 fb eb                                      bl #0x33ff54
0045f064  00 70 50 e2                                      subs r7, r0, #0
0045f068  d7 ff ff 0a                                      beq #0x45efcc
0045f06c  78 33 97 e5                                      ldr r3, [r7, #0x378]
0045f070  01 20 a0 e3                                      mov r2, #1
0045f074  09 20 c3 e5                                      strb r2, [r3, #9]
0045f078  78 03 97 e5                                      ldr r0, [r7, #0x378]
0045f07c  46 99 fe eb                                      bl #0x40559c
0045f080  78 33 97 e5                                      ldr r3, [r7, #0x378]
0045f084  09 60 c3 e5                                      strb r6, [r3, #9]
0045f088  cf ff ff ea                                      b #0x45efcc
0045f08c  9f bc fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045f090  c0 5b 53 00 ac 40 00 00 84 08 00 00 78 e1 46 00  .byte 0xc0, 0x5b, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x78, 0xe1, 0x46, 0x00
0045f0a0  18 a0 46 00 f4 37 00 00                          .byte 0x18, 0xa0, 0x46, 0x00, 0xf4, 0x37, 0x00, 0x00
