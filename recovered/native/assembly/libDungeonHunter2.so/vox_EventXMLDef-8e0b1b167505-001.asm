; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088a090, declared_size=140, range_size=140, mode=arm
; class-group: vox::EventXMLDef
; alias: _ZN3vox11EventXMLDefD1Ev
; demangled: vox::EventXMLDef::~EventXMLDef()
; decoder-mode: arm
0088a090  70 40 2d e9                                      push {r4, r5, r6, lr}
0088a094  00 60 a0 e1                                      mov r6, r0
0088a098  04 00 90 e5                                      ldr r0, [r0, #4]
0088a09c  00 00 50 e3                                      cmp r0, #0
0088a0a0  00 00 00 0a                                      beq #0x88a0a8
0088a0a4  e6 18 ea eb                                      bl #0x310444
0088a0a8  28 00 96 e5                                      ldr r0, [r6, #0x28]
0088a0ac  00 00 50 e3                                      cmp r0, #0
0088a0b0  06 00 00 0a                                      beq #0x88a0d0
0088a0b4  00 30 90 e5                                      ldr r3, [r0]
0088a0b8  00 00 53 e3                                      cmp r3, #0
0088a0bc  02 00 00 0a                                      beq #0x88a0cc
0088a0c0  03 00 a0 e1                                      mov r0, r3
0088a0c4  de 18 ea eb                                      bl #0x310444
0088a0c8  28 00 96 e5                                      ldr r0, [r6, #0x28]
0088a0cc  dc 18 ea eb                                      bl #0x310444
0088a0d0  10 00 96 e5                                      ldr r0, [r6, #0x10]
0088a0d4  00 00 50 e3                                      cmp r0, #0
0088a0d8  00 00 00 0a                                      beq #0x88a0e0
0088a0dc  d8 18 ea eb                                      bl #0x310444
0088a0e0  08 00 96 e5                                      ldr r0, [r6, #8]
0088a0e4  08 50 86 e2                                      add r5, r6, #8
0088a0e8  05 00 50 e1                                      cmp r0, r5
0088a0ec  01 00 00 1a                                      bne #0x88a0f8
0088a0f0  05 00 00 ea                                      b #0x88a10c
0088a0f4  04 00 a0 e1                                      mov r0, r4
0088a0f8  00 40 90 e5                                      ldr r4, [r0]
0088a0fc  d0 18 ea eb                                      bl #0x310444
0088a100  05 00 54 e1                                      cmp r4, r5
0088a104  fa ff ff 1a                                      bne #0x88a0f4
0088a108  05 00 a0 e1                                      mov r0, r5
0088a10c  08 00 86 e5                                      str r0, [r6, #8]
0088a110  04 00 85 e5                                      str r0, [r5, #4]
0088a114  06 00 a0 e1                                      mov r0, r6
0088a118  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0088b104, declared_size=108, range_size=108, mode=arm
; class-group: vox::EventXMLDef
; alias: _ZN3vox11EventXMLDefaSERKS0_
; demangled: vox::EventXMLDef::operator=(vox::EventXMLDef const&)
; decoder-mode: arm
0088b104  70 40 2d e9                                      push {r4, r5, r6, lr}
0088b108  00 30 91 e5                                      ldr r3, [r1]
0088b10c  01 50 a0 e1                                      mov r5, r1
0088b110  00 40 a0 e1                                      mov r4, r0
0088b114  00 30 80 e5                                      str r3, [r0]
0088b118  04 30 95 e5                                      ldr r3, [r5, #4]
0088b11c  08 10 81 e2                                      add r1, r1, #8
0088b120  08 00 80 e2                                      add r0, r0, #8
0088b124  04 30 84 e5                                      str r3, [r4, #4]
0088b128  34 fb ff eb                                      bl #0x889e00
0088b12c  10 00 84 e2                                      add r0, r4, #0x10
0088b130  10 10 85 e2                                      add r1, r5, #0x10
0088b134  21 9b ff eb                                      bl #0x871dc0
0088b138  bc 31 d5 e1                                      ldrh r3, [r5, #0x1c]
0088b13c  04 00 a0 e1                                      mov r0, r4
0088b140  bc 31 c4 e1                                      strh r3, [r4, #0x1c]
0088b144  be 31 d5 e1                                      ldrh r3, [r5, #0x1e]
0088b148  be 31 c4 e1                                      strh r3, [r4, #0x1e]
0088b14c  b0 32 d5 e1                                      ldrh r3, [r5, #0x20]
0088b150  b0 32 c4 e1                                      strh r3, [r4, #0x20]
0088b154  b2 32 d5 e1                                      ldrh r3, [r5, #0x22]
0088b158  b2 32 c4 e1                                      strh r3, [r4, #0x22]
0088b15c  24 30 95 e5                                      ldr r3, [r5, #0x24]
0088b160  24 30 84 e5                                      str r3, [r4, #0x24]
0088b164  28 30 95 e5                                      ldr r3, [r5, #0x28]
0088b168  28 30 84 e5                                      str r3, [r4, #0x28]
0088b16c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0088b1fc, declared_size=176, range_size=176, mode=arm
; class-group: vox::EventXMLDef
; alias: _ZN3vox11EventXMLDefC1ERKS0_
; demangled: vox::EventXMLDef::EventXMLDef(vox::EventXMLDef const&)
; decoder-mode: arm
0088b1fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088b200  00 30 91 e5                                      ldr r3, [r1]
0088b204  08 50 80 e2                                      add r5, r0, #8
0088b208  01 60 a0 e1                                      mov r6, r1
0088b20c  00 30 80 e5                                      str r3, [r0]
0088b210  04 30 91 e5                                      ldr r3, [r1, #4]
0088b214  08 50 80 e5                                      str r5, [r0, #8]
0088b218  0c 50 80 e5                                      str r5, [r0, #0xc]
0088b21c  04 30 80 e5                                      str r3, [r0, #4]
0088b220  08 40 b6 e5                                      ldr r4, [r6, #8]!
0088b224  01 80 a0 e1                                      mov r8, r1
0088b228  00 70 a0 e1                                      mov r7, r0
0088b22c  06 00 54 e1                                      cmp r4, r6
0088b230  0c 00 00 0a                                      beq #0x88b268
0088b234  0c 00 a0 e3                                      mov r0, #0xc
0088b238  00 10 a0 e3                                      mov r1, #0
0088b23c  01 15 ea eb                                      bl #0x310648
0088b240  08 30 94 e5                                      ldr r3, [r4, #8]
0088b244  08 30 80 e5                                      str r3, [r0, #8]
0088b248  04 30 95 e5                                      ldr r3, [r5, #4]
0088b24c  00 50 80 e5                                      str r5, [r0]
0088b250  04 30 80 e5                                      str r3, [r0, #4]
0088b254  00 00 83 e5                                      str r0, [r3]
0088b258  04 00 85 e5                                      str r0, [r5, #4]
0088b25c  00 40 94 e5                                      ldr r4, [r4]
0088b260  04 00 56 e1                                      cmp r6, r4
0088b264  f2 ff ff 1a                                      bne #0x88b234
0088b268  10 00 87 e2                                      add r0, r7, #0x10
0088b26c  10 10 88 e2                                      add r1, r8, #0x10
0088b270  61 98 ff eb                                      bl #0x8713fc
0088b274  bc 31 d8 e1                                      ldrh r3, [r8, #0x1c]
0088b278  07 00 a0 e1                                      mov r0, r7
0088b27c  bc 31 c7 e1                                      strh r3, [r7, #0x1c]
0088b280  be 31 d8 e1                                      ldrh r3, [r8, #0x1e]
0088b284  be 31 c7 e1                                      strh r3, [r7, #0x1e]
0088b288  b0 32 d8 e1                                      ldrh r3, [r8, #0x20]
0088b28c  b0 32 c7 e1                                      strh r3, [r7, #0x20]
0088b290  b2 32 d8 e1                                      ldrh r3, [r8, #0x22]
0088b294  b2 32 c7 e1                                      strh r3, [r7, #0x22]
0088b298  24 30 98 e5                                      ldr r3, [r8, #0x24]
0088b29c  24 30 87 e5                                      str r3, [r7, #0x24]
0088b2a0  28 30 98 e5                                      ldr r3, [r8, #0x28]
0088b2a4  28 30 87 e5                                      str r3, [r7, #0x28]
0088b2a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
