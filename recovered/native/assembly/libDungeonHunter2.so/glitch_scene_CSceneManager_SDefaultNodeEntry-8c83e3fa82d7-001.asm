; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00350c98, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::CSceneManager::SDefaultNodeEntry
; alias: _ZN6glitch5scene13CSceneManager17SDefaultNodeEntryC1EPNS0_10ISceneNodeEN5boost13intrusive_ptrINS_5video9CMaterialEEEPvi
; demangled: glitch::scene::CSceneManager::SDefaultNodeEntry::SDefaultNodeEntry(glitch::scene::ISceneNode*, boost::intrusive_ptr<glitch::video::CMaterial>, void*, int)
; decoder-mode: arm
00350c98  10 40 2d e9                                      push {r4, lr}
00350c9c  0a 00 80 e8                                      stm r0, {r1, r3}
00350ca0  00 30 92 e5                                      ldr r3, [r2]
00350ca4  08 20 9d e5                                      ldr r2, [sp, #8]
00350ca8  00 40 a0 e1                                      mov r4, r0
00350cac  00 00 53 e3                                      cmp r3, #0
00350cb0  08 30 80 e5                                      str r3, [r0, #8]
00350cb4  00 10 93 15                                      ldrne r1, [r3]
00350cb8  01 10 81 12                                      addne r1, r1, #1
00350cbc  00 10 83 15                                      strne r1, [r3]
00350cc0  06 01 72 e3                                      cmn r2, #0x80000001
00350cc4  0c 20 80 15                                      strne r2, [r0, #0xc]
00350cc8  01 00 00 0a                                      beq #0x350cd4
00350ccc  04 00 a0 e1                                      mov r0, r4
00350cd0  10 80 bd e8                                      pop {r4, pc}
00350cd4  00 30 90 e5                                      ldr r3, [r0]
00350cd8  03 00 a0 e1                                      mov r0, r3
00350cdc  00 30 93 e5                                      ldr r3, [r3]
00350ce0  0f e0 a0 e1                                      mov lr, pc
00350ce4  d8 f0 93 e5                                      ldr pc, [r3, #0xd8]
00350ce8  0c 00 84 e5                                      str r0, [r4, #0xc]
00350cec  04 00 a0 e1                                      mov r0, r4
00350cf0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003539e8, declared_size=276, range_size=276, mode=arm
; class-group: glitch::scene::CSceneManager::SDefaultNodeEntry
; alias: _ZNK6glitch5scene13CSceneManager17SDefaultNodeEntryltERKS2_
; demangled: glitch::scene::CSceneManager::SDefaultNodeEntry::operator<(glitch::scene::CSceneManager::SDefaultNodeEntry const&) const
; decoder-mode: arm
003539e8  70 40 2d e9                                      push {r4, r5, r6, lr}
003539ec  08 30 91 e5                                      ldr r3, [r1, #8]
003539f0  08 d0 4d e2                                      sub sp, sp, #8
003539f4  01 40 a0 e1                                      mov r4, r1
003539f8  00 00 53 e3                                      cmp r3, #0
003539fc  04 30 8d e5                                      str r3, [sp, #4]
00353a00  00 20 93 15                                      ldrne r2, [r3]
00353a04  00 60 a0 e1                                      mov r6, r0
00353a08  01 20 82 12                                      addne r2, r2, #1
00353a0c  00 20 83 15                                      strne r2, [r3]
00353a10  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00353a14  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00353a18  03 00 52 e1                                      cmp r2, r3
00353a1c  01 50 a0 c3                                      movgt r5, #1
00353a20  01 00 00 ca                                      bgt #0x353a2c
00353a24  00 50 a0 13                                      movne r5, #0
00353a28  04 00 00 0a                                      beq #0x353a40
00353a2c  04 00 8d e2                                      add r0, sp, #4
00353a30  01 f9 ff eb                                      bl #0x351e3c
00353a34  05 00 a0 e1                                      mov r0, r5
00353a38  08 d0 8d e2                                      add sp, sp, #8
00353a3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00353a40  08 00 90 e5                                      ldr r0, [r0, #8]
00353a44  00 00 50 e3                                      cmp r0, #0
00353a48  11 00 00 0a                                      beq #0x353a94
00353a4c  04 50 9d e5                                      ldr r5, [sp, #4]
00353a50  00 00 55 e3                                      cmp r5, #0
00353a54  0a 00 00 0a                                      beq #0x353a84
00353a58  fb fe ff eb                                      bl #0x35364c
00353a5c  00 50 a0 e1                                      mov r5, r0
00353a60  04 00 9d e5                                      ldr r0, [sp, #4]
00353a64  f8 fe ff eb                                      bl #0x35364c
00353a68  00 00 55 e1                                      cmp r5, r0
00353a6c  11 00 00 0a                                      beq #0x353ab8
00353a70  08 00 96 e5                                      ldr r0, [r6, #8]
00353a74  04 10 9d e5                                      ldr r1, [sp, #4]
00353a78  59 ff ff eb                                      bl #0x3537e4
00353a7c  00 50 a0 e1                                      mov r5, r0
00353a80  e9 ff ff ea                                      b #0x353a2c
00353a84  05 00 50 e1                                      cmp r0, r5
00353a88  00 50 a0 23                                      movhs r5, #0
00353a8c  01 50 a0 33                                      movlo r5, #1
00353a90  e5 ff ff ea                                      b #0x353a2c
00353a94  04 50 9d e5                                      ldr r5, [sp, #4]
00353a98  00 00 55 e3                                      cmp r5, #0
00353a9c  f8 ff ff 1a                                      bne #0x353a84
00353aa0  00 50 96 e5                                      ldr r5, [r6]
00353aa4  00 30 94 e5                                      ldr r3, [r4]
00353aa8  03 00 55 e1                                      cmp r5, r3
00353aac  00 50 a0 23                                      movhs r5, #0
00353ab0  01 50 a0 33                                      movlo r5, #1
00353ab4  dc ff ff ea                                      b #0x353a2c
00353ab8  00 30 96 e5                                      ldr r3, [r6]
00353abc  04 10 96 e5                                      ldr r1, [r6, #4]
00353ac0  03 00 a0 e1                                      mov r0, r3
00353ac4  00 30 93 e5                                      ldr r3, [r3]
00353ac8  0f e0 a0 e1                                      mov lr, pc
00353acc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00353ad0  00 30 94 e5                                      ldr r3, [r4]
00353ad4  00 50 a0 e1                                      mov r5, r0
00353ad8  04 10 94 e5                                      ldr r1, [r4, #4]
00353adc  03 00 a0 e1                                      mov r0, r3
00353ae0  00 30 93 e5                                      ldr r3, [r3]
00353ae4  0f e0 a0 e1                                      mov lr, pc
00353ae8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00353aec  00 00 55 e1                                      cmp r5, r0
00353af0  00 50 a0 a3                                      movge r5, #0
00353af4  01 50 a0 b3                                      movlt r5, #1
00353af8  cb ff ff ea                                      b #0x353a2c
