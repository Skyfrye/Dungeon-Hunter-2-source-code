; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00510b4c, declared_size=152, range_size=152, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap16GetThisClassNameEv
; demangled: PropertyMap::GetThisClassName()
; decoder-mode: arm
00510b4c  10 40 2d e9                                      push {r4, lr}
00510b50  00 40 a0 e1                                      mov r4, r0
00510b54  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00510b58  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00510b5c  08 d0 4d e2                                      sub sp, sp, #8
00510b60  00 00 50 e3                                      cmp r0, #0
00510b64  03 30 8f e0                                      add r3, pc, r3
00510b68  01 00 00 0a                                      beq #0x510b74
00510b6c  08 d0 8d e2                                      add sp, sp, #8
00510b70  10 80 bd e8                                      pop {r4, pc}
00510b74  54 20 9f e5                                      ldr r2, [pc, #0x54]
00510b78  02 20 93 e7                                      ldr r2, [r3, r2]
00510b7c  00 20 92 e5                                      ldr r2, [r2]
00510b80  02 00 52 e3                                      cmp r2, #2
00510b84  00 00 80 05                                      streq r0, [r0]
00510b88  f7 ff ff 0a                                      beq #0x510b6c
00510b8c  01 00 52 e3                                      cmp r2, #1
00510b90  f5 ff ff 1a                                      bne #0x510b6c
00510b94  38 00 9f e5                                      ldr r0, [pc, #0x38]
00510b98  38 10 9f e5                                      ldr r1, [pc, #0x38]
00510b9c  38 20 9f e5                                      ldr r2, [pc, #0x38]
00510ba0  00 00 93 e7                                      ldr r0, [r3, r0]
00510ba4  34 30 9f e5                                      ldr r3, [pc, #0x34]
00510ba8  92 c0 a0 e3                                      mov ip, #0x92
00510bac  01 10 8f e0                                      add r1, pc, r1
00510bb0  a8 00 80 e2                                      add r0, r0, #0xa8
00510bb4  02 20 8f e0                                      add r2, pc, r2
00510bb8  03 30 8f e0                                      add r3, pc, r3
00510bbc  00 c0 8d e5                                      str ip, [sp]
00510bc0  0f f5 f7 eb                                      bl #0x30e004
00510bc4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00510bc8  e7 ff ff ea                                      b #0x510b6c
; mapping-symbol data/literal pool
00510bcc  2c 3f 48 00 c0 39 00 00 c0 19 00 00 2c d8 3a 00  .byte 0x2c, 0x3f, 0x48, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x2c, 0xd8, 0x3a, 0x00
00510bdc  2c b4 3c 00 40 b4 3c 00                          .byte 0x2c, 0xb4, 0x3c, 0x00, 0x40, 0xb4, 0x3c, 0x00

; FUNCTION 0x00510dec, declared_size=500, range_size=500, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap19DestroyPropertyMapsEv
; demangled: PropertyMap::DestroyPropertyMaps()
; decoder-mode: arm
00510dec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00510df0  dc a1 9f e5                                      ldr sl, [pc, #0x1dc]
00510df4  dc 31 9f e5                                      ldr r3, [pc, #0x1dc]
00510df8  0c d0 4d e2                                      sub sp, sp, #0xc
00510dfc  0a a0 8f e0                                      add sl, pc, sl
00510e00  03 30 9a e7                                      ldr r3, [sl, r3]
00510e04  d0 91 9f e5                                      ldr sb, [pc, #0x1d0]
00510e08  04 30 8d e5                                      str r3, [sp, #4]
00510e0c  08 40 93 e5                                      ldr r4, [r3, #8]
00510e10  04 30 9d e5                                      ldr r3, [sp, #4]
00510e14  03 00 54 e1                                      cmp r4, r3
00510e18  34 00 00 0a                                      beq #0x510ef0
00510e1c  30 80 94 e5                                      ldr r8, [r4, #0x30]
00510e20  28 b0 84 e2                                      add fp, r4, #0x28
00510e24  08 00 5b e1                                      cmp fp, r8
00510e28  24 00 00 0a                                      beq #0x510ec0
00510e2c  30 50 98 e5                                      ldr r5, [r8, #0x30]
00510e30  28 70 88 e2                                      add r7, r8, #0x28
00510e34  05 00 57 e1                                      cmp r7, r5
00510e38  14 00 00 0a                                      beq #0x510e90
00510e3c  28 60 95 e5                                      ldr r6, [r5, #0x28]
00510e40  00 00 56 e3                                      cmp r6, #0
00510e44  06 00 00 0a                                      beq #0x510e64
00510e48  09 30 9a e7                                      ldr r3, [sl, sb]
00510e4c  06 00 a0 e1                                      mov r0, r6
00510e50  08 30 83 e2                                      add r3, r3, #8
00510e54  08 30 80 e4                                      str r3, [r0], #8
00510e58  fd 1c f8 eb                                      bl #0x318254
00510e5c  06 00 a0 e1                                      mov r0, r6
00510e60  76 fd f7 eb                                      bl #0x310440
00510e64  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00510e68  00 00 52 e3                                      cmp r2, #0
00510e6c  01 00 00 1a                                      bne #0x510e78
00510e70  23 00 00 ea                                      b #0x510f04
00510e74  03 20 a0 e1                                      mov r2, r3
00510e78  08 30 92 e5                                      ldr r3, [r2, #8]
00510e7c  00 00 53 e3                                      cmp r3, #0
00510e80  fb ff ff 1a                                      bne #0x510e74
00510e84  02 50 a0 e1                                      mov r5, r2
00510e88  05 00 57 e1                                      cmp r7, r5
00510e8c  ea ff ff 1a                                      bne #0x510e3c
00510e90  0c 10 98 e5                                      ldr r1, [r8, #0xc]
00510e94  00 00 51 e3                                      cmp r1, #0
00510e98  01 20 a0 e1                                      mov r2, r1
00510e9c  01 00 00 1a                                      bne #0x510ea8
00510ea0  24 00 00 ea                                      b #0x510f38
00510ea4  03 20 a0 e1                                      mov r2, r3
00510ea8  08 30 92 e5                                      ldr r3, [r2, #8]
00510eac  00 00 53 e3                                      cmp r3, #0
00510eb0  fb ff ff 1a                                      bne #0x510ea4
00510eb4  02 80 a0 e1                                      mov r8, r2
00510eb8  08 00 5b e1                                      cmp fp, r8
00510ebc  da ff ff 1a                                      bne #0x510e2c
00510ec0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00510ec4  00 00 52 e3                                      cmp r2, #0
00510ec8  01 00 00 1a                                      bne #0x510ed4
00510ecc  26 00 00 ea                                      b #0x510f6c
00510ed0  03 20 a0 e1                                      mov r2, r3
00510ed4  08 30 92 e5                                      ldr r3, [r2, #8]
00510ed8  00 00 53 e3                                      cmp r3, #0
00510edc  fb ff ff 1a                                      bne #0x510ed0
00510ee0  02 40 a0 e1                                      mov r4, r2
00510ee4  04 30 9d e5                                      ldr r3, [sp, #4]
00510ee8  03 00 54 e1                                      cmp r4, r3
00510eec  ca ff ff 1a                                      bne #0x510e1c
00510ef0  10 30 94 e5                                      ldr r3, [r4, #0x10]
00510ef4  00 00 53 e3                                      cmp r3, #0
00510ef8  2d 00 00 1a                                      bne #0x510fb4
00510efc  0c d0 8d e2                                      add sp, sp, #0xc
00510f00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00510f04  04 30 95 e5                                      ldr r3, [r5, #4]
00510f08  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00510f0c  01 00 55 e1                                      cmp r5, r1
00510f10  05 00 00 1a                                      bne #0x510f2c
00510f14  03 50 a0 e1                                      mov r5, r3
00510f18  04 30 93 e5                                      ldr r3, [r3, #4]
00510f1c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00510f20  05 00 52 e1                                      cmp r2, r5
00510f24  fa ff ff 0a                                      beq #0x510f14
00510f28  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00510f2c  02 00 53 e1                                      cmp r3, r2
00510f30  03 50 a0 11                                      movne r5, r3
00510f34  be ff ff ea                                      b #0x510e34
00510f38  04 30 98 e5                                      ldr r3, [r8, #4]
00510f3c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00510f40  02 00 58 e1                                      cmp r8, r2
00510f44  05 00 00 1a                                      bne #0x510f60
00510f48  03 80 a0 e1                                      mov r8, r3
00510f4c  04 30 93 e5                                      ldr r3, [r3, #4]
00510f50  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00510f54  08 00 52 e1                                      cmp r2, r8
00510f58  fa ff ff 0a                                      beq #0x510f48
00510f5c  0c 10 98 e5                                      ldr r1, [r8, #0xc]
00510f60  01 00 53 e1                                      cmp r3, r1
00510f64  03 80 a0 11                                      movne r8, r3
00510f68  ad ff ff ea                                      b #0x510e24
00510f6c  04 30 94 e5                                      ldr r3, [r4, #4]
00510f70  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00510f74  02 00 54 e1                                      cmp r4, r2
00510f78  04 20 a0 11                                      movne r2, r4
00510f7c  01 00 00 0a                                      beq #0x510f88
00510f80  06 00 00 ea                                      b #0x510fa0
00510f84  01 30 a0 e1                                      mov r3, r1
00510f88  04 10 93 e5                                      ldr r1, [r3, #4]
00510f8c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00510f90  03 00 52 e1                                      cmp r2, r3
00510f94  fa ff ff 0a                                      beq #0x510f84
00510f98  03 20 a0 e1                                      mov r2, r3
00510f9c  01 30 a0 e1                                      mov r3, r1
00510fa0  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00510fa4  01 00 53 e1                                      cmp r3, r1
00510fa8  03 20 a0 11                                      movne r2, r3
00510fac  02 40 a0 e1                                      mov r4, r2
00510fb0  cb ff ff ea                                      b #0x510ee4
00510fb4  04 00 a0 e1                                      mov r0, r4
00510fb8  04 10 94 e5                                      ldr r1, [r4, #4]
00510fbc  6d ff ff eb                                      bl #0x510d78
00510fc0  00 30 a0 e3                                      mov r3, #0
00510fc4  10 30 84 e5                                      str r3, [r4, #0x10]
00510fc8  18 00 84 e9                                      stmib r4, {r3, r4}
00510fcc  0c 40 84 e5                                      str r4, [r4, #0xc]
00510fd0  c9 ff ff ea                                      b #0x510efc
; mapping-symbol data/literal pool
00510fd4  94 3c 48 00 68 2a 00 00 30 23 00 00              .byte 0x94, 0x3c, 0x48, 0x00, 0x68, 0x2a, 0x00, 0x00, 0x30, 0x23, 0x00, 0x00

; FUNCTION 0x005134c0, declared_size=48, range_size=48, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap14GetPropertyMapEv
; demangled: PropertyMap::GetPropertyMap()
; decoder-mode: arm
005134c0  10 40 2d e9                                      push {r4, lr}
005134c4  08 d0 4d e2                                      sub sp, sp, #8
005134c8  00 40 a0 e1                                      mov r4, r0
005134cc  9e f5 ff eb                                      bl #0x510b4c
005134d0  08 30 8d e2                                      add r3, sp, #8
005134d4  04 00 23 e5                                      str r0, [r3, #-4]!
005134d8  03 00 a0 e1                                      mov r0, r3
005134dc  fc fb ff eb                                      bl #0x5124d4
005134e0  04 10 84 e2                                      add r1, r4, #4
005134e4  8b ff ff eb                                      bl #0x513318
005134e8  08 d0 8d e2                                      add sp, sp, #8
005134ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005134f0, declared_size=388, range_size=388, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap19SavePropertiesToXMLEP12TiXmlElementPKc
; demangled: PropertyMap::SavePropertiesToXML(TiXmlElement*, char const*)
; decoder-mode: arm
005134f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005134f4  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
005134f8  6c 41 9f e5                                      ldr r4, [pc, #0x16c]
005134fc  54 d0 4d e2                                      sub sp, sp, #0x54
00513500  03 30 8f e0                                      add r3, pc, r3
00513504  04 30 8d e5                                      str r3, [sp, #4]
00513508  04 30 93 e7                                      ldr r3, [r3, r4]
0051350c  00 00 52 e3                                      cmp r2, #0
00513510  08 40 8d e5                                      str r4, [sp, #8]
00513514  00 30 93 e5                                      ldr r3, [r3]
00513518  00 80 a0 e1                                      mov r8, r0
0051351c  0c 10 8d e5                                      str r1, [sp, #0xc]
00513520  4c 30 8d e5                                      str r3, [sp, #0x4c]
00513524  02 40 a0 11                                      movne r4, r2
00513528  4a 00 00 0a                                      beq #0x513658
0051352c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00513530  00 00 5c e3                                      cmp ip, #0
00513534  31 00 00 0a                                      beq #0x513600
00513538  00 10 a0 e3                                      mov r1, #0
0051353c  8c 00 a0 e3                                      mov r0, #0x8c
00513540  0a f4 f7 eb                                      bl #0x310570
00513544  04 10 a0 e1                                      mov r1, r4
00513548  00 a0 a0 e1                                      mov sl, r0
0051354c  c2 0f 00 eb                                      bl #0x51745c
00513550  08 00 a0 e1                                      mov r0, r8
00513554  d9 ff ff eb                                      bl #0x5134c0
00513558  08 40 90 e5                                      ldr r4, [r0, #8]
0051355c  00 70 a0 e1                                      mov r7, r0
00513560  1c 60 8d e2                                      add r6, sp, #0x1c
00513564  18 90 8d e2                                      add sb, sp, #0x18
00513568  34 50 8d e2                                      add r5, sp, #0x34
0051356c  10 b0 8d e2                                      add fp, sp, #0x10
00513570  04 00 57 e1                                      cmp r7, r4
00513574  1e 00 00 0a                                      beq #0x5135f4
00513578  28 30 94 e5                                      ldr r3, [r4, #0x28]
0051357c  00 00 53 e3                                      cmp r3, #0
00513580  10 00 00 0a                                      beq #0x5135c8
00513584  10 30 8d e5                                      str r3, [sp, #0x10]
00513588  14 80 8d e5                                      str r8, [sp, #0x14]
0051358c  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
00513590  09 20 a0 e1                                      mov r2, sb
00513594  06 00 a0 e1                                      mov r0, r6
00513598  d3 02 f8 eb                                      bl #0x3140ec
0051359c  05 00 a0 e1                                      mov r0, r5
005135a0  0b 10 a0 e1                                      mov r1, fp
005135a4  8d f6 ff eb                                      bl #0x510fe0
005135a8  0a 00 a0 e1                                      mov r0, sl
005135ac  06 10 a0 e1                                      mov r1, r6
005135b0  05 20 a0 e1                                      mov r2, r5
005135b4  91 0b 00 eb                                      bl #0x516400
005135b8  05 00 a0 e1                                      mov r0, r5
005135bc  24 13 f8 eb                                      bl #0x318254
005135c0  06 00 a0 e1                                      mov r0, r6
005135c4  22 13 f8 eb                                      bl #0x318254
005135c8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005135cc  00 00 52 e3                                      cmp r2, #0
005135d0  01 00 00 1a                                      bne #0x5135dc
005135d4  12 00 00 ea                                      b #0x513624
005135d8  03 20 a0 e1                                      mov r2, r3
005135dc  08 30 92 e5                                      ldr r3, [r2, #8]
005135e0  00 00 53 e3                                      cmp r3, #0
005135e4  fb ff ff 1a                                      bne #0x5135d8
005135e8  02 40 a0 e1                                      mov r4, r2
005135ec  04 00 57 e1                                      cmp r7, r4
005135f0  e0 ff ff 1a                                      bne #0x513578
005135f4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005135f8  0a 10 a0 e1                                      mov r1, sl
005135fc  d8 08 00 eb                                      bl #0x515964
00513600  04 20 9d e5                                      ldr r2, [sp, #4]
00513604  08 10 9d e5                                      ldr r1, [sp, #8]
00513608  01 30 92 e7                                      ldr r3, [r2, r1]
0051360c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00513610  00 30 93 e5                                      ldr r3, [r3]
00513614  03 00 52 e1                                      cmp r2, r3
00513618  11 00 00 1a                                      bne #0x513664
0051361c  54 d0 8d e2                                      add sp, sp, #0x54
00513620  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00513624  04 30 94 e5                                      ldr r3, [r4, #4]
00513628  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0051362c  01 00 54 e1                                      cmp r4, r1
00513630  05 00 00 1a                                      bne #0x51364c
00513634  03 40 a0 e1                                      mov r4, r3
00513638  04 30 93 e5                                      ldr r3, [r3, #4]
0051363c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00513640  04 00 52 e1                                      cmp r2, r4
00513644  fa ff ff 0a                                      beq #0x513634
00513648  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0051364c  03 00 52 e1                                      cmp r2, r3
00513650  03 40 a0 11                                      movne r4, r3
00513654  c5 ff ff ea                                      b #0x513570
00513658  10 40 9f e5                                      ldr r4, [pc, #0x10]
0051365c  04 40 8f e0                                      add r4, pc, r4
00513660  b1 ff ff ea                                      b #0x51352c
00513664  29 eb f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00513668  90 15 48 00 ac 40 00 00 0c cc 3a 00              .byte 0x90, 0x15, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0x0c, 0xcc, 0x3a, 0x00

; FUNCTION 0x00513674, declared_size=120, range_size=120, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap14DumpPropertiesEv
; demangled: PropertyMap::DumpProperties()
; decoder-mode: arm
00513674  10 40 2d e9                                      push {r4, lr}
00513678  90 ff ff eb                                      bl #0x5134c0
0051367c  08 30 90 e5                                      ldr r3, [r0, #8]
00513680  03 00 50 e1                                      cmp r0, r3
00513684  0a 00 00 0a                                      beq #0x5136b4
00513688  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0051368c  00 00 52 e3                                      cmp r2, #0
00513690  01 00 00 1a                                      bne #0x51369c
00513694  07 00 00 ea                                      b #0x5136b8
00513698  03 20 a0 e1                                      mov r2, r3
0051369c  08 30 92 e5                                      ldr r3, [r2, #8]
005136a0  00 00 53 e3                                      cmp r3, #0
005136a4  fb ff ff 1a                                      bne #0x513698
005136a8  02 30 a0 e1                                      mov r3, r2
005136ac  03 00 50 e1                                      cmp r0, r3
005136b0  f4 ff ff 1a                                      bne #0x513688
005136b4  10 80 bd e8                                      pop {r4, pc}
005136b8  04 10 93 e5                                      ldr r1, [r3, #4]
005136bc  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005136c0  0c 00 53 e1                                      cmp r3, ip
005136c4  05 00 00 1a                                      bne #0x5136e0
005136c8  01 30 a0 e1                                      mov r3, r1
005136cc  04 10 91 e5                                      ldr r1, [r1, #4]
005136d0  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005136d4  03 00 52 e1                                      cmp r2, r3
005136d8  fa ff ff 0a                                      beq #0x5136c8
005136dc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005136e0  02 00 51 e1                                      cmp r1, r2
005136e4  01 30 a0 11                                      movne r3, r1
005136e8  e4 ff ff ea                                      b #0x513680

; FUNCTION 0x005136ec, declared_size=284, range_size=284, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap21LoadDefaultPropertiesEv
; demangled: PropertyMap::LoadDefaultProperties()
; decoder-mode: arm
005136ec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005136f0  08 41 9f e5                                      ldr r4, [pc, #0x108]
005136f4  08 61 9f e5                                      ldr r6, [pc, #0x108]
005136f8  20 d0 4d e2                                      sub sp, sp, #0x20
005136fc  04 40 8f e0                                      add r4, pc, r4
00513700  06 30 94 e7                                      ldr r3, [r4, r6]
00513704  04 90 80 e2                                      add sb, r0, #4
00513708  00 80 a0 e1                                      mov r8, r0
0051370c  00 30 93 e5                                      ldr r3, [r3]
00513710  04 50 8d e2                                      add r5, sp, #4
00513714  1c 30 8d e5                                      str r3, [sp, #0x1c]
00513718  68 ff ff eb                                      bl #0x5134c0
0051371c  09 10 a0 e1                                      mov r1, sb
00513720  00 a0 a0 e1                                      mov sl, r0
00513724  05 00 a0 e1                                      mov r0, r5
00513728  7a 60 f8 eb                                      bl #0x32b918
0051372c  08 70 9a e5                                      ldr r7, [sl, #8]
00513730  07 00 5a e1                                      cmp sl, r7
00513734  14 00 00 0a                                      beq #0x51378c
00513738  28 30 97 e5                                      ldr r3, [r7, #0x28]
0051373c  00 00 53 e3                                      cmp r3, #0
00513740  06 00 00 0a                                      beq #0x513760
00513744  00 00 58 e3                                      cmp r8, #0
00513748  04 00 00 0a                                      beq #0x513760
0051374c  03 00 a0 e1                                      mov r0, r3
00513750  08 10 a0 e1                                      mov r1, r8
00513754  00 30 93 e5                                      ldr r3, [r3]
00513758  0f e0 a0 e1                                      mov lr, pc
0051375c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00513760  0c 20 97 e5                                      ldr r2, [r7, #0xc]
00513764  00 00 52 e3                                      cmp r2, #0
00513768  01 00 00 1a                                      bne #0x513774
0051376c  15 00 00 ea                                      b #0x5137c8
00513770  03 20 a0 e1                                      mov r2, r3
00513774  08 30 92 e5                                      ldr r3, [r2, #8]
00513778  00 00 53 e3                                      cmp r3, #0
0051377c  fb ff ff 1a                                      bne #0x513770
00513780  02 70 a0 e1                                      mov r7, r2
00513784  07 00 5a e1                                      cmp sl, r7
00513788  ea ff ff 1a                                      bne #0x513738
0051378c  05 00 59 e1                                      cmp sb, r5
00513790  03 00 00 0a                                      beq #0x5137a4
00513794  09 00 a0 e1                                      mov r0, sb
00513798  18 10 9d e5                                      ldr r1, [sp, #0x18]
0051379c  14 20 9d e5                                      ldr r2, [sp, #0x14]
005137a0  8e f4 f7 eb                                      bl #0x3109e0
005137a4  05 00 a0 e1                                      mov r0, r5
005137a8  a9 12 f8 eb                                      bl #0x318254
005137ac  06 30 94 e7                                      ldr r3, [r4, r6]
005137b0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005137b4  00 30 93 e5                                      ldr r3, [r3]
005137b8  03 00 52 e1                                      cmp r2, r3
005137bc  0e 00 00 1a                                      bne #0x5137fc
005137c0  20 d0 8d e2                                      add sp, sp, #0x20
005137c4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005137c8  04 30 97 e5                                      ldr r3, [r7, #4]
005137cc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005137d0  01 00 57 e1                                      cmp r7, r1
005137d4  05 00 00 1a                                      bne #0x5137f0
005137d8  03 70 a0 e1                                      mov r7, r3
005137dc  04 30 93 e5                                      ldr r3, [r3, #4]
005137e0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005137e4  07 00 52 e1                                      cmp r2, r7
005137e8  fa ff ff 0a                                      beq #0x5137d8
005137ec  0c 20 97 e5                                      ldr r2, [r7, #0xc]
005137f0  03 00 52 e1                                      cmp r2, r3
005137f4  03 70 a0 11                                      movne r7, r3
005137f8  cc ff ff ea                                      b #0x513730
005137fc  c3 ea f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00513800  94 13 48 00 ac 40 00 00                          .byte 0x94, 0x13, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00513808, declared_size=40, range_size=40, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap7GetPropEPKc
; demangled: PropertyMap::GetProp(char const*)
; decoder-mode: arm
00513808  10 40 2d e9                                      push {r4, lr}
0051380c  08 d0 4d e2                                      sub sp, sp, #8
00513810  08 40 8d e2                                      add r4, sp, #8
00513814  04 10 24 e5                                      str r1, [r4, #-4]!
00513818  28 ff ff eb                                      bl #0x5134c0
0051381c  04 10 a0 e1                                      mov r1, r4
00513820  2e fd ff eb                                      bl #0x512ce0
00513824  00 00 90 e5                                      ldr r0, [r0]
00513828  08 d0 8d e2                                      add sp, sp, #8
0051382c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00513830, declared_size=40, range_size=40, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap20SetTemplateParameterEPKcS1_
; demangled: PropertyMap::SetTemplateParameter(char const*, char const*)
; decoder-mode: arm
00513830  10 40 2d e9                                      push {r4, lr}
00513834  02 40 a0 e1                                      mov r4, r2
00513838  f2 ff ff eb                                      bl #0x513808
0051383c  00 30 50 e2                                      subs r3, r0, #0
00513840  03 00 00 0a                                      beq #0x513854
00513844  00 30 93 e5                                      ldr r3, [r3]
00513848  04 10 a0 e1                                      mov r1, r4
0051384c  0f e0 a0 e1                                      mov lr, pc
00513850  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00513854  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00513858, declared_size=36, range_size=36, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap11GetPropertyEPKc
; demangled: PropertyMap::GetProperty(char const*)
; decoder-mode: arm
00513858  70 40 2d e9                                      push {r4, r5, r6, lr}
0051385c  01 50 a0 e1                                      mov r5, r1
00513860  00 40 a0 e1                                      mov r4, r0
00513864  02 10 a0 e1                                      mov r1, r2
00513868  05 00 a0 e1                                      mov r0, r5
0051386c  e5 ff ff eb                                      bl #0x513808
00513870  21 00 84 e8                                      stm r4, {r0, r5}
00513874  04 00 a0 e1                                      mov r0, r4
00513878  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0051387c, declared_size=128, range_size=128, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap11SetPropertyEPKcS1_
; demangled: PropertyMap::SetProperty(char const*, char const*)
; decoder-mode: arm
0051387c  10 40 2d e9                                      push {r4, lr}
00513880  01 30 a0 e1                                      mov r3, r1
00513884  08 d0 4d e2                                      sub sp, sp, #8
00513888  00 10 a0 e1                                      mov r1, r0
0051388c  02 40 a0 e1                                      mov r4, r2
00513890  0d 00 a0 e1                                      mov r0, sp
00513894  03 20 a0 e1                                      mov r2, r3
00513898  ee ff ff eb                                      bl #0x513858
0051389c  00 00 54 e3                                      cmp r4, #0
005138a0  00 30 9d e5                                      ldr r3, [sp]
005138a4  04 10 9d e5                                      ldr r1, [sp, #4]
005138a8  0a 00 00 0a                                      beq #0x5138d8
005138ac  00 00 51 e3                                      cmp r1, #0
005138b0  06 00 00 0a                                      beq #0x5138d0
005138b4  00 00 53 e3                                      cmp r3, #0
005138b8  04 00 00 0a                                      beq #0x5138d0
005138bc  03 00 a0 e1                                      mov r0, r3
005138c0  04 20 a0 e1                                      mov r2, r4
005138c4  00 30 93 e5                                      ldr r3, [r3]
005138c8  0f e0 a0 e1                                      mov lr, pc
005138cc  04 f0 93 e5                                      ldr pc, [r3, #4]
005138d0  08 d0 8d e2                                      add sp, sp, #8
005138d4  10 80 bd e8                                      pop {r4, pc}
005138d8  00 00 51 e3                                      cmp r1, #0
005138dc  fb ff ff 0a                                      beq #0x5138d0
005138e0  00 00 53 e3                                      cmp r3, #0
005138e4  f9 ff ff 0a                                      beq #0x5138d0
005138e8  03 00 a0 e1                                      mov r0, r3
005138ec  00 30 93 e5                                      ldr r3, [r3]
005138f0  0f e0 a0 e1                                      mov lr, pc
005138f4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005138f8  f4 ff ff ea                                      b #0x5138d0

; FUNCTION 0x005138fc, declared_size=260, range_size=260, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap15ClonePropertiesERS_
; demangled: PropertyMap::CloneProperties(PropertyMap&)
; decoder-mode: arm
005138fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00513900  f0 90 9f e5                                      ldr sb, [pc, #0xf0]
00513904  f0 b0 9f e5                                      ldr fp, [pc, #0xf0]
00513908  24 d0 4d e2                                      sub sp, sp, #0x24
0051390c  09 90 8f e0                                      add sb, pc, sb
00513910  0b 30 99 e7                                      ldr r3, [sb, fp]
00513914  00 a0 a0 e1                                      mov sl, r0
00513918  01 00 a0 e1                                      mov r0, r1
0051391c  00 30 93 e5                                      ldr r3, [r3]
00513920  01 80 a0 e1                                      mov r8, r1
00513924  04 50 8d e2                                      add r5, sp, #4
00513928  1c 30 8d e5                                      str r3, [sp, #0x1c]
0051392c  e3 fe ff eb                                      bl #0x5134c0
00513930  08 40 90 e5                                      ldr r4, [r0, #8]
00513934  00 70 a0 e1                                      mov r7, r0
00513938  04 00 57 e1                                      cmp r7, r4
0051393c  18 00 00 0a                                      beq #0x5139a4
00513940  28 30 94 e5                                      ldr r3, [r4, #0x28]
00513944  24 60 94 e5                                      ldr r6, [r4, #0x24]
00513948  08 20 a0 e1                                      mov r2, r8
0051394c  03 10 a0 e1                                      mov r1, r3
00513950  05 00 a0 e1                                      mov r0, r5
00513954  00 30 93 e5                                      ldr r3, [r3]
00513958  0f e0 a0 e1                                      mov lr, pc
0051395c  00 f0 93 e5                                      ldr pc, [r3]
00513960  18 20 9d e5                                      ldr r2, [sp, #0x18]
00513964  0a 00 a0 e1                                      mov r0, sl
00513968  06 10 a0 e1                                      mov r1, r6
0051396c  c2 ff ff eb                                      bl #0x51387c
00513970  05 00 a0 e1                                      mov r0, r5
00513974  36 12 f8 eb                                      bl #0x318254
00513978  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0051397c  00 00 52 e3                                      cmp r2, #0
00513980  01 00 00 1a                                      bne #0x51398c
00513984  0d 00 00 ea                                      b #0x5139c0
00513988  03 20 a0 e1                                      mov r2, r3
0051398c  08 30 92 e5                                      ldr r3, [r2, #8]
00513990  00 00 53 e3                                      cmp r3, #0
00513994  fb ff ff 1a                                      bne #0x513988
00513998  02 40 a0 e1                                      mov r4, r2
0051399c  04 00 57 e1                                      cmp r7, r4
005139a0  e6 ff ff 1a                                      bne #0x513940
005139a4  0b 30 99 e7                                      ldr r3, [sb, fp]
005139a8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005139ac  00 30 93 e5                                      ldr r3, [r3]
005139b0  03 00 52 e1                                      cmp r2, r3
005139b4  0e 00 00 1a                                      bne #0x5139f4
005139b8  24 d0 8d e2                                      add sp, sp, #0x24
005139bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005139c0  04 30 94 e5                                      ldr r3, [r4, #4]
005139c4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005139c8  01 00 54 e1                                      cmp r4, r1
005139cc  05 00 00 1a                                      bne #0x5139e8
005139d0  03 40 a0 e1                                      mov r4, r3
005139d4  04 30 93 e5                                      ldr r3, [r3, #4]
005139d8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005139dc  04 00 52 e1                                      cmp r2, r4
005139e0  fa ff ff 0a                                      beq #0x5139d0
005139e4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005139e8  03 00 52 e1                                      cmp r2, r3
005139ec  03 40 a0 11                                      movne r4, r3
005139f0  d0 ff ff ea                                      b #0x513938
005139f4  45 ea f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005139f8  84 11 48 00 ac 40 00 00                          .byte 0x84, 0x11, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00513a00, declared_size=168, range_size=168, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap20LoadOverridesFromXMLEP12TiXmlElement
; demangled: PropertyMap::LoadOverridesFromXML(TiXmlElement*)
; decoder-mode: arm
00513a00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00513a04  00 70 51 e2                                      subs r7, r1, #0
00513a08  00 60 a0 e1                                      mov r6, r0
00513a0c  17 00 00 0a                                      beq #0x513a70
00513a10  aa fe ff eb                                      bl #0x5134c0
00513a14  08 40 90 e5                                      ldr r4, [r0, #8]
00513a18  00 50 a0 e1                                      mov r5, r0
00513a1c  04 00 55 e1                                      cmp r5, r4
00513a20  12 00 00 0a                                      beq #0x513a70
00513a24  24 80 94 e5                                      ldr r8, [r4, #0x24]
00513a28  07 00 a0 e1                                      mov r0, r7
00513a2c  08 10 a0 e1                                      mov r1, r8
00513a30  8e 04 00 eb                                      bl #0x514c70
00513a34  08 10 a0 e1                                      mov r1, r8
00513a38  00 20 a0 e1                                      mov r2, r0
00513a3c  06 00 a0 e1                                      mov r0, r6
00513a40  8d ff ff eb                                      bl #0x51387c
00513a44  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00513a48  00 00 52 e3                                      cmp r2, #0
00513a4c  01 00 00 1a                                      bne #0x513a58
00513a50  07 00 00 ea                                      b #0x513a74
00513a54  03 20 a0 e1                                      mov r2, r3
00513a58  08 30 92 e5                                      ldr r3, [r2, #8]
00513a5c  00 00 53 e3                                      cmp r3, #0
00513a60  fb ff ff 1a                                      bne #0x513a54
00513a64  02 40 a0 e1                                      mov r4, r2
00513a68  04 00 55 e1                                      cmp r5, r4
00513a6c  ec ff ff 1a                                      bne #0x513a24
00513a70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00513a74  04 30 94 e5                                      ldr r3, [r4, #4]
00513a78  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00513a7c  01 00 54 e1                                      cmp r4, r1
00513a80  05 00 00 1a                                      bne #0x513a9c
00513a84  03 40 a0 e1                                      mov r4, r3
00513a88  04 30 93 e5                                      ldr r3, [r3, #4]
00513a8c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00513a90  04 00 52 e1                                      cmp r2, r4
00513a94  fa ff ff 0a                                      beq #0x513a84
00513a98  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00513a9c  03 00 52 e1                                      cmp r2, r3
00513aa0  03 40 a0 11                                      movne r4, r3
00513aa4  dc ff ff ea                                      b #0x513a1c

; FUNCTION 0x00513ce4, declared_size=148, range_size=148, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap11AddPropertyEPKcP8Property
; demangled: PropertyMap::AddProperty(char const*, Property*)
; decoder-mode: arm
00513ce4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00513ce8  10 d0 4d e2                                      sub sp, sp, #0x10
00513cec  04 10 8d e5                                      str r1, [sp, #4]
00513cf0  02 70 a0 e1                                      mov r7, r2
00513cf4  94 f3 ff eb                                      bl #0x510b4c
00513cf8  10 30 8d e2                                      add r3, sp, #0x10
00513cfc  04 00 23 e5                                      str r0, [r3, #-4]!
00513d00  03 00 a0 e1                                      mov r0, r3
00513d04  f2 f9 ff eb                                      bl #0x5124d4
00513d08  66 ff ff eb                                      bl #0x513aa8
00513d0c  04 50 8d e2                                      add r5, sp, #4
00513d10  05 10 a0 e1                                      mov r1, r5
00513d14  00 60 a0 e1                                      mov r6, r0
00513d18  50 f8 ff eb                                      bl #0x511e60
00513d1c  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
00513d20  06 00 50 e1                                      cmp r0, r6
00513d24  04 40 8f e0                                      add r4, pc, r4
00513d28  0a 00 00 0a                                      beq #0x513d58
00513d2c  28 80 90 e5                                      ldr r8, [r0, #0x28]
00513d30  00 00 58 e3                                      cmp r8, #0
00513d34  07 00 00 0a                                      beq #0x513d58
00513d38  34 30 9f e5                                      ldr r3, [pc, #0x34]
00513d3c  08 00 a0 e1                                      mov r0, r8
00513d40  03 30 94 e7                                      ldr r3, [r4, r3]
00513d44  08 30 83 e2                                      add r3, r3, #8
00513d48  08 30 80 e4                                      str r3, [r0], #8
00513d4c  40 11 f8 eb                                      bl #0x318254
00513d50  08 00 a0 e1                                      mov r0, r8
00513d54  b9 f1 f7 eb                                      bl #0x310440
00513d58  06 00 a0 e1                                      mov r0, r6
00513d5c  05 10 a0 e1                                      mov r1, r5
00513d60  de fb ff eb                                      bl #0x512ce0
00513d64  00 70 80 e5                                      str r7, [r0]
00513d68  10 d0 8d e2                                      add sp, sp, #0x10
00513d6c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00513d70  6c 0d 48 00 30 23 00 00                          .byte 0x6c, 0x0d, 0x48, 0x00, 0x30, 0x23, 0x00, 0x00

; FUNCTION 0x00513d78, declared_size=628, range_size=628, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap14InitPropertiesEv
; demangled: PropertyMap::InitProperties()
; decoder-mode: arm
00513d78  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00513d7c  50 b2 9f e5                                      ldr fp, [pc, #0x250]
00513d80  50 22 9f e5                                      ldr r2, [pc, #0x250]
00513d84  50 32 9f e5                                      ldr r3, [pc, #0x250]
00513d88  84 d0 4d e2                                      sub sp, sp, #0x84
00513d8c  0b b0 8f e0                                      add fp, pc, fp
00513d90  04 30 8d e5                                      str r3, [sp, #4]
00513d94  02 30 9b e7                                      ldr r3, [fp, r2]
00513d98  08 20 8d e5                                      str r2, [sp, #8]
00513d9c  0c 00 8d e5                                      str r0, [sp, #0xc]
00513da0  00 30 93 e5                                      ldr r3, [r3]
00513da4  7c 30 8d e5                                      str r3, [sp, #0x7c]
00513da8  67 f3 ff eb                                      bl #0x510b4c
00513dac  04 20 9d e5                                      ldr r2, [sp, #4]
00513db0  00 a0 a0 e1                                      mov sl, r0
00513db4  02 80 9b e7                                      ldr r8, [fp, r2]
00513db8  04 40 98 e5                                      ldr r4, [r8, #4]
00513dbc  00 00 54 e3                                      cmp r4, #0
00513dc0  46 00 00 0a                                      beq #0x513ee0
00513dc4  4c 70 8d e2                                      add r7, sp, #0x4c
00513dc8  18 90 8d e2                                      add sb, sp, #0x18
00513dcc  01 00 00 ea                                      b #0x513dd8
00513dd0  04 80 a0 e1                                      mov r8, r4
00513dd4  03 40 a0 e1                                      mov r4, r3
00513dd8  0a 10 a0 e1                                      mov r1, sl
00513ddc  09 20 a0 e1                                      mov r2, sb
00513de0  07 00 a0 e1                                      mov r0, r7
00513de4  c0 00 f8 eb                                      bl #0x3140ec
00513de8  24 30 94 e5                                      ldr r3, [r4, #0x24]
00513dec  60 10 9d e5                                      ldr r1, [sp, #0x60]
00513df0  20 60 94 e5                                      ldr r6, [r4, #0x20]
00513df4  5c 50 9d e5                                      ldr r5, [sp, #0x5c]
00513df8  03 00 a0 e1                                      mov r0, r3
00513dfc  06 60 63 e0                                      rsb r6, r3, r6
00513e00  05 50 61 e0                                      rsb r5, r1, r5
00513e04  06 00 55 e1                                      cmp r5, r6
00513e08  05 20 a0 b1                                      movlt r2, r5
00513e0c  06 20 a0 a1                                      movge r2, r6
00513e10  f2 e9 f7 eb                                      bl #0x30e5e0
00513e14  00 30 50 e2                                      subs r3, r0, #0
00513e18  04 00 00 1a                                      bne #0x513e30
00513e1c  05 00 56 e1                                      cmp r6, r5
00513e20  00 30 e0 b3                                      mvnlt r3, #0
00513e24  01 00 00 ba                                      blt #0x513e30
00513e28  00 30 a0 d3                                      movle r3, #0
00513e2c  01 30 a0 c3                                      movgt r3, #1
00513e30  07 00 a0 e1                                      mov r0, r7
00513e34  00 30 8d e5                                      str r3, [sp]
00513e38  05 11 f8 eb                                      bl #0x318254
00513e3c  00 30 9d e5                                      ldr r3, [sp]
00513e40  00 00 53 e3                                      cmp r3, #0
00513e44  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
00513e48  08 30 94 a5                                      ldrge r3, [r4, #8]
00513e4c  08 40 a0 b1                                      movlt r4, r8
00513e50  00 00 53 e3                                      cmp r3, #0
00513e54  dd ff ff 1a                                      bne #0x513dd0
00513e58  04 20 9d e5                                      ldr r2, [sp, #4]
00513e5c  04 80 a0 e1                                      mov r8, r4
00513e60  02 30 9b e7                                      ldr r3, [fp, r2]
00513e64  03 00 54 e1                                      cmp r4, r3
00513e68  1c 00 00 0a                                      beq #0x513ee0
00513e6c  34 50 8d e2                                      add r5, sp, #0x34
00513e70  0a 10 a0 e1                                      mov r1, sl
00513e74  14 20 8d e2                                      add r2, sp, #0x14
00513e78  05 00 a0 e1                                      mov r0, r5
00513e7c  9a 00 f8 eb                                      bl #0x3140ec
00513e80  48 30 9d e5                                      ldr r3, [sp, #0x48]
00513e84  24 10 94 e5                                      ldr r1, [r4, #0x24]
00513e88  20 60 94 e5                                      ldr r6, [r4, #0x20]
00513e8c  44 70 9d e5                                      ldr r7, [sp, #0x44]
00513e90  03 00 a0 e1                                      mov r0, r3
00513e94  06 60 61 e0                                      rsb r6, r1, r6
00513e98  07 70 63 e0                                      rsb r7, r3, r7
00513e9c  07 00 56 e1                                      cmp r6, r7
00513ea0  06 20 a0 b1                                      movlt r2, r6
00513ea4  07 20 a0 a1                                      movge r2, r7
00513ea8  cc e9 f7 eb                                      bl #0x30e5e0
00513eac  00 80 50 e2                                      subs r8, r0, #0
00513eb0  04 00 00 1a                                      bne #0x513ec8
00513eb4  06 00 57 e1                                      cmp r7, r6
00513eb8  00 80 e0 b3                                      mvnlt r8, #0
00513ebc  01 00 00 ba                                      blt #0x513ec8
00513ec0  00 80 a0 d3                                      movle r8, #0
00513ec4  01 80 a0 c3                                      movgt r8, #1
00513ec8  05 00 a0 e1                                      mov r0, r5
00513ecc  e0 10 f8 eb                                      bl #0x318254
00513ed0  00 00 58 e3                                      cmp r8, #0
00513ed4  04 30 9d b5                                      ldrlt r3, [sp, #4]
00513ed8  04 80 a0 a1                                      movge r8, r4
00513edc  03 80 9b b7                                      ldrlt r8, [fp, r3]
00513ee0  04 20 9d e5                                      ldr r2, [sp, #4]
00513ee4  02 30 9b e7                                      ldr r3, [fp, r2]
00513ee8  03 00 58 e1                                      cmp r8, r3
00513eec  07 00 00 0a                                      beq #0x513f10
00513ef0  08 20 9d e5                                      ldr r2, [sp, #8]
00513ef4  02 30 9b e7                                      ldr r3, [fp, r2]
00513ef8  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00513efc  00 30 93 e5                                      ldr r3, [r3]
00513f00  03 00 52 e1                                      cmp r2, r3
00513f04  31 00 00 1a                                      bne #0x513fd0
00513f08  84 d0 8d e2                                      add sp, sp, #0x84
00513f0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00513f10  64 40 8d e2                                      add r4, sp, #0x64
00513f14  04 00 a0 e1                                      mov r0, r4
00513f18  10 10 a0 e3                                      mov r1, #0x10
00513f1c  74 40 8d e5                                      str r4, [sp, #0x74]
00513f20  78 40 8d e5                                      str r4, [sp, #0x78]
00513f24  d4 f5 f7 eb                                      bl #0x31167c
00513f28  74 30 9d e5                                      ldr r3, [sp, #0x74]
00513f2c  1c 70 8d e2                                      add r7, sp, #0x1c
00513f30  00 50 a0 e3                                      mov r5, #0
00513f34  00 50 c3 e5                                      strb r5, [r3]
00513f38  04 10 a0 e1                                      mov r1, r4
00513f3c  07 00 a0 e1                                      mov r0, r7
00513f40  74 5e f8 eb                                      bl #0x32b918
00513f44  05 10 a0 e1                                      mov r1, r5
00513f48  38 00 a0 e3                                      mov r0, #0x38
00513f4c  87 f1 f7 eb                                      bl #0x310570
00513f50  88 30 9f e5                                      ldr r3, [pc, #0x88]
00513f54  88 60 9f e5                                      ldr r6, [pc, #0x88]
00513f58  00 50 a0 e1                                      mov r5, r0
00513f5c  03 30 9b e7                                      ldr r3, [fp, r3]
00513f60  06 60 8f e0                                      add r6, pc, r6
00513f64  06 10 a0 e1                                      mov r1, r6
00513f68  08 30 83 e2                                      add r3, r3, #8
00513f6c  10 20 8d e2                                      add r2, sp, #0x10
00513f70  08 30 80 e4                                      str r3, [r0], #8
00513f74  5c 00 f8 eb                                      bl #0x3140ec
00513f78  68 30 9f e5                                      ldr r3, [pc, #0x68]
00513f7c  05 00 a0 e1                                      mov r0, r5
00513f80  04 20 a0 e3                                      mov r2, #4
00513f84  03 30 9b e7                                      ldr r3, [fp, r3]
00513f88  04 20 85 e5                                      str r2, [r5, #4]
00513f8c  07 10 a0 e1                                      mov r1, r7
00513f90  08 30 83 e2                                      add r3, r3, #8
00513f94  20 30 80 e4                                      str r3, [r0], #0x20
00513f98  5e 5e f8 eb                                      bl #0x32b918
00513f9c  06 10 a0 e1                                      mov r1, r6
00513fa0  05 20 a0 e1                                      mov r2, r5
00513fa4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00513fa8  4d ff ff eb                                      bl #0x513ce4
00513fac  07 00 a0 e1                                      mov r0, r7
00513fb0  a7 10 f8 eb                                      bl #0x318254
00513fb4  04 00 a0 e1                                      mov r0, r4
00513fb8  a5 10 f8 eb                                      bl #0x318254
00513fbc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00513fc0  00 30 90 e5                                      ldr r3, [r0]
00513fc4  0f e0 a0 e1                                      mov lr, pc
00513fc8  00 f0 93 e5                                      ldr pc, [r3]
00513fcc  c7 ff ff ea                                      b #0x513ef0
00513fd0  ce e8 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00513fd4  04 0d 48 00 ac 40 00 00 68 2a 00 00 30 23 00 00  .byte 0x04, 0x0d, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0x68, 0x2a, 0x00, 0x00, 0x30, 0x23, 0x00, 0x00
00513fe4  00 c5 3a 00 94 34 00 00                          .byte 0x00, 0xc5, 0x3a, 0x00, 0x94, 0x34, 0x00, 0x00

; FUNCTION 0x00513fec, declared_size=400, range_size=400, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap11SetTemplateERKSs
; demangled: PropertyMap::SetTemplate(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00513fec  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00513ff0  14 30 91 e5                                      ldr r3, [r1, #0x14]
00513ff4  10 20 91 e5                                      ldr r2, [r1, #0x10]
00513ff8  64 71 9f e5                                      ldr r7, [pc, #0x164]
00513ffc  14 d0 4d e2                                      sub sp, sp, #0x14
00514000  02 00 53 e1                                      cmp r3, r2
00514004  00 40 a0 e1                                      mov r4, r0
00514008  07 70 8f e0                                      add r7, pc, r7
0051400c  0b 00 00 0a                                      beq #0x514040
00514010  04 00 80 e2                                      add r0, r0, #4
00514014  00 00 51 e1                                      cmp r1, r0
00514018  01 00 00 0a                                      beq #0x514024
0051401c  03 10 a0 e1                                      mov r1, r3
00514020  6e f2 f7 eb                                      bl #0x3109e0
00514024  04 00 a0 e1                                      mov r0, r4
00514028  24 fd ff eb                                      bl #0x5134c0
0051402c  10 80 90 e5                                      ldr r8, [r0, #0x10]
00514030  00 00 58 e3                                      cmp r8, #0
00514034  03 00 00 0a                                      beq #0x514048
00514038  04 00 a0 e1                                      mov r0, r4
0051403c  56 00 00 eb                                      bl #0x51419c
00514040  14 d0 8d e2                                      add sp, sp, #0x14
00514044  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00514048  04 00 a0 e1                                      mov r0, r4
0051404c  be f2 ff eb                                      bl #0x510b4c
00514050  10 30 8d e2                                      add r3, sp, #0x10
00514054  04 00 23 e5                                      str r0, [r3, #-4]!
00514058  03 00 a0 e1                                      mov r0, r3
0051405c  1c f9 ff eb                                      bl #0x5124d4
00514060  90 fe ff eb                                      bl #0x513aa8
00514064  00 50 a0 e1                                      mov r5, r0
00514068  04 00 a0 e1                                      mov r0, r4
0051406c  13 fd ff eb                                      bl #0x5134c0
00514070  10 30 90 e5                                      ldr r3, [r0, #0x10]
00514074  00 60 a0 e1                                      mov r6, r0
00514078  00 00 53 e3                                      cmp r3, #0
0051407c  23 00 00 1a                                      bne #0x514110
00514080  08 70 95 e5                                      ldr r7, [r5, #8]
00514084  07 00 55 e1                                      cmp r5, r7
00514088  ea ff ff 0a                                      beq #0x514038
0051408c  10 10 87 e2                                      add r1, r7, #0x10
00514090  06 00 a0 e1                                      mov r0, r6
00514094  28 80 97 e5                                      ldr r8, [r7, #0x28]
00514098  b5 fa ff eb                                      bl #0x512b74
0051409c  00 30 98 e5                                      ldr r3, [r8]
005140a0  00 a0 a0 e1                                      mov sl, r0
005140a4  08 00 a0 e1                                      mov r0, r8
005140a8  0f e0 a0 e1                                      mov lr, pc
005140ac  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005140b0  00 00 8a e5                                      str r0, [sl]
005140b4  0c 20 97 e5                                      ldr r2, [r7, #0xc]
005140b8  00 00 52 e3                                      cmp r2, #0
005140bc  01 00 00 1a                                      bne #0x5140c8
005140c0  05 00 00 ea                                      b #0x5140dc
005140c4  03 20 a0 e1                                      mov r2, r3
005140c8  08 30 92 e5                                      ldr r3, [r2, #8]
005140cc  00 00 53 e3                                      cmp r3, #0
005140d0  fb ff ff 1a                                      bne #0x5140c4
005140d4  02 70 a0 e1                                      mov r7, r2
005140d8  e9 ff ff ea                                      b #0x514084
005140dc  04 30 97 e5                                      ldr r3, [r7, #4]
005140e0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005140e4  01 00 57 e1                                      cmp r7, r1
005140e8  05 00 00 1a                                      bne #0x514104
005140ec  03 70 a0 e1                                      mov r7, r3
005140f0  04 30 93 e5                                      ldr r3, [r3, #4]
005140f4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005140f8  07 00 52 e1                                      cmp r2, r7
005140fc  fa ff ff 0a                                      beq #0x5140ec
00514100  0c 20 97 e5                                      ldr r2, [r7, #0xc]
00514104  03 00 52 e1                                      cmp r2, r3
00514108  03 70 a0 11                                      movne r7, r3
0051410c  dc ff ff ea                                      b #0x514084
00514110  50 30 9f e5                                      ldr r3, [pc, #0x50]
00514114  03 30 97 e7                                      ldr r3, [r7, r3]
00514118  00 30 93 e5                                      ldr r3, [r3]
0051411c  02 00 53 e3                                      cmp r3, #2
00514120  00 80 88 05                                      streq r8, [r8]
00514124  d5 ff ff 0a                                      beq #0x514080
00514128  01 00 53 e3                                      cmp r3, #1
0051412c  d3 ff ff 1a                                      bne #0x514080
00514130  34 00 9f e5                                      ldr r0, [pc, #0x34]
00514134  34 10 9f e5                                      ldr r1, [pc, #0x34]
00514138  34 20 9f e5                                      ldr r2, [pc, #0x34]
0051413c  00 00 97 e7                                      ldr r0, [r7, r0]
00514140  30 30 9f e5                                      ldr r3, [pc, #0x30]
00514144  70 c0 a0 e3                                      mov ip, #0x70
00514148  01 10 8f e0                                      add r1, pc, r1
0051414c  02 20 8f e0                                      add r2, pc, r2
00514150  03 30 8f e0                                      add r3, pc, r3
00514154  a8 00 80 e2                                      add r0, r0, #0xa8
00514158  00 c0 8d e5                                      str ip, [sp]
0051415c  a8 e7 f7 eb                                      bl #0x30e004
00514160  c6 ff ff ea                                      b #0x514080
; mapping-symbol data/literal pool
00514164  88 0a 48 00 c0 39 00 00 c0 19 00 00 90 a2 3a 00  .byte 0x88, 0x0a, 0x48, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x90, 0xa2, 0x3a, 0x00
00514174  fc 7e 3c 00 a8 7e 3c 00                          .byte 0xfc, 0x7e, 0x3c, 0x00, 0xa8, 0x7e, 0x3c, 0x00

; FUNCTION 0x0051419c, declared_size=136, range_size=136, mode=arm
; class-group: PropertyMap
; alias: _ZN11PropertyMap12LoadTemplateEv
; demangled: PropertyMap::LoadTemplate()
; decoder-mode: arm
0051419c  68 30 9f e5                                      ldr r3, [pc, #0x68]
005141a0  68 20 9f e5                                      ldr r2, [pc, #0x68]
005141a4  04 e0 2d e5                                      str lr, [sp, #-4]!
005141a8  03 30 8f e0                                      add r3, pc, r3
005141ac  02 20 93 e7                                      ldr r2, [r3, r2]
005141b0  0c d0 4d e2                                      sub sp, sp, #0xc
005141b4  00 20 92 e5                                      ldr r2, [r2]
005141b8  02 00 52 e3                                      cmp r2, #2
005141bc  00 30 a0 03                                      moveq r3, #0
005141c0  00 30 83 05                                      streq r3, [r3]
005141c4  01 00 00 0a                                      beq #0x5141d0
005141c8  01 00 52 e3                                      cmp r2, #1
005141cc  01 00 00 0a                                      beq #0x5141d8
005141d0  0c d0 8d e2                                      add sp, sp, #0xc
005141d4  00 80 bd e8                                      ldm sp!, {pc}
005141d8  34 00 9f e5                                      ldr r0, [pc, #0x34]
005141dc  34 10 9f e5                                      ldr r1, [pc, #0x34]
005141e0  34 20 9f e5                                      ldr r2, [pc, #0x34]
005141e4  00 00 93 e7                                      ldr r0, [r3, r0]
005141e8  30 30 9f e5                                      ldr r3, [pc, #0x30]
005141ec  09 c0 a0 e3                                      mov ip, #9
005141f0  01 10 8f e0                                      add r1, pc, r1
005141f4  02 20 8f e0                                      add r2, pc, r2
005141f8  03 30 8f e0                                      add r3, pc, r3
005141fc  a8 00 80 e2                                      add r0, r0, #0xa8
00514200  00 c0 8d e5                                      str ip, [sp]
00514204  7e e7 f7 eb                                      bl #0x30e004
00514208  f0 ff ff ea                                      b #0x5141d0
; mapping-symbol data/literal pool
0051420c  e8 08 48 00 c0 39 00 00 c0 19 00 00 e8 a1 3a 00  .byte 0xe8, 0x08, 0x48, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xe8, 0xa1, 0x3a, 0x00
0051421c  74 a3 3a 00 68 7e 3c 00                          .byte 0x74, 0xa3, 0x3a, 0x00, 0x68, 0x7e, 0x3c, 0x00
