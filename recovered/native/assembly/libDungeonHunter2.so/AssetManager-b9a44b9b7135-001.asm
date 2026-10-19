; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050a4c4, declared_size=64, range_size=64, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager15ToggleWireFrameEv
; demangled: AssetManager::ToggleWireFrame()
; decoder-mode: arm
0050a4c4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0050a4c8  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0050a4cc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0050a4d0  02 20 8f e0                                      add r2, pc, r2
0050a4d4  01 00 92 e7                                      ldr r0, [r2, r1]
0050a4d8  03 30 8f e0                                      add r3, pc, r3
0050a4dc  00 10 d3 e5                                      ldrb r1, [r3]
0050a4e0  10 20 90 e5                                      ldr r2, [r0, #0x10]
0050a4e4  01 10 21 e2                                      eor r1, r1, #1
0050a4e8  00 10 c3 e5                                      strb r1, [r3]
0050a4ec  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
0050a4f0  04 00 93 e5                                      ldr r0, [r3, #4]
0050a4f4  f1 ff ff ea                                      b #0x50a4c0
; mapping-symbol data/literal pool
0050a4f8  c0 a5 48 00 f4 37 00 00 e0 bc 4e 00              .byte 0xc0, 0xa5, 0x48, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe0, 0xbc, 0x4e, 0x00

; FUNCTION 0x0050a504, declared_size=60, range_size=60, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager13loadSceneNodeEPKcS1_bi
; demangled: AssetManager::loadSceneNode(char const*, char const*, bool, int)
; decoder-mode: arm
0050a504  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
0050a508  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0050a50c  04 40 2d e5                                      str r4, [sp, #-4]!
0050a510  00 00 8f e0                                      add r0, pc, r0
0050a514  03 40 90 e7                                      ldr r4, [r0, r3]
0050a518  00 c0 52 e2                                      subs ip, r2, #0
0050a51c  01 c0 a0 13                                      movne ip, #1
0050a520  00 30 a0 e3                                      mov r3, #0
0050a524  10 00 94 e5                                      ldr r0, [r4, #0x10]
0050a528  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0050a52c  04 c0 8d e5                                      str ip, [sp, #4]
0050a530  10 00 bd e8                                      ldm sp!, {r4}
0050a534  6f 3c f9 ea                                      b #0x3596f8
; mapping-symbol data/literal pool
0050a538  80 a5 48 00 f4 37 00 00                          .byte 0x80, 0xa5, 0x48, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0050a540, declared_size=36, range_size=36, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager16preloadSceneNodeEPKcS1_bi
; demangled: AssetManager::preloadSceneNode(char const*, char const*, bool, int)
; decoder-mode: arm
0050a540  14 30 9f e5                                      ldr r3, [pc, #0x14]
0050a544  14 00 9f e5                                      ldr r0, [pc, #0x14]
0050a548  03 30 8f e0                                      add r3, pc, r3
0050a54c  00 00 93 e7                                      ldr r0, [r3, r0]
0050a550  10 30 90 e5                                      ldr r3, [r0, #0x10]
0050a554  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
0050a558  82 3d f9 ea                                      b #0x359b68
; mapping-symbol data/literal pool
0050a55c  48 a5 48 00 f4 37 00 00                          .byte 0x48, 0xa5, 0x48, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0050a564, declared_size=204, range_size=204, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager15GetAssetManagerEv
; demangled: AssetManager::GetAssetManager()
; decoder-mode: arm
0050a564  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0050a568  ac 50 9f e5                                      ldr r5, [pc, #0xac]
0050a56c  ac 40 9f e5                                      ldr r4, [pc, #0xac]
0050a570  05 50 8f e0                                      add r5, pc, r5
0050a574  04 60 95 e5                                      ldr r6, [r5, #4]
0050a578  04 40 8f e0                                      add r4, pc, r4
0050a57c  01 60 16 e2                                      ands r6, r6, #1
0050a580  03 00 00 0a                                      beq #0x50a594
0050a584  98 00 9f e5                                      ldr r0, [pc, #0x98]
0050a588  00 00 8f e0                                      add r0, pc, r0
0050a58c  08 00 80 e2                                      add r0, r0, #8
0050a590  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0050a594  04 80 85 e2                                      add r8, r5, #4
0050a598  08 00 a0 e1                                      mov r0, r8
0050a59c  72 10 f8 eb                                      bl #0x30e76c
0050a5a0  00 00 50 e3                                      cmp r0, #0
0050a5a4  f6 ff ff 0a                                      beq #0x50a584
0050a5a8  05 70 a0 e1                                      mov r7, r5
0050a5ac  08 60 e7 e5                                      strb r6, [r7, #8]!
0050a5b0  18 20 87 e2                                      add r2, r7, #0x18
0050a5b4  38 30 87 e2                                      add r3, r7, #0x38
0050a5b8  2c 20 85 e5                                      str r2, [r5, #0x2c]
0050a5bc  4c 30 85 e5                                      str r3, [r5, #0x4c]
0050a5c0  08 00 a0 e1                                      mov r0, r8
0050a5c4  28 20 85 e5                                      str r2, [r5, #0x28]
0050a5c8  48 30 85 e5                                      str r3, [r5, #0x48]
0050a5cc  50 60 85 e5                                      str r6, [r5, #0x50]
0050a5d0  0c 60 85 e5                                      str r6, [r5, #0xc]
0050a5d4  10 70 85 e5                                      str r7, [r5, #0x10]
0050a5d8  14 70 85 e5                                      str r7, [r5, #0x14]
0050a5dc  18 60 85 e5                                      str r6, [r5, #0x18]
0050a5e0  24 60 85 e5                                      str r6, [r5, #0x24]
0050a5e4  20 60 c5 e5                                      strb r6, [r5, #0x20]
0050a5e8  30 60 85 e5                                      str r6, [r5, #0x30]
0050a5ec  38 60 85 e5                                      str r6, [r5, #0x38]
0050a5f0  3c 60 85 e5                                      str r6, [r5, #0x3c]
0050a5f4  44 60 85 e5                                      str r6, [r5, #0x44]
0050a5f8  40 60 c5 e5                                      strb r6, [r5, #0x40]
0050a5fc  0e 11 f8 eb                                      bl #0x30ea3c
0050a600  20 30 9f e5                                      ldr r3, [pc, #0x20]
0050a604  07 00 a0 e1                                      mov r0, r7
0050a608  03 10 94 e7                                      ldr r1, [r4, r3]
0050a60c  18 30 9f e5                                      ldr r3, [pc, #0x18]
0050a610  03 20 94 e7                                      ldr r2, [r4, r3]
0050a614  3a 0f f8 eb                                      bl #0x30e304
0050a618  d9 ff ff ea                                      b #0x50a584
; mapping-symbol data/literal pool
0050a61c  48 bc 4e 00 18 a5 48 00 30 bc 4e 00 f0 0d 00 00  .byte 0x48, 0xbc, 0x4e, 0x00, 0x18, 0xa5, 0x48, 0x00, 0x30, 0xbc, 0x4e, 0x00, 0xf0, 0x0d, 0x00, 0x00
0050a62c  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0050aa4c, declared_size=160, range_size=160, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManagerD1Ev
; demangled: AssetManager::~AssetManager()
; decoder-mode: arm
0050aa4c  70 40 2d e9                                      push {r4, r5, r6, lr}
0050aa50  48 30 90 e5                                      ldr r3, [r0, #0x48]
0050aa54  00 40 a0 e1                                      mov r4, r0
0050aa58  00 00 53 e3                                      cmp r3, #0
0050aa5c  18 00 00 1a                                      bne #0x50aac4
0050aa60  28 30 94 e5                                      ldr r3, [r4, #0x28]
0050aa64  00 00 53 e3                                      cmp r3, #0
0050aa68  0b 00 00 1a                                      bne #0x50aa9c
0050aa6c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0050aa70  00 00 53 e3                                      cmp r3, #0
0050aa74  06 00 00 0a                                      beq #0x50aa94
0050aa78  04 00 a0 e1                                      mov r0, r4
0050aa7c  04 10 94 e5                                      ldr r1, [r4, #4]
0050aa80  99 ff ff eb                                      bl #0x50a8ec
0050aa84  00 30 a0 e3                                      mov r3, #0
0050aa88  10 30 84 e5                                      str r3, [r4, #0x10]
0050aa8c  18 00 84 e9                                      stmib r4, {r3, r4}
0050aa90  0c 40 84 e5                                      str r4, [r4, #0xc]
0050aa94  04 00 a0 e1                                      mov r0, r4
0050aa98  70 80 bd e8                                      pop {r4, r5, r6, pc}
0050aa9c  18 50 84 e2                                      add r5, r4, #0x18
0050aaa0  05 00 a0 e1                                      mov r0, r5
0050aaa4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0050aaa8  cb ff ff eb                                      bl #0x50a9dc
0050aaac  00 30 a0 e3                                      mov r3, #0
0050aab0  24 50 84 e5                                      str r5, [r4, #0x24]
0050aab4  28 30 84 e5                                      str r3, [r4, #0x28]
0050aab8  20 50 84 e5                                      str r5, [r4, #0x20]
0050aabc  1c 30 84 e5                                      str r3, [r4, #0x1c]
0050aac0  e9 ff ff ea                                      b #0x50aa6c
0050aac4  38 50 80 e2                                      add r5, r0, #0x38
0050aac8  05 00 a0 e1                                      mov r0, r5
0050aacc  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
0050aad0  44 ff ff eb                                      bl #0x50a7e8
0050aad4  00 30 a0 e3                                      mov r3, #0
0050aad8  44 50 84 e5                                      str r5, [r4, #0x44]
0050aadc  48 30 84 e5                                      str r3, [r4, #0x48]
0050aae0  40 50 84 e5                                      str r5, [r4, #0x40]
0050aae4  3c 30 84 e5                                      str r3, [r4, #0x3c]
0050aae8  dc ff ff ea                                      b #0x50aa60

; FUNCTION 0x0050addc, declared_size=580, range_size=580, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager12getNextAssetERSs
; demangled: AssetManager::getNextAsset(std::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
; decoder-mode: arm
0050addc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0050ade0  20 52 9f e5                                      ldr r5, [pc, #0x220]
0050ade4  20 72 9f e5                                      ldr r7, [pc, #0x220]
0050ade8  30 20 90 e5                                      ldr r2, [r0, #0x30]
0050adec  05 50 8f e0                                      add r5, pc, r5
0050adf0  07 30 95 e7                                      ldr r3, [r5, r7]
0050adf4  18 80 80 e2                                      add r8, r0, #0x18
0050adf8  6c d0 4d e2                                      sub sp, sp, #0x6c
0050adfc  00 30 93 e5                                      ldr r3, [r3]
0050ae00  02 00 58 e1                                      cmp r8, r2
0050ae04  00 40 a0 e1                                      mov r4, r0
0050ae08  01 60 a0 e1                                      mov r6, r1
0050ae0c  64 30 8d e5                                      str r3, [sp, #0x64]
0050ae10  21 00 00 0a                                      beq #0x50ae9c
0050ae14  f4 11 9f e5                                      ldr r1, [pc, #0x1f4]
0050ae18  06 00 a0 e1                                      mov r0, r6
0050ae1c  01 10 8f e0                                      add r1, pc, r1
0050ae20  09 20 81 e2                                      add r2, r1, #9
0050ae24  ed 16 f8 eb                                      bl #0x3109e0
0050ae28  30 30 94 e5                                      ldr r3, [r4, #0x30]
0050ae2c  24 a0 93 e5                                      ldr sl, [r3, #0x24]
0050ae30  0a 00 a0 e1                                      mov r0, sl
0050ae34  06 0c f8 eb                                      bl #0x30de54
0050ae38  0a 10 a0 e1                                      mov r1, sl
0050ae3c  00 20 8a e0                                      add r2, sl, r0
0050ae40  06 00 a0 e1                                      mov r0, r6
0050ae44  6e 16 f8 eb                                      bl #0x310804
0050ae48  30 30 94 e5                                      ldr r3, [r4, #0x30]
0050ae4c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0050ae50  00 00 52 e3                                      cmp r2, #0
0050ae54  01 00 00 1a                                      bne #0x50ae60
0050ae58  4b 00 00 ea                                      b #0x50af8c
0050ae5c  03 20 a0 e1                                      mov r2, r3
0050ae60  08 30 92 e5                                      ldr r3, [r2, #8]
0050ae64  00 00 53 e3                                      cmp r3, #0
0050ae68  fb ff ff 1a                                      bne #0x50ae5c
0050ae6c  02 30 a0 e1                                      mov r3, r2
0050ae70  03 00 58 e1                                      cmp r8, r3
0050ae74  30 30 84 e5                                      str r3, [r4, #0x30]
0050ae78  3f 00 00 0a                                      beq #0x50af7c
0050ae7c  01 00 a0 e3                                      mov r0, #1
0050ae80  07 30 95 e7                                      ldr r3, [r5, r7]
0050ae84  64 20 9d e5                                      ldr r2, [sp, #0x64]
0050ae88  00 30 93 e5                                      ldr r3, [r3]
0050ae8c  03 00 52 e1                                      cmp r2, r3
0050ae90  5b 00 00 1a                                      bne #0x50b004
0050ae94  6c d0 8d e2                                      add sp, sp, #0x6c
0050ae98  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0050ae9c  34 30 90 e5                                      ldr r3, [r0, #0x34]
0050aea0  03 00 50 e1                                      cmp r0, r3
0050aea4  00 00 a0 03                                      moveq r0, #0
0050aea8  f4 ff ff 0a                                      beq #0x50ae80
0050aeac  60 11 9f e5                                      ldr r1, [pc, #0x160]
0050aeb0  06 00 a0 e1                                      mov r0, r6
0050aeb4  01 10 8f e0                                      add r1, pc, r1
0050aeb8  0c 20 81 e2                                      add r2, r1, #0xc
0050aebc  c7 16 f8 eb                                      bl #0x3109e0
0050aec0  34 30 94 e5                                      ldr r3, [r4, #0x34]
0050aec4  24 80 93 e5                                      ldr r8, [r3, #0x24]
0050aec8  08 00 a0 e1                                      mov r0, r8
0050aecc  e0 0b f8 eb                                      bl #0x30de54
0050aed0  08 10 a0 e1                                      mov r1, r8
0050aed4  00 20 88 e0                                      add r2, r8, r0
0050aed8  06 00 a0 e1                                      mov r0, r6
0050aedc  48 16 f8 eb                                      bl #0x310804
0050aee0  34 30 94 e5                                      ldr r3, [r4, #0x34]
0050aee4  30 20 93 e5                                      ldr r2, [r3, #0x30]
0050aee8  00 00 52 e3                                      cmp r2, #0
0050aeec  16 00 00 0a                                      beq #0x50af4c
0050aef0  20 11 9f e5                                      ldr r1, [pc, #0x120]
0050aef4  06 00 a0 e1                                      mov r0, r6
0050aef8  0d 80 a0 e1                                      mov r8, sp
0050aefc  01 10 8f e0                                      add r1, pc, r1
0050af00  08 20 81 e2                                      add r2, r1, #8
0050af04  3e 16 f8 eb                                      bl #0x310804
0050af08  34 30 94 e5                                      ldr r3, [r4, #0x34]
0050af0c  08 11 9f e5                                      ldr r1, [pc, #0x108]
0050af10  0d 00 a0 e1                                      mov r0, sp
0050af14  30 30 93 e5                                      ldr r3, [r3, #0x30]
0050af18  01 10 8f e0                                      add r1, pc, r1
0050af1c  00 20 93 e5                                      ldr r2, [r3]
0050af20  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0050af24  02 30 83 e0                                      add r3, r3, r2
0050af28  04 20 93 e5                                      ldr r2, [r3, #4]
0050af2c  ec 0e f8 eb                                      bl #0x30eae4
0050af30  0d 00 a0 e1                                      mov r0, sp
0050af34  c6 0b f8 eb                                      bl #0x30de54
0050af38  0d 10 a0 e1                                      mov r1, sp
0050af3c  00 20 8d e0                                      add r2, sp, r0
0050af40  06 00 a0 e1                                      mov r0, r6
0050af44  2e 16 f8 eb                                      bl #0x310804
0050af48  34 30 94 e5                                      ldr r3, [r4, #0x34]
0050af4c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0050af50  00 00 50 e3                                      cmp r0, #0
0050af54  00 20 a0 e1                                      mov r2, r0
0050af58  01 00 00 1a                                      bne #0x50af64
0050af5c  17 00 00 ea                                      b #0x50afc0
0050af60  03 20 a0 e1                                      mov r2, r3
0050af64  08 30 92 e5                                      ldr r3, [r2, #8]
0050af68  00 00 53 e3                                      cmp r3, #0
0050af6c  fb ff ff 1a                                      bne #0x50af60
0050af70  02 30 a0 e1                                      mov r3, r2
0050af74  34 30 84 e5                                      str r3, [r4, #0x34]
0050af78  bf ff ff ea                                      b #0x50ae7c
0050af7c  08 30 94 e5                                      ldr r3, [r4, #8]
0050af80  01 00 a0 e3                                      mov r0, #1
0050af84  34 30 84 e5                                      str r3, [r4, #0x34]
0050af88  bc ff ff ea                                      b #0x50ae80
0050af8c  04 10 93 e5                                      ldr r1, [r3, #4]
0050af90  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0050af94  00 00 53 e1                                      cmp r3, r0
0050af98  05 00 00 1a                                      bne #0x50afb4
0050af9c  01 30 a0 e1                                      mov r3, r1
0050afa0  04 10 91 e5                                      ldr r1, [r1, #4]
0050afa4  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0050afa8  03 00 52 e1                                      cmp r2, r3
0050afac  fa ff ff 0a                                      beq #0x50af9c
0050afb0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0050afb4  01 00 52 e1                                      cmp r2, r1
0050afb8  01 30 a0 11                                      movne r3, r1
0050afbc  ab ff ff ea                                      b #0x50ae70
0050afc0  04 20 93 e5                                      ldr r2, [r3, #4]
0050afc4  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0050afc8  01 00 53 e1                                      cmp r3, r1
0050afcc  01 00 00 0a                                      beq #0x50afd8
0050afd0  07 00 00 ea                                      b #0x50aff4
0050afd4  01 20 a0 e1                                      mov r2, r1
0050afd8  04 10 92 e5                                      ldr r1, [r2, #4]
0050afdc  0c 30 91 e5                                      ldr r3, [r1, #0xc]
0050afe0  02 00 53 e1                                      cmp r3, r2
0050afe4  fa ff ff 0a                                      beq #0x50afd4
0050afe8  02 30 a0 e1                                      mov r3, r2
0050afec  0c 00 92 e5                                      ldr r0, [r2, #0xc]
0050aff0  01 20 a0 e1                                      mov r2, r1
0050aff4  00 00 52 e1                                      cmp r2, r0
0050aff8  02 30 a0 11                                      movne r3, r2
0050affc  34 30 84 e5                                      str r3, [r4, #0x34]
0050b000  9d ff ff ea                                      b #0x50ae7c
0050b004  c1 0c f8 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0050b008  a4 9c 48 00 ac 40 00 00 1c 10 3d 00 94 0f 3d 00  .byte 0xa4, 0x9c, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0x1c, 0x10, 0x3d, 0x00, 0x94, 0x0f, 0x3d, 0x00
0050b018  5c 0f 3d 00 98 6f 3b 00                          .byte 0x5c, 0x0f, 0x3d, 0x00, 0x98, 0x6f, 0x3b, 0x00

; FUNCTION 0x0050b020, declared_size=20, range_size=20, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager13getFirstAssetERSs
; demangled: AssetManager::getFirstAsset(std::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
; decoder-mode: arm
0050b020  20 20 90 e5                                      ldr r2, [r0, #0x20]
0050b024  00 30 a0 e1                                      mov r3, r0
0050b028  34 00 83 e5                                      str r0, [r3, #0x34]
0050b02c  30 20 80 e5                                      str r2, [r0, #0x30]
0050b030  69 ff ff ea                                      b #0x50addc

; FUNCTION 0x0050bdb4, declared_size=316, range_size=316, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager11loadTextureEPKci
; demangled: AssetManager::loadTexture(char const*, int)
; decoder-mode: arm
0050bdb4  2c c1 9f e5                                      ldr ip, [pc, #0x12c]
0050bdb8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0050bdbc  00 40 a0 e1                                      mov r4, r0
0050bdc0  24 01 9f e5                                      ldr r0, [pc, #0x124]
0050bdc4  0c c0 8f e0                                      add ip, pc, ip
0050bdc8  00 e0 a0 e3                                      mov lr, #0
0050bdcc  00 00 9c e7                                      ldr r0, [ip, r0]
0050bdd0  00 e0 84 e5                                      str lr, [r4]
0050bdd4  14 d0 4d e2                                      sub sp, sp, #0x14
0050bdd8  10 00 90 e5                                      ldr r0, [r0, #0x10]
0050bddc  10 e0 8d e2                                      add lr, sp, #0x10
0050bde0  0c 20 2e e5                                      str r2, [lr, #-0xc]!
0050bde4  10 20 90 e5                                      ldr r2, [r0, #0x10]
0050bde8  18 00 81 e2                                      add r0, r1, #0x18
0050bdec  0e 10 a0 e1                                      mov r1, lr
0050bdf0  03 60 a0 e1                                      mov r6, r3
0050bdf4  e0 70 92 e5                                      ldr r7, [r2, #0xe0]
0050bdf8  91 ff ff eb                                      bl #0x50bc44
0050bdfc  08 30 90 e5                                      ldr r3, [r0, #8]
0050be00  00 50 a0 e1                                      mov r5, r0
0050be04  00 00 53 e3                                      cmp r3, #0
0050be08  19 00 00 0a                                      beq #0x50be74
0050be0c  04 20 93 e5                                      ldr r2, [r3, #4]
0050be10  03 00 a0 e1                                      mov r0, r3
0050be14  01 20 82 e2                                      add r2, r2, #1
0050be18  04 20 83 e5                                      str r2, [r3, #4]
0050be1c  d8 45 f8 eb                                      bl #0x31d584
0050be20  08 70 95 e5                                      ldr r7, [r5, #8]
0050be24  00 00 57 e3                                      cmp r7, #0
0050be28  02 00 00 0a                                      beq #0x50be38
0050be2c  04 30 97 e5                                      ldr r3, [r7, #4]
0050be30  02 30 83 e2                                      add r3, r3, #2
0050be34  04 30 87 e5                                      str r3, [r7, #4]
0050be38  00 00 94 e5                                      ldr r0, [r4]
0050be3c  00 70 84 e5                                      str r7, [r4]
0050be40  00 00 50 e3                                      cmp r0, #0
0050be44  00 00 00 0a                                      beq #0x50be4c
0050be48  cd 45 f8 eb                                      bl #0x31d584
0050be4c  00 00 57 e3                                      cmp r7, #0
0050be50  01 00 00 0a                                      beq #0x50be5c
0050be54  07 00 a0 e1                                      mov r0, r7
0050be58  c9 45 f8 eb                                      bl #0x31d584
0050be5c  04 30 95 e5                                      ldr r3, [r5, #4]
0050be60  04 00 a0 e1                                      mov r0, r4
0050be64  03 00 56 e1                                      cmp r6, r3
0050be68  04 60 85 b5                                      strlt r6, [r5, #4]
0050be6c  14 d0 8d e2                                      add sp, sp, #0x14
0050be70  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0050be74  07 10 a0 e1                                      mov r1, r7
0050be78  0c 00 8d e2                                      add r0, sp, #0xc
0050be7c  04 20 9d e5                                      ldr r2, [sp, #4]
0050be80  e2 84 03 eb                                      bl #0x5ed210
0050be84  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0050be88  00 00 53 e3                                      cmp r3, #0
0050be8c  02 00 00 0a                                      beq #0x50be9c
0050be90  04 20 93 e5                                      ldr r2, [r3, #4]
0050be94  01 20 82 e2                                      add r2, r2, #1
0050be98  04 20 83 e5                                      str r2, [r3, #4]
0050be9c  00 00 94 e5                                      ldr r0, [r4]
0050bea0  00 30 84 e5                                      str r3, [r4]
0050bea4  00 00 50 e3                                      cmp r0, #0
0050bea8  00 00 00 0a                                      beq #0x50beb0
0050beac  b4 45 f8 eb                                      bl #0x31d584
0050beb0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0050beb4  00 00 50 e3                                      cmp r0, #0
0050beb8  00 00 00 0a                                      beq #0x50bec0
0050bebc  b0 45 f8 eb                                      bl #0x31d584
0050bec0  00 70 94 e5                                      ldr r7, [r4]
0050bec4  00 00 57 e3                                      cmp r7, #0
0050bec8  04 30 97 15                                      ldrne r3, [r7, #4]
0050becc  02 30 83 12                                      addne r3, r3, #2
0050bed0  04 30 87 15                                      strne r3, [r7, #4]
0050bed4  08 00 95 e5                                      ldr r0, [r5, #8]
0050bed8  08 70 85 e5                                      str r7, [r5, #8]
0050bedc  00 00 50 e3                                      cmp r0, #0
0050bee0  d8 ff ff 1a                                      bne #0x50be48
0050bee4  d8 ff ff ea                                      b #0x50be4c
; mapping-symbol data/literal pool
0050bee8  cc 8c 48 00 f4 37 00 00                          .byte 0xcc, 0x8c, 0x48, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0050bef0, declared_size=56, range_size=56, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager14preloadTextureEPKci
; demangled: AssetManager::preloadTexture(char const*, int)
; decoder-mode: arm
0050bef0  04 e0 2d e5                                      str lr, [sp, #-4]!
0050bef4  01 c0 a0 e1                                      mov ip, r1
0050bef8  0c d0 4d e2                                      sub sp, sp, #0xc
0050befc  02 30 a0 e1                                      mov r3, r2
0050bf00  00 10 a0 e1                                      mov r1, r0
0050bf04  0c 20 a0 e1                                      mov r2, ip
0050bf08  04 00 8d e2                                      add r0, sp, #4
0050bf0c  a8 ff ff eb                                      bl #0x50bdb4
0050bf10  04 00 9d e5                                      ldr r0, [sp, #4]
0050bf14  00 00 50 e3                                      cmp r0, #0
0050bf18  00 00 00 0a                                      beq #0x50bf20
0050bf1c  98 45 f8 eb                                      bl #0x31d584
0050bf20  0c d0 8d e2                                      add sp, sp, #0xc
0050bf24  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0050bf28, declared_size=260, range_size=260, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager11dropTextureEPKc
; demangled: AssetManager::dropTexture(char const*)
; decoder-mode: arm
0050bf28  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0050bf2c  ec 40 9f e5                                      ldr r4, [pc, #0xec]
0050bf30  ec 50 9f e5                                      ldr r5, [pc, #0xec]
0050bf34  34 d0 4d e2                                      sub sp, sp, #0x34
0050bf38  04 40 8f e0                                      add r4, pc, r4
0050bf3c  05 30 94 e7                                      ldr r3, [r4, r5]
0050bf40  18 60 80 e2                                      add r6, r0, #0x18
0050bf44  04 10 8d e5                                      str r1, [sp, #4]
0050bf48  00 30 93 e5                                      ldr r3, [r3]
0050bf4c  06 00 a0 e1                                      mov r0, r6
0050bf50  04 10 8d e2                                      add r1, sp, #4
0050bf54  2c 30 8d e5                                      str r3, [sp, #0x2c]
0050bf58  39 ff ff eb                                      bl #0x50bc44
0050bf5c  08 30 90 e5                                      ldr r3, [r0, #8]
0050bf60  00 00 53 e3                                      cmp r3, #0
0050bf64  0c 30 8d e5                                      str r3, [sp, #0xc]
0050bf68  09 00 00 0a                                      beq #0x50bf94
0050bf6c  04 20 93 e5                                      ldr r2, [r3, #4]
0050bf70  01 20 82 e2                                      add r2, r2, #1
0050bf74  04 20 83 e5                                      str r2, [r3, #4]
0050bf78  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0050bf7c  00 00 50 e3                                      cmp r0, #0
0050bf80  03 00 00 0a                                      beq #0x50bf94
0050bf84  04 30 90 e5                                      ldr r3, [r0, #4]
0050bf88  01 00 53 e3                                      cmp r3, #1
0050bf8c  07 00 00 9a                                      bls #0x50bfb0
0050bf90  7b 45 f8 eb                                      bl #0x31d584
0050bf94  05 30 94 e7                                      ldr r3, [r4, r5]
0050bf98  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0050bf9c  00 30 93 e5                                      ldr r3, [r3]
0050bfa0  03 00 52 e1                                      cmp r2, r3
0050bfa4  1c 00 00 1a                                      bne #0x50c01c
0050bfa8  34 d0 8d e2                                      add sp, sp, #0x34
0050bfac  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0050bfb0  70 30 9f e5                                      ldr r3, [pc, #0x70]
0050bfb4  0c 10 8d e2                                      add r1, sp, #0xc
0050bfb8  14 70 8d e2                                      add r7, sp, #0x14
0050bfbc  03 30 94 e7                                      ldr r3, [r4, r3]
0050bfc0  10 30 93 e5                                      ldr r3, [r3, #0x10]
0050bfc4  10 30 93 e5                                      ldr r3, [r3, #0x10]
0050bfc8  e0 00 93 e5                                      ldr r0, [r3, #0xe0]
0050bfcc  b8 e3 f9 eb                                      bl #0x384eb4
0050bfd0  10 20 8d e2                                      add r2, sp, #0x10
0050bfd4  04 10 9d e5                                      ldr r1, [sp, #4]
0050bfd8  07 00 a0 e1                                      mov r0, r7
0050bfdc  42 20 f8 eb                                      bl #0x3140ec
0050bfe0  06 00 a0 e1                                      mov r0, r6
0050bfe4  07 10 a0 e1                                      mov r1, r7
0050bfe8  9f fd ff eb                                      bl #0x50b66c
0050bfec  06 00 50 e1                                      cmp r0, r6
0050bff0  03 00 00 0a                                      beq #0x50c004
0050bff4  30 10 8d e2                                      add r1, sp, #0x30
0050bff8  28 00 21 e5                                      str r0, [r1, #-0x28]!
0050bffc  06 00 a0 e1                                      mov r0, r6
0050c000  58 fa ff eb                                      bl #0x50a968
0050c004  07 00 a0 e1                                      mov r0, r7
0050c008  91 30 f8 eb                                      bl #0x318254
0050c00c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0050c010  00 00 50 e3                                      cmp r0, #0
0050c014  dd ff ff 1a                                      bne #0x50bf90
0050c018  dd ff ff ea                                      b #0x50bf94
0050c01c  bb 08 f8 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0050c020  58 8b 48 00 ac 40 00 00 f4 37 00 00              .byte 0x58, 0x8b, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0050c02c, declared_size=248, range_size=248, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager12clearTextureEi
; demangled: AssetManager::clearTexture(int)
; decoder-mode: arm
0050c02c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0050c030  20 40 90 e5                                      ldr r4, [r0, #0x20]
0050c034  00 70 a0 e1                                      mov r7, r0
0050c038  01 60 a0 e1                                      mov r6, r1
0050c03c  18 50 80 e2                                      add r5, r0, #0x18
0050c040  04 00 55 e1                                      cmp r5, r4
0050c044  11 00 00 0a                                      beq #0x50c090
0050c048  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0050c04c  04 20 a0 e1                                      mov r2, r4
0050c050  03 00 56 e1                                      cmp r6, r3
0050c054  0e 00 00 ca                                      bgt #0x50c094
0050c058  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0050c05c  00 00 51 e3                                      cmp r1, #0
0050c060  01 00 00 1a                                      bne #0x50c06c
0050c064  21 00 00 ea                                      b #0x50c0f0
0050c068  03 10 a0 e1                                      mov r1, r3
0050c06c  08 30 91 e5                                      ldr r3, [r1, #8]
0050c070  00 00 53 e3                                      cmp r3, #0
0050c074  fb ff ff 1a                                      bne #0x50c068
0050c078  01 40 a0 e1                                      mov r4, r1
0050c07c  24 10 92 e5                                      ldr r1, [r2, #0x24]
0050c080  07 00 a0 e1                                      mov r0, r7
0050c084  a7 ff ff eb                                      bl #0x50bf28
0050c088  04 00 55 e1                                      cmp r5, r4
0050c08c  ed ff ff 1a                                      bne #0x50c048
0050c090  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0050c094  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0050c098  00 00 52 e3                                      cmp r2, #0
0050c09c  01 00 00 1a                                      bne #0x50c0a8
0050c0a0  05 00 00 ea                                      b #0x50c0bc
0050c0a4  03 20 a0 e1                                      mov r2, r3
0050c0a8  08 30 92 e5                                      ldr r3, [r2, #8]
0050c0ac  00 00 53 e3                                      cmp r3, #0
0050c0b0  fb ff ff 1a                                      bne #0x50c0a4
0050c0b4  02 40 a0 e1                                      mov r4, r2
0050c0b8  e0 ff ff ea                                      b #0x50c040
0050c0bc  04 30 94 e5                                      ldr r3, [r4, #4]
0050c0c0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0050c0c4  01 00 54 e1                                      cmp r4, r1
0050c0c8  05 00 00 1a                                      bne #0x50c0e4
0050c0cc  03 40 a0 e1                                      mov r4, r3
0050c0d0  04 30 93 e5                                      ldr r3, [r3, #4]
0050c0d4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0050c0d8  04 00 52 e1                                      cmp r2, r4
0050c0dc  fa ff ff 0a                                      beq #0x50c0cc
0050c0e0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0050c0e4  02 00 53 e1                                      cmp r3, r2
0050c0e8  03 40 a0 11                                      movne r4, r3
0050c0ec  d3 ff ff ea                                      b #0x50c040
0050c0f0  04 30 94 e5                                      ldr r3, [r4, #4]
0050c0f4  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0050c0f8  00 00 54 e1                                      cmp r4, r0
0050c0fc  05 00 00 1a                                      bne #0x50c118
0050c100  03 40 a0 e1                                      mov r4, r3
0050c104  04 30 93 e5                                      ldr r3, [r3, #4]
0050c108  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0050c10c  04 00 51 e1                                      cmp r1, r4
0050c110  fa ff ff 0a                                      beq #0x50c100
0050c114  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0050c118  01 00 53 e1                                      cmp r3, r1
0050c11c  03 40 a0 11                                      movne r4, r3
0050c120  d5 ff ff ea                                      b #0x50c07c

; FUNCTION 0x0050c124, declared_size=192, range_size=192, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager11dropTextureEN5boost13intrusive_ptrIN6glitch5video8ITextureEEE
; demangled: AssetManager::dropTexture(boost::intrusive_ptr<glitch::video::ITexture>)
; decoder-mode: arm
0050c124  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0050c128  20 50 90 e5                                      ldr r5, [r0, #0x20]
0050c12c  00 40 a0 e1                                      mov r4, r0
0050c130  01 a0 a0 e1                                      mov sl, r1
0050c134  18 80 80 e2                                      add r8, r0, #0x18
0050c138  05 00 58 e1                                      cmp r8, r5
0050c13c  16 00 00 0a                                      beq #0x50c19c
0050c140  30 60 95 e5                                      ldr r6, [r5, #0x30]
0050c144  00 00 56 e3                                      cmp r6, #0
0050c148  00 70 9a 05                                      ldreq r7, [sl]
0050c14c  05 00 00 0a                                      beq #0x50c168
0050c150  04 30 96 e5                                      ldr r3, [r6, #4]
0050c154  06 00 a0 e1                                      mov r0, r6
0050c158  01 30 83 e2                                      add r3, r3, #1
0050c15c  04 30 86 e5                                      str r3, [r6, #4]
0050c160  00 70 9a e5                                      ldr r7, [sl]
0050c164  06 45 f8 eb                                      bl #0x31d584
0050c168  07 00 56 e1                                      cmp r6, r7
0050c16c  18 00 00 0a                                      beq #0x50c1d4
0050c170  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0050c174  00 00 52 e3                                      cmp r2, #0
0050c178  01 00 00 1a                                      bne #0x50c184
0050c17c  07 00 00 ea                                      b #0x50c1a0
0050c180  03 20 a0 e1                                      mov r2, r3
0050c184  08 30 92 e5                                      ldr r3, [r2, #8]
0050c188  00 00 53 e3                                      cmp r3, #0
0050c18c  fb ff ff 1a                                      bne #0x50c180
0050c190  02 50 a0 e1                                      mov r5, r2
0050c194  05 00 58 e1                                      cmp r8, r5
0050c198  e8 ff ff 1a                                      bne #0x50c140
0050c19c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0050c1a0  04 30 95 e5                                      ldr r3, [r5, #4]
0050c1a4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0050c1a8  01 00 55 e1                                      cmp r5, r1
0050c1ac  05 00 00 1a                                      bne #0x50c1c8
0050c1b0  03 50 a0 e1                                      mov r5, r3
0050c1b4  04 30 93 e5                                      ldr r3, [r3, #4]
0050c1b8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0050c1bc  05 00 52 e1                                      cmp r2, r5
0050c1c0  fa ff ff 0a                                      beq #0x50c1b0
0050c1c4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0050c1c8  02 00 53 e1                                      cmp r3, r2
0050c1cc  03 50 a0 11                                      movne r5, r3
0050c1d0  d8 ff ff ea                                      b #0x50c138
0050c1d4  24 10 95 e5                                      ldr r1, [r5, #0x24]
0050c1d8  04 00 a0 e1                                      mov r0, r4
0050c1dc  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0050c1e0  50 ff ff ea                                      b #0x50bf28

; FUNCTION 0x0050c8a0, declared_size=120, range_size=120, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager13dropSceneNodeERKSs
; demangled: AssetManager::dropSceneNode(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0050c8a0  30 40 2d e9                                      push {r4, r5, lr}
0050c8a4  0c d0 4d e2                                      sub sp, sp, #0xc
0050c8a8  00 40 a0 e1                                      mov r4, r0
0050c8ac  01 50 a0 e1                                      mov r5, r1
0050c8b0  8c ff ff eb                                      bl #0x50c6e8
0050c8b4  08 30 90 e5                                      ldr r3, [r0, #8]
0050c8b8  00 00 53 e3                                      cmp r3, #0
0050c8bc  0b 00 00 0a                                      beq #0x50c8f0
0050c8c0  04 00 a0 e1                                      mov r0, r4
0050c8c4  05 10 a0 e1                                      mov r1, r5
0050c8c8  86 ff ff eb                                      bl #0x50c6e8
0050c8cc  08 30 90 e5                                      ldr r3, [r0, #8]
0050c8d0  00 20 93 e5                                      ldr r2, [r3]
0050c8d4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0050c8d8  02 30 83 e0                                      add r3, r3, r2
0050c8dc  04 30 93 e5                                      ldr r3, [r3, #4]
0050c8e0  01 00 53 e3                                      cmp r3, #1
0050c8e4  01 00 00 9a                                      bls #0x50c8f0
0050c8e8  0c d0 8d e2                                      add sp, sp, #0xc
0050c8ec  30 80 bd e8                                      pop {r4, r5, pc}
0050c8f0  05 10 a0 e1                                      mov r1, r5
0050c8f4  04 00 a0 e1                                      mov r0, r4
0050c8f8  26 fb ff eb                                      bl #0x50b598
0050c8fc  04 00 50 e1                                      cmp r0, r4
0050c900  f8 ff ff 0a                                      beq #0x50c8e8
0050c904  08 10 8d e2                                      add r1, sp, #8
0050c908  04 00 21 e5                                      str r0, [r1, #-4]!
0050c90c  04 00 a0 e1                                      mov r0, r4
0050c910  d5 f7 ff eb                                      bl #0x50a86c
0050c914  f3 ff ff ea                                      b #0x50c8e8

; FUNCTION 0x0050c918, declared_size=244, range_size=244, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager14clearSceneNodeEi
; demangled: AssetManager::clearSceneNode(int)
; decoder-mode: arm
0050c918  70 40 2d e9                                      push {r4, r5, r6, lr}
0050c91c  08 40 90 e5                                      ldr r4, [r0, #8]
0050c920  00 50 a0 e1                                      mov r5, r0
0050c924  01 60 a0 e1                                      mov r6, r1
0050c928  04 00 55 e1                                      cmp r5, r4
0050c92c  11 00 00 0a                                      beq #0x50c978
0050c930  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0050c934  04 10 a0 e1                                      mov r1, r4
0050c938  03 00 56 e1                                      cmp r6, r3
0050c93c  0e 00 00 ca                                      bgt #0x50c97c
0050c940  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0050c944  00 00 52 e3                                      cmp r2, #0
0050c948  01 00 00 1a                                      bne #0x50c954
0050c94c  21 00 00 ea                                      b #0x50c9d8
0050c950  03 20 a0 e1                                      mov r2, r3
0050c954  08 30 92 e5                                      ldr r3, [r2, #8]
0050c958  00 00 53 e3                                      cmp r3, #0
0050c95c  fb ff ff 1a                                      bne #0x50c950
0050c960  02 40 a0 e1                                      mov r4, r2
0050c964  10 10 81 e2                                      add r1, r1, #0x10
0050c968  05 00 a0 e1                                      mov r0, r5
0050c96c  cb ff ff eb                                      bl #0x50c8a0
0050c970  04 00 55 e1                                      cmp r5, r4
0050c974  ed ff ff 1a                                      bne #0x50c930
0050c978  70 80 bd e8                                      pop {r4, r5, r6, pc}
0050c97c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0050c980  00 00 52 e3                                      cmp r2, #0
0050c984  01 00 00 1a                                      bne #0x50c990
0050c988  05 00 00 ea                                      b #0x50c9a4
0050c98c  03 20 a0 e1                                      mov r2, r3
0050c990  08 30 92 e5                                      ldr r3, [r2, #8]
0050c994  00 00 53 e3                                      cmp r3, #0
0050c998  fb ff ff 1a                                      bne #0x50c98c
0050c99c  02 40 a0 e1                                      mov r4, r2
0050c9a0  e0 ff ff ea                                      b #0x50c928
0050c9a4  04 30 94 e5                                      ldr r3, [r4, #4]
0050c9a8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0050c9ac  01 00 54 e1                                      cmp r4, r1
0050c9b0  05 00 00 1a                                      bne #0x50c9cc
0050c9b4  03 40 a0 e1                                      mov r4, r3
0050c9b8  04 30 93 e5                                      ldr r3, [r3, #4]
0050c9bc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0050c9c0  04 00 52 e1                                      cmp r2, r4
0050c9c4  fa ff ff 0a                                      beq #0x50c9b4
0050c9c8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0050c9cc  02 00 53 e1                                      cmp r3, r2
0050c9d0  03 40 a0 11                                      movne r4, r3
0050c9d4  d3 ff ff ea                                      b #0x50c928
0050c9d8  04 30 94 e5                                      ldr r3, [r4, #4]
0050c9dc  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0050c9e0  00 00 54 e1                                      cmp r4, r0
0050c9e4  05 00 00 1a                                      bne #0x50ca00
0050c9e8  03 40 a0 e1                                      mov r4, r3
0050c9ec  04 30 93 e5                                      ldr r3, [r3, #4]
0050c9f0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0050c9f4  04 00 52 e1                                      cmp r2, r4
0050c9f8  fa ff ff 0a                                      beq #0x50c9e8
0050c9fc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0050ca00  02 00 53 e1                                      cmp r3, r2
0050ca04  03 40 a0 11                                      movne r4, r3
0050ca08  d5 ff ff ea                                      b #0x50c964

; FUNCTION 0x0050ca0c, declared_size=32, range_size=32, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager5clearEi
; demangled: AssetManager::clear(int)
; decoder-mode: arm
0050ca0c  70 40 2d e9                                      push {r4, r5, r6, lr}
0050ca10  00 50 a0 e1                                      mov r5, r0
0050ca14  01 40 a0 e1                                      mov r4, r1
0050ca18  be ff ff eb                                      bl #0x50c918
0050ca1c  05 00 a0 e1                                      mov r0, r5
0050ca20  04 10 a0 e1                                      mov r1, r4
0050ca24  70 40 bd e8                                      pop {r4, r5, r6, lr}
0050ca28  7f fd ff ea                                      b #0x50c02c

; FUNCTION 0x0050ca2c, declared_size=160, range_size=160, mode=arm
; class-group: AssetManager
; alias: _ZN12AssetManager13dropSceneNodeEPKcS1_
; demangled: AssetManager::dropSceneNode(char const*, char const*)
; decoder-mode: arm
0050ca2c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0050ca30  8c c0 9f e5                                      ldr ip, [pc, #0x8c]
0050ca34  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0050ca38  03 30 8f e0                                      add r3, pc, r3
0050ca3c  0c 60 93 e7                                      ldr r6, [r3, ip]
0050ca40  24 d0 4d e2                                      sub sp, sp, #0x24
0050ca44  04 40 8d e2                                      add r4, sp, #4
0050ca48  00 c0 96 e5                                      ldr ip, [r6]
0050ca4c  02 50 a0 e1                                      mov r5, r2
0050ca50  00 70 a0 e1                                      mov r7, r0
0050ca54  0d 20 a0 e1                                      mov r2, sp
0050ca58  04 00 a0 e1                                      mov r0, r4
0050ca5c  1c c0 8d e5                                      str ip, [sp, #0x1c]
0050ca60  a1 1d f8 eb                                      bl #0x3140ec
0050ca64  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0050ca68  04 00 a0 e1                                      mov r0, r4
0050ca6c  01 10 8f e0                                      add r1, pc, r1
0050ca70  01 20 81 e2                                      add r2, r1, #1
0050ca74  62 0f f8 eb                                      bl #0x310804
0050ca78  05 00 a0 e1                                      mov r0, r5
0050ca7c  f4 04 f8 eb                                      bl #0x30de54
0050ca80  05 10 a0 e1                                      mov r1, r5
0050ca84  00 20 85 e0                                      add r2, r5, r0
0050ca88  04 00 a0 e1                                      mov r0, r4
0050ca8c  5c 0f f8 eb                                      bl #0x310804
0050ca90  07 00 a0 e1                                      mov r0, r7
0050ca94  04 10 a0 e1                                      mov r1, r4
0050ca98  80 ff ff eb                                      bl #0x50c8a0
0050ca9c  04 00 a0 e1                                      mov r0, r4
0050caa0  eb 2d f8 eb                                      bl #0x318254
0050caa4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0050caa8  00 30 96 e5                                      ldr r3, [r6]
0050caac  03 00 52 e1                                      cmp r2, r3
0050cab0  01 00 00 1a                                      bne #0x50cabc
0050cab4  24 d0 8d e2                                      add sp, sp, #0x24
0050cab8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0050cabc  13 06 f8 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0050cac0  58 80 48 00 ac 40 00 00 14 a8 3b 00              .byte 0x58, 0x80, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0x14, 0xa8, 0x3b, 0x00
