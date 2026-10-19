; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00870e38, declared_size=324, range_size=324, mode=arm
; class-group: vox::DataNode
; alias: _ZN3vox8DataNode9DropNodesEv
; demangled: vox::DataNode::DropNodes()
; decoder-mode: arm
00870e38  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00870e3c  08 40 90 e5                                      ldr r4, [r0, #8]
00870e40  0c d0 4d e2                                      sub sp, sp, #0xc
00870e44  00 70 a0 e1                                      mov r7, r0
00870e48  00 00 54 e3                                      cmp r4, #0
00870e4c  48 00 00 0a                                      beq #0x870f74
00870e50  08 50 94 e5                                      ldr r5, [r4, #8]
00870e54  00 00 55 e3                                      cmp r5, #0
00870e58  41 00 00 0a                                      beq #0x870f64
00870e5c  08 60 95 e5                                      ldr r6, [r5, #8]
00870e60  00 00 56 e3                                      cmp r6, #0
00870e64  39 00 00 0a                                      beq #0x870f50
00870e68  08 80 96 e5                                      ldr r8, [r6, #8]
00870e6c  00 00 58 e3                                      cmp r8, #0
00870e70  31 00 00 0a                                      beq #0x870f3c
00870e74  08 a0 98 e5                                      ldr sl, [r8, #8]
00870e78  00 00 5a e3                                      cmp sl, #0
00870e7c  29 00 00 0a                                      beq #0x870f28
00870e80  08 90 9a e5                                      ldr sb, [sl, #8]
00870e84  00 00 59 e3                                      cmp sb, #0
00870e88  21 00 00 0a                                      beq #0x870f14
00870e8c  08 b0 99 e5                                      ldr fp, [sb, #8]
00870e90  00 00 5b e3                                      cmp fp, #0
00870e94  19 00 00 0a                                      beq #0x870f00
00870e98  08 30 9b e5                                      ldr r3, [fp, #8]
00870e9c  00 00 53 e3                                      cmp r3, #0
00870ea0  11 00 00 0a                                      beq #0x870eec
00870ea4  08 00 93 e5                                      ldr r0, [r3, #8]
00870ea8  00 00 50 e3                                      cmp r0, #0
00870eac  09 00 00 0a                                      beq #0x870ed8
00870eb0  04 30 8d e5                                      str r3, [sp, #4]
00870eb4  df ff ff eb                                      bl #0x870e38
00870eb8  04 30 9d e5                                      ldr r3, [sp, #4]
00870ebc  08 00 93 e5                                      ldr r0, [r3, #8]
00870ec0  00 00 50 e3                                      cmp r0, #0
00870ec4  00 00 00 0a                                      beq #0x870ecc
00870ec8  5d 7d ea eb                                      bl #0x310444
00870ecc  08 30 9b e5                                      ldr r3, [fp, #8]
00870ed0  00 00 53 e3                                      cmp r3, #0
00870ed4  01 00 00 0a                                      beq #0x870ee0
00870ed8  03 00 a0 e1                                      mov r0, r3
00870edc  58 7d ea eb                                      bl #0x310444
00870ee0  08 b0 99 e5                                      ldr fp, [sb, #8]
00870ee4  00 00 5b e3                                      cmp fp, #0
00870ee8  01 00 00 0a                                      beq #0x870ef4
00870eec  0b 00 a0 e1                                      mov r0, fp
00870ef0  53 7d ea eb                                      bl #0x310444
00870ef4  08 90 9a e5                                      ldr sb, [sl, #8]
00870ef8  00 00 59 e3                                      cmp sb, #0
00870efc  01 00 00 0a                                      beq #0x870f08
00870f00  09 00 a0 e1                                      mov r0, sb
00870f04  4e 7d ea eb                                      bl #0x310444
00870f08  08 a0 98 e5                                      ldr sl, [r8, #8]
00870f0c  00 00 5a e3                                      cmp sl, #0
00870f10  01 00 00 0a                                      beq #0x870f1c
00870f14  0a 00 a0 e1                                      mov r0, sl
00870f18  49 7d ea eb                                      bl #0x310444
00870f1c  08 80 96 e5                                      ldr r8, [r6, #8]
00870f20  00 00 58 e3                                      cmp r8, #0
00870f24  01 00 00 0a                                      beq #0x870f30
00870f28  08 00 a0 e1                                      mov r0, r8
00870f2c  44 7d ea eb                                      bl #0x310444
00870f30  08 60 95 e5                                      ldr r6, [r5, #8]
00870f34  00 00 56 e3                                      cmp r6, #0
00870f38  01 00 00 0a                                      beq #0x870f44
00870f3c  06 00 a0 e1                                      mov r0, r6
00870f40  3f 7d ea eb                                      bl #0x310444
00870f44  08 50 94 e5                                      ldr r5, [r4, #8]
00870f48  00 00 55 e3                                      cmp r5, #0
00870f4c  01 00 00 0a                                      beq #0x870f58
00870f50  05 00 a0 e1                                      mov r0, r5
00870f54  3a 7d ea eb                                      bl #0x310444
00870f58  08 40 97 e5                                      ldr r4, [r7, #8]
00870f5c  00 00 54 e3                                      cmp r4, #0
00870f60  03 00 00 0a                                      beq #0x870f74
00870f64  04 00 a0 e1                                      mov r0, r4
00870f68  0c d0 8d e2                                      add sp, sp, #0xc
00870f6c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00870f70  33 7d ea ea                                      b #0x310444
00870f74  0c d0 8d e2                                      add sp, sp, #0xc
00870f78  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
