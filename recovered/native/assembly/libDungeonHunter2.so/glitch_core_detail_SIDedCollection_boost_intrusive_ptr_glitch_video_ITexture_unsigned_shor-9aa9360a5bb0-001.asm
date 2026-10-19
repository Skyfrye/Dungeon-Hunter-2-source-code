; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e8398, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE7idBeginEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::idBegin() const
; decoder-mode: arm
005e8398  08 00 90 e5                                      ldr r0, [r0, #8]
005e839c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e83a0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE5idEndEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::idEnd() const
; decoder-mode: arm
005e83a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e83a4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE4sizeEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::size() const
; decoder-mode: arm
005e83a4  b6 02 d0 e1                                      ldrh r0, [r0, #0x26]
005e83a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e83ac, declared_size=56, range_size=56, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE3getEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::get(unsigned short) const
; decoder-mode: arm
005e83ac  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
005e83b0  18 20 90 e5                                      ldr r2, [r0, #0x18]
005e83b4  20 30 9f e5                                      ldr r3, [pc, #0x20]
005e83b8  0c c0 62 e0                                      rsb ip, r2, ip
005e83bc  cc 01 51 e1                                      cmp r1, ip, asr #3
005e83c0  03 30 8f e0                                      add r3, pc, r3
005e83c4  01 00 00 2a                                      bhs #0x5e83d0
005e83c8  81 01 82 e0                                      add r0, r2, r1, lsl #3
005e83cc  1e ff 2f e1                                      bx lr
005e83d0  08 20 9f e5                                      ldr r2, [pc, #8]
005e83d4  02 00 93 e7                                      ldr r0, [r3, r2]
005e83d8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005e83dc  d0 c6 3a 00 e8 10 00 00                          .byte 0xd0, 0xc6, 0x3a, 0x00, 0xe8, 0x10, 0x00, 0x00

; FUNCTION 0x005e83e4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE13getPropertiesEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::getProperties(unsigned short) const
; decoder-mode: arm
005e83e4  18 30 90 e5                                      ldr r3, [r0, #0x18]
005e83e8  81 31 83 e0                                      add r3, r3, r1, lsl #3
005e83ec  04 00 93 e5                                      ldr r0, [r3, #4]
005e83f0  18 00 80 e2                                      add r0, r0, #0x18
005e83f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e83f8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE13getPropertiesEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::getProperties(unsigned short)
; decoder-mode: arm
005e83f8  18 30 90 e5                                      ldr r3, [r0, #0x18]
005e83fc  81 31 83 e0                                      add r3, r3, r1, lsl #3
005e8400  04 00 93 e5                                      ldr r0, [r3, #4]
005e8404  18 00 80 e2                                      add r0, r0, #0x18
005e8408  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e840c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEEC2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection()
; decoder-mode: arm
005e840c  00 20 a0 e3                                      mov r2, #0
005e8410  00 30 a0 e1                                      mov r3, r0
005e8414  b6 22 c0 e1                                      strh r2, [r0, #0x26]
005e8418  04 20 80 e5                                      str r2, [r0, #4]
005e841c  00 20 c0 e5                                      strb r2, [r0]
005e8420  08 00 83 e5                                      str r0, [r3, #8]
005e8424  0c 00 83 e5                                      str r0, [r3, #0xc]
005e8428  10 20 80 e5                                      str r2, [r0, #0x10]
005e842c  18 20 80 e5                                      str r2, [r0, #0x18]
005e8430  1c 20 80 e5                                      str r2, [r0, #0x1c]
005e8434  20 20 80 e5                                      str r2, [r0, #0x20]
005e8438  b4 22 c0 e1                                      strh r2, [r0, #0x24]
005e843c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e8440, declared_size=52, range_size=52, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEEC1Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection()
; decoder-mode: arm
005e8440  00 20 a0 e3                                      mov r2, #0
005e8444  00 30 a0 e1                                      mov r3, r0
005e8448  b6 22 c0 e1                                      strh r2, [r0, #0x26]
005e844c  04 20 80 e5                                      str r2, [r0, #4]
005e8450  00 20 c0 e5                                      strb r2, [r0]
005e8454  08 00 83 e5                                      str r0, [r3, #8]
005e8458  0c 00 83 e5                                      str r0, [r3, #0xc]
005e845c  10 20 80 e5                                      str r2, [r0, #0x10]
005e8460  18 20 80 e5                                      str r2, [r0, #0x18]
005e8464  1c 20 80 e5                                      str r2, [r0, #0x1c]
005e8468  20 20 80 e5                                      str r2, [r0, #0x20]
005e846c  b4 22 c0 e1                                      strh r2, [r0, #0x24]
005e8470  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e8474, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE9getNextIdEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::getNextId() const
; decoder-mode: arm
005e8474  b4 02 d0 e1                                      ldrh r0, [r0, #0x24]
005e8478  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e847c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE8getMaxIDEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::getMaxID() const
; decoder-mode: arm
005e847c  18 30 90 e5                                      ldr r3, [r0, #0x18]
005e8480  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
005e8484  00 00 63 e0                                      rsb r0, r3, r0
005e8488  c0 01 a0 e1                                      asr r0, r0, #3
005e848c  01 00 40 e2                                      sub r0, r0, #1
005e8490  70 00 ff e6                                      uxth r0, r0
005e8494  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e8ed8, declared_size=84, range_size=84, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE5getIdEPKc
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::getId(char const*) const
; decoder-mode: arm
005e8ed8  30 40 2d e9                                      push {r4, r5, lr}
005e8edc  0c d0 4d e2                                      sub sp, sp, #0xc
005e8ee0  00 30 a0 e3                                      mov r3, #0
005e8ee4  00 10 8d e5                                      str r1, [sp]
005e8ee8  0d 10 a0 e1                                      mov r1, sp
005e8eec  04 30 cd e5                                      strb r3, [sp, #4]
005e8ef0  00 40 a0 e1                                      mov r4, r0
005e8ef4  2e ff ff eb                                      bl #0x5e8bb4
005e8ef8  04 30 dd e5                                      ldrb r3, [sp, #4]
005e8efc  00 50 a0 e1                                      mov r5, r0
005e8f00  00 00 53 e3                                      cmp r3, #0
005e8f04  03 00 00 0a                                      beq #0x5e8f18
005e8f08  00 00 9d e5                                      ldr r0, [sp]
005e8f0c  00 00 50 e3                                      cmp r0, #0
005e8f10  00 00 00 0a                                      beq #0x5e8f18
005e8f14  67 94 f4 eb                                      bl #0x30e0b8
005e8f18  04 00 55 e1                                      cmp r5, r4
005e8f1c  ff 0f 0f 03                                      movweq r0, #0xffff
005e8f20  b4 03 d5 11                                      ldrhne r0, [r5, #0x34]
005e8f24  0c d0 8d e2                                      add sp, sp, #0xc
005e8f28  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005e9348, declared_size=352, range_size=352, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE6renameEtPKcb
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::rename(unsigned short, char const*, bool)
; decoder-mode: arm
005e9348  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e934c  4c 41 9f e5                                      ldr r4, [pc, #0x14c]
005e9350  4c 71 9f e5                                      ldr r7, [pc, #0x14c]
005e9354  00 50 a0 e1                                      mov r5, r0
005e9358  04 40 8f e0                                      add r4, pc, r4
005e935c  07 00 94 e7                                      ldr r0, [r4, r7]
005e9360  18 90 95 e5                                      ldr sb, [r5, #0x18]
005e9364  1c c0 95 e5                                      ldr ip, [r5, #0x1c]
005e9368  00 00 90 e5                                      ldr r0, [r0]
005e936c  64 d0 4d e2                                      sub sp, sp, #0x64
005e9370  0c c0 69 e0                                      rsb ip, sb, ip
005e9374  cc 01 51 e1                                      cmp r1, ip, asr #3
005e9378  01 60 a0 e1                                      mov r6, r1
005e937c  5c 00 8d e5                                      str r0, [sp, #0x5c]
005e9380  03 b0 a0 e1                                      mov fp, r3
005e9384  3c 00 00 2a                                      bhs #0x5e947c
005e9388  81 31 99 e7                                      ldr r3, [sb, r1, lsl #3]
005e938c  81 91 89 e0                                      add sb, sb, r1, lsl #3
005e9390  00 00 53 e3                                      cmp r3, #0
005e9394  38 00 00 0a                                      beq #0x5e947c
005e9398  3c 80 8d e2                                      add r8, sp, #0x3c
005e939c  08 00 a0 e1                                      mov r0, r8
005e93a0  10 10 a0 e3                                      mov r1, #0x10
005e93a4  00 20 8d e5                                      str r2, [sp]
005e93a8  4c 80 8d e5                                      str r8, [sp, #0x4c]
005e93ac  50 80 8d e5                                      str r8, [sp, #0x50]
005e93b0  7c dd f4 eb                                      bl #0x3209a8
005e93b4  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005e93b8  00 c0 a0 e3                                      mov ip, #0
005e93bc  27 e0 a0 e3                                      mov lr, #0x27
005e93c0  00 c0 c3 e5                                      strb ip, [r3]
005e93c4  14 a0 8d e2                                      add sl, sp, #0x14
005e93c8  54 e0 8d e5                                      str lr, [sp, #0x54]
005e93cc  00 e0 9d e5                                      ldr lr, [sp]
005e93d0  08 30 8a e2                                      add r3, sl, #8
005e93d4  03 00 a0 e1                                      mov r0, r3
005e93d8  50 10 9d e5                                      ldr r1, [sp, #0x50]
005e93dc  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005e93e0  14 e0 8d e5                                      str lr, [sp, #0x14]
005e93e4  18 c0 cd e5                                      strb ip, [sp, #0x18]
005e93e8  04 c0 cd e5                                      strb ip, [sp, #4]
005e93ec  2c 30 8d e5                                      str r3, [sp, #0x2c]
005e93f0  30 30 8d e5                                      str r3, [sp, #0x30]
005e93f4  b8 65 cd e1                                      strh r6, [sp, #0x58]
005e93f8  fd f2 f4 eb                                      bl #0x325ff4
005e93fc  54 30 9d e5                                      ldr r3, [sp, #0x54]
005e9400  05 10 a0 e1                                      mov r1, r5
005e9404  0a 20 a0 e1                                      mov r2, sl
005e9408  34 30 8d e5                                      str r3, [sp, #0x34]
005e940c  b8 35 dd e1                                      ldrh r3, [sp, #0x58]
005e9410  08 00 8d e2                                      add r0, sp, #8
005e9414  b8 33 cd e1                                      strh r3, [sp, #0x38]
005e9418  ff fd ff eb                                      bl #0x5e8c1c
005e941c  0a 00 a0 e1                                      mov r0, sl
005e9420  a6 ff ff eb                                      bl #0x5e92c0
005e9424  50 00 9d e5                                      ldr r0, [sp, #0x50]
005e9428  08 00 50 e1                                      cmp r0, r8
005e942c  02 00 00 0a                                      beq #0x5e943c
005e9430  00 00 50 e3                                      cmp r0, #0
005e9434  00 00 00 0a                                      beq #0x5e943c
005e9438  04 9c f4 eb                                      bl #0x310450
005e943c  0c 30 dd e5                                      ldrb r3, [sp, #0xc]
005e9440  00 00 53 e3                                      cmp r3, #0
005e9444  0c 00 00 0a                                      beq #0x5e947c
005e9448  04 30 99 e5                                      ldr r3, [sb, #4]
005e944c  60 10 8d e2                                      add r1, sp, #0x60
005e9450  05 00 a0 e1                                      mov r0, r5
005e9454  50 30 21 e5                                      str r3, [r1, #-0x50]!
005e9458  aa ff ff eb                                      bl #0x5e9308
005e945c  00 00 5b e3                                      cmp fp, #0
005e9460  08 30 9d 15                                      ldrne r3, [sp, #8]
005e9464  01 20 a0 13                                      movne r2, #1
005e9468  01 00 a0 e3                                      mov r0, #1
005e946c  14 20 c3 15                                      strbne r2, [r3, #0x14]
005e9470  08 30 9d e5                                      ldr r3, [sp, #8]
005e9474  04 30 89 e5                                      str r3, [sb, #4]
005e9478  00 00 00 ea                                      b #0x5e9480
005e947c  00 00 a0 e3                                      mov r0, #0
005e9480  07 30 94 e7                                      ldr r3, [r4, r7]
005e9484  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005e9488  00 30 93 e5                                      ldr r3, [r3]
005e948c  03 00 52 e1                                      cmp r2, r3
005e9490  01 00 00 1a                                      bne #0x5e949c
005e9494  64 d0 8d e2                                      add sp, sp, #0x64
005e9498  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e949c  9b 93 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005e94a0  38 b7 3a 00 ac 40 00 00                          .byte 0x38, 0xb7, 0x3a, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005e97a0, declared_size=64, range_size=64, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEED2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::~SIDedCollection()
; decoder-mode: arm
005e97a0  10 40 2d e9                                      push {r4, lr}
005e97a4  00 40 a0 e1                                      mov r4, r0
005e97a8  18 00 80 e2                                      add r0, r0, #0x18
005e97ac  e8 ff ff eb                                      bl #0x5e9754
005e97b0  10 30 94 e5                                      ldr r3, [r4, #0x10]
005e97b4  00 00 53 e3                                      cmp r3, #0
005e97b8  06 00 00 0a                                      beq #0x5e97d8
005e97bc  04 00 a0 e1                                      mov r0, r4
005e97c0  04 10 94 e5                                      ldr r1, [r4, #4]
005e97c4  a1 fe ff eb                                      bl #0x5e9250
005e97c8  00 30 a0 e3                                      mov r3, #0
005e97cc  10 30 84 e5                                      str r3, [r4, #0x10]
005e97d0  18 00 84 e9                                      stmib r4, {r3, r4}
005e97d4  0c 40 84 e5                                      str r4, [r4, #0xc]
005e97d8  04 00 a0 e1                                      mov r0, r4
005e97dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005e9e7c, declared_size=252, range_size=252, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE6removeEtb
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)
; decoder-mode: arm
005e9e7c  70 40 2d e9                                      push {r4, r5, r6, lr}
005e9e80  00 40 a0 e1                                      mov r4, r0
005e9e84  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
005e9e88  18 00 90 e5                                      ldr r0, [r0, #0x18]
005e9e8c  10 d0 4d e2                                      sub sp, sp, #0x10
005e9e90  01 50 a0 e1                                      mov r5, r1
005e9e94  03 30 60 e0                                      rsb r3, r0, r3
005e9e98  c3 01 51 e1                                      cmp r1, r3, asr #3
005e9e9c  2d 00 00 2a                                      bhs #0x5e9f58
005e9ea0  81 31 90 e7                                      ldr r3, [r0, r1, lsl #3]
005e9ea4  81 61 80 e0                                      add r6, r0, r1, lsl #3
005e9ea8  00 00 53 e3                                      cmp r3, #0
005e9eac  29 00 00 0a                                      beq #0x5e9f58
005e9eb0  04 30 93 e5                                      ldr r3, [r3, #4]
005e9eb4  01 00 53 e3                                      cmp r3, #1
005e9eb8  01 00 00 0a                                      beq #0x5e9ec4
005e9ebc  00 00 52 e3                                      cmp r2, #0
005e9ec0  24 00 00 0a                                      beq #0x5e9f58
005e9ec4  04 30 96 e5                                      ldr r3, [r6, #4]
005e9ec8  10 10 8d e2                                      add r1, sp, #0x10
005e9ecc  04 00 a0 e1                                      mov r0, r4
005e9ed0  04 30 21 e5                                      str r3, [r1, #-4]!
005e9ed4  0b fd ff eb                                      bl #0x5e9308
005e9ed8  06 00 a0 e1                                      mov r0, r6
005e9edc  db ff ff eb                                      bl #0x5e9e50
005e9ee0  b4 22 d4 e1                                      ldrh r2, [r4, #0x24]
005e9ee4  b6 32 d4 e1                                      ldrh r3, [r4, #0x26]
005e9ee8  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
005e9eec  18 10 94 e5                                      ldr r1, [r4, #0x18]
005e9ef0  05 00 52 e1                                      cmp r2, r5
005e9ef4  01 30 43 e2                                      sub r3, r3, #1
005e9ef8  b4 52 c4 81                                      strhhi r5, [r4, #0x24]
005e9efc  01 00 50 e1                                      cmp r0, r1
005e9f00  b6 32 c4 e1                                      strh r3, [r4, #0x26]
005e9f04  19 00 00 0a                                      beq #0x5e9f70
005e9f08  00 30 a0 e1                                      mov r3, r0
005e9f0c  08 20 13 e5                                      ldr r2, [r3, #-8]
005e9f10  00 00 52 e3                                      cmp r2, #0
005e9f14  12 00 00 0a                                      beq #0x5e9f64
005e9f18  00 30 63 e0                                      rsb r3, r3, r0
005e9f1c  00 10 61 e0                                      rsb r1, r1, r0
005e9f20  c3 31 a0 e1                                      asr r3, r3, #3
005e9f24  c1 11 63 e0                                      rsb r1, r3, r1, asr #3
005e9f28  18 00 84 e2                                      add r0, r4, #0x18
005e9f2c  00 30 a0 e3                                      mov r3, #0
005e9f30  04 20 8d e2                                      add r2, sp, #4
005e9f34  08 30 8d e5                                      str r3, [sp, #8]
005e9f38  04 30 8d e5                                      str r3, [sp, #4]
005e9f3c  9f ff ff eb                                      bl #0x5e9dc0
005e9f40  04 00 9d e5                                      ldr r0, [sp, #4]
005e9f44  00 00 50 e3                                      cmp r0, #0
005e9f48  08 00 00 0a                                      beq #0x5e9f70
005e9f4c  8c cd f4 eb                                      bl #0x31d584
005e9f50  01 00 a0 e3                                      mov r0, #1
005e9f54  00 00 00 ea                                      b #0x5e9f5c
005e9f58  00 00 a0 e3                                      mov r0, #0
005e9f5c  10 d0 8d e2                                      add sp, sp, #0x10
005e9f60  70 80 bd e8                                      pop {r4, r5, r6, pc}
005e9f64  08 30 43 e2                                      sub r3, r3, #8
005e9f68  03 00 51 e1                                      cmp r1, r3
005e9f6c  e6 ff ff 1a                                      bne #0x5e9f0c
005e9f70  01 00 a0 e3                                      mov r0, #1
005e9f74  f8 ff ff ea                                      b #0x5e9f5c

; FUNCTION 0x005e9f78, declared_size=200, range_size=200, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE9removeAllEb
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)
; decoder-mode: arm
005e9f78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e9f7c  08 30 90 e5                                      ldr r3, [r0, #8]
005e9f80  00 50 a0 e1                                      mov r5, r0
005e9f84  01 70 a0 e1                                      mov r7, r1
005e9f88  03 00 55 e1                                      cmp r5, r3
005e9f8c  00 60 a0 e3                                      mov r6, #0
005e9f90  11 00 00 0a                                      beq #0x5e9fdc
005e9f94  0c 40 93 e5                                      ldr r4, [r3, #0xc]
005e9f98  00 00 54 e3                                      cmp r4, #0
005e9f9c  01 00 00 1a                                      bne #0x5e9fa8
005e9fa0  0f 00 00 ea                                      b #0x5e9fe4
005e9fa4  02 40 a0 e1                                      mov r4, r2
005e9fa8  08 20 94 e5                                      ldr r2, [r4, #8]
005e9fac  00 00 52 e3                                      cmp r2, #0
005e9fb0  fb ff ff 1a                                      bne #0x5e9fa4
005e9fb4  b4 13 d3 e1                                      ldrh r1, [r3, #0x34]
005e9fb8  05 00 a0 e1                                      mov r0, r5
005e9fbc  07 20 a0 e1                                      mov r2, r7
005e9fc0  ad ff ff eb                                      bl #0x5e9e7c
005e9fc4  00 00 50 e3                                      cmp r0, #0
005e9fc8  01 60 86 12                                      addne r6, r6, #1
005e9fcc  76 60 ff 16                                      uxthne r6, r6
005e9fd0  04 30 a0 e1                                      mov r3, r4
005e9fd4  03 00 55 e1                                      cmp r5, r3
005e9fd8  ed ff ff 1a                                      bne #0x5e9f94
005e9fdc  06 00 a0 e1                                      mov r0, r6
005e9fe0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005e9fe4  04 20 93 e5                                      ldr r2, [r3, #4]
005e9fe8  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005e9fec  01 00 53 e1                                      cmp r3, r1
005e9ff0  03 40 a0 11                                      movne r4, r3
005e9ff4  00 10 a0 13                                      movne r1, #0
005e9ff8  05 00 00 1a                                      bne #0x5ea014
005e9ffc  02 40 a0 e1                                      mov r4, r2
005ea000  04 20 92 e5                                      ldr r2, [r2, #4]
005ea004  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005ea008  04 00 51 e1                                      cmp r1, r4
005ea00c  fa ff ff 0a                                      beq #0x5e9ffc
005ea010  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005ea014  02 00 51 e1                                      cmp r1, r2
005ea018  02 40 a0 11                                      movne r4, r2
005ea01c  b4 13 d3 e1                                      ldrh r1, [r3, #0x34]
005ea020  05 00 a0 e1                                      mov r0, r5
005ea024  07 20 a0 e1                                      mov r2, r7
005ea028  93 ff ff eb                                      bl #0x5e9e7c
005ea02c  00 00 50 e3                                      cmp r0, #0
005ea030  01 60 86 12                                      addne r6, r6, #1
005ea034  76 60 ff 16                                      uxthne r6, r6
005ea038  04 30 a0 e1                                      mov r3, r4
005ea03c  e4 ff ff ea                                      b #0x5e9fd4

; FUNCTION 0x005ea040, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE9removeAllEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll()
; decoder-mode: arm
005ea040  00 10 a0 e3                                      mov r1, #0
005ea044  cb ff ff ea                                      b #0x5e9f78

; FUNCTION 0x005ea048, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE12removeUnusedEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeUnused()
; decoder-mode: arm
005ea048  00 10 a0 e3                                      mov r1, #0
005ea04c  c9 ff ff ea                                      b #0x5e9f78

; FUNCTION 0x005ea220, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE6removeEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short)
; decoder-mode: arm
005ea220  00 20 a0 e3                                      mov r2, #0
005ea224  14 ff ff ea                                      b #0x5e9e7c

; FUNCTION 0x005ea53c, declared_size=552, range_size=552, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE6insertEPKcRKS7_b
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)
; decoder-mode: arm
005ea53c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ea540  14 52 9f e5                                      ldr r5, [pc, #0x214]
005ea544  14 72 9f e5                                      ldr r7, [pc, #0x214]
005ea548  00 40 a0 e1                                      mov r4, r0
005ea54c  05 50 8f e0                                      add r5, pc, r5
005ea550  07 c0 95 e7                                      ldr ip, [r5, r7]
005ea554  b6 02 d0 e1                                      ldrh r0, [r0, #0x26]
005ea558  74 d0 4d e2                                      sub sp, sp, #0x74
005ea55c  00 c0 9c e5                                      ldr ip, [ip]
005ea560  4c 80 8d e2                                      add r8, sp, #0x4c
005ea564  01 00 80 e2                                      add r0, r0, #1
005ea568  10 10 8d e5                                      str r1, [sp, #0x10]
005ea56c  b6 02 c4 e1                                      strh r0, [r4, #0x26]
005ea570  10 10 a0 e3                                      mov r1, #0x10
005ea574  6c c0 8d e5                                      str ip, [sp, #0x6c]
005ea578  08 00 a0 e1                                      mov r0, r8
005ea57c  5c 80 8d e5                                      str r8, [sp, #0x5c]
005ea580  60 80 8d e5                                      str r8, [sp, #0x60]
005ea584  03 90 a0 e1                                      mov sb, r3
005ea588  02 b0 a0 e1                                      mov fp, r2
005ea58c  b4 62 d4 e1                                      ldrh r6, [r4, #0x24]
005ea590  04 d9 f4 eb                                      bl #0x3209a8
005ea594  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005ea598  00 c0 a0 e3                                      mov ip, #0
005ea59c  27 e0 a0 e3                                      mov lr, #0x27
005ea5a0  00 c0 c3 e5                                      strb ip, [r3]
005ea5a4  24 a0 8d e2                                      add sl, sp, #0x24
005ea5a8  64 e0 8d e5                                      str lr, [sp, #0x64]
005ea5ac  10 e0 9d e5                                      ldr lr, [sp, #0x10]
005ea5b0  08 30 8a e2                                      add r3, sl, #8
005ea5b4  03 00 a0 e1                                      mov r0, r3
005ea5b8  60 10 9d e5                                      ldr r1, [sp, #0x60]
005ea5bc  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005ea5c0  24 e0 8d e5                                      str lr, [sp, #0x24]
005ea5c4  28 c0 cd e5                                      strb ip, [sp, #0x28]
005ea5c8  14 c0 cd e5                                      strb ip, [sp, #0x14]
005ea5cc  3c 30 8d e5                                      str r3, [sp, #0x3c]
005ea5d0  40 30 8d e5                                      str r3, [sp, #0x40]
005ea5d4  b8 66 cd e1                                      strh r6, [sp, #0x68]
005ea5d8  85 ee f4 eb                                      bl #0x325ff4
005ea5dc  64 30 9d e5                                      ldr r3, [sp, #0x64]
005ea5e0  04 10 a0 e1                                      mov r1, r4
005ea5e4  0a 20 a0 e1                                      mov r2, sl
005ea5e8  44 30 8d e5                                      str r3, [sp, #0x44]
005ea5ec  b8 36 dd e1                                      ldrh r3, [sp, #0x68]
005ea5f0  18 00 8d e2                                      add r0, sp, #0x18
005ea5f4  b8 34 cd e1                                      strh r3, [sp, #0x48]
005ea5f8  87 f9 ff eb                                      bl #0x5e8c1c
005ea5fc  0a 00 a0 e1                                      mov r0, sl
005ea600  2e fb ff eb                                      bl #0x5e92c0
005ea604  60 00 9d e5                                      ldr r0, [sp, #0x60]
005ea608  08 00 50 e1                                      cmp r0, r8
005ea60c  02 00 00 0a                                      beq #0x5ea61c
005ea610  00 00 50 e3                                      cmp r0, #0
005ea614  00 00 00 0a                                      beq #0x5ea61c
005ea618  8c 97 f4 eb                                      bl #0x310450
005ea61c  00 00 59 e3                                      cmp sb, #0
005ea620  18 30 9d 15                                      ldrne r3, [sp, #0x18]
005ea624  01 20 a0 13                                      movne r2, #1
005ea628  14 20 c3 15                                      strbne r2, [r3, #0x14]
005ea62c  18 30 94 e5                                      ldr r3, [r4, #0x18]
005ea630  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
005ea634  01 20 63 e0                                      rsb r2, r3, r1
005ea638  c2 01 56 e1                                      cmp r6, r2, asr #3
005ea63c  1b 00 00 3a                                      blo #0x5ea6b0
005ea640  00 30 9b e5                                      ldr r3, [fp]
005ea644  18 20 9d e5                                      ldr r2, [sp, #0x18]
005ea648  00 00 53 e3                                      cmp r3, #0
005ea64c  08 30 8d e5                                      str r3, [sp, #8]
005ea650  04 10 93 15                                      ldrne r1, [r3, #4]
005ea654  01 10 81 12                                      addne r1, r1, #1
005ea658  04 10 83 15                                      strne r1, [r3, #4]
005ea65c  1c 10 94 15                                      ldrne r1, [r4, #0x1c]
005ea660  20 30 94 e5                                      ldr r3, [r4, #0x20]
005ea664  0c 20 8d e5                                      str r2, [sp, #0xc]
005ea668  03 00 51 e1                                      cmp r1, r3
005ea66c  31 00 00 0a                                      beq #0x5ea738
005ea670  08 30 9d e5                                      ldr r3, [sp, #8]
005ea674  00 30 81 e5                                      str r3, [r1]
005ea678  00 00 53 e3                                      cmp r3, #0
005ea67c  04 20 93 15                                      ldrne r2, [r3, #4]
005ea680  01 20 82 12                                      addne r2, r2, #1
005ea684  04 20 83 15                                      strne r2, [r3, #4]
005ea688  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005ea68c  04 30 81 e5                                      str r3, [r1, #4]
005ea690  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
005ea694  08 30 83 e2                                      add r3, r3, #8
005ea698  1c 30 84 e5                                      str r3, [r4, #0x1c]
005ea69c  08 00 9d e5                                      ldr r0, [sp, #8]
005ea6a0  00 00 50 e3                                      cmp r0, #0
005ea6a4  0e 00 00 0a                                      beq #0x5ea6e4
005ea6a8  b5 cb f4 eb                                      bl #0x31d584
005ea6ac  0c 00 00 ea                                      b #0x5ea6e4
005ea6b0  00 20 9b e5                                      ldr r2, [fp]
005ea6b4  18 a0 9d e5                                      ldr sl, [sp, #0x18]
005ea6b8  86 81 83 e0                                      add r8, r3, r6, lsl #3
005ea6bc  00 00 52 e3                                      cmp r2, #0
005ea6c0  04 10 92 15                                      ldrne r1, [r2, #4]
005ea6c4  01 10 81 12                                      addne r1, r1, #1
005ea6c8  04 10 82 15                                      strne r1, [r2, #4]
005ea6cc  86 01 93 e7                                      ldr r0, [r3, r6, lsl #3]
005ea6d0  86 21 83 e7                                      str r2, [r3, r6, lsl #3]
005ea6d4  00 00 50 e3                                      cmp r0, #0
005ea6d8  00 00 00 0a                                      beq #0x5ea6e0
005ea6dc  a8 cb f4 eb                                      bl #0x31d584
005ea6e0  04 a0 88 e5                                      str sl, [r8, #4]
005ea6e4  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
005ea6e8  18 00 94 e5                                      ldr r0, [r4, #0x18]
005ea6ec  b4 32 d4 e1                                      ldrh r3, [r4, #0x24]
005ea6f0  02 20 60 e0                                      rsb r2, r0, r2
005ea6f4  c2 21 a0 e1                                      asr r2, r2, #3
005ea6f8  01 30 83 e2                                      add r3, r3, #1
005ea6fc  73 30 ff e6                                      uxth r3, r3
005ea700  02 00 53 e1                                      cmp r3, r2
005ea704  b4 32 c4 e1                                      strh r3, [r4, #0x24]
005ea708  02 00 00 2a                                      bhs #0x5ea718
005ea70c  83 11 90 e7                                      ldr r1, [r0, r3, lsl #3]
005ea710  00 00 51 e3                                      cmp r1, #0
005ea714  f7 ff ff 1a                                      bne #0x5ea6f8
005ea718  07 30 95 e7                                      ldr r3, [r5, r7]
005ea71c  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
005ea720  06 00 a0 e1                                      mov r0, r6
005ea724  00 30 93 e5                                      ldr r3, [r3]
005ea728  03 00 52 e1                                      cmp r2, r3
005ea72c  09 00 00 1a                                      bne #0x5ea758
005ea730  74 d0 8d e2                                      add sp, sp, #0x74
005ea734  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ea738  01 c0 a0 e3                                      mov ip, #1
005ea73c  18 00 84 e2                                      add r0, r4, #0x18
005ea740  08 20 8d e2                                      add r2, sp, #8
005ea744  20 30 8d e2                                      add r3, sp, #0x20
005ea748  04 c0 8d e5                                      str ip, [sp, #4]
005ea74c  00 c0 8d e5                                      str ip, [sp]
005ea750  91 fb ff eb                                      bl #0x5e959c
005ea754  d0 ff ff ea                                      b #0x5ea69c
005ea758  ec 8e f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005ea75c  44 a5 3a 00 ac 40 00 00                          .byte 0x44, 0xa5, 0x3a, 0x00, 0xac, 0x40, 0x00, 0x00
