; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004557f0, declared_size=8, range_size=8, mode=arm
; class-group: Script_AutoEquip
; alias: _ZNK16Script_AutoEquip10IsBlockingEv
; demangled: Script_AutoEquip::IsBlocking() const
; decoder-mode: arm
004557f0  00 00 a0 e3                                      mov r0, #0
004557f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045db88, declared_size=248, range_size=248, mode=arm
; class-group: Script_AutoEquip
; alias: _ZN16Script_AutoEquip7ExecuteEbi
; demangled: Script_AutoEquip::Execute(bool, int)
; decoder-mode: arm
0045db88  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045db8c  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0045db90  d8 60 9f e5                                      ldr r6, [pc, #0xd8]
0045db94  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
0045db98  04 40 8f e0                                      add r4, pc, r4
0045db9c  06 30 94 e7                                      ldr r3, [r4, r6]
0045dba0  01 80 94 e7                                      ldr r8, [r4, r1]
0045dba4  38 d0 4d e2                                      sub sp, sp, #0x38
0045dba8  00 30 93 e5                                      ldr r3, [r3]
0045dbac  02 90 a0 e1                                      mov sb, r2
0045dbb0  1c 70 8d e2                                      add r7, sp, #0x1c
0045dbb4  34 30 8d e5                                      str r3, [sp, #0x34]
0045dbb8  0c a0 90 e5                                      ldr sl, [r0, #0xc]
0045dbbc  08 00 a0 e1                                      mov r0, r8
0045dbc0  30 67 fb eb                                      bl #0x337888
0045dbc4  ac 10 9f e5                                      ldr r1, [pc, #0xac]
0045dbc8  18 20 8d e2                                      add r2, sp, #0x18
0045dbcc  07 00 a0 e1                                      mov r0, r7
0045dbd0  01 10 8f e0                                      add r1, pc, r1
0045dbd4  44 d9 fa eb                                      bl #0x3140ec
0045dbd8  07 10 a0 e1                                      mov r1, r7
0045dbdc  08 00 a0 e1                                      mov r0, r8
0045dbe0  a8 67 fb eb                                      bl #0x337a88
0045dbe4  07 00 a0 e1                                      mov r0, r7
0045dbe8  99 e9 fa eb                                      bl #0x318254
0045dbec  88 10 9f e5                                      ldr r1, [pc, #0x88]
0045dbf0  0c 50 8d e2                                      add r5, sp, #0xc
0045dbf4  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0045dbf8  01 10 94 e7                                      ldr r1, [r4, r1]
0045dbfc  00 70 a0 e3                                      mov r7, #0
0045dc00  09 30 a0 e1                                      mov r3, sb
0045dc04  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045dc08  05 00 a0 e1                                      mov r0, r5
0045dc0c  00 70 8d e5                                      str r7, [sp]
0045dc10  04 70 8d e5                                      str r7, [sp, #4]
0045dc14  21 b4 fb eb                                      bl #0x34aca0
0045dc18  05 00 a0 e1                                      mov r0, r5
0045dc1c  07 10 a0 e1                                      mov r1, r7
0045dc20  66 88 fb eb                                      bl #0x33fdc0
0045dc24  07 00 50 e1                                      cmp r0, r7
0045dc28  06 00 00 1a                                      bne #0x45dc48
0045dc2c  06 30 94 e7                                      ldr r3, [r4, r6]
0045dc30  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045dc34  00 30 93 e5                                      ldr r3, [r3]
0045dc38  03 00 52 e1                                      cmp r2, r3
0045dc3c  09 00 00 1a                                      bne #0x45dc68
0045dc40  38 d0 8d e2                                      add sp, sp, #0x38
0045dc44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045dc48  05 00 a0 e1                                      mov r0, r5
0045dc4c  c0 88 fb eb                                      bl #0x33ff54
0045dc50  00 30 50 e2                                      subs r3, r0, #0
0045dc54  f4 ff ff 0a                                      beq #0x45dc2c
0045dc58  00 30 93 e5                                      ldr r3, [r3]
0045dc5c  0f e0 a0 e1                                      mov lr, pc
0045dc60  38 f1 93 e5                                      ldr pc, [r3, #0x138]
0045dc64  f0 ff ff ea                                      b #0x45dc2c
0045dc68  a8 c1 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045dc6c  f8 6e 53 00 ac 40 00 00 84 08 00 00 b0 f4 46 00  .byte 0xf8, 0x6e, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xb0, 0xf4, 0x46, 0x00
0045dc7c  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
