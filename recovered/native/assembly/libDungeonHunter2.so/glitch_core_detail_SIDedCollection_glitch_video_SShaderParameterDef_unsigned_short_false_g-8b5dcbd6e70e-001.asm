; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b9d8c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE4sizeEv
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::size() const
; decoder-mode: arm
005b9d8c  b6 02 d0 e1                                      ldrh r0, [r0, #0x26]
005b9d90  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9d94, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE7idBeginEv
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::idBegin() const
; decoder-mode: arm
005b9d94  08 00 90 e5                                      ldr r0, [r0, #8]
005b9d98  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9d9c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE5idEndEv
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::idEnd() const
; decoder-mode: arm
005b9d9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9da0, declared_size=92, range_size=92, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE3getEt
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::get(unsigned short) const
; decoder-mode: arm
005b9da0  04 40 2d e5                                      str r4, [sp, #-4]!
005b9da4  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
005b9da8  18 20 90 e5                                      ldr r2, [r0, #0x18]
005b9dac  40 30 9f e5                                      ldr r3, [pc, #0x40]
005b9db0  0c c0 62 e0                                      rsb ip, r2, ip
005b9db4  4c c1 a0 e1                                      asr ip, ip, #2
005b9db8  03 30 8f e0                                      add r3, pc, r3
005b9dbc  8c 40 8c e0                                      add r4, ip, ip, lsl #1
005b9dc0  04 42 84 e0                                      add r4, r4, r4, lsl #4
005b9dc4  04 44 84 e0                                      add r4, r4, r4, lsl #8
005b9dc8  04 48 84 e0                                      add r4, r4, r4, lsl #16
005b9dcc  04 c1 8c e0                                      add ip, ip, r4, lsl #2
005b9dd0  0c 00 51 e1                                      cmp r1, ip
005b9dd4  03 00 00 2a                                      bhs #0x5b9de8
005b9dd8  14 00 a0 e3                                      mov r0, #0x14
005b9ddc  90 21 20 e0                                      mla r0, r0, r1, r2
005b9de0  10 00 bd e8                                      ldm sp!, {r4}
005b9de4  1e ff 2f e1                                      bx lr
005b9de8  08 20 9f e5                                      ldr r2, [pc, #8]
005b9dec  02 00 93 e7                                      ldr r0, [r3, r2]
005b9df0  fa ff ff ea                                      b #0x5b9de0
; mapping-symbol data/literal pool
005b9df4  d8 ac 3d 00 14 28 00 00                          .byte 0xd8, 0xac, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005b9e1c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEEC2Ev
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIDedCollection()
; decoder-mode: arm
005b9e1c  00 20 a0 e3                                      mov r2, #0
005b9e20  00 30 a0 e1                                      mov r3, r0
005b9e24  b6 22 c0 e1                                      strh r2, [r0, #0x26]
005b9e28  04 20 80 e5                                      str r2, [r0, #4]
005b9e2c  00 20 c0 e5                                      strb r2, [r0]
005b9e30  08 00 83 e5                                      str r0, [r3, #8]
005b9e34  0c 00 83 e5                                      str r0, [r3, #0xc]
005b9e38  10 20 80 e5                                      str r2, [r0, #0x10]
005b9e3c  18 20 80 e5                                      str r2, [r0, #0x18]
005b9e40  1c 20 80 e5                                      str r2, [r0, #0x1c]
005b9e44  20 20 80 e5                                      str r2, [r0, #0x20]
005b9e48  b4 22 c0 e1                                      strh r2, [r0, #0x24]
005b9e4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9ec8, declared_size=52, range_size=52, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEEC1Ev
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIDedCollection()
; decoder-mode: arm
005b9ec8  00 20 a0 e3                                      mov r2, #0
005b9ecc  00 30 a0 e1                                      mov r3, r0
005b9ed0  b6 22 c0 e1                                      strh r2, [r0, #0x26]
005b9ed4  04 20 80 e5                                      str r2, [r0, #4]
005b9ed8  00 20 c0 e5                                      strb r2, [r0]
005b9edc  08 00 83 e5                                      str r0, [r3, #8]
005b9ee0  0c 00 83 e5                                      str r0, [r3, #0xc]
005b9ee4  10 20 80 e5                                      str r2, [r0, #0x10]
005b9ee8  18 20 80 e5                                      str r2, [r0, #0x18]
005b9eec  1c 20 80 e5                                      str r2, [r0, #0x1c]
005b9ef0  20 20 80 e5                                      str r2, [r0, #0x20]
005b9ef4  b4 22 c0 e1                                      strh r2, [r0, #0x24]
005b9ef8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9efc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE9getNextIdEv
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getNextId() const
; decoder-mode: arm
005b9efc  b4 02 d0 e1                                      ldrh r0, [r0, #0x24]
005b9f00  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9f04, declared_size=24, range_size=24, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE13getPropertiesEt
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getProperties(unsigned short)
; decoder-mode: arm
005b9f04  18 30 90 e5                                      ldr r3, [r0, #0x18]
005b9f08  14 20 a0 e3                                      mov r2, #0x14
005b9f0c  92 31 23 e0                                      mla r3, r2, r1, r3
005b9f10  10 00 93 e5                                      ldr r0, [r3, #0x10]
005b9f14  18 00 80 e2                                      add r0, r0, #0x18
005b9f18  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9f1c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE13getPropertiesEt
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getProperties(unsigned short) const
; decoder-mode: arm
005b9f1c  18 30 90 e5                                      ldr r3, [r0, #0x18]
005b9f20  14 20 a0 e3                                      mov r2, #0x14
005b9f24  92 31 23 e0                                      mla r3, r2, r1, r3
005b9f28  10 00 93 e5                                      ldr r0, [r3, #0x10]
005b9f2c  18 00 80 e2                                      add r0, r0, #0x18
005b9f30  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9f34, declared_size=48, range_size=48, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE8getMaxIDEv
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getMaxID() const
; decoder-mode: arm
005b9f34  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
005b9f38  18 30 90 e5                                      ldr r3, [r0, #0x18]
005b9f3c  02 30 63 e0                                      rsb r3, r3, r2
005b9f40  43 31 a0 e1                                      asr r3, r3, #2
005b9f44  83 20 83 e0                                      add r2, r3, r3, lsl #1
005b9f48  02 22 82 e0                                      add r2, r2, r2, lsl #4
005b9f4c  02 24 82 e0                                      add r2, r2, r2, lsl #8
005b9f50  02 28 82 e0                                      add r2, r2, r2, lsl #16
005b9f54  02 31 83 e0                                      add r3, r3, r2, lsl #2
005b9f58  01 00 43 e2                                      sub r0, r3, #1
005b9f5c  70 00 ff e6                                      uxth r0, r0
005b9f60  1e ff 2f e1                                      bx lr

; FUNCTION 0x005bb378, declared_size=84, range_size=84, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE5getIdEPKc
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getId(char const*) const
; decoder-mode: arm
005bb378  30 40 2d e9                                      push {r4, r5, lr}
005bb37c  0c d0 4d e2                                      sub sp, sp, #0xc
005bb380  00 30 a0 e3                                      mov r3, #0
005bb384  00 10 8d e5                                      str r1, [sp]
005bb388  0d 10 a0 e1                                      mov r1, sp
005bb38c  04 30 cd e5                                      strb r3, [sp, #4]
005bb390  00 40 a0 e1                                      mov r4, r0
005bb394  9f ff ff eb                                      bl #0x5bb218
005bb398  04 30 dd e5                                      ldrb r3, [sp, #4]
005bb39c  00 50 a0 e1                                      mov r5, r0
005bb3a0  00 00 53 e3                                      cmp r3, #0
005bb3a4  03 00 00 0a                                      beq #0x5bb3b8
005bb3a8  00 00 9d e5                                      ldr r0, [sp]
005bb3ac  00 00 50 e3                                      cmp r0, #0
005bb3b0  00 00 00 0a                                      beq #0x5bb3b8
005bb3b4  3f 4b f5 eb                                      bl #0x30e0b8
005bb3b8  04 00 55 e1                                      cmp r5, r4
005bb3bc  ff 0f 0f 03                                      movweq r0, #0xffff
005bb3c0  bc 01 d5 11                                      ldrhne r0, [r5, #0x1c]
005bb3c4  0c d0 8d e2                                      add sp, sp, #0xc
005bb3c8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005bb3cc, declared_size=244, range_size=244, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE6renameEtPKcb
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::rename(unsigned short, char const*, bool)
; decoder-mode: arm
005bb3cc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005bb3d0  00 40 a0 e1                                      mov r4, r0
005bb3d4  1c 60 94 e5                                      ldr r6, [r4, #0x1c]
005bb3d8  18 00 90 e5                                      ldr r0, [r0, #0x18]
005bb3dc  03 70 a0 e1                                      mov r7, r3
005bb3e0  2c d0 4d e2                                      sub sp, sp, #0x2c
005bb3e4  06 60 60 e0                                      rsb r6, r0, r6
005bb3e8  46 61 a0 e1                                      asr r6, r6, #2
005bb3ec  01 c0 a0 e1                                      mov ip, r1
005bb3f0  86 30 86 e0                                      add r3, r6, r6, lsl #1
005bb3f4  02 50 a0 e1                                      mov r5, r2
005bb3f8  03 32 83 e0                                      add r3, r3, r3, lsl #4
005bb3fc  03 34 83 e0                                      add r3, r3, r3, lsl #8
005bb400  03 38 83 e0                                      add r3, r3, r3, lsl #16
005bb404  03 61 86 e0                                      add r6, r6, r3, lsl #2
005bb408  06 00 51 e1                                      cmp r1, r6
005bb40c  28 00 00 2a                                      bhs #0x5bb4b4
005bb410  14 60 a0 e3                                      mov r6, #0x14
005bb414  96 01 06 e0                                      mul r6, r6, r1
005bb418  06 30 90 e7                                      ldr r3, [r0, r6]
005bb41c  06 60 80 e0                                      add r6, r0, r6
005bb420  00 00 53 e3                                      cmp r3, #0
005bb424  22 00 00 0a                                      beq #0x5bb4b4
005bb428  00 30 a0 e3                                      mov r3, #0
005bb42c  b0 c1 cd e1                                      strh ip, [sp, #0x10]
005bb430  1c 00 8d e2                                      add r0, sp, #0x1c
005bb434  01 c0 a0 e3                                      mov ip, #1
005bb438  04 10 a0 e1                                      mov r1, r4
005bb43c  04 20 8d e2                                      add r2, sp, #4
005bb440  08 30 cd e5                                      strb r3, [sp, #8]
005bb444  18 30 cd e5                                      strb r3, [sp, #0x18]
005bb448  04 50 8d e5                                      str r5, [sp, #4]
005bb44c  0c c0 8d e5                                      str ip, [sp, #0xc]
005bb450  14 50 8d e5                                      str r5, [sp, #0x14]
005bb454  01 ff ff eb                                      bl #0x5bb060
005bb458  08 30 dd e5                                      ldrb r3, [sp, #8]
005bb45c  00 00 53 e3                                      cmp r3, #0
005bb460  03 00 00 0a                                      beq #0x5bb474
005bb464  04 00 9d e5                                      ldr r0, [sp, #4]
005bb468  00 00 50 e3                                      cmp r0, #0
005bb46c  00 00 00 0a                                      beq #0x5bb474
005bb470  10 4b f5 eb                                      bl #0x30e0b8
005bb474  20 30 dd e5                                      ldrb r3, [sp, #0x20]
005bb478  00 00 53 e3                                      cmp r3, #0
005bb47c  0c 00 00 0a                                      beq #0x5bb4b4
005bb480  10 30 96 e5                                      ldr r3, [r6, #0x10]
005bb484  28 10 8d e2                                      add r1, sp, #0x28
005bb488  04 00 a0 e1                                      mov r0, r4
005bb48c  04 30 21 e5                                      str r3, [r1, #-4]!
005bb490  a3 ff ff eb                                      bl #0x5bb324
005bb494  00 00 57 e3                                      cmp r7, #0
005bb498  1c 30 9d 15                                      ldrne r3, [sp, #0x1c]
005bb49c  01 20 a0 13                                      movne r2, #1
005bb4a0  01 00 a0 e3                                      mov r0, #1
005bb4a4  14 20 c3 15                                      strbne r2, [r3, #0x14]
005bb4a8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005bb4ac  10 30 86 e5                                      str r3, [r6, #0x10]
005bb4b0  00 00 00 ea                                      b #0x5bb4b8
005bb4b4  00 00 a0 e3                                      mov r0, #0
005bb4b8  2c d0 8d e2                                      add sp, sp, #0x2c
005bb4bc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x005bb520, declared_size=64, range_size=64, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEED2Ev
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::~SIDedCollection()
; decoder-mode: arm
005bb520  10 40 2d e9                                      push {r4, lr}
005bb524  00 40 a0 e1                                      mov r4, r0
005bb528  18 00 80 e2                                      add r0, r0, #0x18
005bb52c  e3 ff ff eb                                      bl #0x5bb4c0
005bb530  10 30 94 e5                                      ldr r3, [r4, #0x10]
005bb534  00 00 53 e3                                      cmp r3, #0
005bb538  06 00 00 0a                                      beq #0x5bb558
005bb53c  04 00 a0 e1                                      mov r0, r4
005bb540  04 10 94 e5                                      ldr r1, [r4, #4]
005bb544  62 ff ff eb                                      bl #0x5bb2d4
005bb548  00 30 a0 e3                                      mov r3, #0
005bb54c  10 30 84 e5                                      str r3, [r4, #0x10]
005bb550  18 00 84 e9                                      stmib r4, {r3, r4}
005bb554  0c 40 84 e5                                      str r4, [r4, #0xc]
005bb558  04 00 a0 e1                                      mov r0, r4
005bb55c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005bc16c, declared_size=520, range_size=520, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE6insertEPKcRKS4_b
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::insert(char const*, glitch::video::SShaderParameterDef const&, bool)
; decoder-mode: arm
005bc16c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005bc170  00 40 a0 e1                                      mov r4, r0
005bc174  b6 02 d0 e1                                      ldrh r0, [r0, #0x26]
005bc178  b4 52 d4 e1                                      ldrh r5, [r4, #0x24]
005bc17c  38 d0 4d e2                                      sub sp, sp, #0x38
005bc180  01 00 80 e2                                      add r0, r0, #1
005bc184  b6 02 c4 e1                                      strh r0, [r4, #0x26]
005bc188  01 e0 a0 e1                                      mov lr, r1
005bc18c  00 c0 a0 e3                                      mov ip, #0
005bc190  01 70 a0 e3                                      mov r7, #1
005bc194  02 60 a0 e1                                      mov r6, r2
005bc198  30 00 8d e2                                      add r0, sp, #0x30
005bc19c  04 10 a0 e1                                      mov r1, r4
005bc1a0  18 20 8d e2                                      add r2, sp, #0x18
005bc1a4  20 70 8d e5                                      str r7, [sp, #0x20]
005bc1a8  18 e0 8d e5                                      str lr, [sp, #0x18]
005bc1ac  03 70 a0 e1                                      mov r7, r3
005bc1b0  1c c0 cd e5                                      strb ip, [sp, #0x1c]
005bc1b4  28 e0 8d e5                                      str lr, [sp, #0x28]
005bc1b8  2c c0 cd e5                                      strb ip, [sp, #0x2c]
005bc1bc  b4 52 cd e1                                      strh r5, [sp, #0x24]
005bc1c0  a6 fb ff eb                                      bl #0x5bb060
005bc1c4  1c 30 dd e5                                      ldrb r3, [sp, #0x1c]
005bc1c8  00 00 53 e3                                      cmp r3, #0
005bc1cc  03 00 00 0a                                      beq #0x5bc1e0
005bc1d0  18 00 9d e5                                      ldr r0, [sp, #0x18]
005bc1d4  00 00 50 e3                                      cmp r0, #0
005bc1d8  00 00 00 0a                                      beq #0x5bc1e0
005bc1dc  b5 47 f5 eb                                      bl #0x30e0b8
005bc1e0  00 00 57 e3                                      cmp r7, #0
005bc1e4  30 30 9d 15                                      ldrne r3, [sp, #0x30]
005bc1e8  01 20 a0 13                                      movne r2, #1
005bc1ec  14 20 c3 15                                      strbne r2, [r3, #0x14]
005bc1f0  18 20 94 e5                                      ldr r2, [r4, #0x18]
005bc1f4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
005bc1f8  03 30 62 e0                                      rsb r3, r2, r3
005bc1fc  43 31 a0 e1                                      asr r3, r3, #2
005bc200  83 10 83 e0                                      add r1, r3, r3, lsl #1
005bc204  01 12 81 e0                                      add r1, r1, r1, lsl #4
005bc208  01 14 81 e0                                      add r1, r1, r1, lsl #8
005bc20c  01 18 81 e0                                      add r1, r1, r1, lsl #16
005bc210  01 31 83 e0                                      add r3, r3, r1, lsl #2
005bc214  03 00 55 e1                                      cmp r5, r3
005bc218  33 00 00 3a                                      blo #0x5bc2ec
005bc21c  00 20 96 e5                                      ldr r2, [r6]
005bc220  30 30 9d e5                                      ldr r3, [sp, #0x30]
005bc224  18 00 84 e2                                      add r0, r4, #0x18
005bc228  04 20 8d e5                                      str r2, [sp, #4]
005bc22c  00 00 52 e3                                      cmp r2, #0
005bc230  00 10 92 15                                      ldrne r1, [r2]
005bc234  01 10 81 12                                      addne r1, r1, #1
005bc238  00 10 82 15                                      strne r1, [r2]
005bc23c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
005bc240  06 70 d6 e5                                      ldrb r7, [r6, #6]
005bc244  07 e0 d6 e5                                      ldrb lr, [r6, #7]
005bc248  08 c0 96 e5                                      ldr ip, [r6, #8]
005bc24c  0a 70 cd e5                                      strb r7, [sp, #0xa]
005bc250  0b e0 cd e5                                      strb lr, [sp, #0xb]
005bc254  0c c0 8d e5                                      str ip, [sp, #0xc]
005bc258  10 20 8d e5                                      str r2, [sp, #0x10]
005bc25c  14 30 8d e5                                      str r3, [sp, #0x14]
005bc260  b4 60 d6 e1                                      ldrh r6, [r6, #4]
005bc264  04 10 8d e2                                      add r1, sp, #4
005bc268  b8 60 cd e1                                      strh r6, [sp, #8]
005bc26c  99 ff ff eb                                      bl #0x5bc0d8
005bc270  04 00 9d e5                                      ldr r0, [sp, #4]
005bc274  00 00 50 e3                                      cmp r0, #0
005bc278  04 00 00 0a                                      beq #0x5bc290
005bc27c  00 30 90 e5                                      ldr r3, [r0]
005bc280  01 30 43 e2                                      sub r3, r3, #1
005bc284  00 00 53 e3                                      cmp r3, #0
005bc288  00 30 80 e5                                      str r3, [r0]
005bc28c  34 00 00 0a                                      beq #0x5bc364
005bc290  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
005bc294  18 c0 94 e5                                      ldr ip, [r4, #0x18]
005bc298  b4 32 d4 e1                                      ldrh r3, [r4, #0x24]
005bc29c  14 00 a0 e3                                      mov r0, #0x14
005bc2a0  02 20 6c e0                                      rsb r2, ip, r2
005bc2a4  42 21 a0 e1                                      asr r2, r2, #2
005bc2a8  82 10 82 e0                                      add r1, r2, r2, lsl #1
005bc2ac  01 12 81 e0                                      add r1, r1, r1, lsl #4
005bc2b0  01 14 81 e0                                      add r1, r1, r1, lsl #8
005bc2b4  01 18 81 e0                                      add r1, r1, r1, lsl #16
005bc2b8  01 11 82 e0                                      add r1, r2, r1, lsl #2
005bc2bc  01 30 83 e2                                      add r3, r3, #1
005bc2c0  73 30 ff e6                                      uxth r3, r3
005bc2c4  01 00 53 e1                                      cmp r3, r1
005bc2c8  90 03 02 e0                                      mul r2, r0, r3
005bc2cc  b4 32 c4 e1                                      strh r3, [r4, #0x24]
005bc2d0  02 00 00 2a                                      bhs #0x5bc2e0
005bc2d4  02 20 9c e7                                      ldr r2, [ip, r2]
005bc2d8  00 00 52 e3                                      cmp r2, #0
005bc2dc  f6 ff ff 1a                                      bne #0x5bc2bc
005bc2e0  05 00 a0 e1                                      mov r0, r5
005bc2e4  38 d0 8d e2                                      add sp, sp, #0x38
005bc2e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bc2ec  00 30 96 e5                                      ldr r3, [r6]
005bc2f0  14 10 a0 e3                                      mov r1, #0x14
005bc2f4  91 05 01 e0                                      mul r1, r1, r5
005bc2f8  00 00 53 e3                                      cmp r3, #0
005bc2fc  00 00 93 15                                      ldrne r0, [r3]
005bc300  30 80 9d e5                                      ldr r8, [sp, #0x30]
005bc304  01 70 82 e0                                      add r7, r2, r1
005bc308  01 00 80 12                                      addne r0, r0, #1
005bc30c  00 00 83 15                                      strne r0, [r3]
005bc310  01 00 92 e7                                      ldr r0, [r2, r1]
005bc314  01 30 82 e7                                      str r3, [r2, r1]
005bc318  00 00 50 e3                                      cmp r0, #0
005bc31c  04 00 00 0a                                      beq #0x5bc334
005bc320  00 30 90 e5                                      ldr r3, [r0]
005bc324  01 30 43 e2                                      sub r3, r3, #1
005bc328  00 00 53 e3                                      cmp r3, #0
005bc32c  00 30 80 e5                                      str r3, [r0]
005bc330  0d 00 00 0a                                      beq #0x5bc36c
005bc334  b4 30 d6 e1                                      ldrh r3, [r6, #4]
005bc338  b4 30 c7 e1                                      strh r3, [r7, #4]
005bc33c  06 30 d6 e5                                      ldrb r3, [r6, #6]
005bc340  06 30 c7 e5                                      strb r3, [r7, #6]
005bc344  07 30 d6 e5                                      ldrb r3, [r6, #7]
005bc348  07 30 c7 e5                                      strb r3, [r7, #7]
005bc34c  08 30 96 e5                                      ldr r3, [r6, #8]
005bc350  08 30 87 e5                                      str r3, [r7, #8]
005bc354  0c 30 96 e5                                      ldr r3, [r6, #0xc]
005bc358  10 80 87 e5                                      str r8, [r7, #0x10]
005bc35c  0c 30 87 e5                                      str r3, [r7, #0xc]
005bc360  ca ff ff ea                                      b #0x5bc290
005bc364  8c a2 03 eb                                      bl #0x6a4d9c
005bc368  c8 ff ff ea                                      b #0x5bc290
005bc36c  8a a2 03 eb                                      bl #0x6a4d9c
005bc370  ef ff ff ea                                      b #0x5bc334

; FUNCTION 0x005c0f70, declared_size=404, range_size=404, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE6removeEtb
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::remove(unsigned short, bool)
; decoder-mode: arm
005c0f70  70 40 2d e9                                      push {r4, r5, r6, lr}
005c0f74  00 40 a0 e1                                      mov r4, r0
005c0f78  18 30 90 e5                                      ldr r3, [r0, #0x18]
005c0f7c  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
005c0f80  01 50 a0 e1                                      mov r5, r1
005c0f84  18 d0 4d e2                                      sub sp, sp, #0x18
005c0f88  00 00 63 e0                                      rsb r0, r3, r0
005c0f8c  40 01 a0 e1                                      asr r0, r0, #2
005c0f90  80 10 80 e0                                      add r1, r0, r0, lsl #1
005c0f94  01 12 81 e0                                      add r1, r1, r1, lsl #4
005c0f98  01 14 81 e0                                      add r1, r1, r1, lsl #8
005c0f9c  01 18 81 e0                                      add r1, r1, r1, lsl #16
005c0fa0  01 01 80 e0                                      add r0, r0, r1, lsl #2
005c0fa4  00 00 55 e1                                      cmp r5, r0
005c0fa8  4a 00 00 2a                                      bhs #0x5c10d8
005c0fac  14 60 a0 e3                                      mov r6, #0x14
005c0fb0  96 05 06 e0                                      mul r6, r6, r5
005c0fb4  06 10 93 e7                                      ldr r1, [r3, r6]
005c0fb8  06 60 83 e0                                      add r6, r3, r6
005c0fbc  00 00 51 e3                                      cmp r1, #0
005c0fc0  44 00 00 0a                                      beq #0x5c10d8
005c0fc4  10 00 96 e5                                      ldr r0, [r6, #0x10]
005c0fc8  18 30 90 e5                                      ldr r3, [r0, #0x18]
005c0fcc  01 00 53 e3                                      cmp r3, #1
005c0fd0  01 00 00 0a                                      beq #0x5c0fdc
005c0fd4  00 00 52 e3                                      cmp r2, #0
005c0fd8  3e 00 00 0a                                      beq #0x5c10d8
005c0fdc  05 20 a0 e1                                      mov r2, r5
005c0fe0  18 00 80 e2                                      add r0, r0, #0x18
005c0fe4  04 10 a0 e1                                      mov r1, r4
005c0fe8  dd ff ff eb                                      bl #0x5c0f64
005c0fec  10 30 96 e5                                      ldr r3, [r6, #0x10]
005c0ff0  18 10 8d e2                                      add r1, sp, #0x18
005c0ff4  04 00 a0 e1                                      mov r0, r4
005c0ff8  04 30 21 e5                                      str r3, [r1, #-4]!
005c0ffc  c8 e8 ff eb                                      bl #0x5bb324
005c1000  06 00 a0 e1                                      mov r0, r6
005c1004  6e ed ff eb                                      bl #0x5bc5c4
005c1008  b4 22 d4 e1                                      ldrh r2, [r4, #0x24]
005c100c  b6 32 d4 e1                                      ldrh r3, [r4, #0x26]
005c1010  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
005c1014  18 10 94 e5                                      ldr r1, [r4, #0x18]
005c1018  05 00 52 e1                                      cmp r2, r5
005c101c  01 30 43 e2                                      sub r3, r3, #1
005c1020  b4 52 c4 81                                      strhhi r5, [r4, #0x24]
005c1024  01 00 50 e1                                      cmp r0, r1
005c1028  b6 32 c4 e1                                      strh r3, [r4, #0x26]
005c102c  27 00 00 0a                                      beq #0x5c10d0
005c1030  00 30 a0 e1                                      mov r3, r0
005c1034  14 20 13 e5                                      ldr r2, [r3, #-0x14]
005c1038  00 00 52 e3                                      cmp r2, #0
005c103c  28 00 00 0a                                      beq #0x5c10e4
005c1040  00 30 63 e0                                      rsb r3, r3, r0
005c1044  00 10 61 e0                                      rsb r1, r1, r0
005c1048  41 11 a0 e1                                      asr r1, r1, #2
005c104c  43 31 a0 e1                                      asr r3, r3, #2
005c1050  81 00 81 e0                                      add r0, r1, r1, lsl #1
005c1054  83 20 83 e0                                      add r2, r3, r3, lsl #1
005c1058  00 02 80 e0                                      add r0, r0, r0, lsl #4
005c105c  02 22 82 e0                                      add r2, r2, r2, lsl #4
005c1060  00 04 80 e0                                      add r0, r0, r0, lsl #8
005c1064  02 24 82 e0                                      add r2, r2, r2, lsl #8
005c1068  00 08 80 e0                                      add r0, r0, r0, lsl #16
005c106c  02 28 82 e0                                      add r2, r2, r2, lsl #16
005c1070  00 c0 a0 e3                                      mov ip, #0
005c1074  02 31 83 e0                                      add r3, r3, r2, lsl #2
005c1078  00 11 81 e0                                      add r1, r1, r0, lsl #2
005c107c  01 10 63 e0                                      rsb r1, r3, r1
005c1080  18 00 84 e2                                      add r0, r4, #0x18
005c1084  00 30 e0 e3                                      mvn r3, #0
005c1088  10 c0 8d e5                                      str ip, [sp, #0x10]
005c108c  00 c0 8d e5                                      str ip, [sp]
005c1090  0d 20 a0 e1                                      mov r2, sp
005c1094  ff c0 a0 e3                                      mov ip, #0xff
005c1098  0c 30 8d e5                                      str r3, [sp, #0xc]
005c109c  b4 c0 cd e1                                      strh ip, [sp, #4]
005c10a0  06 30 cd e5                                      strb r3, [sp, #6]
005c10a4  07 30 cd e5                                      strb r3, [sp, #7]
005c10a8  08 30 8d e5                                      str r3, [sp, #8]
005c10ac  ef eb ff eb                                      bl #0x5bc070
005c10b0  00 00 9d e5                                      ldr r0, [sp]
005c10b4  00 00 50 e3                                      cmp r0, #0
005c10b8  04 00 00 0a                                      beq #0x5c10d0
005c10bc  00 30 90 e5                                      ldr r3, [r0]
005c10c0  01 30 43 e2                                      sub r3, r3, #1
005c10c4  00 00 53 e3                                      cmp r3, #0
005c10c8  00 30 80 e5                                      str r3, [r0]
005c10cc  09 00 00 0a                                      beq #0x5c10f8
005c10d0  01 00 a0 e3                                      mov r0, #1
005c10d4  00 00 00 ea                                      b #0x5c10dc
005c10d8  00 00 a0 e3                                      mov r0, #0
005c10dc  18 d0 8d e2                                      add sp, sp, #0x18
005c10e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c10e4  14 30 43 e2                                      sub r3, r3, #0x14
005c10e8  03 00 51 e1                                      cmp r1, r3
005c10ec  d0 ff ff 1a                                      bne #0x5c1034
005c10f0  01 00 a0 e3                                      mov r0, #1
005c10f4  f8 ff ff ea                                      b #0x5c10dc
005c10f8  27 8f 03 eb                                      bl #0x6a4d9c
005c10fc  01 00 a0 e3                                      mov r0, #1
005c1100  f5 ff ff ea                                      b #0x5c10dc

; FUNCTION 0x005c1104, declared_size=200, range_size=200, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE9removeAllEb
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::removeAll(bool)
; decoder-mode: arm
005c1104  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c1108  08 30 90 e5                                      ldr r3, [r0, #8]
005c110c  00 50 a0 e1                                      mov r5, r0
005c1110  01 70 a0 e1                                      mov r7, r1
005c1114  03 00 55 e1                                      cmp r5, r3
005c1118  00 60 a0 e3                                      mov r6, #0
005c111c  11 00 00 0a                                      beq #0x5c1168
005c1120  0c 40 93 e5                                      ldr r4, [r3, #0xc]
005c1124  00 00 54 e3                                      cmp r4, #0
005c1128  01 00 00 1a                                      bne #0x5c1134
005c112c  0f 00 00 ea                                      b #0x5c1170
005c1130  02 40 a0 e1                                      mov r4, r2
005c1134  08 20 94 e5                                      ldr r2, [r4, #8]
005c1138  00 00 52 e3                                      cmp r2, #0
005c113c  fb ff ff 1a                                      bne #0x5c1130
005c1140  bc 11 d3 e1                                      ldrh r1, [r3, #0x1c]
005c1144  05 00 a0 e1                                      mov r0, r5
005c1148  07 20 a0 e1                                      mov r2, r7
005c114c  87 ff ff eb                                      bl #0x5c0f70
005c1150  00 00 50 e3                                      cmp r0, #0
005c1154  01 60 86 12                                      addne r6, r6, #1
005c1158  76 60 ff 16                                      uxthne r6, r6
005c115c  04 30 a0 e1                                      mov r3, r4
005c1160  03 00 55 e1                                      cmp r5, r3
005c1164  ed ff ff 1a                                      bne #0x5c1120
005c1168  06 00 a0 e1                                      mov r0, r6
005c116c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c1170  04 20 93 e5                                      ldr r2, [r3, #4]
005c1174  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005c1178  01 00 53 e1                                      cmp r3, r1
005c117c  03 40 a0 11                                      movne r4, r3
005c1180  00 10 a0 13                                      movne r1, #0
005c1184  05 00 00 1a                                      bne #0x5c11a0
005c1188  02 40 a0 e1                                      mov r4, r2
005c118c  04 20 92 e5                                      ldr r2, [r2, #4]
005c1190  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005c1194  04 00 51 e1                                      cmp r1, r4
005c1198  fa ff ff 0a                                      beq #0x5c1188
005c119c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c11a0  02 00 51 e1                                      cmp r1, r2
005c11a4  02 40 a0 11                                      movne r4, r2
005c11a8  bc 11 d3 e1                                      ldrh r1, [r3, #0x1c]
005c11ac  05 00 a0 e1                                      mov r0, r5
005c11b0  07 20 a0 e1                                      mov r2, r7
005c11b4  6d ff ff eb                                      bl #0x5c0f70
005c11b8  00 00 50 e3                                      cmp r0, #0
005c11bc  01 60 86 12                                      addne r6, r6, #1
005c11c0  76 60 ff 16                                      uxthne r6, r6
005c11c4  04 30 a0 e1                                      mov r3, r4
005c11c8  e4 ff ff ea                                      b #0x5c1160

; FUNCTION 0x005c11cc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE9removeAllEv
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::removeAll()
; decoder-mode: arm
005c11cc  00 10 a0 e3                                      mov r1, #0
005c11d0  cb ff ff ea                                      b #0x5c1104

; FUNCTION 0x005c11d4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE12removeUnusedEv
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::removeUnused()
; decoder-mode: arm
005c11d4  00 10 a0 e3                                      mov r1, #0
005c11d8  c9 ff ff ea                                      b #0x5c1104

; FUNCTION 0x005c1264, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE6removeEt
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::remove(unsigned short)
; decoder-mode: arm
005c1264  00 20 a0 e3                                      mov r2, #0
005c1268  40 ff ff ea                                      b #0x5c0f70
