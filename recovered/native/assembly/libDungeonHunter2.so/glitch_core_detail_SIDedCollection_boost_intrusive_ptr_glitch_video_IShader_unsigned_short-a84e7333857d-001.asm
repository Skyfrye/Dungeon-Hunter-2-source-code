; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e5ca4, declared_size=116, range_size=116, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry* std::priv
; alias: _ZNSt4priv6__copyIPN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video7IShaderEEEtLb0ENS7_6detail13shadermanager17SShaderPropertiesENS3_15sidedcollection12SValueTraitsEE6SEntryESH_iEET0_T_SJ_SI_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry* std::priv::__copy<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005e5ca4  01 10 60 e0                                      rsb r1, r0, r1
005e5ca8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e5cac  c1 51 a0 e1                                      asr r5, r1, #3
005e5cb0  00 00 55 e3                                      cmp r5, #0
005e5cb4  00 40 a0 e1                                      mov r4, r0
005e5cb8  02 70 a0 e1                                      mov r7, r2
005e5cbc  13 00 00 da                                      ble #0x5e5d10
005e5cc0  05 80 a0 e1                                      mov r8, r5
005e5cc4  00 60 a0 e3                                      mov r6, #0
005e5cc8  06 30 94 e7                                      ldr r3, [r4, r6]
005e5ccc  00 00 53 e3                                      cmp r3, #0
005e5cd0  04 20 93 15                                      ldrne r2, [r3, #4]
005e5cd4  01 20 82 12                                      addne r2, r2, #1
005e5cd8  04 20 83 15                                      strne r2, [r3, #4]
005e5cdc  06 00 97 e7                                      ldr r0, [r7, r6]
005e5ce0  06 30 87 e7                                      str r3, [r7, r6]
005e5ce4  00 00 50 e3                                      cmp r0, #0
005e5ce8  00 00 00 0a                                      beq #0x5e5cf0
005e5cec  24 de f4 eb                                      bl #0x31d584
005e5cf0  06 30 84 e0                                      add r3, r4, r6
005e5cf4  04 20 93 e5                                      ldr r2, [r3, #4]
005e5cf8  01 80 58 e2                                      subs r8, r8, #1
005e5cfc  06 30 87 e0                                      add r3, r7, r6
005e5d00  04 20 83 e5                                      str r2, [r3, #4]
005e5d04  08 60 86 e2                                      add r6, r6, #8
005e5d08  ee ff ff 1a                                      bne #0x5e5cc8
005e5d0c  85 71 87 e0                                      add r7, r7, r5, lsl #3
005e5d10  07 00 a0 e1                                      mov r0, r7
005e5d14  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005e5d88, declared_size=116, range_size=116, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry* std::priv
; alias: _ZNSt4priv15__copy_backwardIPN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video7IShaderEEEtLb0ENS7_6detail13shadermanager17SShaderPropertiesENS3_15sidedcollection12SValueTraitsEE6SEntryESH_iEET0_T_SJ_SI_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry* std::priv::__copy_backward<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005e5d88  01 00 60 e0                                      rsb r0, r0, r1
005e5d8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e5d90  c0 41 a0 e1                                      asr r4, r0, #3
005e5d94  00 00 54 e3                                      cmp r4, #0
005e5d98  02 80 a0 e1                                      mov r8, r2
005e5d9c  14 00 00 da                                      ble #0x5e5df4
005e5da0  01 60 a0 e1                                      mov r6, r1
005e5da4  02 50 a0 e1                                      mov r5, r2
005e5da8  04 70 a0 e1                                      mov r7, r4
005e5dac  08 30 16 e5                                      ldr r3, [r6, #-8]
005e5db0  00 00 53 e3                                      cmp r3, #0
005e5db4  04 20 93 15                                      ldrne r2, [r3, #4]
005e5db8  01 20 82 12                                      addne r2, r2, #1
005e5dbc  04 20 83 15                                      strne r2, [r3, #4]
005e5dc0  08 00 15 e5                                      ldr r0, [r5, #-8]
005e5dc4  08 30 05 e5                                      str r3, [r5, #-8]
005e5dc8  00 00 50 e3                                      cmp r0, #0
005e5dcc  00 00 00 0a                                      beq #0x5e5dd4
005e5dd0  eb dd f4 eb                                      bl #0x31d584
005e5dd4  04 30 16 e5                                      ldr r3, [r6, #-4]
005e5dd8  01 70 57 e2                                      subs r7, r7, #1
005e5ddc  08 60 46 e2                                      sub r6, r6, #8
005e5de0  04 30 05 e5                                      str r3, [r5, #-4]
005e5de4  08 50 45 e2                                      sub r5, r5, #8
005e5de8  ef ff ff 1a                                      bne #0x5e5dac
005e5dec  07 30 e0 e3                                      mvn r3, #7
005e5df0  93 84 28 e0                                      mla r8, r3, r4, r8
005e5df4  08 00 a0 e1                                      mov r0, r8
005e5df8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
