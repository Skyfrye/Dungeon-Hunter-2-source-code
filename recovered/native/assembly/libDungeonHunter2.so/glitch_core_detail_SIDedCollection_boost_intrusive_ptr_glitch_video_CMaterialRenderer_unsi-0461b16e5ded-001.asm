; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d7d34, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE7idBeginEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::idBegin() const
; decoder-mode: arm
005d7d34  08 00 90 e5                                      ldr r0, [r0, #8]
005d7d38  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7d3c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE5idEndEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::idEnd() const
; decoder-mode: arm
005d7d3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7d40, declared_size=56, range_size=56, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE3getEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::get(unsigned short) const
; decoder-mode: arm
005d7d40  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
005d7d44  18 20 90 e5                                      ldr r2, [r0, #0x18]
005d7d48  20 30 9f e5                                      ldr r3, [pc, #0x20]
005d7d4c  0c c0 62 e0                                      rsb ip, r2, ip
005d7d50  cc 01 51 e1                                      cmp r1, ip, asr #3
005d7d54  03 30 8f e0                                      add r3, pc, r3
005d7d58  01 00 00 2a                                      bhs #0x5d7d64
005d7d5c  81 01 82 e0                                      add r0, r2, r1, lsl #3
005d7d60  1e ff 2f e1                                      bx lr
005d7d64  08 20 9f e5                                      ldr r2, [pc, #8]
005d7d68  02 00 93 e7                                      ldr r0, [r3, r2]
005d7d6c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005d7d70  3c cd 3b 00 dc 30 00 00                          .byte 0x3c, 0xcd, 0x3b, 0x00, 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x005d7d78, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE4sizeEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::size() const
; decoder-mode: arm
005d7d78  b6 02 d0 e1                                      ldrh r0, [r0, #0x26]
005d7d7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7d80, declared_size=28, range_size=28, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE8getMaxIDEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::getMaxID() const
; decoder-mode: arm
005d7d80  18 30 90 e5                                      ldr r3, [r0, #0x18]
005d7d84  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
005d7d88  00 00 63 e0                                      rsb r0, r3, r0
005d7d8c  c0 01 a0 e1                                      asr r0, r0, #3
005d7d90  01 00 40 e2                                      sub r0, r0, #1
005d7d94  70 00 ff e6                                      uxth r0, r0
005d7d98  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7d9c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE13getPropertiesEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::getProperties(unsigned short) const
; decoder-mode: arm
005d7d9c  18 30 90 e5                                      ldr r3, [r0, #0x18]
005d7da0  81 31 83 e0                                      add r3, r3, r1, lsl #3
005d7da4  04 00 93 e5                                      ldr r0, [r3, #4]
005d7da8  18 00 80 e2                                      add r0, r0, #0x18
005d7dac  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7db0, declared_size=52, range_size=52, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEEC2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection()
; decoder-mode: arm
005d7db0  00 20 a0 e3                                      mov r2, #0
005d7db4  00 30 a0 e1                                      mov r3, r0
005d7db8  b6 22 c0 e1                                      strh r2, [r0, #0x26]
005d7dbc  04 20 80 e5                                      str r2, [r0, #4]
005d7dc0  00 20 c0 e5                                      strb r2, [r0]
005d7dc4  08 00 83 e5                                      str r0, [r3, #8]
005d7dc8  0c 00 83 e5                                      str r0, [r3, #0xc]
005d7dcc  10 20 80 e5                                      str r2, [r0, #0x10]
005d7dd0  18 20 80 e5                                      str r2, [r0, #0x18]
005d7dd4  1c 20 80 e5                                      str r2, [r0, #0x1c]
005d7dd8  20 20 80 e5                                      str r2, [r0, #0x20]
005d7ddc  b4 22 c0 e1                                      strh r2, [r0, #0x24]
005d7de0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7de4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEEC1Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection()
; decoder-mode: arm
005d7de4  00 20 a0 e3                                      mov r2, #0
005d7de8  00 30 a0 e1                                      mov r3, r0
005d7dec  b6 22 c0 e1                                      strh r2, [r0, #0x26]
005d7df0  04 20 80 e5                                      str r2, [r0, #4]
005d7df4  00 20 c0 e5                                      strb r2, [r0]
005d7df8  08 00 83 e5                                      str r0, [r3, #8]
005d7dfc  0c 00 83 e5                                      str r0, [r3, #0xc]
005d7e00  10 20 80 e5                                      str r2, [r0, #0x10]
005d7e04  18 20 80 e5                                      str r2, [r0, #0x18]
005d7e08  1c 20 80 e5                                      str r2, [r0, #0x1c]
005d7e0c  20 20 80 e5                                      str r2, [r0, #0x20]
005d7e10  b4 22 c0 e1                                      strh r2, [r0, #0x24]
005d7e14  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7e18, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE9getNextIdEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::getNextId() const
; decoder-mode: arm
005d7e18  b4 02 d0 e1                                      ldrh r0, [r0, #0x24]
005d7e1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7e20, declared_size=20, range_size=20, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE13getPropertiesEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::getProperties(unsigned short)
; decoder-mode: arm
005d7e20  18 30 90 e5                                      ldr r3, [r0, #0x18]
005d7e24  81 31 83 e0                                      add r3, r3, r1, lsl #3
005d7e28  04 00 93 e5                                      ldr r0, [r3, #4]
005d7e2c  18 00 80 e2                                      add r0, r0, #0x18
005d7e30  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d98c4, declared_size=84, range_size=84, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE5getIdEPKc
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::getId(char const*) const
; decoder-mode: arm
005d98c4  30 40 2d e9                                      push {r4, r5, lr}
005d98c8  0c d0 4d e2                                      sub sp, sp, #0xc
005d98cc  00 30 a0 e3                                      mov r3, #0
005d98d0  00 10 8d e5                                      str r1, [sp]
005d98d4  0d 10 a0 e1                                      mov r1, sp
005d98d8  04 30 cd e5                                      strb r3, [sp, #4]
005d98dc  00 40 a0 e1                                      mov r4, r0
005d98e0  dd ff ff eb                                      bl #0x5d985c
005d98e4  04 30 dd e5                                      ldrb r3, [sp, #4]
005d98e8  00 50 a0 e1                                      mov r5, r0
005d98ec  00 00 53 e3                                      cmp r3, #0
005d98f0  03 00 00 0a                                      beq #0x5d9904
005d98f4  00 00 9d e5                                      ldr r0, [sp]
005d98f8  00 00 50 e3                                      cmp r0, #0
005d98fc  00 00 00 0a                                      beq #0x5d9904
005d9900  ec d1 f4 eb                                      bl #0x30e0b8
005d9904  04 00 55 e1                                      cmp r5, r4
005d9908  ff 0f 0f 03                                      movweq r0, #0xffff
005d990c  b2 02 d5 11                                      ldrhne r0, [r5, #0x22]
005d9910  0c d0 8d e2                                      add sp, sp, #0xc
005d9914  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005d9ab0, declared_size=64, range_size=64, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEED2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::~SIDedCollection()
; decoder-mode: arm
005d9ab0  10 40 2d e9                                      push {r4, lr}
005d9ab4  00 40 a0 e1                                      mov r4, r0
005d9ab8  18 00 80 e2                                      add r0, r0, #0x18
005d9abc  f1 fa ff eb                                      bl #0x5d8688
005d9ac0  10 30 94 e5                                      ldr r3, [r4, #0x10]
005d9ac4  00 00 53 e3                                      cmp r3, #0
005d9ac8  06 00 00 0a                                      beq #0x5d9ae8
005d9acc  04 00 a0 e1                                      mov r0, r4
005d9ad0  04 10 94 e5                                      ldr r1, [r4, #4]
005d9ad4  df ff ff eb                                      bl #0x5d9a58
005d9ad8  00 30 a0 e3                                      mov r3, #0
005d9adc  10 30 84 e5                                      str r3, [r4, #0x10]
005d9ae0  18 00 84 e9                                      stmib r4, {r3, r4}
005d9ae4  0c 40 84 e5                                      str r4, [r4, #0xc]
005d9ae8  04 00 a0 e1                                      mov r0, r4
005d9aec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d9f74, declared_size=268, range_size=268, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE6removeEtb
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)
; decoder-mode: arm
005d9f74  70 40 2d e9                                      push {r4, r5, r6, lr}
005d9f78  18 60 90 e5                                      ldr r6, [r0, #0x18]
005d9f7c  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
005d9f80  10 d0 4d e2                                      sub sp, sp, #0x10
005d9f84  00 40 a0 e1                                      mov r4, r0
005d9f88  03 30 66 e0                                      rsb r3, r6, r3
005d9f8c  c3 01 51 e1                                      cmp r1, r3, asr #3
005d9f90  01 50 a0 e1                                      mov r5, r1
005d9f94  31 00 00 2a                                      bhs #0x5da060
005d9f98  81 31 96 e7                                      ldr r3, [r6, r1, lsl #3]
005d9f9c  81 61 86 e0                                      add r6, r6, r1, lsl #3
005d9fa0  00 00 53 e3                                      cmp r3, #0
005d9fa4  2d 00 00 0a                                      beq #0x5da060
005d9fa8  00 30 93 e5                                      ldr r3, [r3]
005d9fac  01 00 53 e3                                      cmp r3, #1
005d9fb0  01 00 00 0a                                      beq #0x5d9fbc
005d9fb4  00 00 52 e3                                      cmp r2, #0
005d9fb8  28 00 00 0a                                      beq #0x5da060
005d9fbc  04 00 96 e5                                      ldr r0, [r6, #4]
005d9fc0  05 20 a0 e1                                      mov r2, r5
005d9fc4  04 10 a0 e1                                      mov r1, r4
005d9fc8  18 00 80 e2                                      add r0, r0, #0x18
005d9fcc  1c f7 ff eb                                      bl #0x5d7c44
005d9fd0  04 30 96 e5                                      ldr r3, [r6, #4]
005d9fd4  10 10 8d e2                                      add r1, sp, #0x10
005d9fd8  04 00 a0 e1                                      mov r0, r4
005d9fdc  04 30 21 e5                                      str r3, [r1, #-4]!
005d9fe0  cc ff ff eb                                      bl #0x5d9f18
005d9fe4  06 00 a0 e1                                      mov r0, r6
005d9fe8  2a f8 ff eb                                      bl #0x5d8098
005d9fec  b4 22 d4 e1                                      ldrh r2, [r4, #0x24]
005d9ff0  b6 32 d4 e1                                      ldrh r3, [r4, #0x26]
005d9ff4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
005d9ff8  18 10 94 e5                                      ldr r1, [r4, #0x18]
005d9ffc  05 00 52 e1                                      cmp r2, r5
005da000  01 30 43 e2                                      sub r3, r3, #1
005da004  b4 52 c4 81                                      strhhi r5, [r4, #0x24]
005da008  01 00 50 e1                                      cmp r0, r1
005da00c  b6 32 c4 e1                                      strh r3, [r4, #0x26]
005da010  18 00 00 0a                                      beq #0x5da078
005da014  00 30 a0 e1                                      mov r3, r0
005da018  08 20 13 e5                                      ldr r2, [r3, #-8]
005da01c  00 00 52 e3                                      cmp r2, #0
005da020  11 00 00 0a                                      beq #0x5da06c
005da024  00 30 63 e0                                      rsb r3, r3, r0
005da028  00 10 61 e0                                      rsb r1, r1, r0
005da02c  c3 31 a0 e1                                      asr r3, r3, #3
005da030  04 50 8d e2                                      add r5, sp, #4
005da034  c1 11 63 e0                                      rsb r1, r3, r1, asr #3
005da038  18 00 84 e2                                      add r0, r4, #0x18
005da03c  00 30 a0 e3                                      mov r3, #0
005da040  05 20 a0 e1                                      mov r2, r5
005da044  08 30 8d e5                                      str r3, [sp, #8]
005da048  04 30 8d e5                                      str r3, [sp, #4]
005da04c  37 fa ff eb                                      bl #0x5d8930
005da050  05 00 a0 e1                                      mov r0, r5
005da054  97 e0 f5 eb                                      bl #0x3522b8
005da058  01 00 a0 e3                                      mov r0, #1
005da05c  00 00 00 ea                                      b #0x5da064
005da060  00 00 a0 e3                                      mov r0, #0
005da064  10 d0 8d e2                                      add sp, sp, #0x10
005da068  70 80 bd e8                                      pop {r4, r5, r6, pc}
005da06c  08 30 43 e2                                      sub r3, r3, #8
005da070  03 00 51 e1                                      cmp r1, r3
005da074  e7 ff ff 1a                                      bne #0x5da018
005da078  01 00 a0 e3                                      mov r0, #1
005da07c  f8 ff ff ea                                      b #0x5da064

; FUNCTION 0x005da080, declared_size=200, range_size=200, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE9removeAllEb
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)
; decoder-mode: arm
005da080  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005da084  08 30 90 e5                                      ldr r3, [r0, #8]
005da088  00 50 a0 e1                                      mov r5, r0
005da08c  01 70 a0 e1                                      mov r7, r1
005da090  03 00 55 e1                                      cmp r5, r3
005da094  00 60 a0 e3                                      mov r6, #0
005da098  11 00 00 0a                                      beq #0x5da0e4
005da09c  0c 40 93 e5                                      ldr r4, [r3, #0xc]
005da0a0  00 00 54 e3                                      cmp r4, #0
005da0a4  01 00 00 1a                                      bne #0x5da0b0
005da0a8  0f 00 00 ea                                      b #0x5da0ec
005da0ac  02 40 a0 e1                                      mov r4, r2
005da0b0  08 20 94 e5                                      ldr r2, [r4, #8]
005da0b4  00 00 52 e3                                      cmp r2, #0
005da0b8  fb ff ff 1a                                      bne #0x5da0ac
005da0bc  b2 12 d3 e1                                      ldrh r1, [r3, #0x22]
005da0c0  05 00 a0 e1                                      mov r0, r5
005da0c4  07 20 a0 e1                                      mov r2, r7
005da0c8  a9 ff ff eb                                      bl #0x5d9f74
005da0cc  00 00 50 e3                                      cmp r0, #0
005da0d0  01 60 86 12                                      addne r6, r6, #1
005da0d4  76 60 ff 16                                      uxthne r6, r6
005da0d8  04 30 a0 e1                                      mov r3, r4
005da0dc  03 00 55 e1                                      cmp r5, r3
005da0e0  ed ff ff 1a                                      bne #0x5da09c
005da0e4  06 00 a0 e1                                      mov r0, r6
005da0e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005da0ec  04 20 93 e5                                      ldr r2, [r3, #4]
005da0f0  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005da0f4  01 00 53 e1                                      cmp r3, r1
005da0f8  03 40 a0 11                                      movne r4, r3
005da0fc  00 10 a0 13                                      movne r1, #0
005da100  05 00 00 1a                                      bne #0x5da11c
005da104  02 40 a0 e1                                      mov r4, r2
005da108  04 20 92 e5                                      ldr r2, [r2, #4]
005da10c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005da110  04 00 51 e1                                      cmp r1, r4
005da114  fa ff ff 0a                                      beq #0x5da104
005da118  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005da11c  02 00 51 e1                                      cmp r1, r2
005da120  02 40 a0 11                                      movne r4, r2
005da124  b2 12 d3 e1                                      ldrh r1, [r3, #0x22]
005da128  05 00 a0 e1                                      mov r0, r5
005da12c  07 20 a0 e1                                      mov r2, r7
005da130  8f ff ff eb                                      bl #0x5d9f74
005da134  00 00 50 e3                                      cmp r0, #0
005da138  01 60 86 12                                      addne r6, r6, #1
005da13c  76 60 ff 16                                      uxthne r6, r6
005da140  04 30 a0 e1                                      mov r3, r4
005da144  e4 ff ff ea                                      b #0x5da0dc

; FUNCTION 0x005da148, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE9removeAllEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll()
; decoder-mode: arm
005da148  00 10 a0 e3                                      mov r1, #0
005da14c  cb ff ff ea                                      b #0x5da080

; FUNCTION 0x005da150, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE12removeUnusedEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeUnused()
; decoder-mode: arm
005da150  00 10 a0 e3                                      mov r1, #0
005da154  c9 ff ff ea                                      b #0x5da080

; FUNCTION 0x005da158, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE6removeEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short)
; decoder-mode: arm
005da158  00 20 a0 e3                                      mov r2, #0
005da15c  84 ff ff ea                                      b #0x5d9f74

; FUNCTION 0x005dc444, declared_size=260, range_size=260, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE6renameEtPKcb
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::rename(unsigned short, char const*, bool)
; decoder-mode: arm
005dc444  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005dc448  00 40 a0 e1                                      mov r4, r0
005dc44c  1c 60 94 e5                                      ldr r6, [r4, #0x1c]
005dc450  18 00 90 e5                                      ldr r0, [r0, #0x18]
005dc454  38 d0 4d e2                                      sub sp, sp, #0x38
005dc458  01 c0 a0 e1                                      mov ip, r1
005dc45c  06 60 60 e0                                      rsb r6, r0, r6
005dc460  c6 01 51 e1                                      cmp r1, r6, asr #3
005dc464  02 50 a0 e1                                      mov r5, r2
005dc468  03 60 a0 e1                                      mov r6, r3
005dc46c  32 00 00 2a                                      bhs #0x5dc53c
005dc470  81 31 90 e7                                      ldr r3, [r0, r1, lsl #3]
005dc474  81 81 80 e0                                      add r8, r0, r1, lsl #3
005dc478  00 00 53 e3                                      cmp r3, #0
005dc47c  2e 00 00 0a                                      beq #0x5dc53c
005dc480  00 e0 e0 e3                                      mvn lr, #0
005dc484  04 70 8d e2                                      add r7, sp, #4
005dc488  00 30 a0 e3                                      mov r3, #0
005dc48c  2c 00 8d e2                                      add r0, sp, #0x2c
005dc490  04 10 a0 e1                                      mov r1, r4
005dc494  07 20 a0 e1                                      mov r2, r7
005dc498  10 e0 8d e5                                      str lr, [sp, #0x10]
005dc49c  1c e0 8d e5                                      str lr, [sp, #0x1c]
005dc4a0  11 e0 a0 e3                                      mov lr, #0x11
005dc4a4  0c 30 8d e5                                      str r3, [sp, #0xc]
005dc4a8  18 30 8d e5                                      str r3, [sp, #0x18]
005dc4ac  28 30 cd e5                                      strb r3, [sp, #0x28]
005dc4b0  08 30 cd e5                                      strb r3, [sp, #8]
005dc4b4  b6 c1 cd e1                                      strh ip, [sp, #0x16]
005dc4b8  b0 e2 cd e1                                      strh lr, [sp, #0x20]
005dc4bc  b2 c2 cd e1                                      strh ip, [sp, #0x22]
005dc4c0  b4 e1 cd e1                                      strh lr, [sp, #0x14]
005dc4c4  04 50 8d e5                                      str r5, [sp, #4]
005dc4c8  24 50 8d e5                                      str r5, [sp, #0x24]
005dc4cc  6e ff ff eb                                      bl #0x5dc28c
005dc4d0  08 00 87 e2                                      add r0, r7, #8
005dc4d4  c3 d1 f4 eb                                      bl #0x310be8
005dc4d8  08 30 dd e5                                      ldrb r3, [sp, #8]
005dc4dc  00 00 53 e3                                      cmp r3, #0
005dc4e0  03 00 00 0a                                      beq #0x5dc4f4
005dc4e4  04 00 9d e5                                      ldr r0, [sp, #4]
005dc4e8  00 00 50 e3                                      cmp r0, #0
005dc4ec  00 00 00 0a                                      beq #0x5dc4f4
005dc4f0  f0 c6 f4 eb                                      bl #0x30e0b8
005dc4f4  18 00 8d e2                                      add r0, sp, #0x18
005dc4f8  ba d1 f4 eb                                      bl #0x310be8
005dc4fc  30 30 dd e5                                      ldrb r3, [sp, #0x30]
005dc500  00 00 53 e3                                      cmp r3, #0
005dc504  0c 00 00 0a                                      beq #0x5dc53c
005dc508  04 30 98 e5                                      ldr r3, [r8, #4]
005dc50c  38 10 8d e2                                      add r1, sp, #0x38
005dc510  04 00 a0 e1                                      mov r0, r4
005dc514  04 30 21 e5                                      str r3, [r1, #-4]!
005dc518  7e f6 ff eb                                      bl #0x5d9f18
005dc51c  00 00 56 e3                                      cmp r6, #0
005dc520  2c 30 9d 15                                      ldrne r3, [sp, #0x2c]
005dc524  01 20 a0 13                                      movne r2, #1
005dc528  01 00 a0 e3                                      mov r0, #1
005dc52c  14 20 c3 15                                      strbne r2, [r3, #0x14]
005dc530  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005dc534  04 30 88 e5                                      str r3, [r8, #4]
005dc538  00 00 00 ea                                      b #0x5dc540
005dc53c  00 00 a0 e3                                      mov r0, #0
005dc540  38 d0 8d e2                                      add sp, sp, #0x38
005dc544  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005dc548, declared_size=468, range_size=468, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE6insertEPKcRKS7_b
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, bool)
; decoder-mode: arm
005dc548  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005dc54c  00 40 a0 e1                                      mov r4, r0
005dc550  b6 02 d0 e1                                      ldrh r0, [r0, #0x26]
005dc554  4c d0 4d e2                                      sub sp, sp, #0x4c
005dc558  b4 52 d4 e1                                      ldrh r5, [r4, #0x24]
005dc55c  08 60 8d e2                                      add r6, sp, #8
005dc560  01 00 80 e2                                      add r0, r0, #1
005dc564  b6 02 c4 e1                                      strh r0, [r4, #0x26]
005dc568  00 c0 a0 e3                                      mov ip, #0
005dc56c  00 e0 e0 e3                                      mvn lr, #0
005dc570  01 70 a0 e1                                      mov r7, r1
005dc574  38 00 8d e2                                      add r0, sp, #0x38
005dc578  04 10 a0 e1                                      mov r1, r4
005dc57c  02 a0 a0 e1                                      mov sl, r2
005dc580  03 80 a0 e1                                      mov r8, r3
005dc584  06 20 a0 e1                                      mov r2, r6
005dc588  11 30 a0 e3                                      mov r3, #0x11
005dc58c  b4 32 cd e1                                      strh r3, [sp, #0x24]
005dc590  b8 31 cd e1                                      strh r3, [sp, #0x18]
005dc594  10 c0 8d e5                                      str ip, [sp, #0x10]
005dc598  14 e0 8d e5                                      str lr, [sp, #0x14]
005dc59c  1c c0 8d e5                                      str ip, [sp, #0x1c]
005dc5a0  20 e0 8d e5                                      str lr, [sp, #0x20]
005dc5a4  34 c0 cd e5                                      strb ip, [sp, #0x34]
005dc5a8  0c c0 cd e5                                      strb ip, [sp, #0xc]
005dc5ac  08 70 8d e5                                      str r7, [sp, #8]
005dc5b0  30 70 8d e5                                      str r7, [sp, #0x30]
005dc5b4  b6 52 cd e1                                      strh r5, [sp, #0x26]
005dc5b8  ba 51 cd e1                                      strh r5, [sp, #0x1a]
005dc5bc  32 ff ff eb                                      bl #0x5dc28c
005dc5c0  08 00 86 e2                                      add r0, r6, #8
005dc5c4  87 d1 f4 eb                                      bl #0x310be8
005dc5c8  0c 30 dd e5                                      ldrb r3, [sp, #0xc]
005dc5cc  00 00 53 e3                                      cmp r3, #0
005dc5d0  03 00 00 0a                                      beq #0x5dc5e4
005dc5d4  08 00 9d e5                                      ldr r0, [sp, #8]
005dc5d8  00 00 50 e3                                      cmp r0, #0
005dc5dc  00 00 00 0a                                      beq #0x5dc5e4
005dc5e0  b4 c6 f4 eb                                      bl #0x30e0b8
005dc5e4  1c 00 8d e2                                      add r0, sp, #0x1c
005dc5e8  7e d1 f4 eb                                      bl #0x310be8
005dc5ec  00 00 58 e3                                      cmp r8, #0
005dc5f0  38 30 9d 15                                      ldrne r3, [sp, #0x38]
005dc5f4  01 20 a0 13                                      movne r2, #1
005dc5f8  14 20 c3 15                                      strbne r2, [r3, #0x14]
005dc5fc  18 30 94 e5                                      ldr r3, [r4, #0x18]
005dc600  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
005dc604  01 20 63 e0                                      rsb r2, r3, r1
005dc608  c2 01 55 e1                                      cmp r5, r2, asr #3
005dc60c  1a 00 00 3a                                      blo #0x5dc67c
005dc610  00 30 9a e5                                      ldr r3, [sl]
005dc614  38 20 9d e5                                      ldr r2, [sp, #0x38]
005dc618  00 00 53 e3                                      cmp r3, #0
005dc61c  28 30 8d e5                                      str r3, [sp, #0x28]
005dc620  00 10 93 15                                      ldrne r1, [r3]
005dc624  01 10 81 12                                      addne r1, r1, #1
005dc628  00 10 83 15                                      strne r1, [r3]
005dc62c  1c 10 94 15                                      ldrne r1, [r4, #0x1c]
005dc630  20 30 94 e5                                      ldr r3, [r4, #0x20]
005dc634  2c 20 8d e5                                      str r2, [sp, #0x2c]
005dc638  03 00 51 e1                                      cmp r1, r3
005dc63c  2d 00 00 0a                                      beq #0x5dc6f8
005dc640  28 30 9d e5                                      ldr r3, [sp, #0x28]
005dc644  28 60 8d e2                                      add r6, sp, #0x28
005dc648  00 30 81 e5                                      str r3, [r1]
005dc64c  00 00 53 e3                                      cmp r3, #0
005dc650  00 20 93 15                                      ldrne r2, [r3]
005dc654  01 20 82 12                                      addne r2, r2, #1
005dc658  00 20 83 15                                      strne r2, [r3]
005dc65c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005dc660  04 30 81 e5                                      str r3, [r1, #4]
005dc664  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
005dc668  08 30 83 e2                                      add r3, r3, #8
005dc66c  1c 30 84 e5                                      str r3, [r4, #0x1c]
005dc670  06 00 a0 e1                                      mov r0, r6
005dc674  0f d7 f5 eb                                      bl #0x3522b8
005dc678  0e 00 00 ea                                      b #0x5dc6b8
005dc67c  00 20 9a e5                                      ldr r2, [sl]
005dc680  38 70 9d e5                                      ldr r7, [sp, #0x38]
005dc684  48 00 8d e2                                      add r0, sp, #0x48
005dc688  40 20 8d e5                                      str r2, [sp, #0x40]
005dc68c  00 00 52 e3                                      cmp r2, #0
005dc690  00 10 92 15                                      ldrne r1, [r2]
005dc694  85 61 83 e0                                      add r6, r3, r5, lsl #3
005dc698  01 10 81 12                                      addne r1, r1, #1
005dc69c  00 10 82 15                                      strne r1, [r2]
005dc6a0  40 20 9d 15                                      ldrne r2, [sp, #0x40]
005dc6a4  85 11 93 e7                                      ldr r1, [r3, r5, lsl #3]
005dc6a8  08 10 20 e5                                      str r1, [r0, #-8]!
005dc6ac  85 21 83 e7                                      str r2, [r3, r5, lsl #3]
005dc6b0  00 d7 f5 eb                                      bl #0x3522b8
005dc6b4  04 70 86 e5                                      str r7, [r6, #4]
005dc6b8  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
005dc6bc  18 00 94 e5                                      ldr r0, [r4, #0x18]
005dc6c0  b4 32 d4 e1                                      ldrh r3, [r4, #0x24]
005dc6c4  02 20 60 e0                                      rsb r2, r0, r2
005dc6c8  c2 21 a0 e1                                      asr r2, r2, #3
005dc6cc  01 30 83 e2                                      add r3, r3, #1
005dc6d0  73 30 ff e6                                      uxth r3, r3
005dc6d4  02 00 53 e1                                      cmp r3, r2
005dc6d8  b4 32 c4 e1                                      strh r3, [r4, #0x24]
005dc6dc  02 00 00 2a                                      bhs #0x5dc6ec
005dc6e0  83 11 90 e7                                      ldr r1, [r0, r3, lsl #3]
005dc6e4  00 00 51 e3                                      cmp r1, #0
005dc6e8  f7 ff ff 1a                                      bne #0x5dc6cc
005dc6ec  05 00 a0 e1                                      mov r0, r5
005dc6f0  4c d0 8d e2                                      add sp, sp, #0x4c
005dc6f4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005dc6f8  28 60 8d e2                                      add r6, sp, #0x28
005dc6fc  01 c0 a0 e3                                      mov ip, #1
005dc700  18 00 84 e2                                      add r0, r4, #0x18
005dc704  06 20 a0 e1                                      mov r2, r6
005dc708  44 30 8d e2                                      add r3, sp, #0x44
005dc70c  04 c0 8d e5                                      str ip, [sp, #4]
005dc710  00 c0 8d e5                                      str ip, [sp]
005dc714  04 f0 ff eb                                      bl #0x5d872c
005dc718  d4 ff ff ea                                      b #0x5dc670
