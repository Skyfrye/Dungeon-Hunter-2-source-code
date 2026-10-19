; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088ade0, declared_size=76, range_size=76, mode=arm
; class-group: vox::GroupXMLDef
; alias: _ZN3vox11GroupXMLDefC1Ev
; demangled: vox::GroupXMLDef::GroupXMLDef()
; decoder-mode: arm
0088ade0  70 40 2d e9                                      push {r4, r5, r6, lr}
0088ade4  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
0088ade8  08 d0 4d e2                                      sub sp, sp, #8
0088adec  00 60 a0 e3                                      mov r6, #0
0088adf0  05 50 8f e0                                      add r5, pc, r5
0088adf4  00 40 a0 e1                                      mov r4, r0
0088adf8  05 10 a0 e1                                      mov r1, r5
0088adfc  04 20 8d e2                                      add r2, sp, #4
0088ae00  04 60 80 e4                                      str r6, [r0], #4
0088ae04  4b 91 ff eb                                      bl #0x86f338
0088ae08  05 10 a0 e1                                      mov r1, r5
0088ae0c  1c 00 84 e2                                      add r0, r4, #0x1c
0088ae10  0d 20 a0 e1                                      mov r2, sp
0088ae14  47 91 ff eb                                      bl #0x86f338
0088ae18  34 60 84 e5                                      str r6, [r4, #0x34]
0088ae1c  04 00 a0 e1                                      mov r0, r4
0088ae20  08 d0 8d e2                                      add sp, sp, #8
0088ae24  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0088ae28  18 0a 04 00                                      .byte 0x18, 0x0a, 0x04, 0x00

; FUNCTION 0x0088ae2c, declared_size=80, range_size=80, mode=arm
; class-group: vox::GroupXMLDef
; alias: _ZN3vox11GroupXMLDefC1ERKS0_
; demangled: vox::GroupXMLDef::GroupXMLDef(vox::GroupXMLDef const&)
; decoder-mode: arm
0088ae2c  70 40 2d e9                                      push {r4, r5, r6, lr}
0088ae30  00 30 91 e5                                      ldr r3, [r1]
0088ae34  00 40 a0 e1                                      mov r4, r0
0088ae38  01 50 a0 e1                                      mov r5, r1
0088ae3c  04 30 80 e4                                      str r3, [r0], #4
0088ae40  14 00 84 e5                                      str r0, [r4, #0x14]
0088ae44  18 00 84 e5                                      str r0, [r4, #0x18]
0088ae48  14 20 95 e5                                      ldr r2, [r5, #0x14]
0088ae4c  18 10 91 e5                                      ldr r1, [r1, #0x18]
0088ae50  26 91 ff eb                                      bl #0x86f2f0
0088ae54  1c 00 84 e2                                      add r0, r4, #0x1c
0088ae58  2c 00 84 e5                                      str r0, [r4, #0x2c]
0088ae5c  30 00 84 e5                                      str r0, [r4, #0x30]
0088ae60  30 10 95 e5                                      ldr r1, [r5, #0x30]
0088ae64  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
0088ae68  20 91 ff eb                                      bl #0x86f2f0
0088ae6c  34 30 95 e5                                      ldr r3, [r5, #0x34]
0088ae70  04 00 a0 e1                                      mov r0, r4
0088ae74  34 30 84 e5                                      str r3, [r4, #0x34]
0088ae78  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0088b5f0, declared_size=88, range_size=88, mode=arm
; class-group: vox::GroupXMLDef
; alias: _ZN3vox11GroupXMLDefaSERKS0_
; demangled: vox::GroupXMLDef::operator=(vox::GroupXMLDef const&)
; decoder-mode: arm
0088b5f0  70 40 2d e9                                      push {r4, r5, r6, lr}
0088b5f4  01 30 a0 e1                                      mov r3, r1
0088b5f8  04 20 93 e4                                      ldr r2, [r3], #4
0088b5fc  00 50 a0 e1                                      mov r5, r0
0088b600  01 40 a0 e1                                      mov r4, r1
0088b604  04 20 80 e4                                      str r2, [r0], #4
0088b608  03 00 50 e1                                      cmp r0, r3
0088b60c  02 00 00 0a                                      beq #0x88b61c
0088b610  18 10 91 e5                                      ldr r1, [r1, #0x18]
0088b614  14 20 94 e5                                      ldr r2, [r4, #0x14]
0088b618  54 f5 ff eb                                      bl #0x888b70
0088b61c  1c 00 85 e2                                      add r0, r5, #0x1c
0088b620  1c 30 84 e2                                      add r3, r4, #0x1c
0088b624  03 00 50 e1                                      cmp r0, r3
0088b628  02 00 00 0a                                      beq #0x88b638
0088b62c  30 10 94 e5                                      ldr r1, [r4, #0x30]
0088b630  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0088b634  4d f5 ff eb                                      bl #0x888b70
0088b638  34 30 94 e5                                      ldr r3, [r4, #0x34]
0088b63c  05 00 a0 e1                                      mov r0, r5
0088b640  34 30 85 e5                                      str r3, [r5, #0x34]
0088b644  70 80 bd e8                                      pop {r4, r5, r6, pc}
