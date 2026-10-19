; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455950, declared_size=8, range_size=8, mode=arm
; class-group: Script_EnqueueCharMenuTutorialMessage
; alias: _ZNK37Script_EnqueueCharMenuTutorialMessage10IsBlockingEv
; demangled: Script_EnqueueCharMenuTutorialMessage::IsBlocking() const
; decoder-mode: arm
00455950  00 00 a0 e3                                      mov r0, #0
00455954  1e ff 2f e1                                      bx lr

; FUNCTION 0x00460b1c, declared_size=276, range_size=276, mode=arm
; class-group: Script_EnqueueCharMenuTutorialMessage
; alias: _ZN37Script_EnqueueCharMenuTutorialMessage7ExecuteEbi
; demangled: Script_EnqueueCharMenuTutorialMessage::Execute(bool, int)
; decoder-mode: arm
00460b1c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00460b20  f8 40 9f e5                                      ldr r4, [pc, #0xf8]
00460b24  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
00460b28  f8 50 9f e5                                      ldr r5, [pc, #0xf8]
00460b2c  04 40 8f e0                                      add r4, pc, r4
00460b30  03 a0 94 e7                                      ldr sl, [r4, r3]
00460b34  70 d0 4d e2                                      sub sp, sp, #0x70
00460b38  54 80 8d e2                                      add r8, sp, #0x54
00460b3c  00 30 9a e5                                      ldr r3, [sl]
00460b40  05 50 8f e0                                      add r5, pc, r5
00460b44  3c 70 8d e2                                      add r7, sp, #0x3c
00460b48  6c 30 8d e5                                      str r3, [sp, #0x6c]
00460b4c  0c 60 90 e5                                      ldr r6, [r0, #0xc]
00460b50  05 10 a0 e1                                      mov r1, r5
00460b54  04 20 8d e2                                      add r2, sp, #4
00460b58  08 00 a0 e1                                      mov r0, r8
00460b5c  62 cd fa eb                                      bl #0x3140ec
00460b60  05 10 a0 e1                                      mov r1, r5
00460b64  0d 20 a0 e1                                      mov r2, sp
00460b68  08 50 8d e2                                      add r5, sp, #8
00460b6c  07 00 a0 e1                                      mov r0, r7
00460b70  5d cd fa eb                                      bl #0x3140ec
00460b74  08 20 a0 e1                                      mov r2, r8
00460b78  07 30 a0 e1                                      mov r3, r7
00460b7c  00 10 e0 e3                                      mvn r1, #0
00460b80  05 00 a0 e1                                      mov r0, r5
00460b84  ee 4b ff eb                                      bl #0x433b44
00460b88  07 00 a0 e1                                      mov r0, r7
00460b8c  b0 dd fa eb                                      bl #0x318254
00460b90  08 00 a0 e1                                      mov r0, r8
00460b94  ae dd fa eb                                      bl #0x318254
00460b98  18 30 96 e5                                      ldr r3, [r6, #0x18]
00460b9c  04 70 85 e2                                      add r7, r5, #4
00460ba0  1c 80 85 e2                                      add r8, r5, #0x1c
00460ba4  08 30 8d e5                                      str r3, [sp, #8]
00460ba8  0c 90 96 e5                                      ldr sb, [r6, #0xc]
00460bac  09 00 a0 e1                                      mov r0, sb
00460bb0  a7 b4 fa eb                                      bl #0x30de54
00460bb4  09 10 a0 e1                                      mov r1, sb
00460bb8  00 20 89 e0                                      add r2, sb, r0
00460bbc  07 00 a0 e1                                      mov r0, r7
00460bc0  86 bf fa eb                                      bl #0x3109e0
00460bc4  14 60 96 e5                                      ldr r6, [r6, #0x14]
00460bc8  06 00 a0 e1                                      mov r0, r6
00460bcc  a0 b4 fa eb                                      bl #0x30de54
00460bd0  06 10 a0 e1                                      mov r1, r6
00460bd4  00 20 86 e0                                      add r2, r6, r0
00460bd8  08 00 a0 e1                                      mov r0, r8
00460bdc  7f bf fa eb                                      bl #0x3109e0
00460be0  44 00 9f e5                                      ldr r0, [pc, #0x44]
00460be4  05 10 a0 e1                                      mov r1, r5
00460be8  00 00 94 e7                                      ldr r0, [r4, r0]
00460bec  04 00 80 e2                                      add r0, r0, #4
00460bf0  ff ea ff eb                                      bl #0x45b7f4
00460bf4  08 00 a0 e1                                      mov r0, r8
00460bf8  95 dd fa eb                                      bl #0x318254
00460bfc  07 00 a0 e1                                      mov r0, r7
00460c00  93 dd fa eb                                      bl #0x318254
00460c04  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00460c08  00 30 9a e5                                      ldr r3, [sl]
00460c0c  03 00 52 e1                                      cmp r2, r3
00460c10  01 00 00 1a                                      bne #0x460c1c
00460c14  70 d0 8d e2                                      add sp, sp, #0x70
00460c18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00460c1c  bb b5 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00460c20  64 3f 53 00 ac 40 00 00 c8 ac 46 00 00 49 00 00  .byte 0x64, 0x3f, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc8, 0xac, 0x46, 0x00, 0x00, 0x49, 0x00, 0x00
