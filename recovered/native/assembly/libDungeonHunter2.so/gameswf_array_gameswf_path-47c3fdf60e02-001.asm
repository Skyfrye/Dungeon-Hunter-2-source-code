; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076172c, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::path>
; alias: _ZN7gameswf5arrayINS_4pathEE7reserveEi
; demangled: gameswf::array<gameswf::path>::reserve(int)
; decoder-mode: arm
0076172c  10 40 2d e9                                      push {r4, lr}
00761730  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00761734  00 40 a0 e1                                      mov r4, r0
00761738  00 00 53 e3                                      cmp r3, #0
0076173c  11 00 00 1a                                      bne #0x761788
00761740  00 00 51 e3                                      cmp r1, #0
00761744  08 20 90 e5                                      ldr r2, [r0, #8]
00761748  08 10 80 e5                                      str r1, [r0, #8]
0076174c  0e 00 00 1a                                      bne #0x76178c
00761750  00 00 90 e5                                      ldr r0, [r0]
00761754  00 00 50 e3                                      cmp r0, #0
00761758  02 00 00 0a                                      beq #0x761768
0076175c  28 10 a0 e3                                      mov r1, #0x28
00761760  91 02 01 e0                                      mul r1, r1, r2
00761764  f3 c4 ff eb                                      bl #0x752b38
00761768  00 30 a0 e3                                      mov r3, #0
0076176c  00 30 84 e5                                      str r3, [r4]
00761770  10 80 bd e8                                      pop {r4, pc}
00761774  28 00 a0 e3                                      mov r0, #0x28
00761778  90 01 00 e0                                      mul r0, r0, r1
0076177c  0c 10 a0 e1                                      mov r1, ip
00761780  05 c5 ff eb                                      bl #0x752b9c
00761784  00 00 84 e5                                      str r0, [r4]
00761788  10 80 bd e8                                      pop {r4, pc}
0076178c  00 c0 90 e5                                      ldr ip, [r0]
00761790  00 00 5c e3                                      cmp ip, #0
00761794  f6 ff ff 0a                                      beq #0x761774
00761798  28 e0 a0 e3                                      mov lr, #0x28
0076179c  9e 02 02 e0                                      mul r2, lr, r2
007617a0  0c 00 a0 e1                                      mov r0, ip
007617a4  9e 01 01 e0                                      mul r1, lr, r1
007617a8  ff c4 ff eb                                      bl #0x752bac
007617ac  00 00 84 e5                                      str r0, [r4]
007617b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00761aec, declared_size=176, range_size=176, mode=arm
; class-group: gameswf::array<gameswf::path>
; alias: _ZN7gameswf5arrayINS_4pathEE6resizeEi
; demangled: gameswf::array<gameswf::path>::resize(int)
; decoder-mode: arm
00761aec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00761af0  04 a0 90 e5                                      ldr sl, [r0, #4]
00761af4  00 70 a0 e1                                      mov r7, r0
00761af8  01 80 a0 e1                                      mov r8, r1
00761afc  01 00 5a e1                                      cmp sl, r1
00761b00  0f 00 00 da                                      ble #0x761b44
00761b04  28 50 a0 e3                                      mov r5, #0x28
00761b08  95 01 05 e0                                      mul r5, r5, r1
00761b0c  01 40 a0 e1                                      mov r4, r1
00761b10  00 60 97 e5                                      ldr r6, [r7]
00761b14  00 10 a0 e3                                      mov r1, #0
00761b18  01 40 84 e2                                      add r4, r4, #1
00761b1c  05 60 86 e0                                      add r6, r6, r5
00761b20  14 60 86 e2                                      add r6, r6, #0x14
00761b24  06 00 a0 e1                                      mov r0, r6
00761b28  d7 ff ff eb                                      bl #0x761a8c
00761b2c  06 00 a0 e1                                      mov r0, r6
00761b30  00 10 a0 e3                                      mov r1, #0
00761b34  dd fe ff eb                                      bl #0x7616b0
00761b38  0a 00 54 e1                                      cmp r4, sl
00761b3c  28 50 85 e2                                      add r5, r5, #0x28
00761b40  f2 ff ff 1a                                      bne #0x761b10
00761b44  00 00 58 e3                                      cmp r8, #0
00761b48  02 00 00 0a                                      beq #0x761b58
00761b4c  08 30 97 e5                                      ldr r3, [r7, #8]
00761b50  03 00 58 e1                                      cmp r8, r3
00761b54  0c 00 00 ca                                      bgt #0x761b8c
00761b58  08 00 5a e1                                      cmp sl, r8
00761b5c  08 00 00 aa                                      bge #0x761b84
00761b60  28 40 a0 e3                                      mov r4, #0x28
00761b64  94 0a 04 e0                                      mul r4, r4, sl
00761b68  00 00 97 e5                                      ldr r0, [r7]
00761b6c  01 a0 8a e2                                      add sl, sl, #1
00761b70  04 00 80 e0                                      add r0, r0, r4
00761b74  0a 60 00 eb                                      bl #0x779ba4
00761b78  08 00 5a e1                                      cmp sl, r8
00761b7c  28 40 84 e2                                      add r4, r4, #0x28
00761b80  f8 ff ff 1a                                      bne #0x761b68
00761b84  04 80 87 e5                                      str r8, [r7, #4]
00761b88  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00761b8c  07 00 a0 e1                                      mov r0, r7
00761b90  c8 10 88 e0                                      add r1, r8, r8, asr #1
00761b94  e4 fe ff eb                                      bl #0x76172c
00761b98  ee ff ff ea                                      b #0x761b58

; FUNCTION 0x0077ae28, declared_size=200, range_size=200, mode=arm
; class-group: gameswf::array<gameswf::path>
; alias: _ZN7gameswf5arrayINS_4pathEEaSERKS2_
; demangled: gameswf::array<gameswf::path>::operator=(gameswf::array<gameswf::path> const&)
; decoder-mode: arm
0077ae28  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0077ae2c  00 80 a0 e1                                      mov r8, r0
0077ae30  01 90 a0 e1                                      mov sb, r1
0077ae34  04 10 91 e5                                      ldr r1, [r1, #4]
0077ae38  2b 9b ff eb                                      bl #0x761aec
0077ae3c  04 30 98 e5                                      ldr r3, [r8, #4]
0077ae40  00 00 53 e3                                      cmp r3, #0
0077ae44  28 00 00 da                                      ble #0x77aeec
0077ae48  00 70 a0 e3                                      mov r7, #0
0077ae4c  07 a0 a0 e1                                      mov sl, r7
0077ae50  00 60 99 e5                                      ldr r6, [sb]
0077ae54  00 30 98 e5                                      ldr r3, [r8]
0077ae58  07 20 96 e7                                      ldr r2, [r6, r7]
0077ae5c  07 60 86 e0                                      add r6, r6, r7
0077ae60  07 50 83 e0                                      add r5, r3, r7
0077ae64  07 20 83 e7                                      str r2, [r3, r7]
0077ae68  04 30 96 e5                                      ldr r3, [r6, #4]
0077ae6c  14 00 85 e2                                      add r0, r5, #0x14
0077ae70  04 30 85 e5                                      str r3, [r5, #4]
0077ae74  08 30 96 e5                                      ldr r3, [r6, #8]
0077ae78  08 30 85 e5                                      str r3, [r5, #8]
0077ae7c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0077ae80  0c 30 85 e5                                      str r3, [r5, #0xc]
0077ae84  10 30 96 e5                                      ldr r3, [r6, #0x10]
0077ae88  10 30 85 e5                                      str r3, [r5, #0x10]
0077ae8c  18 10 96 e5                                      ldr r1, [r6, #0x18]
0077ae90  fd 9a ff eb                                      bl #0x761a8c
0077ae94  18 30 95 e5                                      ldr r3, [r5, #0x18]
0077ae98  00 00 53 e3                                      cmp r3, #0
0077ae9c  0b 00 00 da                                      ble #0x77aed0
0077aea0  00 40 a0 e3                                      mov r4, #0
0077aea4  14 20 96 e5                                      ldr r2, [r6, #0x14]
0077aea8  14 c0 95 e5                                      ldr ip, [r5, #0x14]
0077aeac  04 32 a0 e1                                      lsl r3, r4, #4
0077aeb0  01 40 84 e2                                      add r4, r4, #1
0077aeb4  03 c0 8c e0                                      add ip, ip, r3
0077aeb8  03 30 82 e0                                      add r3, r2, r3
0077aebc  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0077aec0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0077aec4  18 30 95 e5                                      ldr r3, [r5, #0x18]
0077aec8  03 00 54 e1                                      cmp r4, r3
0077aecc  f4 ff ff ba                                      blt #0x77aea4
0077aed0  24 30 d6 e5                                      ldrb r3, [r6, #0x24]
0077aed4  01 a0 8a e2                                      add sl, sl, #1
0077aed8  28 70 87 e2                                      add r7, r7, #0x28
0077aedc  24 30 c5 e5                                      strb r3, [r5, #0x24]
0077aee0  04 30 98 e5                                      ldr r3, [r8, #4]
0077aee4  0a 00 53 e1                                      cmp r3, sl
0077aee8  d8 ff ff ca                                      bgt #0x77ae50
0077aeec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
