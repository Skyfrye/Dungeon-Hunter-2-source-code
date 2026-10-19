; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0069aca8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PDBox
; alias: _ZN6glitch2ps5PDBoxD1Ev
; demangled: glitch::ps::PDBox::~PDBox()
; decoder-mode: arm
0069aca8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069acac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PDBox
; alias: _ZNK6glitch2ps5PDBox7getTypeEv
; demangled: glitch::ps::PDBox::getType() const
; decoder-mode: arm
0069acac  00 00 a0 e3                                      mov r0, #0
0069acb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069aecc, declared_size=424, range_size=424, mode=arm
; class-group: glitch::ps::PDBox
; alias: _ZN6glitch2ps5PDBoxC2ERKNS_4core8vector3dIfEES6_
; demangled: glitch::ps::PDBox::PDBox(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
0069aecc  98 c1 9f e5                                      ldr ip, [pc, #0x198]
0069aed0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0069aed4  94 e1 9f e5                                      ldr lr, [pc, #0x194]
0069aed8  0c c0 8f e0                                      add ip, pc, ip
0069aedc  00 30 a0 e3                                      mov r3, #0
0069aee0  0e e0 9c e7                                      ldr lr, [ip, lr]
0069aee4  04 30 80 e5                                      str r3, [r0, #4]
0069aee8  08 30 80 e5                                      str r3, [r0, #8]
0069aeec  08 e0 8e e2                                      add lr, lr, #8
0069aef0  00 e0 80 e5                                      str lr, [r0]
0069aef4  0c 30 80 e5                                      str r3, [r0, #0xc]
0069aef8  10 30 80 e5                                      str r3, [r0, #0x10]
0069aefc  14 30 80 e5                                      str r3, [r0, #0x14]
0069af00  18 30 80 e5                                      str r3, [r0, #0x18]
0069af04  58 30 80 e5                                      str r3, [r0, #0x58]
0069af08  1c 30 80 e5                                      str r3, [r0, #0x1c]
0069af0c  20 30 80 e5                                      str r3, [r0, #0x20]
0069af10  24 30 80 e5                                      str r3, [r0, #0x24]
0069af14  38 30 80 e5                                      str r3, [r0, #0x38]
0069af18  3c 30 80 e5                                      str r3, [r0, #0x3c]
0069af1c  40 30 80 e5                                      str r3, [r0, #0x40]
0069af20  44 30 80 e5                                      str r3, [r0, #0x44]
0069af24  48 30 80 e5                                      str r3, [r0, #0x48]
0069af28  4c 30 80 e5                                      str r3, [r0, #0x4c]
0069af2c  50 30 80 e5                                      str r3, [r0, #0x50]
0069af30  54 30 80 e5                                      str r3, [r0, #0x54]
0069af34  00 30 91 e5                                      ldr r3, [r1]
0069af38  00 40 a0 e1                                      mov r4, r0
0069af3c  01 50 a0 e1                                      mov r5, r1
0069af40  04 30 80 e5                                      str r3, [r0, #4]
0069af44  04 30 91 e5                                      ldr r3, [r1, #4]
0069af48  02 60 a0 e1                                      mov r6, r2
0069af4c  08 30 80 e5                                      str r3, [r0, #8]
0069af50  08 30 91 e5                                      ldr r3, [r1, #8]
0069af54  0c 30 80 e5                                      str r3, [r0, #0xc]
0069af58  00 30 92 e5                                      ldr r3, [r2]
0069af5c  10 30 80 e5                                      str r3, [r0, #0x10]
0069af60  04 30 92 e5                                      ldr r3, [r2, #4]
0069af64  14 30 80 e5                                      str r3, [r0, #0x14]
0069af68  08 30 92 e5                                      ldr r3, [r2, #8]
0069af6c  18 30 80 e5                                      str r3, [r0, #0x18]
0069af70  00 70 92 e5                                      ldr r7, [r2]
0069af74  00 10 91 e5                                      ldr r1, [r1]
0069af78  07 00 a0 e1                                      mov r0, r7
0069af7c  e2 cd f1 eb                                      bl #0x30e70c
0069af80  00 00 50 e3                                      cmp r0, #0
0069af84  04 70 84 15                                      strne r7, [r4, #4]
0069af88  00 30 95 15                                      ldrne r3, [r5]
0069af8c  10 30 84 15                                      strne r3, [r4, #0x10]
0069af90  04 70 96 e5                                      ldr r7, [r6, #4]
0069af94  04 10 95 e5                                      ldr r1, [r5, #4]
0069af98  07 00 a0 e1                                      mov r0, r7
0069af9c  da cd f1 eb                                      bl #0x30e70c
0069afa0  00 00 50 e3                                      cmp r0, #0
0069afa4  08 70 84 15                                      strne r7, [r4, #8]
0069afa8  04 30 95 15                                      ldrne r3, [r5, #4]
0069afac  14 30 84 15                                      strne r3, [r4, #0x14]
0069afb0  08 80 96 e5                                      ldr r8, [r6, #8]
0069afb4  08 10 95 e5                                      ldr r1, [r5, #8]
0069afb8  08 00 a0 e1                                      mov r0, r8
0069afbc  d2 cd f1 eb                                      bl #0x30e70c
0069afc0  00 00 50 e3                                      cmp r0, #0
0069afc4  0c 80 84 15                                      strne r8, [r4, #0xc]
0069afc8  08 50 95 15                                      ldrne r5, [r5, #8]
0069afcc  04 10 94 e5                                      ldr r1, [r4, #4]
0069afd0  10 00 94 e5                                      ldr r0, [r4, #0x10]
0069afd4  18 50 84 15                                      strne r5, [r4, #0x18]
0069afd8  18 50 94 05                                      ldreq r5, [r4, #0x18]
0069afdc  0c 80 94 05                                      ldreq r8, [r4, #0xc]
0069afe0  f1 cc f1 eb                                      bl #0x30e3ac
0069afe4  08 10 94 e5                                      ldr r1, [r4, #8]
0069afe8  00 70 a0 e1                                      mov r7, r0
0069afec  14 00 94 e5                                      ldr r0, [r4, #0x14]
0069aff0  ed cc f1 eb                                      bl #0x30e3ac
0069aff4  08 10 a0 e1                                      mov r1, r8
0069aff8  00 60 a0 e1                                      mov r6, r0
0069affc  05 00 a0 e1                                      mov r0, r5
0069b000  e9 cc f1 eb                                      bl #0x30e3ac
0069b004  00 30 a0 e3                                      mov r3, #0
0069b008  54 30 84 e5                                      str r3, [r4, #0x54]
0069b00c  00 50 a0 e1                                      mov r5, r0
0069b010  24 00 84 e5                                      str r0, [r4, #0x24]
0069b014  06 10 a0 e1                                      mov r1, r6
0069b018  1c 70 84 e5                                      str r7, [r4, #0x1c]
0069b01c  20 60 84 e5                                      str r6, [r4, #0x20]
0069b020  38 70 84 e5                                      str r7, [r4, #0x38]
0069b024  3c 30 84 e5                                      str r3, [r4, #0x3c]
0069b028  40 30 84 e5                                      str r3, [r4, #0x40]
0069b02c  44 30 84 e5                                      str r3, [r4, #0x44]
0069b030  4c 30 84 e5                                      str r3, [r4, #0x4c]
0069b034  50 30 84 e5                                      str r3, [r4, #0x50]
0069b038  58 00 84 e5                                      str r0, [r4, #0x58]
0069b03c  34 00 84 e5                                      str r0, [r4, #0x34]
0069b040  2c 70 84 e5                                      str r7, [r4, #0x2c]
0069b044  48 60 84 e5                                      str r6, [r4, #0x48]
0069b048  30 60 84 e5                                      str r6, [r4, #0x30]
0069b04c  07 00 a0 e1                                      mov r0, r7
0069b050  d3 ce f1 eb                                      bl #0x30eba4
0069b054  00 10 a0 e1                                      mov r1, r0
0069b058  05 00 a0 e1                                      mov r0, r5
0069b05c  d0 ce f1 eb                                      bl #0x30eba4
0069b060  28 00 84 e5                                      str r0, [r4, #0x28]
0069b064  04 00 a0 e1                                      mov r0, r4
0069b068  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0069b06c  b8 9b 2f 00 60 4b 00 00                          .byte 0xb8, 0x9b, 0x2f, 0x00, 0x60, 0x4b, 0x00, 0x00

; FUNCTION 0x0069b074, declared_size=424, range_size=424, mode=arm
; class-group: glitch::ps::PDBox
; alias: _ZN6glitch2ps5PDBoxC1ERKNS_4core8vector3dIfEES6_
; demangled: glitch::ps::PDBox::PDBox(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
0069b074  98 c1 9f e5                                      ldr ip, [pc, #0x198]
0069b078  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0069b07c  94 e1 9f e5                                      ldr lr, [pc, #0x194]
0069b080  0c c0 8f e0                                      add ip, pc, ip
0069b084  00 30 a0 e3                                      mov r3, #0
0069b088  0e e0 9c e7                                      ldr lr, [ip, lr]
0069b08c  04 30 80 e5                                      str r3, [r0, #4]
0069b090  08 30 80 e5                                      str r3, [r0, #8]
0069b094  08 e0 8e e2                                      add lr, lr, #8
0069b098  00 e0 80 e5                                      str lr, [r0]
0069b09c  0c 30 80 e5                                      str r3, [r0, #0xc]
0069b0a0  10 30 80 e5                                      str r3, [r0, #0x10]
0069b0a4  14 30 80 e5                                      str r3, [r0, #0x14]
0069b0a8  18 30 80 e5                                      str r3, [r0, #0x18]
0069b0ac  58 30 80 e5                                      str r3, [r0, #0x58]
0069b0b0  1c 30 80 e5                                      str r3, [r0, #0x1c]
0069b0b4  20 30 80 e5                                      str r3, [r0, #0x20]
0069b0b8  24 30 80 e5                                      str r3, [r0, #0x24]
0069b0bc  38 30 80 e5                                      str r3, [r0, #0x38]
0069b0c0  3c 30 80 e5                                      str r3, [r0, #0x3c]
0069b0c4  40 30 80 e5                                      str r3, [r0, #0x40]
0069b0c8  44 30 80 e5                                      str r3, [r0, #0x44]
0069b0cc  48 30 80 e5                                      str r3, [r0, #0x48]
0069b0d0  4c 30 80 e5                                      str r3, [r0, #0x4c]
0069b0d4  50 30 80 e5                                      str r3, [r0, #0x50]
0069b0d8  54 30 80 e5                                      str r3, [r0, #0x54]
0069b0dc  00 30 91 e5                                      ldr r3, [r1]
0069b0e0  00 40 a0 e1                                      mov r4, r0
0069b0e4  01 50 a0 e1                                      mov r5, r1
0069b0e8  04 30 80 e5                                      str r3, [r0, #4]
0069b0ec  04 30 91 e5                                      ldr r3, [r1, #4]
0069b0f0  02 60 a0 e1                                      mov r6, r2
0069b0f4  08 30 80 e5                                      str r3, [r0, #8]
0069b0f8  08 30 91 e5                                      ldr r3, [r1, #8]
0069b0fc  0c 30 80 e5                                      str r3, [r0, #0xc]
0069b100  00 30 92 e5                                      ldr r3, [r2]
0069b104  10 30 80 e5                                      str r3, [r0, #0x10]
0069b108  04 30 92 e5                                      ldr r3, [r2, #4]
0069b10c  14 30 80 e5                                      str r3, [r0, #0x14]
0069b110  08 30 92 e5                                      ldr r3, [r2, #8]
0069b114  18 30 80 e5                                      str r3, [r0, #0x18]
0069b118  00 70 92 e5                                      ldr r7, [r2]
0069b11c  00 10 91 e5                                      ldr r1, [r1]
0069b120  07 00 a0 e1                                      mov r0, r7
0069b124  78 cd f1 eb                                      bl #0x30e70c
0069b128  00 00 50 e3                                      cmp r0, #0
0069b12c  04 70 84 15                                      strne r7, [r4, #4]
0069b130  00 30 95 15                                      ldrne r3, [r5]
0069b134  10 30 84 15                                      strne r3, [r4, #0x10]
0069b138  04 70 96 e5                                      ldr r7, [r6, #4]
0069b13c  04 10 95 e5                                      ldr r1, [r5, #4]
0069b140  07 00 a0 e1                                      mov r0, r7
0069b144  70 cd f1 eb                                      bl #0x30e70c
0069b148  00 00 50 e3                                      cmp r0, #0
0069b14c  08 70 84 15                                      strne r7, [r4, #8]
0069b150  04 30 95 15                                      ldrne r3, [r5, #4]
0069b154  14 30 84 15                                      strne r3, [r4, #0x14]
0069b158  08 80 96 e5                                      ldr r8, [r6, #8]
0069b15c  08 10 95 e5                                      ldr r1, [r5, #8]
0069b160  08 00 a0 e1                                      mov r0, r8
0069b164  68 cd f1 eb                                      bl #0x30e70c
0069b168  00 00 50 e3                                      cmp r0, #0
0069b16c  0c 80 84 15                                      strne r8, [r4, #0xc]
0069b170  08 50 95 15                                      ldrne r5, [r5, #8]
0069b174  04 10 94 e5                                      ldr r1, [r4, #4]
0069b178  10 00 94 e5                                      ldr r0, [r4, #0x10]
0069b17c  18 50 84 15                                      strne r5, [r4, #0x18]
0069b180  18 50 94 05                                      ldreq r5, [r4, #0x18]
0069b184  0c 80 94 05                                      ldreq r8, [r4, #0xc]
0069b188  87 cc f1 eb                                      bl #0x30e3ac
0069b18c  08 10 94 e5                                      ldr r1, [r4, #8]
0069b190  00 70 a0 e1                                      mov r7, r0
0069b194  14 00 94 e5                                      ldr r0, [r4, #0x14]
0069b198  83 cc f1 eb                                      bl #0x30e3ac
0069b19c  08 10 a0 e1                                      mov r1, r8
0069b1a0  00 60 a0 e1                                      mov r6, r0
0069b1a4  05 00 a0 e1                                      mov r0, r5
0069b1a8  7f cc f1 eb                                      bl #0x30e3ac
0069b1ac  00 30 a0 e3                                      mov r3, #0
0069b1b0  54 30 84 e5                                      str r3, [r4, #0x54]
0069b1b4  00 50 a0 e1                                      mov r5, r0
0069b1b8  24 00 84 e5                                      str r0, [r4, #0x24]
0069b1bc  06 10 a0 e1                                      mov r1, r6
0069b1c0  1c 70 84 e5                                      str r7, [r4, #0x1c]
0069b1c4  20 60 84 e5                                      str r6, [r4, #0x20]
0069b1c8  38 70 84 e5                                      str r7, [r4, #0x38]
0069b1cc  3c 30 84 e5                                      str r3, [r4, #0x3c]
0069b1d0  40 30 84 e5                                      str r3, [r4, #0x40]
0069b1d4  44 30 84 e5                                      str r3, [r4, #0x44]
0069b1d8  4c 30 84 e5                                      str r3, [r4, #0x4c]
0069b1dc  50 30 84 e5                                      str r3, [r4, #0x50]
0069b1e0  58 00 84 e5                                      str r0, [r4, #0x58]
0069b1e4  34 00 84 e5                                      str r0, [r4, #0x34]
0069b1e8  2c 70 84 e5                                      str r7, [r4, #0x2c]
0069b1ec  48 60 84 e5                                      str r6, [r4, #0x48]
0069b1f0  30 60 84 e5                                      str r6, [r4, #0x30]
0069b1f4  07 00 a0 e1                                      mov r0, r7
0069b1f8  69 ce f1 eb                                      bl #0x30eba4
0069b1fc  00 10 a0 e1                                      mov r1, r0
0069b200  05 00 a0 e1                                      mov r0, r5
0069b204  66 ce f1 eb                                      bl #0x30eba4
0069b208  28 00 84 e5                                      str r0, [r4, #0x28]
0069b20c  04 00 a0 e1                                      mov r0, r4
0069b210  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0069b214  10 9a 2f 00 60 4b 00 00                          .byte 0x10, 0x9a, 0x2f, 0x00, 0x60, 0x4b, 0x00, 0x00

; FUNCTION 0x0069b21c, declared_size=312, range_size=312, mode=arm
; class-group: glitch::ps::PDBox
; alias: _ZN6glitch2ps5PDBoxC2Efff
; demangled: glitch::ps::PDBox::PDBox(float, float, float)
; decoder-mode: arm
0069b21c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0069b220  24 e1 9f e5                                      ldr lr, [pc, #0x124]
0069b224  24 61 9f e5                                      ldr r6, [pc, #0x124]
0069b228  00 c0 a0 e3                                      mov ip, #0
0069b22c  0e e0 8f e0                                      add lr, pc, lr
0069b230  06 60 9e e7                                      ldr r6, [lr, r6]
0069b234  00 40 a0 e1                                      mov r4, r0
0069b238  01 80 a0 e1                                      mov r8, r1
0069b23c  08 60 86 e2                                      add r6, r6, #8
0069b240  58 c0 80 e5                                      str ip, [r0, #0x58]
0069b244  04 c0 80 e5                                      str ip, [r0, #4]
0069b248  08 c0 80 e5                                      str ip, [r0, #8]
0069b24c  0c c0 80 e5                                      str ip, [r0, #0xc]
0069b250  10 c0 80 e5                                      str ip, [r0, #0x10]
0069b254  14 c0 80 e5                                      str ip, [r0, #0x14]
0069b258  18 c0 80 e5                                      str ip, [r0, #0x18]
0069b25c  1c c0 80 e5                                      str ip, [r0, #0x1c]
0069b260  20 c0 80 e5                                      str ip, [r0, #0x20]
0069b264  24 c0 80 e5                                      str ip, [r0, #0x24]
0069b268  00 60 80 e5                                      str r6, [r0]
0069b26c  30 20 84 e5                                      str r2, [r4, #0x30]
0069b270  34 30 84 e5                                      str r3, [r4, #0x34]
0069b274  2c 10 84 e5                                      str r1, [r4, #0x2c]
0069b278  38 c0 80 e5                                      str ip, [r0, #0x38]
0069b27c  3c c0 80 e5                                      str ip, [r0, #0x3c]
0069b280  40 c0 80 e5                                      str ip, [r0, #0x40]
0069b284  44 c0 80 e5                                      str ip, [r0, #0x44]
0069b288  48 c0 80 e5                                      str ip, [r0, #0x48]
0069b28c  4c c0 80 e5                                      str ip, [r0, #0x4c]
0069b290  50 c0 80 e5                                      str ip, [r0, #0x50]
0069b294  54 c0 80 e5                                      str ip, [r0, #0x54]
0069b298  bf 14 a0 e3                                      mov r1, #0xbf000000
0069b29c  08 00 a0 e1                                      mov r0, r8
0069b2a0  02 50 a0 e1                                      mov r5, r2
0069b2a4  03 70 a0 e1                                      mov r7, r3
0069b2a8  af ce f1 eb                                      bl #0x30ed6c
0069b2ac  bf 14 a0 e3                                      mov r1, #0xbf000000
0069b2b0  00 a0 a0 e1                                      mov sl, r0
0069b2b4  05 00 a0 e1                                      mov r0, r5
0069b2b8  ab ce f1 eb                                      bl #0x30ed6c
0069b2bc  bf 14 a0 e3                                      mov r1, #0xbf000000
0069b2c0  00 60 a0 e1                                      mov r6, r0
0069b2c4  07 00 a0 e1                                      mov r0, r7
0069b2c8  a7 ce f1 eb                                      bl #0x30ed6c
0069b2cc  04 a0 84 e5                                      str sl, [r4, #4]
0069b2d0  0c 00 84 e5                                      str r0, [r4, #0xc]
0069b2d4  08 60 84 e5                                      str r6, [r4, #8]
0069b2d8  3f 14 a0 e3                                      mov r1, #0x3f000000
0069b2dc  08 00 a0 e1                                      mov r0, r8
0069b2e0  a1 ce f1 eb                                      bl #0x30ed6c
0069b2e4  3f 14 a0 e3                                      mov r1, #0x3f000000
0069b2e8  00 a0 a0 e1                                      mov sl, r0
0069b2ec  05 00 a0 e1                                      mov r0, r5
0069b2f0  9d ce f1 eb                                      bl #0x30ed6c
0069b2f4  3f 14 a0 e3                                      mov r1, #0x3f000000
0069b2f8  00 60 a0 e1                                      mov r6, r0
0069b2fc  07 00 a0 e1                                      mov r0, r7
0069b300  99 ce f1 eb                                      bl #0x30ed6c
0069b304  05 10 a0 e1                                      mov r1, r5
0069b308  18 00 84 e5                                      str r0, [r4, #0x18]
0069b30c  10 a0 84 e5                                      str sl, [r4, #0x10]
0069b310  14 60 84 e5                                      str r6, [r4, #0x14]
0069b314  1c 80 84 e5                                      str r8, [r4, #0x1c]
0069b318  20 50 84 e5                                      str r5, [r4, #0x20]
0069b31c  24 70 84 e5                                      str r7, [r4, #0x24]
0069b320  38 80 84 e5                                      str r8, [r4, #0x38]
0069b324  48 50 84 e5                                      str r5, [r4, #0x48]
0069b328  58 70 84 e5                                      str r7, [r4, #0x58]
0069b32c  08 00 a0 e1                                      mov r0, r8
0069b330  1b ce f1 eb                                      bl #0x30eba4
0069b334  00 10 a0 e1                                      mov r1, r0
0069b338  07 00 a0 e1                                      mov r0, r7
0069b33c  18 ce f1 eb                                      bl #0x30eba4
0069b340  28 00 84 e5                                      str r0, [r4, #0x28]
0069b344  04 00 a0 e1                                      mov r0, r4
0069b348  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0069b34c  64 98 2f 00 60 4b 00 00                          .byte 0x64, 0x98, 0x2f, 0x00, 0x60, 0x4b, 0x00, 0x00

; FUNCTION 0x0069b354, declared_size=312, range_size=312, mode=arm
; class-group: glitch::ps::PDBox
; alias: _ZN6glitch2ps5PDBoxC1Efff
; demangled: glitch::ps::PDBox::PDBox(float, float, float)
; decoder-mode: arm
0069b354  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0069b358  24 e1 9f e5                                      ldr lr, [pc, #0x124]
0069b35c  24 61 9f e5                                      ldr r6, [pc, #0x124]
0069b360  00 c0 a0 e3                                      mov ip, #0
0069b364  0e e0 8f e0                                      add lr, pc, lr
0069b368  06 60 9e e7                                      ldr r6, [lr, r6]
0069b36c  00 40 a0 e1                                      mov r4, r0
0069b370  01 80 a0 e1                                      mov r8, r1
0069b374  08 60 86 e2                                      add r6, r6, #8
0069b378  58 c0 80 e5                                      str ip, [r0, #0x58]
0069b37c  04 c0 80 e5                                      str ip, [r0, #4]
0069b380  08 c0 80 e5                                      str ip, [r0, #8]
0069b384  0c c0 80 e5                                      str ip, [r0, #0xc]
0069b388  10 c0 80 e5                                      str ip, [r0, #0x10]
0069b38c  14 c0 80 e5                                      str ip, [r0, #0x14]
0069b390  18 c0 80 e5                                      str ip, [r0, #0x18]
0069b394  1c c0 80 e5                                      str ip, [r0, #0x1c]
0069b398  20 c0 80 e5                                      str ip, [r0, #0x20]
0069b39c  24 c0 80 e5                                      str ip, [r0, #0x24]
0069b3a0  00 60 80 e5                                      str r6, [r0]
0069b3a4  30 20 84 e5                                      str r2, [r4, #0x30]
0069b3a8  34 30 84 e5                                      str r3, [r4, #0x34]
0069b3ac  2c 10 84 e5                                      str r1, [r4, #0x2c]
0069b3b0  38 c0 80 e5                                      str ip, [r0, #0x38]
0069b3b4  3c c0 80 e5                                      str ip, [r0, #0x3c]
0069b3b8  40 c0 80 e5                                      str ip, [r0, #0x40]
0069b3bc  44 c0 80 e5                                      str ip, [r0, #0x44]
0069b3c0  48 c0 80 e5                                      str ip, [r0, #0x48]
0069b3c4  4c c0 80 e5                                      str ip, [r0, #0x4c]
0069b3c8  50 c0 80 e5                                      str ip, [r0, #0x50]
0069b3cc  54 c0 80 e5                                      str ip, [r0, #0x54]
0069b3d0  bf 14 a0 e3                                      mov r1, #0xbf000000
0069b3d4  08 00 a0 e1                                      mov r0, r8
0069b3d8  02 50 a0 e1                                      mov r5, r2
0069b3dc  03 70 a0 e1                                      mov r7, r3
0069b3e0  61 ce f1 eb                                      bl #0x30ed6c
0069b3e4  bf 14 a0 e3                                      mov r1, #0xbf000000
0069b3e8  00 a0 a0 e1                                      mov sl, r0
0069b3ec  05 00 a0 e1                                      mov r0, r5
0069b3f0  5d ce f1 eb                                      bl #0x30ed6c
0069b3f4  bf 14 a0 e3                                      mov r1, #0xbf000000
0069b3f8  00 60 a0 e1                                      mov r6, r0
0069b3fc  07 00 a0 e1                                      mov r0, r7
0069b400  59 ce f1 eb                                      bl #0x30ed6c
0069b404  04 a0 84 e5                                      str sl, [r4, #4]
0069b408  0c 00 84 e5                                      str r0, [r4, #0xc]
0069b40c  08 60 84 e5                                      str r6, [r4, #8]
0069b410  3f 14 a0 e3                                      mov r1, #0x3f000000
0069b414  08 00 a0 e1                                      mov r0, r8
0069b418  53 ce f1 eb                                      bl #0x30ed6c
0069b41c  3f 14 a0 e3                                      mov r1, #0x3f000000
0069b420  00 a0 a0 e1                                      mov sl, r0
0069b424  05 00 a0 e1                                      mov r0, r5
0069b428  4f ce f1 eb                                      bl #0x30ed6c
0069b42c  3f 14 a0 e3                                      mov r1, #0x3f000000
0069b430  00 60 a0 e1                                      mov r6, r0
0069b434  07 00 a0 e1                                      mov r0, r7
0069b438  4b ce f1 eb                                      bl #0x30ed6c
0069b43c  05 10 a0 e1                                      mov r1, r5
0069b440  18 00 84 e5                                      str r0, [r4, #0x18]
0069b444  10 a0 84 e5                                      str sl, [r4, #0x10]
0069b448  14 60 84 e5                                      str r6, [r4, #0x14]
0069b44c  1c 80 84 e5                                      str r8, [r4, #0x1c]
0069b450  20 50 84 e5                                      str r5, [r4, #0x20]
0069b454  24 70 84 e5                                      str r7, [r4, #0x24]
0069b458  38 80 84 e5                                      str r8, [r4, #0x38]
0069b45c  48 50 84 e5                                      str r5, [r4, #0x48]
0069b460  58 70 84 e5                                      str r7, [r4, #0x58]
0069b464  08 00 a0 e1                                      mov r0, r8
0069b468  cd cd f1 eb                                      bl #0x30eba4
0069b46c  00 10 a0 e1                                      mov r1, r0
0069b470  07 00 a0 e1                                      mov r0, r7
0069b474  ca cd f1 eb                                      bl #0x30eba4
0069b478  28 00 84 e5                                      str r0, [r4, #0x28]
0069b47c  04 00 a0 e1                                      mov r0, r4
0069b480  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0069b484  2c 97 2f 00 60 4b 00 00                          .byte 0x2c, 0x97, 0x2f, 0x00, 0x60, 0x4b, 0x00, 0x00

; FUNCTION 0x0069b48c, declared_size=168, range_size=168, mode=arm
; class-group: glitch::ps::PDBox
; alias: _ZNK6glitch2ps5PDBox6withinERKNS_4core8vector3dIfEE
; demangled: glitch::ps::PDBox::within(glitch::core::vector3d<float> const&) const
; decoder-mode: arm
0069b48c  70 40 2d e9                                      push {r4, r5, r6, lr}
0069b490  00 50 91 e5                                      ldr r5, [r1]
0069b494  01 60 a0 e1                                      mov r6, r1
0069b498  00 40 a0 e1                                      mov r4, r0
0069b49c  04 10 90 e5                                      ldr r1, [r0, #4]
0069b4a0  05 00 a0 e1                                      mov r0, r5
0069b4a4  98 cc f1 eb                                      bl #0x30e70c
0069b4a8  00 00 50 e3                                      cmp r0, #0
0069b4ac  1e 00 00 1a                                      bne #0x69b52c
0069b4b0  05 00 a0 e1                                      mov r0, r5
0069b4b4  10 10 94 e5                                      ldr r1, [r4, #0x10]
0069b4b8  8e cb f1 eb                                      bl #0x30e2f8
0069b4bc  00 00 50 e3                                      cmp r0, #0
0069b4c0  19 00 00 1a                                      bne #0x69b52c
0069b4c4  04 50 96 e5                                      ldr r5, [r6, #4]
0069b4c8  08 10 94 e5                                      ldr r1, [r4, #8]
0069b4cc  05 00 a0 e1                                      mov r0, r5
0069b4d0  8d cc f1 eb                                      bl #0x30e70c
0069b4d4  00 00 50 e3                                      cmp r0, #0
0069b4d8  13 00 00 1a                                      bne #0x69b52c
0069b4dc  05 00 a0 e1                                      mov r0, r5
0069b4e0  14 10 94 e5                                      ldr r1, [r4, #0x14]
0069b4e4  83 cb f1 eb                                      bl #0x30e2f8
0069b4e8  00 00 50 e3                                      cmp r0, #0
0069b4ec  0e 00 00 1a                                      bne #0x69b52c
0069b4f0  08 50 96 e5                                      ldr r5, [r6, #8]
0069b4f4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0069b4f8  05 00 a0 e1                                      mov r0, r5
0069b4fc  82 cc f1 eb                                      bl #0x30e70c
0069b500  00 00 50 e3                                      cmp r0, #0
0069b504  08 00 00 1a                                      bne #0x69b52c
0069b508  05 00 a0 e1                                      mov r0, r5
0069b50c  18 10 94 e5                                      ldr r1, [r4, #0x18]
0069b510  78 cb f1 eb                                      bl #0x30e2f8
0069b514  00 00 50 e3                                      cmp r0, #0
0069b518  00 00 a0 e3                                      mov r0, #0
0069b51c  01 00 a0 13                                      movne r0, #1
0069b520  01 00 20 e2                                      eor r0, r0, #1
0069b524  70 00 ef e6                                      uxtb r0, r0
0069b528  70 80 bd e8                                      pop {r4, r5, r6, pc}
0069b52c  00 00 a0 e3                                      mov r0, #0
0069b530  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0069b534, declared_size=300, range_size=300, mode=arm
; class-group: glitch::ps::PDBox
; alias: _ZNK6glitch2ps5PDBox8generateERNS0_8PSRandomE
; demangled: glitch::ps::PDBox::generate(glitch::ps::PSRandom&) const
; decoder-mode: arm
0069b534  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0069b538  10 d0 4d e2                                      sub sp, sp, #0x10
0069b53c  01 40 a0 e1                                      mov r4, r1
0069b540  00 50 a0 e1                                      mov r5, r0
0069b544  02 10 a0 e1                                      mov r1, r2
0069b548  04 00 8d e2                                      add r0, sp, #4
0069b54c  5c 71 fe eb                                      bl #0x637ac4
0069b550  04 80 9d e5                                      ldr r8, [sp, #4]
0069b554  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
0069b558  08 70 9d e5                                      ldr r7, [sp, #8]
0069b55c  08 00 a0 e1                                      mov r0, r8
0069b560  01 ce f1 eb                                      bl #0x30ed6c
0069b564  08 10 94 e5                                      ldr r1, [r4, #8]
0069b568  8d cd f1 eb                                      bl #0x30eba4
0069b56c  48 10 94 e5                                      ldr r1, [r4, #0x48]
0069b570  00 a0 a0 e1                                      mov sl, r0
0069b574  07 00 a0 e1                                      mov r0, r7
0069b578  fb cd f1 eb                                      bl #0x30ed6c
0069b57c  00 10 a0 e1                                      mov r1, r0
0069b580  0a 00 a0 e1                                      mov r0, sl
0069b584  86 cd f1 eb                                      bl #0x30eba4
0069b588  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0069b58c  54 10 94 e5                                      ldr r1, [r4, #0x54]
0069b590  00 a0 a0 e1                                      mov sl, r0
0069b594  06 00 a0 e1                                      mov r0, r6
0069b598  f3 cd f1 eb                                      bl #0x30ed6c
0069b59c  00 10 a0 e1                                      mov r1, r0
0069b5a0  0a 00 a0 e1                                      mov r0, sl
0069b5a4  7e cd f1 eb                                      bl #0x30eba4
0069b5a8  40 10 94 e5                                      ldr r1, [r4, #0x40]
0069b5ac  00 90 a0 e1                                      mov sb, r0
0069b5b0  08 00 a0 e1                                      mov r0, r8
0069b5b4  ec cd f1 eb                                      bl #0x30ed6c
0069b5b8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0069b5bc  78 cd f1 eb                                      bl #0x30eba4
0069b5c0  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
0069b5c4  00 a0 a0 e1                                      mov sl, r0
0069b5c8  07 00 a0 e1                                      mov r0, r7
0069b5cc  e6 cd f1 eb                                      bl #0x30ed6c
0069b5d0  00 10 a0 e1                                      mov r1, r0
0069b5d4  0a 00 a0 e1                                      mov r0, sl
0069b5d8  71 cd f1 eb                                      bl #0x30eba4
0069b5dc  58 10 94 e5                                      ldr r1, [r4, #0x58]
0069b5e0  00 a0 a0 e1                                      mov sl, r0
0069b5e4  06 00 a0 e1                                      mov r0, r6
0069b5e8  df cd f1 eb                                      bl #0x30ed6c
0069b5ec  00 10 a0 e1                                      mov r1, r0
0069b5f0  0a 00 a0 e1                                      mov r0, sl
0069b5f4  6a cd f1 eb                                      bl #0x30eba4
0069b5f8  38 10 94 e5                                      ldr r1, [r4, #0x38]
0069b5fc  00 a0 a0 e1                                      mov sl, r0
0069b600  08 00 a0 e1                                      mov r0, r8
0069b604  d8 cd f1 eb                                      bl #0x30ed6c
0069b608  04 10 94 e5                                      ldr r1, [r4, #4]
0069b60c  64 cd f1 eb                                      bl #0x30eba4
0069b610  44 10 94 e5                                      ldr r1, [r4, #0x44]
0069b614  00 80 a0 e1                                      mov r8, r0
0069b618  07 00 a0 e1                                      mov r0, r7
0069b61c  d2 cd f1 eb                                      bl #0x30ed6c
0069b620  00 10 a0 e1                                      mov r1, r0
0069b624  08 00 a0 e1                                      mov r0, r8
0069b628  5d cd f1 eb                                      bl #0x30eba4
0069b62c  50 10 94 e5                                      ldr r1, [r4, #0x50]
0069b630  00 70 a0 e1                                      mov r7, r0
0069b634  06 00 a0 e1                                      mov r0, r6
0069b638  cb cd f1 eb                                      bl #0x30ed6c
0069b63c  00 10 a0 e1                                      mov r1, r0
0069b640  07 00 a0 e1                                      mov r0, r7
0069b644  56 cd f1 eb                                      bl #0x30eba4
0069b648  00 00 85 e5                                      str r0, [r5]
0069b64c  04 90 85 e5                                      str sb, [r5, #4]
0069b650  08 a0 85 e5                                      str sl, [r5, #8]
0069b654  05 00 a0 e1                                      mov r0, r5
0069b658  10 d0 8d e2                                      add sp, sp, #0x10
0069b65c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0069b660, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PDBox
; alias: _ZNK6glitch2ps5PDBox4sizeEv
; demangled: glitch::ps::PDBox::size() const
; decoder-mode: arm
0069b660  28 00 90 e5                                      ldr r0, [r0, #0x28]
0069b664  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069bfe0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::ps::PDBox
; alias: _ZN6glitch2ps5PDBoxD0Ev
; demangled: glitch::ps::PDBox::~PDBox()
; decoder-mode: arm
0069bfe0  10 40 2d e9                                      push {r4, lr}
0069bfe4  00 40 a0 e1                                      mov r4, r0
0069bfe8  b0 c8 f1 eb                                      bl #0x30e2b0
0069bfec  04 00 a0 e1                                      mov r0, r4
0069bff0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0069c2ec, declared_size=232, range_size=232, mode=arm
; class-group: glitch::ps::PDBox
; alias: _ZNK6glitch2ps5PDBox4copyEv
; demangled: glitch::ps::PDBox::copy() const
; decoder-mode: arm
0069c2ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0069c2f0  00 10 a0 e3                                      mov r1, #0
0069c2f4  00 40 a0 e1                                      mov r4, r0
0069c2f8  5c 00 a0 e3                                      mov r0, #0x5c
0069c2fc  aa 5f fa eb                                      bl #0x5341ac
0069c300  c4 50 9f e5                                      ldr r5, [pc, #0xc4]
0069c304  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
0069c308  05 50 8f e0                                      add r5, pc, r5
0069c30c  02 20 95 e7                                      ldr r2, [r5, r2]
0069c310  08 20 82 e2                                      add r2, r2, #8
0069c314  00 20 80 e5                                      str r2, [r0]
0069c318  04 20 94 e5                                      ldr r2, [r4, #4]
0069c31c  04 20 80 e5                                      str r2, [r0, #4]
0069c320  08 20 94 e5                                      ldr r2, [r4, #8]
0069c324  08 20 80 e5                                      str r2, [r0, #8]
0069c328  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0069c32c  0c 20 80 e5                                      str r2, [r0, #0xc]
0069c330  10 20 94 e5                                      ldr r2, [r4, #0x10]
0069c334  10 20 80 e5                                      str r2, [r0, #0x10]
0069c338  14 20 94 e5                                      ldr r2, [r4, #0x14]
0069c33c  14 20 80 e5                                      str r2, [r0, #0x14]
0069c340  18 20 94 e5                                      ldr r2, [r4, #0x18]
0069c344  18 20 80 e5                                      str r2, [r0, #0x18]
0069c348  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0069c34c  1c 20 80 e5                                      str r2, [r0, #0x1c]
0069c350  20 20 94 e5                                      ldr r2, [r4, #0x20]
0069c354  20 20 80 e5                                      str r2, [r0, #0x20]
0069c358  24 20 94 e5                                      ldr r2, [r4, #0x24]
0069c35c  24 20 80 e5                                      str r2, [r0, #0x24]
0069c360  28 20 94 e5                                      ldr r2, [r4, #0x28]
0069c364  28 20 80 e5                                      str r2, [r0, #0x28]
0069c368  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0069c36c  2c 20 80 e5                                      str r2, [r0, #0x2c]
0069c370  30 20 94 e5                                      ldr r2, [r4, #0x30]
0069c374  30 20 80 e5                                      str r2, [r0, #0x30]
0069c378  34 20 94 e5                                      ldr r2, [r4, #0x34]
0069c37c  34 20 80 e5                                      str r2, [r0, #0x34]
0069c380  38 20 94 e5                                      ldr r2, [r4, #0x38]
0069c384  38 20 80 e5                                      str r2, [r0, #0x38]
0069c388  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0069c38c  3c 20 80 e5                                      str r2, [r0, #0x3c]
0069c390  40 20 94 e5                                      ldr r2, [r4, #0x40]
0069c394  40 20 80 e5                                      str r2, [r0, #0x40]
0069c398  44 20 94 e5                                      ldr r2, [r4, #0x44]
0069c39c  44 20 80 e5                                      str r2, [r0, #0x44]
0069c3a0  48 20 94 e5                                      ldr r2, [r4, #0x48]
0069c3a4  48 20 80 e5                                      str r2, [r0, #0x48]
0069c3a8  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0069c3ac  4c 20 80 e5                                      str r2, [r0, #0x4c]
0069c3b0  50 20 94 e5                                      ldr r2, [r4, #0x50]
0069c3b4  50 20 80 e5                                      str r2, [r0, #0x50]
0069c3b8  54 20 94 e5                                      ldr r2, [r4, #0x54]
0069c3bc  54 20 80 e5                                      str r2, [r0, #0x54]
0069c3c0  58 20 94 e5                                      ldr r2, [r4, #0x58]
0069c3c4  58 20 80 e5                                      str r2, [r0, #0x58]
0069c3c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0069c3cc  88 87 2f 00 60 4b 00 00                          .byte 0x88, 0x87, 0x2f, 0x00, 0x60, 0x4b, 0x00, 0x00

; FUNCTION 0x0069efac, declared_size=1440, range_size=1440, mode=arm
; class-group: glitch::ps::PDBox
; alias: _ZN6glitch2ps5PDBox9transformERKNS_4core8CMatrix4IfEE
; demangled: glitch::ps::PDBox::transform(glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0069efac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0069efb0  01 40 a0 e1                                      mov r4, r1
0069efb4  14 d0 4d e2                                      sub sp, sp, #0x14
0069efb8  00 50 a0 e1                                      mov r5, r0
0069efbc  bf 14 a0 e3                                      mov r1, #0xbf000000
0069efc0  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0069efc4  68 bf f1 eb                                      bl #0x30ed6c
0069efc8  bf 14 a0 e3                                      mov r1, #0xbf000000
0069efcc  00 b0 a0 e1                                      mov fp, r0
0069efd0  30 00 95 e5                                      ldr r0, [r5, #0x30]
0069efd4  64 bf f1 eb                                      bl #0x30ed6c
0069efd8  bf 14 a0 e3                                      mov r1, #0xbf000000
0069efdc  00 90 a0 e1                                      mov sb, r0
0069efe0  34 00 95 e5                                      ldr r0, [r5, #0x34]
0069efe4  60 bf f1 eb                                      bl #0x30ed6c
0069efe8  04 b0 85 e5                                      str fp, [r5, #4]
0069efec  00 a0 a0 e1                                      mov sl, r0
0069eff0  08 90 85 e5                                      str sb, [r5, #8]
0069eff4  0c 00 85 e5                                      str r0, [r5, #0xc]
0069eff8  3f 14 a0 e3                                      mov r1, #0x3f000000
0069effc  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
0069f000  59 bf f1 eb                                      bl #0x30ed6c
0069f004  3f 14 a0 e3                                      mov r1, #0x3f000000
0069f008  00 80 a0 e1                                      mov r8, r0
0069f00c  30 00 95 e5                                      ldr r0, [r5, #0x30]
0069f010  55 bf f1 eb                                      bl #0x30ed6c
0069f014  3f 14 a0 e3                                      mov r1, #0x3f000000
0069f018  00 70 a0 e1                                      mov r7, r0
0069f01c  34 00 95 e5                                      ldr r0, [r5, #0x34]
0069f020  51 bf f1 eb                                      bl #0x30ed6c
0069f024  04 00 8d e5                                      str r0, [sp, #4]
0069f028  10 80 85 e5                                      str r8, [r5, #0x10]
0069f02c  14 70 85 e5                                      str r7, [r5, #0x14]
0069f030  04 30 9d e5                                      ldr r3, [sp, #4]
0069f034  00 60 a0 e3                                      mov r6, #0
0069f038  3c 60 85 e5                                      str r6, [r5, #0x3c]
0069f03c  18 30 85 e5                                      str r3, [r5, #0x18]
0069f040  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
0069f044  40 60 85 e5                                      str r6, [r5, #0x40]
0069f048  44 60 85 e5                                      str r6, [r5, #0x44]
0069f04c  38 30 85 e5                                      str r3, [r5, #0x38]
0069f050  30 30 95 e5                                      ldr r3, [r5, #0x30]
0069f054  4c 60 85 e5                                      str r6, [r5, #0x4c]
0069f058  50 60 85 e5                                      str r6, [r5, #0x50]
0069f05c  48 30 85 e5                                      str r3, [r5, #0x48]
0069f060  34 30 95 e5                                      ldr r3, [r5, #0x34]
0069f064  54 60 85 e5                                      str r6, [r5, #0x54]
0069f068  0b 00 a0 e1                                      mov r0, fp
0069f06c  58 30 85 e5                                      str r3, [r5, #0x58]
0069f070  00 10 94 e5                                      ldr r1, [r4]
0069f074  3c bf f1 eb                                      bl #0x30ed6c
0069f078  10 10 94 e5                                      ldr r1, [r4, #0x10]
0069f07c  00 30 a0 e1                                      mov r3, r0
0069f080  09 00 a0 e1                                      mov r0, sb
0069f084  00 30 8d e5                                      str r3, [sp]
0069f088  37 bf f1 eb                                      bl #0x30ed6c
0069f08c  00 30 9d e5                                      ldr r3, [sp]
0069f090  00 10 a0 e1                                      mov r1, r0
0069f094  03 00 a0 e1                                      mov r0, r3
0069f098  c1 be f1 eb                                      bl #0x30eba4
0069f09c  20 10 94 e5                                      ldr r1, [r4, #0x20]
0069f0a0  00 30 a0 e1                                      mov r3, r0
0069f0a4  0a 00 a0 e1                                      mov r0, sl
0069f0a8  00 30 8d e5                                      str r3, [sp]
0069f0ac  2e bf f1 eb                                      bl #0x30ed6c
0069f0b0  00 30 9d e5                                      ldr r3, [sp]
0069f0b4  00 10 a0 e1                                      mov r1, r0
0069f0b8  03 00 a0 e1                                      mov r0, r3
0069f0bc  b8 be f1 eb                                      bl #0x30eba4
0069f0c0  30 10 94 e5                                      ldr r1, [r4, #0x30]
0069f0c4  b6 be f1 eb                                      bl #0x30eba4
0069f0c8  08 00 8d e5                                      str r0, [sp, #8]
0069f0cc  04 10 94 e5                                      ldr r1, [r4, #4]
0069f0d0  0b 00 a0 e1                                      mov r0, fp
0069f0d4  24 bf f1 eb                                      bl #0x30ed6c
0069f0d8  14 10 94 e5                                      ldr r1, [r4, #0x14]
0069f0dc  00 30 a0 e1                                      mov r3, r0
0069f0e0  09 00 a0 e1                                      mov r0, sb
0069f0e4  00 30 8d e5                                      str r3, [sp]
0069f0e8  1f bf f1 eb                                      bl #0x30ed6c
0069f0ec  00 30 9d e5                                      ldr r3, [sp]
0069f0f0  00 10 a0 e1                                      mov r1, r0
0069f0f4  03 00 a0 e1                                      mov r0, r3
0069f0f8  a9 be f1 eb                                      bl #0x30eba4
0069f0fc  24 10 94 e5                                      ldr r1, [r4, #0x24]
0069f100  00 30 a0 e1                                      mov r3, r0
0069f104  0a 00 a0 e1                                      mov r0, sl
0069f108  00 30 8d e5                                      str r3, [sp]
0069f10c  16 bf f1 eb                                      bl #0x30ed6c
0069f110  00 30 9d e5                                      ldr r3, [sp]
0069f114  00 10 a0 e1                                      mov r1, r0
0069f118  03 00 a0 e1                                      mov r0, r3
0069f11c  a0 be f1 eb                                      bl #0x30eba4
0069f120  34 10 94 e5                                      ldr r1, [r4, #0x34]
0069f124  9e be f1 eb                                      bl #0x30eba4
0069f128  0c 00 8d e5                                      str r0, [sp, #0xc]
0069f12c  08 10 94 e5                                      ldr r1, [r4, #8]
0069f130  0b 00 a0 e1                                      mov r0, fp
0069f134  0c bf f1 eb                                      bl #0x30ed6c
0069f138  18 10 94 e5                                      ldr r1, [r4, #0x18]
0069f13c  00 b0 a0 e1                                      mov fp, r0
0069f140  09 00 a0 e1                                      mov r0, sb
0069f144  08 bf f1 eb                                      bl #0x30ed6c
0069f148  00 10 a0 e1                                      mov r1, r0
0069f14c  0b 00 a0 e1                                      mov r0, fp
0069f150  93 be f1 eb                                      bl #0x30eba4
0069f154  28 10 94 e5                                      ldr r1, [r4, #0x28]
0069f158  00 90 a0 e1                                      mov sb, r0
0069f15c  0a 00 a0 e1                                      mov r0, sl
0069f160  01 bf f1 eb                                      bl #0x30ed6c
0069f164  00 10 a0 e1                                      mov r1, r0
0069f168  09 00 a0 e1                                      mov r0, sb
0069f16c  8c be f1 eb                                      bl #0x30eba4
0069f170  38 10 94 e5                                      ldr r1, [r4, #0x38]
0069f174  8a be f1 eb                                      bl #0x30eba4
0069f178  08 30 9d e5                                      ldr r3, [sp, #8]
0069f17c  00 b0 a0 e1                                      mov fp, r0
0069f180  04 30 85 e5                                      str r3, [r5, #4]
0069f184  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0069f188  0c 00 85 e5                                      str r0, [r5, #0xc]
0069f18c  08 00 a0 e1                                      mov r0, r8
0069f190  08 30 85 e5                                      str r3, [r5, #8]
0069f194  00 10 94 e5                                      ldr r1, [r4]
0069f198  f3 be f1 eb                                      bl #0x30ed6c
0069f19c  10 10 94 e5                                      ldr r1, [r4, #0x10]
0069f1a0  00 a0 a0 e1                                      mov sl, r0
0069f1a4  07 00 a0 e1                                      mov r0, r7
0069f1a8  ef be f1 eb                                      bl #0x30ed6c
0069f1ac  00 10 a0 e1                                      mov r1, r0
0069f1b0  0a 00 a0 e1                                      mov r0, sl
0069f1b4  7a be f1 eb                                      bl #0x30eba4
0069f1b8  20 10 94 e5                                      ldr r1, [r4, #0x20]
0069f1bc  00 a0 a0 e1                                      mov sl, r0
0069f1c0  04 00 9d e5                                      ldr r0, [sp, #4]
0069f1c4  e8 be f1 eb                                      bl #0x30ed6c
0069f1c8  00 10 a0 e1                                      mov r1, r0
0069f1cc  0a 00 a0 e1                                      mov r0, sl
0069f1d0  73 be f1 eb                                      bl #0x30eba4
0069f1d4  30 10 94 e5                                      ldr r1, [r4, #0x30]
0069f1d8  71 be f1 eb                                      bl #0x30eba4
0069f1dc  04 10 94 e5                                      ldr r1, [r4, #4]
0069f1e0  00 a0 a0 e1                                      mov sl, r0
0069f1e4  08 00 a0 e1                                      mov r0, r8
0069f1e8  df be f1 eb                                      bl #0x30ed6c
0069f1ec  14 10 94 e5                                      ldr r1, [r4, #0x14]
0069f1f0  00 90 a0 e1                                      mov sb, r0
0069f1f4  07 00 a0 e1                                      mov r0, r7
0069f1f8  db be f1 eb                                      bl #0x30ed6c
0069f1fc  00 10 a0 e1                                      mov r1, r0
0069f200  09 00 a0 e1                                      mov r0, sb
0069f204  66 be f1 eb                                      bl #0x30eba4
0069f208  24 10 94 e5                                      ldr r1, [r4, #0x24]
0069f20c  00 90 a0 e1                                      mov sb, r0
0069f210  04 00 9d e5                                      ldr r0, [sp, #4]
0069f214  d4 be f1 eb                                      bl #0x30ed6c
0069f218  00 10 a0 e1                                      mov r1, r0
0069f21c  09 00 a0 e1                                      mov r0, sb
0069f220  5f be f1 eb                                      bl #0x30eba4
0069f224  34 10 94 e5                                      ldr r1, [r4, #0x34]
0069f228  5d be f1 eb                                      bl #0x30eba4
0069f22c  08 10 94 e5                                      ldr r1, [r4, #8]
0069f230  00 90 a0 e1                                      mov sb, r0
0069f234  08 00 a0 e1                                      mov r0, r8
0069f238  cb be f1 eb                                      bl #0x30ed6c
0069f23c  18 10 94 e5                                      ldr r1, [r4, #0x18]
0069f240  00 80 a0 e1                                      mov r8, r0
0069f244  07 00 a0 e1                                      mov r0, r7
0069f248  c7 be f1 eb                                      bl #0x30ed6c
0069f24c  00 10 a0 e1                                      mov r1, r0
0069f250  08 00 a0 e1                                      mov r0, r8
0069f254  52 be f1 eb                                      bl #0x30eba4
0069f258  28 10 94 e5                                      ldr r1, [r4, #0x28]
0069f25c  00 70 a0 e1                                      mov r7, r0
0069f260  04 00 9d e5                                      ldr r0, [sp, #4]
0069f264  c0 be f1 eb                                      bl #0x30ed6c
0069f268  00 10 a0 e1                                      mov r1, r0
0069f26c  07 00 a0 e1                                      mov r0, r7
0069f270  4b be f1 eb                                      bl #0x30eba4
0069f274  38 10 94 e5                                      ldr r1, [r4, #0x38]
0069f278  49 be f1 eb                                      bl #0x30eba4
0069f27c  10 a0 85 e5                                      str sl, [r5, #0x10]
0069f280  18 00 85 e5                                      str r0, [r5, #0x18]
0069f284  14 90 85 e5                                      str sb, [r5, #0x14]
0069f288  00 10 94 e5                                      ldr r1, [r4]
0069f28c  00 70 a0 e1                                      mov r7, r0
0069f290  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
0069f294  b4 be f1 eb                                      bl #0x30ed6c
0069f298  06 10 a0 e1                                      mov r1, r6
0069f29c  00 80 a0 e1                                      mov r8, r0
0069f2a0  10 00 94 e5                                      ldr r0, [r4, #0x10]
0069f2a4  b0 be f1 eb                                      bl #0x30ed6c
0069f2a8  00 10 a0 e1                                      mov r1, r0
0069f2ac  08 00 a0 e1                                      mov r0, r8
0069f2b0  3b be f1 eb                                      bl #0x30eba4
0069f2b4  06 10 a0 e1                                      mov r1, r6
0069f2b8  00 80 a0 e1                                      mov r8, r0
0069f2bc  20 00 94 e5                                      ldr r0, [r4, #0x20]
0069f2c0  a9 be f1 eb                                      bl #0x30ed6c
0069f2c4  00 10 a0 e1                                      mov r1, r0
0069f2c8  08 00 a0 e1                                      mov r0, r8
0069f2cc  34 be f1 eb                                      bl #0x30eba4
0069f2d0  38 00 85 e5                                      str r0, [r5, #0x38]
0069f2d4  04 10 94 e5                                      ldr r1, [r4, #4]
0069f2d8  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
0069f2dc  a2 be f1 eb                                      bl #0x30ed6c
0069f2e0  06 10 a0 e1                                      mov r1, r6
0069f2e4  00 80 a0 e1                                      mov r8, r0
0069f2e8  14 00 94 e5                                      ldr r0, [r4, #0x14]
0069f2ec  9e be f1 eb                                      bl #0x30ed6c
0069f2f0  00 10 a0 e1                                      mov r1, r0
0069f2f4  08 00 a0 e1                                      mov r0, r8
0069f2f8  29 be f1 eb                                      bl #0x30eba4
0069f2fc  06 10 a0 e1                                      mov r1, r6
0069f300  00 80 a0 e1                                      mov r8, r0
0069f304  24 00 94 e5                                      ldr r0, [r4, #0x24]
0069f308  97 be f1 eb                                      bl #0x30ed6c
0069f30c  00 10 a0 e1                                      mov r1, r0
0069f310  08 00 a0 e1                                      mov r0, r8
0069f314  22 be f1 eb                                      bl #0x30eba4
0069f318  3c 00 85 e5                                      str r0, [r5, #0x3c]
0069f31c  08 10 94 e5                                      ldr r1, [r4, #8]
0069f320  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
0069f324  90 be f1 eb                                      bl #0x30ed6c
0069f328  06 10 a0 e1                                      mov r1, r6
0069f32c  00 80 a0 e1                                      mov r8, r0
0069f330  18 00 94 e5                                      ldr r0, [r4, #0x18]
0069f334  8c be f1 eb                                      bl #0x30ed6c
0069f338  00 10 a0 e1                                      mov r1, r0
0069f33c  08 00 a0 e1                                      mov r0, r8
0069f340  17 be f1 eb                                      bl #0x30eba4
0069f344  06 10 a0 e1                                      mov r1, r6
0069f348  00 80 a0 e1                                      mov r8, r0
0069f34c  28 00 94 e5                                      ldr r0, [r4, #0x28]
0069f350  85 be f1 eb                                      bl #0x30ed6c
0069f354  00 10 a0 e1                                      mov r1, r0
0069f358  08 00 a0 e1                                      mov r0, r8
0069f35c  10 be f1 eb                                      bl #0x30eba4
0069f360  40 00 85 e5                                      str r0, [r5, #0x40]
0069f364  06 10 a0 e1                                      mov r1, r6
0069f368  00 00 94 e5                                      ldr r0, [r4]
0069f36c  7e be f1 eb                                      bl #0x30ed6c
0069f370  10 10 94 e5                                      ldr r1, [r4, #0x10]
0069f374  00 80 a0 e1                                      mov r8, r0
0069f378  30 00 95 e5                                      ldr r0, [r5, #0x30]
0069f37c  7a be f1 eb                                      bl #0x30ed6c
0069f380  00 10 a0 e1                                      mov r1, r0
0069f384  08 00 a0 e1                                      mov r0, r8
0069f388  05 be f1 eb                                      bl #0x30eba4
0069f38c  06 10 a0 e1                                      mov r1, r6
0069f390  00 80 a0 e1                                      mov r8, r0
0069f394  20 00 94 e5                                      ldr r0, [r4, #0x20]
0069f398  73 be f1 eb                                      bl #0x30ed6c
0069f39c  00 10 a0 e1                                      mov r1, r0
0069f3a0  08 00 a0 e1                                      mov r0, r8
0069f3a4  fe bd f1 eb                                      bl #0x30eba4
0069f3a8  06 10 a0 e1                                      mov r1, r6
0069f3ac  44 00 85 e5                                      str r0, [r5, #0x44]
0069f3b0  04 00 94 e5                                      ldr r0, [r4, #4]
0069f3b4  6c be f1 eb                                      bl #0x30ed6c
0069f3b8  14 10 94 e5                                      ldr r1, [r4, #0x14]
0069f3bc  00 80 a0 e1                                      mov r8, r0
0069f3c0  30 00 95 e5                                      ldr r0, [r5, #0x30]
0069f3c4  68 be f1 eb                                      bl #0x30ed6c
0069f3c8  00 10 a0 e1                                      mov r1, r0
0069f3cc  08 00 a0 e1                                      mov r0, r8
0069f3d0  f3 bd f1 eb                                      bl #0x30eba4
0069f3d4  06 10 a0 e1                                      mov r1, r6
0069f3d8  00 80 a0 e1                                      mov r8, r0
0069f3dc  24 00 94 e5                                      ldr r0, [r4, #0x24]
0069f3e0  61 be f1 eb                                      bl #0x30ed6c
0069f3e4  00 10 a0 e1                                      mov r1, r0
0069f3e8  08 00 a0 e1                                      mov r0, r8
0069f3ec  ec bd f1 eb                                      bl #0x30eba4
0069f3f0  48 00 85 e5                                      str r0, [r5, #0x48]
0069f3f4  08 00 94 e5                                      ldr r0, [r4, #8]
0069f3f8  06 10 a0 e1                                      mov r1, r6
0069f3fc  5a be f1 eb                                      bl #0x30ed6c
0069f400  18 10 94 e5                                      ldr r1, [r4, #0x18]
0069f404  00 80 a0 e1                                      mov r8, r0
0069f408  30 00 95 e5                                      ldr r0, [r5, #0x30]
0069f40c  56 be f1 eb                                      bl #0x30ed6c
0069f410  00 10 a0 e1                                      mov r1, r0
0069f414  08 00 a0 e1                                      mov r0, r8
0069f418  e1 bd f1 eb                                      bl #0x30eba4
0069f41c  06 10 a0 e1                                      mov r1, r6
0069f420  00 80 a0 e1                                      mov r8, r0
0069f424  28 00 94 e5                                      ldr r0, [r4, #0x28]
0069f428  4f be f1 eb                                      bl #0x30ed6c
0069f42c  00 10 a0 e1                                      mov r1, r0
0069f430  08 00 a0 e1                                      mov r0, r8
0069f434  da bd f1 eb                                      bl #0x30eba4
0069f438  4c 00 85 e5                                      str r0, [r5, #0x4c]
0069f43c  06 10 a0 e1                                      mov r1, r6
0069f440  00 00 94 e5                                      ldr r0, [r4]
0069f444  48 be f1 eb                                      bl #0x30ed6c
0069f448  06 10 a0 e1                                      mov r1, r6
0069f44c  00 80 a0 e1                                      mov r8, r0
0069f450  10 00 94 e5                                      ldr r0, [r4, #0x10]
0069f454  44 be f1 eb                                      bl #0x30ed6c
0069f458  00 10 a0 e1                                      mov r1, r0
0069f45c  08 00 a0 e1                                      mov r0, r8
0069f460  cf bd f1 eb                                      bl #0x30eba4
0069f464  20 10 94 e5                                      ldr r1, [r4, #0x20]
0069f468  00 80 a0 e1                                      mov r8, r0
0069f46c  34 00 95 e5                                      ldr r0, [r5, #0x34]
0069f470  3d be f1 eb                                      bl #0x30ed6c
0069f474  00 10 a0 e1                                      mov r1, r0
0069f478  08 00 a0 e1                                      mov r0, r8
0069f47c  c8 bd f1 eb                                      bl #0x30eba4
0069f480  50 00 85 e5                                      str r0, [r5, #0x50]
0069f484  06 10 a0 e1                                      mov r1, r6
0069f488  04 00 94 e5                                      ldr r0, [r4, #4]
0069f48c  36 be f1 eb                                      bl #0x30ed6c
0069f490  06 10 a0 e1                                      mov r1, r6
0069f494  00 80 a0 e1                                      mov r8, r0
0069f498  14 00 94 e5                                      ldr r0, [r4, #0x14]
0069f49c  32 be f1 eb                                      bl #0x30ed6c
0069f4a0  00 10 a0 e1                                      mov r1, r0
0069f4a4  08 00 a0 e1                                      mov r0, r8
0069f4a8  bd bd f1 eb                                      bl #0x30eba4
0069f4ac  24 10 94 e5                                      ldr r1, [r4, #0x24]
0069f4b0  00 80 a0 e1                                      mov r8, r0
0069f4b4  34 00 95 e5                                      ldr r0, [r5, #0x34]
0069f4b8  2b be f1 eb                                      bl #0x30ed6c
0069f4bc  00 10 a0 e1                                      mov r1, r0
0069f4c0  08 00 a0 e1                                      mov r0, r8
0069f4c4  b6 bd f1 eb                                      bl #0x30eba4
0069f4c8  06 10 a0 e1                                      mov r1, r6
0069f4cc  54 00 85 e5                                      str r0, [r5, #0x54]
0069f4d0  08 00 94 e5                                      ldr r0, [r4, #8]
0069f4d4  24 be f1 eb                                      bl #0x30ed6c
0069f4d8  06 10 a0 e1                                      mov r1, r6
0069f4dc  00 80 a0 e1                                      mov r8, r0
0069f4e0  18 00 94 e5                                      ldr r0, [r4, #0x18]
0069f4e4  20 be f1 eb                                      bl #0x30ed6c
0069f4e8  00 10 a0 e1                                      mov r1, r0
0069f4ec  08 00 a0 e1                                      mov r0, r8
0069f4f0  ab bd f1 eb                                      bl #0x30eba4
0069f4f4  28 10 94 e5                                      ldr r1, [r4, #0x28]
0069f4f8  00 60 a0 e1                                      mov r6, r0
0069f4fc  34 00 95 e5                                      ldr r0, [r5, #0x34]
0069f500  19 be f1 eb                                      bl #0x30ed6c
0069f504  00 10 a0 e1                                      mov r1, r0
0069f508  06 00 a0 e1                                      mov r0, r6
0069f50c  a4 bd f1 eb                                      bl #0x30eba4
0069f510  58 00 85 e5                                      str r0, [r5, #0x58]
0069f514  08 10 9d e5                                      ldr r1, [sp, #8]
0069f518  0a 00 a0 e1                                      mov r0, sl
0069f51c  a2 bb f1 eb                                      bl #0x30e3ac
0069f520  1c 00 85 e5                                      str r0, [r5, #0x1c]
0069f524  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0069f528  09 00 a0 e1                                      mov r0, sb
0069f52c  9e bb f1 eb                                      bl #0x30e3ac
0069f530  0b 10 a0 e1                                      mov r1, fp
0069f534  20 00 85 e5                                      str r0, [r5, #0x20]
0069f538  07 00 a0 e1                                      mov r0, r7
0069f53c  9a bb f1 eb                                      bl #0x30e3ac
0069f540  24 00 85 e5                                      str r0, [r5, #0x24]
0069f544  14 d0 8d e2                                      add sp, sp, #0x14
0069f548  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
