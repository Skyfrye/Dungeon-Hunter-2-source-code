; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004558fc, declared_size=8, range_size=8, mode=arm
; class-group: Script_ChangeLevel
; alias: _ZNK18Script_ChangeLevel10IsBlockingEv
; demangled: Script_ChangeLevel::IsBlocking() const
; decoder-mode: arm
004558fc  00 00 a0 e3                                      mov r0, #0
00455900  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045cba0, declared_size=560, range_size=560, mode=arm
; class-group: Script_ChangeLevel
; alias: _ZN18Script_ChangeLevel7ExecuteEbi
; demangled: Script_ChangeLevel::Execute(bool, int)
; decoder-mode: arm
0045cba0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045cba4  04 42 9f e5                                      ldr r4, [pc, #0x204]
0045cba8  04 52 9f e5                                      ldr r5, [pc, #0x204]
0045cbac  04 22 9f e5                                      ldr r2, [pc, #0x204]
0045cbb0  04 40 8f e0                                      add r4, pc, r4
0045cbb4  05 30 94 e7                                      ldr r3, [r4, r5]
0045cbb8  02 80 94 e7                                      ldr r8, [r4, r2]
0045cbbc  44 d0 4d e2                                      sub sp, sp, #0x44
0045cbc0  00 30 93 e5                                      ldr r3, [r3]
0045cbc4  24 60 8d e2                                      add r6, sp, #0x24
0045cbc8  ec 71 9f e5                                      ldr r7, [pc, #0x1ec]
0045cbcc  3c 30 8d e5                                      str r3, [sp, #0x3c]
0045cbd0  0c a0 90 e5                                      ldr sl, [r0, #0xc]
0045cbd4  08 00 a0 e1                                      mov r0, r8
0045cbd8  2a 6b fb eb                                      bl #0x337888
0045cbdc  dc 11 9f e5                                      ldr r1, [pc, #0x1dc]
0045cbe0  20 20 8d e2                                      add r2, sp, #0x20
0045cbe4  06 00 a0 e1                                      mov r0, r6
0045cbe8  01 10 8f e0                                      add r1, pc, r1
0045cbec  3e dd fa eb                                      bl #0x3140ec
0045cbf0  06 10 a0 e1                                      mov r1, r6
0045cbf4  08 00 a0 e1                                      mov r0, r8
0045cbf8  a2 6b fb eb                                      bl #0x337a88
0045cbfc  06 00 a0 e1                                      mov r0, r6
0045cc00  93 ed fa eb                                      bl #0x318254
0045cc04  07 80 94 e7                                      ldr r8, [r4, r7]
0045cc08  08 00 a0 e1                                      mov r0, r8
0045cc0c  60 0a fb eb                                      bl #0x31f594
0045cc10  00 10 a0 e3                                      mov r1, #0
0045cc14  00 60 a0 e1                                      mov r6, r0
0045cc18  01 20 a0 e3                                      mov r2, #1
0045cc1c  40 00 98 e5                                      ldr r0, [r8, #0x40]
0045cc20  14 46 fc eb                                      bl #0x36e478
0045cc24  60 06 90 e5                                      ldr r0, [r0, #0x660]
0045cc28  2d 7b fd eb                                      bl #0x3bb8e4
0045cc2c  00 00 56 e3                                      cmp r6, #0
0045cc30  1c 00 8d e5                                      str r0, [sp, #0x1c]
0045cc34  04 00 00 0a                                      beq #0x45cc4c
0045cc38  06 00 a0 e1                                      mov r0, r6
0045cc3c  00 10 a0 e3                                      mov r1, #0
0045cc40  fe 4b fe eb                                      bl #0x3efc40
0045cc44  18 61 96 e5                                      ldr r6, [r6, #0x118]
0045cc48  1c 60 8d e5                                      str r6, [sp, #0x1c]
0045cc4c  70 31 9f e5                                      ldr r3, [pc, #0x170]
0045cc50  10 90 9a e5                                      ldr sb, [sl, #0x10]
0045cc54  03 30 94 e7                                      ldr r3, [r4, r3]
0045cc58  00 60 93 e5                                      ldr r6, [r3]
0045cc5c  00 00 56 e3                                      cmp r6, #0
0045cc60  0f 00 00 0a                                      beq #0x45cca4
0045cc64  5c 31 9f e5                                      ldr r3, [pc, #0x15c]
0045cc68  00 80 a0 e3                                      mov r8, #0
0045cc6c  03 30 94 e7                                      ldr r3, [r4, r3]
0045cc70  00 b0 93 e5                                      ldr fp, [r3]
0045cc74  02 00 00 ea                                      b #0x45cc84
0045cc78  01 80 88 e2                                      add r8, r8, #1
0045cc7c  06 00 58 e1                                      cmp r8, r6
0045cc80  07 00 00 0a                                      beq #0x45cca4
0045cc84  09 00 a0 e1                                      mov r0, sb
0045cc88  08 11 9b e7                                      ldr r1, [fp, r8, lsl #2]
0045cc8c  a2 c5 fa eb                                      bl #0x30e31c
0045cc90  00 00 50 e3                                      cmp r0, #0
0045cc94  f7 ff ff 1a                                      bne #0x45cc78
0045cc98  48 b0 a0 e3                                      mov fp, #0x48
0045cc9c  9b 08 0b e0                                      mul fp, fp, r8
0045cca0  01 00 00 ea                                      b #0x45ccac
0045cca4  47 b0 e0 e3                                      mvn fp, #0x47
0045cca8  00 80 e0 e3                                      mvn r8, #0
0045ccac  18 31 9f e5                                      ldr r3, [pc, #0x118]
0045ccb0  07 60 94 e7                                      ldr r6, [r4, r7]
0045ccb4  00 10 a0 e3                                      mov r1, #0
0045ccb8  03 30 94 e7                                      ldr r3, [r4, r3]
0045ccbc  01 20 a0 e3                                      mov r2, #1
0045ccc0  40 00 96 e5                                      ldr r0, [r6, #0x40]
0045ccc4  00 90 93 e5                                      ldr sb, [r3]
0045ccc8  ea 45 fc eb                                      bl #0x36e478
0045cccc  08 10 a0 e1                                      mov r1, r8
0045ccd0  60 06 90 e5                                      ldr r0, [r0, #0x660]
0045ccd4  00 20 e0 e3                                      mvn r2, #0
0045ccd8  dd 7a fd eb                                      bl #0x3bb854
0045ccdc  00 10 a0 e3                                      mov r1, #0
0045cce0  01 20 a0 e3                                      mov r2, #1
0045cce4  40 00 96 e5                                      ldr r0, [r6, #0x40]
0045cce8  e2 45 fc eb                                      bl #0x36e478
0045ccec  60 06 90 e5                                      ldr r0, [r0, #0x660]
0045ccf0  ec 7d fd eb                                      bl #0x3bc4a8
0045ccf4  a6 82 0e eb                                      bl #0x7fd794
0045ccf8  05 30 d0 e5                                      ldrb r3, [r0, #5]
0045ccfc  00 00 53 e3                                      cmp r3, #0
0045cd00  1e 00 00 1a                                      bne #0x45cd80
0045cd04  07 60 94 e7                                      ldr r6, [r4, r7]
0045cd08  00 10 a0 e3                                      mov r1, #0
0045cd0c  01 20 a0 e3                                      mov r2, #1
0045cd10  40 00 96 e5                                      ldr r0, [r6, #0x40]
0045cd14  0b 90 89 e0                                      add sb, sb, fp
0045cd18  20 70 99 e5                                      ldr r7, [sb, #0x20]
0045cd1c  08 80 9a e5                                      ldr r8, [sl, #8]
0045cd20  d4 45 fc eb                                      bl #0x36e478
0045cd24  60 06 90 e5                                      ldr r0, [r0, #0x660]
0045cd28  7e 7a fd eb                                      bl #0x3bb728
0045cd2c  00 30 a0 e1                                      mov r3, r0
0045cd30  06 00 a0 e1                                      mov r0, r6
0045cd34  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
0045cd38  00 c0 a0 e3                                      mov ip, #0
0045cd3c  01 e0 a0 e3                                      mov lr, #1
0045cd40  07 10 a0 e1                                      mov r1, r7
0045cd44  08 20 a0 e1                                      mov r2, r8
0045cd48  04 e0 8d e5                                      str lr, [sp, #4]
0045cd4c  08 60 8d e5                                      str r6, [sp, #8]
0045cd50  14 c0 8d e5                                      str ip, [sp, #0x14]
0045cd54  00 e0 8d e5                                      str lr, [sp]
0045cd58  0c c0 8d e5                                      str ip, [sp, #0xc]
0045cd5c  10 c0 8d e5                                      str ip, [sp, #0x10]
0045cd60  18 3c fb eb                                      bl #0x32bdc8
0045cd64  05 30 94 e7                                      ldr r3, [r4, r5]
0045cd68  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0045cd6c  00 30 93 e5                                      ldr r3, [r3]
0045cd70  03 00 52 e1                                      cmp r2, r3
0045cd74  0c 00 00 1a                                      bne #0x45cdac
0045cd78  44 d0 8d e2                                      add sp, sp, #0x44
0045cd7c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045cd80  00 10 a0 e3                                      mov r1, #0
0045cd84  01 20 a0 e3                                      mov r2, #1
0045cd88  40 00 96 e5                                      ldr r0, [r6, #0x40]
0045cd8c  b9 45 fc eb                                      bl #0x36e478
0045cd90  60 86 90 e5                                      ldr r8, [r0, #0x660]
0045cd94  40 00 96 e5                                      ldr r0, [r6, #0x40]
0045cd98  bf 44 fc eb                                      bl #0x36e09c
0045cd9c  60 36 90 e5                                      ldr r3, [r0, #0x660]
0045cda0  08 00 53 e1                                      cmp r3, r8
0045cda4  ee ff ff 1a                                      bne #0x45cd64
0045cda8  d5 ff ff ea                                      b #0x45cd04
0045cdac  57 c5 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045cdb0  e0 7e 53 00 ac 40 00 00 84 08 00 00 f4 37 00 00  .byte 0xe0, 0x7e, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
0045cdc0  98 04 47 00 c0 18 00 00 5c 3b 00 00 74 08 00 00  .byte 0x98, 0x04, 0x47, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00, 0x74, 0x08, 0x00, 0x00
