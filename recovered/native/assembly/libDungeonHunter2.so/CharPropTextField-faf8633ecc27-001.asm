; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0041f8f0, declared_size=136, range_size=136, mode=arm
; class-group: CharPropTextField
; alias: _ZN17CharPropTextFieldC1EPN7gameswf9characterES2_
; demangled: CharPropTextField::CharPropTextField(gameswf::character*, gameswf::character*)
; decoder-mode: arm
0041f8f0  70 40 2d e9                                      push {r4, r5, r6, lr}
0041f8f4  00 00 52 e3                                      cmp r2, #0
0041f8f8  00 30 e0 e3                                      mvn r3, #0
0041f8fc  00 30 80 e5                                      str r3, [r0]
0041f900  01 20 a0 01                                      moveq r2, r1
0041f904  5f 30 a0 e3                                      mov r3, #0x5f
0041f908  04 30 80 e5                                      str r3, [r0, #4]
0041f90c  08 20 80 e5                                      str r2, [r0, #8]
0041f910  44 50 91 e5                                      ldr r5, [r1, #0x44]
0041f914  00 40 a0 e1                                      mov r4, r0
0041f918  5f 10 a0 e3                                      mov r1, #0x5f
0041f91c  d0 60 d5 e1                                      ldrsb r6, [r5]
0041f920  01 00 76 e3                                      cmn r6, #1
0041f924  01 00 85 12                                      addne r0, r5, #1
0041f928  0c 00 95 05                                      ldreq r0, [r5, #0xc]
0041f92c  bd bc fb eb                                      bl #0x30ec28
0041f930  00 00 50 e3                                      cmp r0, #0
0041f934  0d 00 00 0a                                      beq #0x41f970
0041f938  01 00 76 e3                                      cmn r6, #1
0041f93c  0c 50 95 05                                      ldreq r5, [r5, #0xc]
0041f940  01 50 85 12                                      addne r5, r5, #1
0041f944  d2 30 d5 e1                                      ldrsb r3, [r5, #2]
0041f948  69 00 53 e3                                      cmp r3, #0x69
0041f94c  03 00 00 0a                                      beq #0x41f960
0041f950  70 00 53 e3                                      cmp r3, #0x70
0041f954  01 00 00 0a                                      beq #0x41f960
0041f958  62 00 53 e3                                      cmp r3, #0x62
0041f95c  5f 30 a0 13                                      movne r3, #0x5f
0041f960  04 30 84 e5                                      str r3, [r4, #4]
0041f964  01 00 80 e2                                      add r0, r0, #1
0041f968  7a 07 ff eb                                      bl #0x3e1758
0041f96c  00 00 84 e5                                      str r0, [r4]
0041f970  04 00 a0 e1                                      mov r0, r4
0041f974  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0041f978, declared_size=136, range_size=136, mode=arm
; class-group: CharPropTextField
; alias: _ZN17CharPropTextFieldC2EPN7gameswf9characterES2_
; demangled: CharPropTextField::CharPropTextField(gameswf::character*, gameswf::character*)
; decoder-mode: arm
0041f978  70 40 2d e9                                      push {r4, r5, r6, lr}
0041f97c  00 00 52 e3                                      cmp r2, #0
0041f980  00 30 e0 e3                                      mvn r3, #0
0041f984  00 30 80 e5                                      str r3, [r0]
0041f988  01 20 a0 01                                      moveq r2, r1
0041f98c  5f 30 a0 e3                                      mov r3, #0x5f
0041f990  04 30 80 e5                                      str r3, [r0, #4]
0041f994  08 20 80 e5                                      str r2, [r0, #8]
0041f998  44 50 91 e5                                      ldr r5, [r1, #0x44]
0041f99c  00 40 a0 e1                                      mov r4, r0
0041f9a0  5f 10 a0 e3                                      mov r1, #0x5f
0041f9a4  d0 60 d5 e1                                      ldrsb r6, [r5]
0041f9a8  01 00 76 e3                                      cmn r6, #1
0041f9ac  01 00 85 12                                      addne r0, r5, #1
0041f9b0  0c 00 95 05                                      ldreq r0, [r5, #0xc]
0041f9b4  9b bc fb eb                                      bl #0x30ec28
0041f9b8  00 00 50 e3                                      cmp r0, #0
0041f9bc  0d 00 00 0a                                      beq #0x41f9f8
0041f9c0  01 00 76 e3                                      cmn r6, #1
0041f9c4  0c 50 95 05                                      ldreq r5, [r5, #0xc]
0041f9c8  01 50 85 12                                      addne r5, r5, #1
0041f9cc  d2 30 d5 e1                                      ldrsb r3, [r5, #2]
0041f9d0  69 00 53 e3                                      cmp r3, #0x69
0041f9d4  03 00 00 0a                                      beq #0x41f9e8
0041f9d8  70 00 53 e3                                      cmp r3, #0x70
0041f9dc  01 00 00 0a                                      beq #0x41f9e8
0041f9e0  62 00 53 e3                                      cmp r3, #0x62
0041f9e4  5f 30 a0 13                                      movne r3, #0x5f
0041f9e8  04 30 84 e5                                      str r3, [r4, #4]
0041f9ec  01 00 80 e2                                      add r0, r0, #1
0041f9f0  58 07 ff eb                                      bl #0x3e1758
0041f9f4  00 00 84 e5                                      str r0, [r4]
0041f9f8  04 00 a0 e1                                      mov r0, r4
0041f9fc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00422aa8, declared_size=616, range_size=616, mode=arm
; class-group: CharPropTextField
; alias: _ZN17CharPropTextField6UpdateEP8RenderFX
; demangled: CharPropTextField::Update(RenderFX*)
; decoder-mode: arm
00422aa8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00422aac  38 42 9f e5                                      ldr r4, [pc, #0x238]
00422ab0  38 62 9f e5                                      ldr r6, [pc, #0x238]
00422ab4  38 72 9f e5                                      ldr r7, [pc, #0x238]
00422ab8  04 40 8f e0                                      add r4, pc, r4
00422abc  06 30 94 e7                                      ldr r3, [r4, r6]
00422ac0  07 20 94 e7                                      ldr r2, [r4, r7]
00422ac4  24 d0 4d e2                                      sub sp, sp, #0x24
00422ac8  00 30 93 e5                                      ldr r3, [r3]
00422acc  00 50 a0 e1                                      mov r5, r0
00422ad0  01 80 a0 e1                                      mov r8, r1
00422ad4  40 00 92 e5                                      ldr r0, [r2, #0x40]
00422ad8  00 10 a0 e3                                      mov r1, #0
00422adc  01 20 a0 e3                                      mov r2, #1
00422ae0  1c 30 8d e5                                      str r3, [sp, #0x1c]
00422ae4  63 2e fd eb                                      bl #0x36e478
00422ae8  60 a6 90 e5                                      ldr sl, [r0, #0x660]
00422aec  00 00 5a e3                                      cmp sl, #0
00422af0  23 00 00 0a                                      beq #0x422b84
00422af4  00 10 95 e5                                      ldr r1, [r5]
00422af8  01 00 71 e3                                      cmn r1, #1
00422afc  20 00 00 0a                                      beq #0x422b84
00422b00  56 ae 8a e2                                      add sl, sl, #0x560
00422b04  0a 00 a0 e1                                      mov r0, sl
00422b08  00 20 a0 e3                                      mov r2, #0
00422b0c  9b f3 fe eb                                      bl #0x3df980
00422b10  04 30 95 e5                                      ldr r3, [r5, #4]
00422b14  00 90 a0 e1                                      mov sb, r0
00422b18  5f 30 43 e2                                      sub r3, r3, #0x5f
00422b1c  11 00 53 e3                                      cmp r3, #0x11
00422b20  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00422b24  16 00 00 ea                                      b #0x422b84
00422b28  2b 00 00 ea                                      b #0x422bdc
00422b2c  14 00 00 ea                                      b #0x422b84
00422b30  13 00 00 ea                                      b #0x422b84
00422b34  42 00 00 ea                                      b #0x422c44
00422b38  11 00 00 ea                                      b #0x422b84
00422b3c  10 00 00 ea                                      b #0x422b84
00422b40  0f 00 00 ea                                      b #0x422b84
00422b44  0e 00 00 ea                                      b #0x422b84
00422b48  0d 00 00 ea                                      b #0x422b84
00422b4c  0c 00 00 ea                                      b #0x422b84
00422b50  06 00 00 ea                                      b #0x422b70
00422b54  0a 00 00 ea                                      b #0x422b84
00422b58  09 00 00 ea                                      b #0x422b84
00422b5c  08 00 00 ea                                      b #0x422b84
00422b60  07 00 00 ea                                      b #0x422b84
00422b64  06 00 00 ea                                      b #0x422b84
00422b68  05 00 00 ea                                      b #0x422b84
00422b6c  47 00 00 ea                                      b #0x422c90
00422b70  01 00 70 e3                                      cmn r0, #1
00422b74  02 00 00 0a                                      beq #0x422b84
00422b78  08 00 95 e5                                      ldr r0, [r5, #8]
00422b7c  09 10 a0 e1                                      mov r1, sb
00422b80  32 ce ff eb                                      bl #0x416450
00422b84  06 30 94 e7                                      ldr r3, [r4, r6]
00422b88  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00422b8c  00 30 93 e5                                      ldr r3, [r3]
00422b90  03 00 52 e1                                      cmp r2, r3
00422b94  53 00 00 1a                                      bne #0x422ce8
00422b98  24 d0 8d e2                                      add sp, sp, #0x24
00422b9c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00422ba0  08 a0 95 e5                                      ldr sl, [r5, #8]
00422ba4  54 e0 9a e5                                      ldr lr, [sl, #0x54]
00422ba8  00 00 5e e3                                      cmp lr, #0
00422bac  45 00 00 0a                                      beq #0x422cc8
00422bb0  40 31 9f e5                                      ldr r3, [pc, #0x140]
00422bb4  0e c0 a0 e1                                      mov ip, lr
00422bb8  03 b0 94 e7                                      ldr fp, [r4, r3]
00422bbc  0f 00 bb e8                                      ldm fp!, {r0, r1, r2, r3}
00422bc0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00422bc4  0f 00 9b e8                                      ldm fp, {r0, r1, r2, r3}
00422bc8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00422bcc  54 30 9a e5                                      ldr r3, [sl, #0x54]
00422bd0  01 20 a0 e3                                      mov r2, #1
00422bd4  9a 20 ca e5                                      strb r2, [sl, #0x9a]
00422bd8  48 30 8a e5                                      str r3, [sl, #0x48]
00422bdc  fa 0f 59 e3                                      cmp sb, #0x3e8
00422be0  31 00 00 da                                      ble #0x422cac
00422be4  04 a0 8d e2                                      add sl, sp, #4
00422be8  0a 00 a0 e1                                      mov r0, sl
00422bec  10 10 a0 e3                                      mov r1, #0x10
00422bf0  14 a0 8d e5                                      str sl, [sp, #0x14]
00422bf4  18 a0 8d e5                                      str sl, [sp, #0x18]
00422bf8  9f ba fb eb                                      bl #0x31167c
00422bfc  14 30 9d e5                                      ldr r3, [sp, #0x14]
00422c00  00 20 a0 e3                                      mov r2, #0
00422c04  07 10 94 e7                                      ldr r1, [r4, r7]
00422c08  00 20 c3 e5                                      strb r2, [r3]
00422c0c  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
00422c10  09 30 a0 e1                                      mov r3, sb
00422c14  34 00 91 e5                                      ldr r0, [r1, #0x34]
00422c18  02 20 8f e0                                      add r2, pc, r2
00422c1c  0a 10 a0 e1                                      mov r1, sl
00422c20  b3 98 03 eb                                      bl #0x508ef4
00422c24  08 00 a0 e1                                      mov r0, r8
00422c28  08 10 95 e5                                      ldr r1, [r5, #8]
00422c2c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00422c30  01 30 a0 e3                                      mov r3, #1
00422c34  a9 19 0e eb                                      bl #0x7a92e0
00422c38  0a 00 a0 e1                                      mov r0, sl
00422c3c  84 d5 fb eb                                      bl #0x318254
00422c40  cf ff ff ea                                      b #0x422b84
00422c44  0a 00 a0 e1                                      mov r0, sl
00422c48  00 10 95 e5                                      ldr r1, [r5]
00422c4c  31 f4 fe eb                                      bl #0x3dfd18
00422c50  00 00 50 e3                                      cmp r0, #0
00422c54  d1 ff ff 0a                                      beq #0x422ba0
00422c58  07 30 94 e7                                      ldr r3, [r4, r7]
00422c5c  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
00422c60  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
00422c64  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00422c68  01 10 8f e0                                      add r1, pc, r1
00422c6c  02 20 8f e0                                      add r2, pc, r2
00422c70  08 a0 95 e5                                      ldr sl, [r5, #8]
00422c74  d8 87 02 eb                                      bl #0x4c4bdc
00422c78  0a 10 a0 e1                                      mov r1, sl
00422c7c  00 30 a0 e1                                      mov r3, r0
00422c80  ff 24 a0 e3                                      mov r2, #0xff000000
00422c84  08 00 a0 e1                                      mov r0, r8
00422c88  50 1c 0e eb                                      bl #0x7a9dd0
00422c8c  d2 ff ff ea                                      b #0x422bdc
00422c90  70 20 9f e5                                      ldr r2, [pc, #0x70]
00422c94  08 00 a0 e1                                      mov r0, r8
00422c98  08 10 95 e5                                      ldr r1, [r5, #8]
00422c9c  02 20 8f e0                                      add r2, pc, r2
00422ca0  09 30 a0 e1                                      mov r3, sb
00422ca4  f4 19 0e eb                                      bl #0x7a947c
00422ca8  b5 ff ff ea                                      b #0x422b84
00422cac  58 20 9f e5                                      ldr r2, [pc, #0x58]
00422cb0  08 00 a0 e1                                      mov r0, r8
00422cb4  08 10 95 e5                                      ldr r1, [r5, #8]
00422cb8  02 20 8f e0                                      add r2, pc, r2
00422cbc  09 30 a0 e1                                      mov r3, sb
00422cc0  ed 19 0e eb                                      bl #0x7a947c
00422cc4  ae ff ff ea                                      b #0x422b84
00422cc8  0e 10 a0 e1                                      mov r1, lr
00422ccc  6c 00 a0 e3                                      mov r0, #0x6c
00422cd0  b4 bf 0c eb                                      bl #0x752ba8
00422cd4  00 b0 a0 e1                                      mov fp, r0
00422cd8  20 bd ff eb                                      bl #0x412160
00422cdc  54 b0 8a e5                                      str fp, [sl, #0x54]
00422ce0  0b e0 a0 e1                                      mov lr, fp
00422ce4  b1 ff ff ea                                      b #0x422bb0
00422ce8  88 ad fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00422cec  d8 1f 57 00 ac 40 00 00 f4 37 00 00 84 34 00 00  .byte 0xd8, 0x1f, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x34, 0x00, 0x00
00422cfc  20 64 4a 00 b0 63 4a 00 bc 63 4a 00 74 63 4a 00  .byte 0x20, 0x64, 0x4a, 0x00, 0xb0, 0x63, 0x4a, 0x00, 0xbc, 0x63, 0x4a, 0x00, 0x74, 0x63, 0x4a, 0x00
00422d0c  f8 f1 49 00                                      .byte 0xf8, 0xf1, 0x49, 0x00
