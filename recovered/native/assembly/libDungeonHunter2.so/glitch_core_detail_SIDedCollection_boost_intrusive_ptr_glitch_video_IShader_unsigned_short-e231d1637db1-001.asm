; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d85d0, declared_size=84, range_size=84, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE5getIdEPKc
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::getId(char const*) const
; decoder-mode: arm
005d85d0  30 40 2d e9                                      push {r4, r5, lr}
005d85d4  0c d0 4d e2                                      sub sp, sp, #0xc
005d85d8  00 30 a0 e3                                      mov r3, #0
005d85dc  00 10 8d e5                                      str r1, [sp]
005d85e0  0d 10 a0 e1                                      mov r1, sp
005d85e4  04 30 cd e5                                      strb r3, [sp, #4]
005d85e8  00 40 a0 e1                                      mov r4, r0
005d85ec  c5 ff ff eb                                      bl #0x5d8508
005d85f0  04 30 dd e5                                      ldrb r3, [sp, #4]
005d85f4  00 50 a0 e1                                      mov r5, r0
005d85f8  00 00 53 e3                                      cmp r3, #0
005d85fc  03 00 00 0a                                      beq #0x5d8610
005d8600  00 00 9d e5                                      ldr r0, [sp]
005d8604  00 00 50 e3                                      cmp r0, #0
005d8608  00 00 00 0a                                      beq #0x5d8610
005d860c  a9 d6 f4 eb                                      bl #0x30e0b8
005d8610  04 00 55 e1                                      cmp r5, r4
005d8614  ff 0f 0f 03                                      movweq r0, #0xffff
005d8618  bc 01 d5 11                                      ldrhne r0, [r5, #0x1c]
005d861c  0c d0 8d e2                                      add sp, sp, #0xc
005d8620  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005e5390, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE7idBeginEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::idBegin() const
; decoder-mode: arm
005e5390  08 00 90 e5                                      ldr r0, [r0, #8]
005e5394  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e5398, declared_size=4, range_size=4, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE5idEndEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::idEnd() const
; decoder-mode: arm
005e5398  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e539c, declared_size=56, range_size=56, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE3getEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::get(unsigned short) const
; decoder-mode: arm
005e539c  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
005e53a0  18 20 90 e5                                      ldr r2, [r0, #0x18]
005e53a4  20 30 9f e5                                      ldr r3, [pc, #0x20]
005e53a8  0c c0 62 e0                                      rsb ip, r2, ip
005e53ac  cc 01 51 e1                                      cmp r1, ip, asr #3
005e53b0  03 30 8f e0                                      add r3, pc, r3
005e53b4  01 00 00 2a                                      bhs #0x5e53c0
005e53b8  81 01 82 e0                                      add r0, r2, r1, lsl #3
005e53bc  1e ff 2f e1                                      bx lr
005e53c0  08 20 9f e5                                      ldr r2, [pc, #8]
005e53c4  02 00 93 e7                                      ldr r0, [r3, r2]
005e53c8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005e53cc  e0 f6 3a 00 fc 49 00 00                          .byte 0xe0, 0xf6, 0x3a, 0x00, 0xfc, 0x49, 0x00, 0x00

; FUNCTION 0x005e53d4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE4sizeEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::size() const
; decoder-mode: arm
005e53d4  b6 02 d0 e1                                      ldrh r0, [r0, #0x26]
005e53d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e53dc, declared_size=20, range_size=20, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE13getPropertiesEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::getProperties(unsigned short) const
; decoder-mode: arm
005e53dc  18 30 90 e5                                      ldr r3, [r0, #0x18]
005e53e0  81 31 83 e0                                      add r3, r3, r1, lsl #3
005e53e4  04 00 93 e5                                      ldr r0, [r3, #4]
005e53e8  18 00 80 e2                                      add r0, r0, #0x18
005e53ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e53f0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE13getPropertiesEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::getProperties(unsigned short)
; decoder-mode: arm
005e53f0  18 30 90 e5                                      ldr r3, [r0, #0x18]
005e53f4  81 31 83 e0                                      add r3, r3, r1, lsl #3
005e53f8  04 00 93 e5                                      ldr r0, [r3, #4]
005e53fc  18 00 80 e2                                      add r0, r0, #0x18
005e5400  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e5404, declared_size=52, range_size=52, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEEC2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection()
; decoder-mode: arm
005e5404  00 20 a0 e3                                      mov r2, #0
005e5408  00 30 a0 e1                                      mov r3, r0
005e540c  b6 22 c0 e1                                      strh r2, [r0, #0x26]
005e5410  04 20 80 e5                                      str r2, [r0, #4]
005e5414  00 20 c0 e5                                      strb r2, [r0]
005e5418  08 00 83 e5                                      str r0, [r3, #8]
005e541c  0c 00 83 e5                                      str r0, [r3, #0xc]
005e5420  10 20 80 e5                                      str r2, [r0, #0x10]
005e5424  18 20 80 e5                                      str r2, [r0, #0x18]
005e5428  1c 20 80 e5                                      str r2, [r0, #0x1c]
005e542c  20 20 80 e5                                      str r2, [r0, #0x20]
005e5430  b4 22 c0 e1                                      strh r2, [r0, #0x24]
005e5434  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e5438, declared_size=52, range_size=52, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEEC1Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection()
; decoder-mode: arm
005e5438  00 20 a0 e3                                      mov r2, #0
005e543c  00 30 a0 e1                                      mov r3, r0
005e5440  b6 22 c0 e1                                      strh r2, [r0, #0x26]
005e5444  04 20 80 e5                                      str r2, [r0, #4]
005e5448  00 20 c0 e5                                      strb r2, [r0]
005e544c  08 00 83 e5                                      str r0, [r3, #8]
005e5450  0c 00 83 e5                                      str r0, [r3, #0xc]
005e5454  10 20 80 e5                                      str r2, [r0, #0x10]
005e5458  18 20 80 e5                                      str r2, [r0, #0x18]
005e545c  1c 20 80 e5                                      str r2, [r0, #0x1c]
005e5460  20 20 80 e5                                      str r2, [r0, #0x20]
005e5464  b4 22 c0 e1                                      strh r2, [r0, #0x24]
005e5468  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e546c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE9getNextIdEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::getNextId() const
; decoder-mode: arm
005e546c  b4 02 d0 e1                                      ldrh r0, [r0, #0x24]
005e5470  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e5474, declared_size=28, range_size=28, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE8getMaxIDEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::getMaxID() const
; decoder-mode: arm
005e5474  18 30 90 e5                                      ldr r3, [r0, #0x18]
005e5478  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
005e547c  00 00 63 e0                                      rsb r0, r3, r0
005e5480  c0 01 a0 e1                                      asr r0, r0, #3
005e5484  01 00 40 e2                                      sub r0, r0, #1
005e5488  70 00 ff e6                                      uxth r0, r0
005e548c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e5eac, declared_size=64, range_size=64, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEED2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::~SIDedCollection()
; decoder-mode: arm
005e5eac  10 40 2d e9                                      push {r4, lr}
005e5eb0  00 40 a0 e1                                      mov r4, r0
005e5eb4  18 00 80 e2                                      add r0, r0, #0x18
005e5eb8  e8 ff ff eb                                      bl #0x5e5e60
005e5ebc  10 30 94 e5                                      ldr r3, [r4, #0x10]
005e5ec0  00 00 53 e3                                      cmp r3, #0
005e5ec4  06 00 00 0a                                      beq #0x5e5ee4
005e5ec8  04 00 a0 e1                                      mov r0, r4
005e5ecc  04 10 94 e5                                      ldr r1, [r4, #4]
005e5ed0  64 ff ff eb                                      bl #0x5e5c68
005e5ed4  00 30 a0 e3                                      mov r3, #0
005e5ed8  10 30 84 e5                                      str r3, [r4, #0x10]
005e5edc  18 00 84 e9                                      stmib r4, {r3, r4}
005e5ee0  0c 40 84 e5                                      str r4, [r4, #0xc]
005e5ee4  04 00 a0 e1                                      mov r0, r4
005e5ee8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005e65dc, declared_size=252, range_size=252, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE6removeEtb
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)
; decoder-mode: arm
005e65dc  70 40 2d e9                                      push {r4, r5, r6, lr}
005e65e0  00 40 a0 e1                                      mov r4, r0
005e65e4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
005e65e8  18 00 90 e5                                      ldr r0, [r0, #0x18]
005e65ec  10 d0 4d e2                                      sub sp, sp, #0x10
005e65f0  01 50 a0 e1                                      mov r5, r1
005e65f4  03 30 60 e0                                      rsb r3, r0, r3
005e65f8  c3 01 51 e1                                      cmp r1, r3, asr #3
005e65fc  2d 00 00 2a                                      bhs #0x5e66b8
005e6600  81 31 90 e7                                      ldr r3, [r0, r1, lsl #3]
005e6604  81 61 80 e0                                      add r6, r0, r1, lsl #3
005e6608  00 00 53 e3                                      cmp r3, #0
005e660c  29 00 00 0a                                      beq #0x5e66b8
005e6610  04 30 93 e5                                      ldr r3, [r3, #4]
005e6614  01 00 53 e3                                      cmp r3, #1
005e6618  01 00 00 0a                                      beq #0x5e6624
005e661c  00 00 52 e3                                      cmp r2, #0
005e6620  24 00 00 0a                                      beq #0x5e66b8
005e6624  04 30 96 e5                                      ldr r3, [r6, #4]
005e6628  10 10 8d e2                                      add r1, sp, #0x10
005e662c  04 00 a0 e1                                      mov r0, r4
005e6630  04 30 21 e5                                      str r3, [r1, #-4]!
005e6634  7b fd ff eb                                      bl #0x5e5c28
005e6638  06 00 a0 e1                                      mov r0, r6
005e663c  a8 fe ff eb                                      bl #0x5e60e4
005e6640  b4 22 d4 e1                                      ldrh r2, [r4, #0x24]
005e6644  b6 32 d4 e1                                      ldrh r3, [r4, #0x26]
005e6648  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
005e664c  18 10 94 e5                                      ldr r1, [r4, #0x18]
005e6650  05 00 52 e1                                      cmp r2, r5
005e6654  01 30 43 e2                                      sub r3, r3, #1
005e6658  b4 52 c4 81                                      strhhi r5, [r4, #0x24]
005e665c  01 00 50 e1                                      cmp r0, r1
005e6660  b6 32 c4 e1                                      strh r3, [r4, #0x26]
005e6664  19 00 00 0a                                      beq #0x5e66d0
005e6668  00 30 a0 e1                                      mov r3, r0
005e666c  08 20 13 e5                                      ldr r2, [r3, #-8]
005e6670  00 00 52 e3                                      cmp r2, #0
005e6674  12 00 00 0a                                      beq #0x5e66c4
005e6678  00 30 63 e0                                      rsb r3, r3, r0
005e667c  00 10 61 e0                                      rsb r1, r1, r0
005e6680  c3 31 a0 e1                                      asr r3, r3, #3
005e6684  c1 11 63 e0                                      rsb r1, r3, r1, asr #3
005e6688  18 00 84 e2                                      add r0, r4, #0x18
005e668c  00 30 a0 e3                                      mov r3, #0
005e6690  04 20 8d e2                                      add r2, sp, #4
005e6694  08 30 8d e5                                      str r3, [sp, #8]
005e6698  04 30 8d e5                                      str r3, [sp, #4]
005e669c  25 ff ff eb                                      bl #0x5e6338
005e66a0  04 00 9d e5                                      ldr r0, [sp, #4]
005e66a4  00 00 50 e3                                      cmp r0, #0
005e66a8  08 00 00 0a                                      beq #0x5e66d0
005e66ac  b4 db f4 eb                                      bl #0x31d584
005e66b0  01 00 a0 e3                                      mov r0, #1
005e66b4  00 00 00 ea                                      b #0x5e66bc
005e66b8  00 00 a0 e3                                      mov r0, #0
005e66bc  10 d0 8d e2                                      add sp, sp, #0x10
005e66c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005e66c4  08 30 43 e2                                      sub r3, r3, #8
005e66c8  03 00 51 e1                                      cmp r1, r3
005e66cc  e6 ff ff 1a                                      bne #0x5e666c
005e66d0  01 00 a0 e3                                      mov r0, #1
005e66d4  f8 ff ff ea                                      b #0x5e66bc

; FUNCTION 0x005e66d8, declared_size=200, range_size=200, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE9removeAllEb
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)
; decoder-mode: arm
005e66d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e66dc  08 30 90 e5                                      ldr r3, [r0, #8]
005e66e0  00 50 a0 e1                                      mov r5, r0
005e66e4  01 70 a0 e1                                      mov r7, r1
005e66e8  03 00 55 e1                                      cmp r5, r3
005e66ec  00 60 a0 e3                                      mov r6, #0
005e66f0  11 00 00 0a                                      beq #0x5e673c
005e66f4  0c 40 93 e5                                      ldr r4, [r3, #0xc]
005e66f8  00 00 54 e3                                      cmp r4, #0
005e66fc  01 00 00 1a                                      bne #0x5e6708
005e6700  0f 00 00 ea                                      b #0x5e6744
005e6704  02 40 a0 e1                                      mov r4, r2
005e6708  08 20 94 e5                                      ldr r2, [r4, #8]
005e670c  00 00 52 e3                                      cmp r2, #0
005e6710  fb ff ff 1a                                      bne #0x5e6704
005e6714  bc 11 d3 e1                                      ldrh r1, [r3, #0x1c]
005e6718  05 00 a0 e1                                      mov r0, r5
005e671c  07 20 a0 e1                                      mov r2, r7
005e6720  ad ff ff eb                                      bl #0x5e65dc
005e6724  00 00 50 e3                                      cmp r0, #0
005e6728  01 60 86 12                                      addne r6, r6, #1
005e672c  76 60 ff 16                                      uxthne r6, r6
005e6730  04 30 a0 e1                                      mov r3, r4
005e6734  03 00 55 e1                                      cmp r5, r3
005e6738  ed ff ff 1a                                      bne #0x5e66f4
005e673c  06 00 a0 e1                                      mov r0, r6
005e6740  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005e6744  04 20 93 e5                                      ldr r2, [r3, #4]
005e6748  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005e674c  01 00 53 e1                                      cmp r3, r1
005e6750  03 40 a0 11                                      movne r4, r3
005e6754  00 10 a0 13                                      movne r1, #0
005e6758  05 00 00 1a                                      bne #0x5e6774
005e675c  02 40 a0 e1                                      mov r4, r2
005e6760  04 20 92 e5                                      ldr r2, [r2, #4]
005e6764  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005e6768  04 00 51 e1                                      cmp r1, r4
005e676c  fa ff ff 0a                                      beq #0x5e675c
005e6770  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005e6774  02 00 51 e1                                      cmp r1, r2
005e6778  02 40 a0 11                                      movne r4, r2
005e677c  bc 11 d3 e1                                      ldrh r1, [r3, #0x1c]
005e6780  05 00 a0 e1                                      mov r0, r5
005e6784  07 20 a0 e1                                      mov r2, r7
005e6788  93 ff ff eb                                      bl #0x5e65dc
005e678c  00 00 50 e3                                      cmp r0, #0
005e6790  01 60 86 12                                      addne r6, r6, #1
005e6794  76 60 ff 16                                      uxthne r6, r6
005e6798  04 30 a0 e1                                      mov r3, r4
005e679c  e4 ff ff ea                                      b #0x5e6734

; FUNCTION 0x005e67a0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE9removeAllEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll()
; decoder-mode: arm
005e67a0  00 10 a0 e3                                      mov r1, #0
005e67a4  cb ff ff ea                                      b #0x5e66d8

; FUNCTION 0x005e67a8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE12removeUnusedEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeUnused()
; decoder-mode: arm
005e67a8  00 10 a0 e3                                      mov r1, #0
005e67ac  c9 ff ff ea                                      b #0x5e66d8

; FUNCTION 0x005e67bc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE6removeEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short)
; decoder-mode: arm
005e67bc  00 20 a0 e3                                      mov r2, #0
005e67c0  85 ff ff ea                                      b #0x5e65dc

; FUNCTION 0x005e7050, declared_size=192, range_size=192, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE6renameEtPKcb
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::rename(unsigned short, char const*, bool)
; decoder-mode: arm
005e7050  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e7054  00 40 a0 e1                                      mov r4, r0
005e7058  1c 60 94 e5                                      ldr r6, [r4, #0x1c]
005e705c  18 00 90 e5                                      ldr r0, [r0, #0x18]
005e7060  28 d0 4d e2                                      sub sp, sp, #0x28
005e7064  01 c0 a0 e1                                      mov ip, r1
005e7068  06 60 60 e0                                      rsb r6, r0, r6
005e706c  c6 01 51 e1                                      cmp r1, r6, asr #3
005e7070  02 50 a0 e1                                      mov r5, r2
005e7074  03 60 a0 e1                                      mov r6, r3
005e7078  21 00 00 2a                                      bhs #0x5e7104
005e707c  81 31 90 e7                                      ldr r3, [r0, r1, lsl #3]
005e7080  81 81 80 e0                                      add r8, r0, r1, lsl #3
005e7084  00 00 53 e3                                      cmp r3, #0
005e7088  1d 00 00 0a                                      beq #0x5e7104
005e708c  04 70 8d e2                                      add r7, sp, #4
005e7090  00 30 a0 e3                                      mov r3, #0
005e7094  04 10 a0 e1                                      mov r1, r4
005e7098  07 20 a0 e1                                      mov r2, r7
005e709c  1c 00 8d e2                                      add r0, sp, #0x1c
005e70a0  0c 30 8d e5                                      str r3, [sp, #0xc]
005e70a4  18 30 cd e5                                      strb r3, [sp, #0x18]
005e70a8  08 30 cd e5                                      strb r3, [sp, #8]
005e70ac  b0 c1 cd e1                                      strh ip, [sp, #0x10]
005e70b0  04 50 8d e5                                      str r5, [sp, #4]
005e70b4  14 50 8d e5                                      str r5, [sp, #0x14]
005e70b8  76 ff ff eb                                      bl #0x5e6e98
005e70bc  07 00 a0 e1                                      mov r0, r7
005e70c0  c9 fa ff eb                                      bl #0x5e5bec
005e70c4  20 30 dd e5                                      ldrb r3, [sp, #0x20]
005e70c8  00 00 53 e3                                      cmp r3, #0
005e70cc  0c 00 00 0a                                      beq #0x5e7104
005e70d0  04 30 98 e5                                      ldr r3, [r8, #4]
005e70d4  28 10 8d e2                                      add r1, sp, #0x28
005e70d8  04 00 a0 e1                                      mov r0, r4
005e70dc  04 30 21 e5                                      str r3, [r1, #-4]!
005e70e0  d0 fa ff eb                                      bl #0x5e5c28
005e70e4  00 00 56 e3                                      cmp r6, #0
005e70e8  1c 30 9d 15                                      ldrne r3, [sp, #0x1c]
005e70ec  01 20 a0 13                                      movne r2, #1
005e70f0  01 00 a0 e3                                      mov r0, #1
005e70f4  14 20 c3 15                                      strbne r2, [r3, #0x14]
005e70f8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005e70fc  04 30 88 e5                                      str r3, [r8, #4]
005e7100  00 00 00 ea                                      b #0x5e7108
005e7104  00 00 a0 e3                                      mov r0, #0
005e7108  28 d0 8d e2                                      add sp, sp, #0x28
005e710c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005e7110, declared_size=392, range_size=392, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE6insertEPKcRKS7_b
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::IShader> const&, bool)
; decoder-mode: arm
005e7110  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e7114  00 40 a0 e1                                      mov r4, r0
005e7118  b6 02 d0 e1                                      ldrh r0, [r0, #0x26]
005e711c  38 d0 4d e2                                      sub sp, sp, #0x38
005e7120  b4 52 d4 e1                                      ldrh r5, [r4, #0x24]
005e7124  0c 60 8d e2                                      add r6, sp, #0xc
005e7128  01 00 80 e2                                      add r0, r0, #1
005e712c  b6 02 c4 e1                                      strh r0, [r4, #0x26]
005e7130  01 e0 a0 e1                                      mov lr, r1
005e7134  00 c0 a0 e3                                      mov ip, #0
005e7138  04 10 a0 e1                                      mov r1, r4
005e713c  2c 00 8d e2                                      add r0, sp, #0x2c
005e7140  02 80 a0 e1                                      mov r8, r2
005e7144  06 20 a0 e1                                      mov r2, r6
005e7148  03 70 a0 e1                                      mov r7, r3
005e714c  0c e0 8d e5                                      str lr, [sp, #0xc]
005e7150  14 c0 8d e5                                      str ip, [sp, #0x14]
005e7154  24 e0 8d e5                                      str lr, [sp, #0x24]
005e7158  28 c0 cd e5                                      strb ip, [sp, #0x28]
005e715c  10 c0 cd e5                                      strb ip, [sp, #0x10]
005e7160  b8 51 cd e1                                      strh r5, [sp, #0x18]
005e7164  4b ff ff eb                                      bl #0x5e6e98
005e7168  06 00 a0 e1                                      mov r0, r6
005e716c  9e fa ff eb                                      bl #0x5e5bec
005e7170  00 00 57 e3                                      cmp r7, #0
005e7174  2c 30 9d 15                                      ldrne r3, [sp, #0x2c]
005e7178  01 20 a0 13                                      movne r2, #1
005e717c  14 20 c3 15                                      strbne r2, [r3, #0x14]
005e7180  18 30 94 e5                                      ldr r3, [r4, #0x18]
005e7184  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
005e7188  01 20 63 e0                                      rsb r2, r3, r1
005e718c  c2 01 55 e1                                      cmp r5, r2, asr #3
005e7190  1b 00 00 3a                                      blo #0x5e7204
005e7194  00 30 98 e5                                      ldr r3, [r8]
005e7198  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005e719c  00 00 53 e3                                      cmp r3, #0
005e71a0  1c 30 8d e5                                      str r3, [sp, #0x1c]
005e71a4  04 10 93 15                                      ldrne r1, [r3, #4]
005e71a8  01 10 81 12                                      addne r1, r1, #1
005e71ac  04 10 83 15                                      strne r1, [r3, #4]
005e71b0  1c 10 94 15                                      ldrne r1, [r4, #0x1c]
005e71b4  20 30 94 e5                                      ldr r3, [r4, #0x20]
005e71b8  20 20 8d e5                                      str r2, [sp, #0x20]
005e71bc  03 00 51 e1                                      cmp r1, r3
005e71c0  2c 00 00 0a                                      beq #0x5e7278
005e71c4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005e71c8  00 30 81 e5                                      str r3, [r1]
005e71cc  00 00 53 e3                                      cmp r3, #0
005e71d0  04 20 93 15                                      ldrne r2, [r3, #4]
005e71d4  01 20 82 12                                      addne r2, r2, #1
005e71d8  04 20 83 15                                      strne r2, [r3, #4]
005e71dc  20 30 9d e5                                      ldr r3, [sp, #0x20]
005e71e0  04 30 81 e5                                      str r3, [r1, #4]
005e71e4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
005e71e8  08 30 83 e2                                      add r3, r3, #8
005e71ec  1c 30 84 e5                                      str r3, [r4, #0x1c]
005e71f0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005e71f4  00 00 50 e3                                      cmp r0, #0
005e71f8  0e 00 00 0a                                      beq #0x5e7238
005e71fc  e0 d8 f4 eb                                      bl #0x31d584
005e7200  0c 00 00 ea                                      b #0x5e7238
005e7204  00 20 98 e5                                      ldr r2, [r8]
005e7208  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005e720c  85 61 83 e0                                      add r6, r3, r5, lsl #3
005e7210  00 00 52 e3                                      cmp r2, #0
005e7214  04 10 92 15                                      ldrne r1, [r2, #4]
005e7218  01 10 81 12                                      addne r1, r1, #1
005e721c  04 10 82 15                                      strne r1, [r2, #4]
005e7220  85 01 93 e7                                      ldr r0, [r3, r5, lsl #3]
005e7224  85 21 83 e7                                      str r2, [r3, r5, lsl #3]
005e7228  00 00 50 e3                                      cmp r0, #0
005e722c  00 00 00 0a                                      beq #0x5e7234
005e7230  d3 d8 f4 eb                                      bl #0x31d584
005e7234  04 70 86 e5                                      str r7, [r6, #4]
005e7238  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
005e723c  18 00 94 e5                                      ldr r0, [r4, #0x18]
005e7240  b4 32 d4 e1                                      ldrh r3, [r4, #0x24]
005e7244  02 20 60 e0                                      rsb r2, r0, r2
005e7248  c2 21 a0 e1                                      asr r2, r2, #3
005e724c  01 30 83 e2                                      add r3, r3, #1
005e7250  73 30 ff e6                                      uxth r3, r3
005e7254  02 00 53 e1                                      cmp r3, r2
005e7258  b4 32 c4 e1                                      strh r3, [r4, #0x24]
005e725c  02 00 00 2a                                      bhs #0x5e726c
005e7260  83 11 90 e7                                      ldr r1, [r0, r3, lsl #3]
005e7264  00 00 51 e3                                      cmp r1, #0
005e7268  f7 ff ff 1a                                      bne #0x5e724c
005e726c  05 00 a0 e1                                      mov r0, r5
005e7270  38 d0 8d e2                                      add sp, sp, #0x38
005e7274  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005e7278  01 c0 a0 e3                                      mov ip, #1
005e727c  18 00 84 e2                                      add r0, r4, #0x18
005e7280  1c 20 8d e2                                      add r2, sp, #0x1c
005e7284  34 30 8d e2                                      add r3, sp, #0x34
005e7288  04 c0 8d e5                                      str ip, [sp, #4]
005e728c  00 c0 8d e5                                      str ip, [sp]
005e7290  15 fb ff eb                                      bl #0x5e5eec
005e7294  d5 ff ff ea                                      b #0x5e71f0
