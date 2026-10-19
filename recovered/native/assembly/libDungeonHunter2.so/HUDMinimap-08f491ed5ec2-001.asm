; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0041b404, declared_size=56, range_size=56, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap7InitAllEv
; demangled: HUDMinimap::InitAll()
; decoder-mode: arm
0041b404  10 40 2d e9                                      push {r4, lr}
0041b408  00 40 a0 e1                                      mov r4, r0
0041b40c  00 30 90 e5                                      ldr r3, [r0]
0041b410  0f e0 a0 e1                                      mov lr, pc
0041b414  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
0041b418  04 00 a0 e1                                      mov r0, r4
0041b41c  00 30 94 e5                                      ldr r3, [r4]
0041b420  0f e0 a0 e1                                      mov lr, pc
0041b424  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0041b428  04 00 a0 e1                                      mov r0, r4
0041b42c  00 30 94 e5                                      ldr r3, [r4]
0041b430  0f e0 a0 e1                                      mov lr, pc
0041b434  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0041b438  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0041b43c, declared_size=108, range_size=108, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap4HideEv
; demangled: HUDMinimap::Hide()
; decoder-mode: arm
0041b43c  70 40 2d e9                                      push {r4, r5, r6, lr}
0041b440  00 50 a0 e1                                      mov r5, r0
0041b444  00 30 90 e5                                      ldr r3, [r0]
0041b448  0f e0 a0 e1                                      mov lr, pc
0041b44c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0041b450  48 40 9f e5                                      ldr r4, [pc, #0x48]
0041b454  00 30 95 e5                                      ldr r3, [r5]
0041b458  05 00 a0 e1                                      mov r0, r5
0041b45c  0f e0 a0 e1                                      mov lr, pc
0041b460  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0041b464  38 30 9f e5                                      ldr r3, [pc, #0x38]
0041b468  04 40 8f e0                                      add r4, pc, r4
0041b46c  00 10 a0 e3                                      mov r1, #0
0041b470  03 30 94 e7                                      ldr r3, [r4, r3]
0041b474  c4 10 c5 e5                                      strb r1, [r5, #0xc4]
0041b478  10 30 93 e5                                      ldr r3, [r3, #0x10]
0041b47c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0041b480  8c 32 93 e5                                      ldr r3, [r3, #0x28c]
0041b484  01 00 53 e1                                      cmp r3, r1
0041b488  03 00 00 0a                                      beq #0x41b49c
0041b48c  03 00 a0 e1                                      mov r0, r3
0041b490  00 30 93 e5                                      ldr r3, [r3]
0041b494  0f e0 a0 e1                                      mov lr, pc
0041b498  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0041b49c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0041b4a0  28 96 57 00 f4 37 00 00                          .byte 0x28, 0x96, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0041b4a8, declared_size=48, range_size=48, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap16DestroyMapCameraEv
; demangled: HUDMinimap::DestroyMapCamera()
; decoder-mode: arm
0041b4a8  10 40 2d e9                                      push {r4, lr}
0041b4ac  e0 30 90 e5                                      ldr r3, [r0, #0xe0]
0041b4b0  00 40 a0 e1                                      mov r4, r0
0041b4b4  00 00 53 e3                                      cmp r3, #0
0041b4b8  05 00 00 0a                                      beq #0x41b4d4
0041b4bc  03 00 a0 e1                                      mov r0, r3
0041b4c0  00 30 93 e5                                      ldr r3, [r3]
0041b4c4  0f e0 a0 e1                                      mov lr, pc
0041b4c8  04 f0 93 e5                                      ldr pc, [r3, #4]
0041b4cc  00 30 a0 e3                                      mov r3, #0
0041b4d0  e0 30 84 e5                                      str r3, [r4, #0xe0]
0041b4d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0041b4d8, declared_size=20, range_size=20, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap16DisableMapCameraEv
; demangled: HUDMinimap::DisableMapCamera()
; decoder-mode: arm
0041b4d8  10 40 2d e9                                      push {r4, lr}
0041b4dc  00 30 90 e5                                      ldr r3, [r0]
0041b4e0  0f e0 a0 e1                                      mov lr, pc
0041b4e4  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0041b4e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0041b4ec, declared_size=112, range_size=112, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap16ResetTranslationEv
; demangled: HUDMinimap::ResetTranslation()
; decoder-mode: arm
0041b4ec  60 30 9f e5                                      ldr r3, [pc, #0x60]
0041b4f0  60 20 9f e5                                      ldr r2, [pc, #0x60]
0041b4f4  10 40 2d e9                                      push {r4, lr}
0041b4f8  03 30 8f e0                                      add r3, pc, r3
0041b4fc  02 10 93 e7                                      ldr r1, [r3, r2]
0041b500  e0 20 90 e5                                      ldr r2, [r0, #0xe0]
0041b504  00 40 a0 e1                                      mov r4, r0
0041b508  00 30 91 e5                                      ldr r3, [r1]
0041b50c  98 30 82 e5                                      str r3, [r2, #0x98]
0041b510  04 30 91 e5                                      ldr r3, [r1, #4]
0041b514  9c 30 82 e5                                      str r3, [r2, #0x9c]
0041b518  08 30 91 e5                                      ldr r3, [r1, #8]
0041b51c  a0 30 82 e5                                      str r3, [r2, #0xa0]
0041b520  e0 30 90 e5                                      ldr r3, [r0, #0xe0]
0041b524  03 00 a0 e1                                      mov r0, r3
0041b528  00 30 93 e5                                      ldr r3, [r3]
0041b52c  0f e0 a0 e1                                      mov lr, pc
0041b530  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0041b534  e0 30 94 e5                                      ldr r3, [r4, #0xe0]
0041b538  01 10 a0 e3                                      mov r1, #1
0041b53c  04 30 93 e5                                      ldr r3, [r3, #4]
0041b540  03 00 a0 e1                                      mov r0, r3
0041b544  00 30 93 e5                                      ldr r3, [r3]
0041b548  0f e0 a0 e1                                      mov lr, pc
0041b54c  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
0041b550  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0041b554  98 95 57 00 2c 3f 00 00                          .byte 0x98, 0x95, 0x57, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x0041b55c, declared_size=4, range_size=4, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap10SetEnemiesEv
; demangled: HUDMinimap::SetEnemies()
; decoder-mode: arm
0041b55c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041b560, declared_size=4, range_size=4, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap10SetObjectsEv
; demangled: HUDMinimap::SetObjects()
; decoder-mode: arm
0041b560  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041b564, declared_size=4, range_size=4, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap13SetObjectivesEv
; demangled: HUDMinimap::SetObjectives()
; decoder-mode: arm
0041b564  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041b568, declared_size=132, range_size=132, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap12InitAllIconsEv
; demangled: HUDMinimap::InitAllIcons()
; decoder-mode: arm
0041b568  00 30 a0 e3                                      mov r3, #0
0041b56c  03 20 a0 e1                                      mov r2, r3
0041b570  ec 30 80 e5                                      str r3, [r0, #0xec]
0041b574  f0 30 80 e5                                      str r3, [r0, #0xf0]
0041b578  f4 30 80 e5                                      str r3, [r0, #0xf4]
0041b57c  f8 30 80 e5                                      str r3, [r0, #0xf8]
0041b580  00 10 a0 e1                                      mov r1, r0
0041b584  00 c0 a0 e1                                      mov ip, r0
0041b588  01 20 82 e2                                      add r2, r2, #1
0041b58c  08 00 52 e3                                      cmp r2, #8
0041b590  fc 30 8c e5                                      str r3, [ip, #0xfc]
0041b594  04 c0 8c e2                                      add ip, ip, #4
0041b598  fa ff ff 1a                                      bne #0x41b588
0041b59c  00 c0 a0 e1                                      mov ip, r0
0041b5a0  03 20 a0 e1                                      mov r2, r3
0041b5a4  01 30 83 e2                                      add r3, r3, #1
0041b5a8  08 00 53 e3                                      cmp r3, #8
0041b5ac  1c 21 8c e5                                      str r2, [ip, #0x11c]
0041b5b0  04 c0 8c e2                                      add ip, ip, #4
0041b5b4  fa ff ff 1a                                      bne #0x41b5a4
0041b5b8  02 30 a0 e1                                      mov r3, r2
0041b5bc  01 20 82 e2                                      add r2, r2, #1
0041b5c0  0c 00 52 e3                                      cmp r2, #0xc
0041b5c4  3c 31 80 e5                                      str r3, [r0, #0x13c]
0041b5c8  04 00 80 e2                                      add r0, r0, #4
0041b5cc  fa ff ff 1a                                      bne #0x41b5bc
0041b5d0  03 20 a0 e1                                      mov r2, r3
0041b5d4  01 30 83 e2                                      add r3, r3, #1
0041b5d8  0c 00 53 e3                                      cmp r3, #0xc
0041b5dc  6c 21 81 e5                                      str r2, [r1, #0x16c]
0041b5e0  04 10 81 e2                                      add r1, r1, #4
0041b5e4  fa ff ff 1a                                      bne #0x41b5d4
0041b5e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041b5ec, declared_size=60, range_size=60, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap14InitAllObjectsEv
; demangled: HUDMinimap::InitAllObjects()
; decoder-mode: arm
0041b5ec  00 20 a0 e3                                      mov r2, #0
0041b5f0  00 10 a0 e1                                      mov r1, r0
0041b5f4  02 30 a0 e1                                      mov r3, r2
0041b5f8  01 20 82 e2                                      add r2, r2, #1
0041b5fc  08 00 52 e3                                      cmp r2, #8
0041b600  dc 33 81 e5                                      str r3, [r1, #0x3dc]
0041b604  04 10 81 e2                                      add r1, r1, #4
0041b608  fa ff ff 1a                                      bne #0x41b5f8
0041b60c  03 20 a0 e1                                      mov r2, r3
0041b610  01 30 83 e2                                      add r3, r3, #1
0041b614  08 00 53 e3                                      cmp r3, #8
0041b618  fc 23 80 e5                                      str r2, [r0, #0x3fc]
0041b61c  04 00 80 e2                                      add r0, r0, #4
0041b620  fa ff ff 1a                                      bne #0x41b610
0041b624  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041b628, declared_size=232, range_size=232, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap12HideAllIconsEv
; demangled: HUDMinimap::HideAllIcons()
; decoder-mode: arm
0041b628  04 40 2d e5                                      str r4, [sp, #-4]!
0041b62c  ec 30 90 e5                                      ldr r3, [r0, #0xec]
0041b630  00 10 a0 e1                                      mov r1, r0
0041b634  00 00 53 e3                                      cmp r3, #0
0041b638  00 20 a0 13                                      movne r2, #0
0041b63c  9b 20 c3 15                                      strbne r2, [r3, #0x9b]
0041b640  f0 30 90 e5                                      ldr r3, [r0, #0xf0]
0041b644  00 00 53 e3                                      cmp r3, #0
0041b648  00 20 a0 13                                      movne r2, #0
0041b64c  9b 20 c3 15                                      strbne r2, [r3, #0x9b]
0041b650  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0041b654  00 00 53 e3                                      cmp r3, #0
0041b658  00 20 a0 13                                      movne r2, #0
0041b65c  9b 20 c3 15                                      strbne r2, [r3, #0x9b]
0041b660  f8 30 90 e5                                      ldr r3, [r0, #0xf8]
0041b664  00 00 53 e3                                      cmp r3, #0
0041b668  00 20 a0 13                                      movne r2, #0
0041b66c  9b 20 c3 15                                      strbne r2, [r3, #0x9b]
0041b670  00 30 a0 e3                                      mov r3, #0
0041b674  00 20 a0 e1                                      mov r2, r0
0041b678  03 40 a0 e1                                      mov r4, r3
0041b67c  fc c0 91 e5                                      ldr ip, [r1, #0xfc]
0041b680  01 30 83 e2                                      add r3, r3, #1
0041b684  04 10 81 e2                                      add r1, r1, #4
0041b688  00 00 5c e3                                      cmp ip, #0
0041b68c  9b 40 cc 15                                      strbne r4, [ip, #0x9b]
0041b690  08 00 53 e3                                      cmp r3, #8
0041b694  f8 ff ff 1a                                      bne #0x41b67c
0041b698  00 30 a0 e3                                      mov r3, #0
0041b69c  00 10 a0 e1                                      mov r1, r0
0041b6a0  03 40 a0 e1                                      mov r4, r3
0041b6a4  1c c1 91 e5                                      ldr ip, [r1, #0x11c]
0041b6a8  01 30 83 e2                                      add r3, r3, #1
0041b6ac  04 10 81 e2                                      add r1, r1, #4
0041b6b0  00 00 5c e3                                      cmp ip, #0
0041b6b4  9b 40 cc 15                                      strbne r4, [ip, #0x9b]
0041b6b8  08 00 53 e3                                      cmp r3, #8
0041b6bc  f8 ff ff 1a                                      bne #0x41b6a4
0041b6c0  00 30 a0 e3                                      mov r3, #0
0041b6c4  03 c0 a0 e1                                      mov ip, r3
0041b6c8  3c 11 90 e5                                      ldr r1, [r0, #0x13c]
0041b6cc  01 30 83 e2                                      add r3, r3, #1
0041b6d0  04 00 80 e2                                      add r0, r0, #4
0041b6d4  00 00 51 e3                                      cmp r1, #0
0041b6d8  9b c0 c1 15                                      strbne ip, [r1, #0x9b]
0041b6dc  0c 00 53 e3                                      cmp r3, #0xc
0041b6e0  f8 ff ff 1a                                      bne #0x41b6c8
0041b6e4  00 30 a0 e3                                      mov r3, #0
0041b6e8  03 00 a0 e1                                      mov r0, r3
0041b6ec  6c 11 92 e5                                      ldr r1, [r2, #0x16c]
0041b6f0  01 30 83 e2                                      add r3, r3, #1
0041b6f4  04 20 82 e2                                      add r2, r2, #4
0041b6f8  00 00 51 e3                                      cmp r1, #0
0041b6fc  9b 00 c1 15                                      strbne r0, [r1, #0x9b]
0041b700  0c 00 53 e3                                      cmp r3, #0xc
0041b704  f8 ff ff 1a                                      bne #0x41b6ec
0041b708  10 00 bd e8                                      ldm sp!, {r4}
0041b70c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041b790, declared_size=216, range_size=216, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap17GetMapScreenCoordERK7Point3DIfEffff
; demangled: HUDMinimap::GetMapScreenCoord(Point3D<float> const&, float, float, float, float)
; decoder-mode: arm
0041b790  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0041b794  00 c0 a0 e3                                      mov ip, #0
0041b798  0c d0 4d e2                                      sub sp, sp, #0xc
0041b79c  00 40 a0 e1                                      mov r4, r0
0041b7a0  04 c0 80 e5                                      str ip, [r0, #4]
0041b7a4  03 50 a0 e1                                      mov r5, r3
0041b7a8  00 c0 84 e5                                      str ip, [r4]
0041b7ac  02 00 a0 e1                                      mov r0, r2
0041b7b0  0d 10 a0 e1                                      mov r1, sp
0041b7b4  00 c0 8d e5                                      str ip, [sp]
0041b7b8  04 c0 8d e5                                      str ip, [sp, #4]
0041b7bc  d4 cf ff eb                                      bl #0x40f714
0041b7c0  00 10 9d e5                                      ldr r1, [sp]
0041b7c4  05 00 a0 e1                                      mov r0, r5
0041b7c8  67 cd fb eb                                      bl #0x30ed6c
0041b7cc  34 cc fb eb                                      bl #0x30e8a4
0041b7d0  ff 35 a0 e3                                      mov r3, #0x3fc00000
0041b7d4  00 20 a0 e3                                      mov r2, #0
0041b7d8  02 36 83 e2                                      add r3, r3, #0x200000
0041b7dc  b4 cc fb eb                                      bl #0x30eab4
0041b7e0  00 60 a0 e1                                      mov r6, r0
0041b7e4  24 00 9d e5                                      ldr r0, [sp, #0x24]
0041b7e8  01 70 a0 e1                                      mov r7, r1
0041b7ec  2c cc fb eb                                      bl #0x30e8a4
0041b7f0  00 20 a0 e1                                      mov r2, r0
0041b7f4  01 30 a0 e1                                      mov r3, r1
0041b7f8  06 00 a0 e1                                      mov r0, r6
0041b7fc  07 10 a0 e1                                      mov r1, r7
0041b800  cf cc fb eb                                      bl #0x30eb44
0041b804  a5 cb fb eb                                      bl #0x30e6a0
0041b808  04 30 9d e5                                      ldr r3, [sp, #4]
0041b80c  00 00 84 e5                                      str r0, [r4]
0041b810  20 10 9d e5                                      ldr r1, [sp, #0x20]
0041b814  02 01 83 e2                                      add r0, r3, #0x80000000
0041b818  53 cd fb eb                                      bl #0x30ed6c
0041b81c  20 cc fb eb                                      bl #0x30e8a4
0041b820  ff 35 a0 e3                                      mov r3, #0x3fc00000
0041b824  00 20 a0 e3                                      mov r2, #0
0041b828  02 36 83 e2                                      add r3, r3, #0x200000
0041b82c  a0 cc fb eb                                      bl #0x30eab4
0041b830  00 60 a0 e1                                      mov r6, r0
0041b834  28 00 9d e5                                      ldr r0, [sp, #0x28]
0041b838  01 70 a0 e1                                      mov r7, r1
0041b83c  18 cc fb eb                                      bl #0x30e8a4
0041b840  00 20 a0 e1                                      mov r2, r0
0041b844  01 30 a0 e1                                      mov r3, r1
0041b848  06 00 a0 e1                                      mov r0, r6
0041b84c  07 10 a0 e1                                      mov r1, r7
0041b850  bb cc fb eb                                      bl #0x30eb44
0041b854  91 cb fb eb                                      bl #0x30e6a0
0041b858  04 00 84 e5                                      str r0, [r4, #4]
0041b85c  04 00 a0 e1                                      mov r0, r4
0041b860  0c d0 8d e2                                      add sp, sp, #0xc
0041b864  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0041b868, declared_size=76, range_size=76, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap20IsInsideVisitedRoomsERK7Point3DIfE
; demangled: HUDMinimap::IsInsideVisitedRooms(Point3D<float> const&)
; decoder-mode: arm
0041b868  70 40 2d e9                                      push {r4, r5, r6, lr}
0041b86c  00 50 a0 e1                                      mov r5, r0
0041b870  e4 40 b5 e5                                      ldr r4, [r5, #0xe4]!
0041b874  01 60 a0 e1                                      mov r6, r1
0041b878  05 00 54 e1                                      cmp r4, r5
0041b87c  03 00 00 1a                                      bne #0x41b890
0041b880  09 00 00 ea                                      b #0x41b8ac
0041b884  00 40 94 e5                                      ldr r4, [r4]
0041b888  04 00 55 e1                                      cmp r5, r4
0041b88c  06 00 00 0a                                      beq #0x41b8ac
0041b890  08 00 94 e5                                      ldr r0, [r4, #8]
0041b894  06 10 a0 e1                                      mov r1, r6
0041b898  0b eb fd eb                                      bl #0x3964cc
0041b89c  00 00 50 e3                                      cmp r0, #0
0041b8a0  f7 ff ff 0a                                      beq #0x41b884
0041b8a4  01 00 a0 e3                                      mov r0, #1
0041b8a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0041b8ac  00 00 a0 e3                                      mov r0, #0
0041b8b0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0041b8b4, declared_size=264, range_size=264, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap20SetObjectsVisibilityEP5Level
; demangled: HUDMinimap::SetObjectsVisibility(Level*)
; decoder-mode: arm
0041b8b4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0041b8b8  d4 30 90 e5                                      ldr r3, [r0, #0xd4]
0041b8bc  00 50 a0 e1                                      mov r5, r0
0041b8c0  01 70 a0 e1                                      mov r7, r1
0041b8c4  00 00 53 e3                                      cmp r3, #0
0041b8c8  13 00 00 da                                      ble #0x41b91c
0041b8cc  00 60 a0 e3                                      mov r6, #0
0041b8d0  00 40 a0 e1                                      mov r4, r0
0041b8d4  06 80 a0 e1                                      mov r8, r6
0041b8d8  01 a0 a0 e3                                      mov sl, #1
0041b8dc  dc 13 94 e5                                      ldr r1, [r4, #0x3dc]
0041b8e0  00 00 51 e3                                      cmp r1, #0
0041b8e4  05 00 00 0a                                      beq #0x41b900
0041b8e8  00 00 57 e3                                      cmp r7, #0
0041b8ec  03 00 00 0a                                      beq #0x41b900
0041b8f0  74 23 91 e5                                      ldr r2, [r1, #0x374]
0041b8f4  10 31 97 e5                                      ldr r3, [r7, #0x110]
0041b8f8  03 00 52 e1                                      cmp r2, r3
0041b8fc  26 00 00 0a                                      beq #0x41b99c
0041b900  fc 30 94 e5                                      ldr r3, [r4, #0xfc]
0041b904  9b 80 c3 e5                                      strb r8, [r3, #0x9b]
0041b908  d4 30 95 e5                                      ldr r3, [r5, #0xd4]
0041b90c  01 60 86 e2                                      add r6, r6, #1
0041b910  04 40 84 e2                                      add r4, r4, #4
0041b914  06 00 53 e1                                      cmp r3, r6
0041b918  ef ff ff ca                                      bgt #0x41b8dc
0041b91c  d0 30 95 e5                                      ldr r3, [r5, #0xd0]
0041b920  00 00 53 e3                                      cmp r3, #0
0041b924  1b 00 00 da                                      ble #0x41b998
0041b928  00 60 a0 e3                                      mov r6, #0
0041b92c  05 40 a0 e1                                      mov r4, r5
0041b930  06 70 a0 e1                                      mov r7, r6
0041b934  01 80 a0 e3                                      mov r8, #1
0041b938  06 00 00 ea                                      b #0x41b958
0041b93c  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
0041b940  01 60 86 e2                                      add r6, r6, #1
0041b944  04 40 84 e2                                      add r4, r4, #4
0041b948  9b 80 c3 e5                                      strb r8, [r3, #0x9b]
0041b94c  d0 30 95 e5                                      ldr r3, [r5, #0xd0]
0041b950  06 00 53 e1                                      cmp r3, r6
0041b954  0e 00 00 da                                      ble #0x41b994
0041b958  fc 33 94 e5                                      ldr r3, [r4, #0x3fc]
0041b95c  05 00 a0 e1                                      mov r0, r5
0041b960  00 00 53 e3                                      cmp r3, #0
0041b964  16 1e 83 e2                                      add r1, r3, #0x160
0041b968  02 00 00 0a                                      beq #0x41b978
0041b96c  bd ff ff eb                                      bl #0x41b868
0041b970  00 00 50 e3                                      cmp r0, #0
0041b974  f0 ff ff 1a                                      bne #0x41b93c
0041b978  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
0041b97c  01 60 86 e2                                      add r6, r6, #1
0041b980  04 40 84 e2                                      add r4, r4, #4
0041b984  9b 70 c3 e5                                      strb r7, [r3, #0x9b]
0041b988  d0 30 95 e5                                      ldr r3, [r5, #0xd0]
0041b98c  06 00 53 e1                                      cmp r3, r6
0041b990  f0 ff ff ca                                      bgt #0x41b958
0041b994  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0041b998  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0041b99c  16 1e 81 e2                                      add r1, r1, #0x160
0041b9a0  05 00 a0 e1                                      mov r0, r5
0041b9a4  af ff ff eb                                      bl #0x41b868
0041b9a8  00 00 50 e3                                      cmp r0, #0
0041b9ac  d3 ff ff 0a                                      beq #0x41b900
0041b9b0  fc 30 94 e5                                      ldr r3, [r4, #0xfc]
0041b9b4  9b a0 c3 e5                                      strb sl, [r3, #0x9b]
0041b9b8  d2 ff ff ea                                      b #0x41b908

; FUNCTION 0x0041b9bc, declared_size=1144, range_size=1144, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap19UpdateIconPositionsEPS_N7gameswf4rectE
; demangled: HUDMinimap::UpdateIconPositions(HUDMinimap*, gameswf::rect)
; decoder-mode: arm
0041b9bc  08 d0 4d e2                                      sub sp, sp, #8
0041b9c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0041b9c4  60 c4 9f e5                                      ldr ip, [pc, #0x460]
0041b9c8  94 d0 4d e2                                      sub sp, sp, #0x94
0041b9cc  b8 20 8d e5                                      str r2, [sp, #0xb8]
0041b9d0  58 24 9f e5                                      ldr r2, [pc, #0x458]
0041b9d4  0c c0 8f e0                                      add ip, pc, ip
0041b9d8  bc 30 8d e5                                      str r3, [sp, #0xbc]
0041b9dc  02 50 9c e7                                      ldr r5, [ip, r2]
0041b9e0  00 40 a0 e1                                      mov r4, r0
0041b9e4  01 70 a0 e1                                      mov r7, r1
0041b9e8  10 30 95 e5                                      ldr r3, [r5, #0x10]
0041b9ec  c4 00 9d e5                                      ldr r0, [sp, #0xc4]
0041b9f0  c0 60 9d e5                                      ldr r6, [sp, #0xc0]
0041b9f4  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0041b9f8  bc 90 9d e5                                      ldr sb, [sp, #0xbc]
0041b9fc  b8 80 9d e5                                      ldr r8, [sp, #0xb8]
0041ba00  e4 30 93 e5                                      ldr r3, [r3, #0xe4]
0041ba04  00 00 53 e3                                      cmp r3, #0
0041ba08  03 01 00 0a                                      beq #0x41be1c
0041ba0c  06 10 a0 e1                                      mov r1, r6
0041ba10  65 ca fb eb                                      bl #0x30e3ac
0041ba14  08 10 a0 e1                                      mov r1, r8
0041ba18  00 a0 a0 e1                                      mov sl, r0
0041ba1c  09 00 a0 e1                                      mov r0, sb
0041ba20  61 ca fb eb                                      bl #0x30e3ac
0041ba24  3f 14 a0 e3                                      mov r1, #0x3f000000
0041ba28  00 b0 a0 e1                                      mov fp, r0
0041ba2c  ce cc fb eb                                      bl #0x30ed6c
0041ba30  08 10 a0 e1                                      mov r1, r8
0041ba34  5a cc fb eb                                      bl #0x30eba4
0041ba38  3f 14 a0 e3                                      mov r1, #0x3f000000
0041ba3c  20 00 8d e5                                      str r0, [sp, #0x20]
0041ba40  0a 00 a0 e1                                      mov r0, sl
0041ba44  c8 cc fb eb                                      bl #0x30ed6c
0041ba48  06 10 a0 e1                                      mov r1, r6
0041ba4c  54 cc fb eb                                      bl #0x30eba4
0041ba50  1c 00 8d e5                                      str r0, [sp, #0x1c]
0041ba54  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
0041ba58  00 00 53 e3                                      cmp r3, #0
0041ba5c  37 00 00 da                                      ble #0x41bb40
0041ba60  88 20 8d e2                                      add r2, sp, #0x88
0041ba64  5c 30 8d e2                                      add r3, sp, #0x5c
0041ba68  14 50 8d e5                                      str r5, [sp, #0x14]
0041ba6c  04 60 a0 e1                                      mov r6, r4
0041ba70  04 50 a0 e1                                      mov r5, r4
0041ba74  00 80 a0 e3                                      mov r8, #0
0041ba78  18 20 8d e5                                      str r2, [sp, #0x18]
0041ba7c  24 30 8d e5                                      str r3, [sp, #0x24]
0041ba80  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0041ba84  08 10 a0 e1                                      mov r1, r8
0041ba88  01 20 a0 e3                                      mov r2, #1
0041ba8c  40 00 9c e5                                      ldr r0, [ip, #0x40]
0041ba90  2b 4b fd eb                                      bl #0x36e744
0041ba94  60 36 90 e5                                      ldr r3, [r0, #0x660]
0041ba98  01 80 88 e2                                      add r8, r8, #1
0041ba9c  04 10 a0 e1                                      mov r1, r4
0041baa0  00 00 53 e3                                      cmp r3, #0
0041baa4  20 00 00 0a                                      beq #0x41bb2c
0041baa8  60 21 93 e5                                      ldr r2, [r3, #0x160]
0041baac  64 01 93 e5                                      ldr r0, [r3, #0x164]
0041bab0  68 31 93 e5                                      ldr r3, [r3, #0x168]
0041bab4  cc 21 85 e5                                      str r2, [r5, #0x1cc]
0041bab8  d0 01 85 e5                                      str r0, [r5, #0x1d0]
0041babc  d4 31 85 e5                                      str r3, [r5, #0x1d4]
0041bac0  5c 20 8d e5                                      str r2, [sp, #0x5c]
0041bac4  d0 01 95 e5                                      ldr r0, [r5, #0x1d0]
0041bac8  20 e0 9d e5                                      ldr lr, [sp, #0x20]
0041bacc  24 20 9d e5                                      ldr r2, [sp, #0x24]
0041bad0  60 00 8d e5                                      str r0, [sp, #0x60]
0041bad4  d4 c1 95 e5                                      ldr ip, [r5, #0x1d4]
0041bad8  0b 30 a0 e1                                      mov r3, fp
0041badc  18 00 9d e5                                      ldr r0, [sp, #0x18]
0041bae0  64 c0 8d e5                                      str ip, [sp, #0x64]
0041bae4  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0041bae8  04 e0 8d e5                                      str lr, [sp, #4]
0041baec  00 a0 8d e5                                      str sl, [sp]
0041baf0  08 c0 8d e5                                      str ip, [sp, #8]
0041baf4  25 ff ff eb                                      bl #0x41b790
0041baf8  88 00 9d e5                                      ldr r0, [sp, #0x88]
0041bafc  72 ca fb eb                                      bl #0x30e4cc
0041bb00  00 90 a0 e1                                      mov sb, r0
0041bb04  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
0041bb08  6f ca fb eb                                      bl #0x30e4cc
0041bb0c  09 20 a0 e1                                      mov r2, sb
0041bb10  00 30 a0 e1                                      mov r3, r0
0041bb14  ec 10 96 e5                                      ldr r1, [r6, #0xec]
0041bb18  04 00 97 e5                                      ldr r0, [r7, #4]
0041bb1c  33 3a 0e eb                                      bl #0x7aa3f0
0041bb20  ec 30 96 e5                                      ldr r3, [r6, #0xec]
0041bb24  01 20 a0 e3                                      mov r2, #1
0041bb28  9b 20 c3 e5                                      strb r2, [r3, #0x9b]
0041bb2c  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
0041bb30  04 60 86 e2                                      add r6, r6, #4
0041bb34  0c 50 85 e2                                      add r5, r5, #0xc
0041bb38  08 00 53 e1                                      cmp r3, r8
0041bb3c  cf ff ff ca                                      bgt #0x41ba80
0041bb40  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
0041bb44  00 00 53 e3                                      cmp r3, #0
0041bb48  30 00 00 da                                      ble #0x41bc10
0041bb4c  80 30 8d e2                                      add r3, sp, #0x80
0041bb50  50 c0 8d e2                                      add ip, sp, #0x50
0041bb54  04 60 a0 e1                                      mov r6, r4
0041bb58  04 50 a0 e1                                      mov r5, r4
0041bb5c  00 80 a0 e3                                      mov r8, #0
0041bb60  14 30 8d e5                                      str r3, [sp, #0x14]
0041bb64  18 c0 8d e5                                      str ip, [sp, #0x18]
0041bb68  10 b0 8d e5                                      str fp, [sp, #0x10]
0041bb6c  04 00 a0 e1                                      mov r0, r4
0041bb70  00 30 94 e5                                      ldr r3, [r4]
0041bb74  0f e0 a0 e1                                      mov lr, pc
0041bb78  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0041bb7c  4c 33 95 e5                                      ldr r3, [r5, #0x34c]
0041bb80  20 e0 9d e5                                      ldr lr, [sp, #0x20]
0041bb84  04 10 a0 e1                                      mov r1, r4
0041bb88  50 30 8d e5                                      str r3, [sp, #0x50]
0041bb8c  50 c3 95 e5                                      ldr ip, [r5, #0x350]
0041bb90  18 20 9d e5                                      ldr r2, [sp, #0x18]
0041bb94  10 30 9d e5                                      ldr r3, [sp, #0x10]
0041bb98  54 c0 8d e5                                      str ip, [sp, #0x54]
0041bb9c  54 c3 95 e5                                      ldr ip, [r5, #0x354]
0041bba0  14 00 9d e5                                      ldr r0, [sp, #0x14]
0041bba4  04 e0 8d e5                                      str lr, [sp, #4]
0041bba8  58 c0 8d e5                                      str ip, [sp, #0x58]
0041bbac  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0041bbb0  00 a0 8d e5                                      str sl, [sp]
0041bbb4  01 80 88 e2                                      add r8, r8, #1
0041bbb8  08 c0 8d e5                                      str ip, [sp, #8]
0041bbbc  f3 fe ff eb                                      bl #0x41b790
0041bbc0  80 00 9d e5                                      ldr r0, [sp, #0x80]
0041bbc4  40 ca fb eb                                      bl #0x30e4cc
0041bbc8  00 90 a0 e1                                      mov sb, r0
0041bbcc  84 00 9d e5                                      ldr r0, [sp, #0x84]
0041bbd0  3d ca fb eb                                      bl #0x30e4cc
0041bbd4  6c b1 96 e5                                      ldr fp, [r6, #0x16c]
0041bbd8  00 30 a0 e1                                      mov r3, r0
0041bbdc  09 20 a0 e1                                      mov r2, sb
0041bbe0  04 00 97 e5                                      ldr r0, [r7, #4]
0041bbe4  0b 10 a0 e1                                      mov r1, fp
0041bbe8  00 3a 0e eb                                      bl #0x7aa3f0
0041bbec  6c 31 96 e5                                      ldr r3, [r6, #0x16c]
0041bbf0  01 20 a0 e3                                      mov r2, #1
0041bbf4  0c 50 85 e2                                      add r5, r5, #0xc
0041bbf8  9b 20 c3 e5                                      strb r2, [r3, #0x9b]
0041bbfc  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
0041bc00  04 60 86 e2                                      add r6, r6, #4
0041bc04  08 00 53 e1                                      cmp r3, r8
0041bc08  d7 ff ff ca                                      bgt #0x41bb6c
0041bc0c  10 b0 9d e5                                      ldr fp, [sp, #0x10]
0041bc10  d4 30 94 e5                                      ldr r3, [r4, #0xd4]
0041bc14  00 00 53 e3                                      cmp r3, #0
0041bc18  26 00 00 da                                      ble #0x41bcb8
0041bc1c  78 30 8d e2                                      add r3, sp, #0x78
0041bc20  44 c0 8d e2                                      add ip, sp, #0x44
0041bc24  04 50 a0 e1                                      mov r5, r4
0041bc28  04 60 a0 e1                                      mov r6, r4
0041bc2c  00 80 a0 e3                                      mov r8, #0
0041bc30  14 30 8d e5                                      str r3, [sp, #0x14]
0041bc34  18 c0 8d e5                                      str ip, [sp, #0x18]
0041bc38  fc 31 95 e5                                      ldr r3, [r5, #0x1fc]
0041bc3c  20 e0 9d e5                                      ldr lr, [sp, #0x20]
0041bc40  04 10 a0 e1                                      mov r1, r4
0041bc44  44 30 8d e5                                      str r3, [sp, #0x44]
0041bc48  00 c2 95 e5                                      ldr ip, [r5, #0x200]
0041bc4c  18 20 9d e5                                      ldr r2, [sp, #0x18]
0041bc50  0b 30 a0 e1                                      mov r3, fp
0041bc54  48 c0 8d e5                                      str ip, [sp, #0x48]
0041bc58  04 c2 95 e5                                      ldr ip, [r5, #0x204]
0041bc5c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0041bc60  04 e0 8d e5                                      str lr, [sp, #4]
0041bc64  4c c0 8d e5                                      str ip, [sp, #0x4c]
0041bc68  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0041bc6c  00 a0 8d e5                                      str sl, [sp]
0041bc70  01 80 88 e2                                      add r8, r8, #1
0041bc74  08 c0 8d e5                                      str ip, [sp, #8]
0041bc78  c4 fe ff eb                                      bl #0x41b790
0041bc7c  78 00 9d e5                                      ldr r0, [sp, #0x78]
0041bc80  11 ca fb eb                                      bl #0x30e4cc
0041bc84  00 90 a0 e1                                      mov sb, r0
0041bc88  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0041bc8c  0e ca fb eb                                      bl #0x30e4cc
0041bc90  fc 10 96 e5                                      ldr r1, [r6, #0xfc]
0041bc94  00 30 a0 e1                                      mov r3, r0
0041bc98  09 20 a0 e1                                      mov r2, sb
0041bc9c  04 00 97 e5                                      ldr r0, [r7, #4]
0041bca0  d2 39 0e eb                                      bl #0x7aa3f0
0041bca4  d4 30 94 e5                                      ldr r3, [r4, #0xd4]
0041bca8  0c 50 85 e2                                      add r5, r5, #0xc
0041bcac  04 60 86 e2                                      add r6, r6, #4
0041bcb0  08 00 53 e1                                      cmp r3, r8
0041bcb4  df ff ff ca                                      bgt #0x41bc38
0041bcb8  d0 30 94 e5                                      ldr r3, [r4, #0xd0]
0041bcbc  00 00 53 e3                                      cmp r3, #0
0041bcc0  26 00 00 da                                      ble #0x41bd60
0041bcc4  70 e0 8d e2                                      add lr, sp, #0x70
0041bcc8  38 20 8d e2                                      add r2, sp, #0x38
0041bccc  04 60 a0 e1                                      mov r6, r4
0041bcd0  04 50 a0 e1                                      mov r5, r4
0041bcd4  00 80 a0 e3                                      mov r8, #0
0041bcd8  14 e0 8d e5                                      str lr, [sp, #0x14]
0041bcdc  18 20 8d e5                                      str r2, [sp, #0x18]
0041bce0  5c 32 95 e5                                      ldr r3, [r5, #0x25c]
0041bce4  20 e0 9d e5                                      ldr lr, [sp, #0x20]
0041bce8  04 10 a0 e1                                      mov r1, r4
0041bcec  38 30 8d e5                                      str r3, [sp, #0x38]
0041bcf0  60 c2 95 e5                                      ldr ip, [r5, #0x260]
0041bcf4  18 20 9d e5                                      ldr r2, [sp, #0x18]
0041bcf8  0b 30 a0 e1                                      mov r3, fp
0041bcfc  3c c0 8d e5                                      str ip, [sp, #0x3c]
0041bd00  64 c2 95 e5                                      ldr ip, [r5, #0x264]
0041bd04  14 00 9d e5                                      ldr r0, [sp, #0x14]
0041bd08  04 e0 8d e5                                      str lr, [sp, #4]
0041bd0c  40 c0 8d e5                                      str ip, [sp, #0x40]
0041bd10  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0041bd14  00 a0 8d e5                                      str sl, [sp]
0041bd18  01 80 88 e2                                      add r8, r8, #1
0041bd1c  08 c0 8d e5                                      str ip, [sp, #8]
0041bd20  9a fe ff eb                                      bl #0x41b790
0041bd24  70 00 9d e5                                      ldr r0, [sp, #0x70]
0041bd28  e7 c9 fb eb                                      bl #0x30e4cc
0041bd2c  00 90 a0 e1                                      mov sb, r0
0041bd30  74 00 9d e5                                      ldr r0, [sp, #0x74]
0041bd34  e4 c9 fb eb                                      bl #0x30e4cc
0041bd38  1c 11 96 e5                                      ldr r1, [r6, #0x11c]
0041bd3c  00 30 a0 e1                                      mov r3, r0
0041bd40  09 20 a0 e1                                      mov r2, sb
0041bd44  04 00 97 e5                                      ldr r0, [r7, #4]
0041bd48  a8 39 0e eb                                      bl #0x7aa3f0
0041bd4c  d0 30 94 e5                                      ldr r3, [r4, #0xd0]
0041bd50  0c 50 85 e2                                      add r5, r5, #0xc
0041bd54  04 60 86 e2                                      add r6, r6, #4
0041bd58  08 00 53 e1                                      cmp r3, r8
0041bd5c  df ff ff ca                                      bgt #0x41bce0
0041bd60  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
0041bd64  00 00 53 e3                                      cmp r3, #0
0041bd68  2b 00 00 da                                      ble #0x41be1c
0041bd6c  68 e0 8d e2                                      add lr, sp, #0x68
0041bd70  2c 20 8d e2                                      add r2, sp, #0x2c
0041bd74  04 60 a0 e1                                      mov r6, r4
0041bd78  04 50 a0 e1                                      mov r5, r4
0041bd7c  00 80 a0 e3                                      mov r8, #0
0041bd80  10 e0 8d e5                                      str lr, [sp, #0x10]
0041bd84  14 20 8d e5                                      str r2, [sp, #0x14]
0041bd88  18 b0 8d e5                                      str fp, [sp, #0x18]
0041bd8c  bc 32 95 e5                                      ldr r3, [r5, #0x2bc]
0041bd90  20 e0 9d e5                                      ldr lr, [sp, #0x20]
0041bd94  04 10 a0 e1                                      mov r1, r4
0041bd98  2c 30 8d e5                                      str r3, [sp, #0x2c]
0041bd9c  c0 c2 95 e5                                      ldr ip, [r5, #0x2c0]
0041bda0  14 20 9d e5                                      ldr r2, [sp, #0x14]
0041bda4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0041bda8  30 c0 8d e5                                      str ip, [sp, #0x30]
0041bdac  c4 c2 95 e5                                      ldr ip, [r5, #0x2c4]
0041bdb0  10 00 9d e5                                      ldr r0, [sp, #0x10]
0041bdb4  04 e0 8d e5                                      str lr, [sp, #4]
0041bdb8  34 c0 8d e5                                      str ip, [sp, #0x34]
0041bdbc  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0041bdc0  00 a0 8d e5                                      str sl, [sp]
0041bdc4  01 80 88 e2                                      add r8, r8, #1
0041bdc8  08 c0 8d e5                                      str ip, [sp, #8]
0041bdcc  6f fe ff eb                                      bl #0x41b790
0041bdd0  68 00 9d e5                                      ldr r0, [sp, #0x68]
0041bdd4  bc c9 fb eb                                      bl #0x30e4cc
0041bdd8  00 90 a0 e1                                      mov sb, r0
0041bddc  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0041bde0  b9 c9 fb eb                                      bl #0x30e4cc
0041bde4  3c b1 96 e5                                      ldr fp, [r6, #0x13c]
0041bde8  00 30 a0 e1                                      mov r3, r0
0041bdec  09 20 a0 e1                                      mov r2, sb
0041bdf0  04 00 97 e5                                      ldr r0, [r7, #4]
0041bdf4  0b 10 a0 e1                                      mov r1, fp
0041bdf8  7c 39 0e eb                                      bl #0x7aa3f0
0041bdfc  3c 31 96 e5                                      ldr r3, [r6, #0x13c]
0041be00  01 20 a0 e3                                      mov r2, #1
0041be04  0c 50 85 e2                                      add r5, r5, #0xc
0041be08  9b 20 c3 e5                                      strb r2, [r3, #0x9b]
0041be0c  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
0041be10  04 60 86 e2                                      add r6, r6, #4
0041be14  08 00 53 e1                                      cmp r3, r8
0041be18  db ff ff ca                                      bgt #0x41bd8c
0041be1c  94 d0 8d e2                                      add sp, sp, #0x94
0041be20  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0041be24  08 d0 8d e2                                      add sp, sp, #8
0041be28  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0041be2c  bc 90 57 00 f4 37 00 00                          .byte 0xbc, 0x90, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0041be34, declared_size=68, range_size=68, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap16EnableGameCameraEv
; demangled: HUDMinimap::EnableGameCamera()
; decoder-mode: arm
0041be34  34 30 9f e5                                      ldr r3, [pc, #0x34]
0041be38  34 20 9f e5                                      ldr r2, [pc, #0x34]
0041be3c  10 40 2d e9                                      push {r4, lr}
0041be40  03 30 8f e0                                      add r3, pc, r3
0041be44  02 00 93 e7                                      ldr r0, [r3, r2]
0041be48  d1 0d fc eb                                      bl #0x31f594
0041be4c  00 40 50 e2                                      subs r4, r0, #0
0041be50  04 00 00 0a                                      beq #0x41be68
0041be54  28 41 94 e5                                      ldr r4, [r4, #0x128]
0041be58  00 00 54 e3                                      cmp r4, #0
0041be5c  01 00 00 0a                                      beq #0x41be68
0041be60  04 00 a0 e1                                      mov r0, r4
0041be64  7c cd ff eb                                      bl #0x40f45c
0041be68  04 00 a0 e1                                      mov r0, r4
0041be6c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0041be70  50 8c 57 00 f4 37 00 00                          .byte 0x50, 0x8c, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0041be78, declared_size=16, range_size=16, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap15EnableMapCameraEv
; demangled: HUDMinimap::EnableMapCamera()
; decoder-mode: arm
0041be78  e0 00 90 e5                                      ldr r0, [r0, #0xe0]
0041be7c  00 00 50 e3                                      cmp r0, #0
0041be80  1e ff 2f 01                                      bxeq lr
0041be84  74 cd ff ea                                      b #0x40f45c

; FUNCTION 0x0041be88, declared_size=464, range_size=464, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap15CreateMapCameraEv
; demangled: HUDMinimap::CreateMapCamera()
; decoder-mode: arm
0041be88  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0041be8c  e0 10 90 e5                                      ldr r1, [r0, #0xe0]
0041be90  90 41 9f e5                                      ldr r4, [pc, #0x190]
0041be94  08 d0 4d e2                                      sub sp, sp, #8
0041be98  00 00 51 e3                                      cmp r1, #0
0041be9c  00 50 a0 e1                                      mov r5, r0
0041bea0  04 40 8f e0                                      add r4, pc, r4
0041bea4  01 00 00 0a                                      beq #0x41beb0
0041bea8  08 d0 8d e2                                      add sp, sp, #8
0041beac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0041beb0  a8 00 a0 e3                                      mov r0, #0xa8
0041beb4  ad d1 fb eb                                      bl #0x310570
0041beb8  00 60 a0 e1                                      mov r6, r0
0041bebc  2b d0 ff eb                                      bl #0x40ff70
0041bec0  00 00 56 e3                                      cmp r6, #0
0041bec4  e0 60 85 e5                                      str r6, [r5, #0xe0]
0041bec8  40 00 00 0a                                      beq #0x41bfd0
0041becc  58 31 9f e5                                      ldr r3, [pc, #0x158]
0041bed0  03 30 94 e7                                      ldr r3, [r4, r3]
0041bed4  00 80 93 e5                                      ldr r8, [r3]
0041bed8  00 00 58 e3                                      cmp r8, #0
0041bedc  10 00 00 0a                                      beq #0x41bf24
0041bee0  48 31 9f e5                                      ldr r3, [pc, #0x148]
0041bee4  48 91 9f e5                                      ldr sb, [pc, #0x148]
0041bee8  00 70 a0 e3                                      mov r7, #0
0041beec  03 30 94 e7                                      ldr r3, [r4, r3]
0041bef0  09 90 8f e0                                      add sb, pc, sb
0041bef4  00 a0 93 e5                                      ldr sl, [r3]
0041bef8  02 00 00 ea                                      b #0x41bf08
0041befc  01 70 87 e2                                      add r7, r7, #1
0041bf00  08 00 57 e1                                      cmp r7, r8
0041bf04  06 00 00 0a                                      beq #0x41bf24
0041bf08  07 11 9a e7                                      ldr r1, [sl, r7, lsl #2]
0041bf0c  09 00 a0 e1                                      mov r0, sb
0041bf10  01 c9 fb eb                                      bl #0x30e31c
0041bf14  00 00 50 e3                                      cmp r0, #0
0041bf18  f7 ff ff 1a                                      bne #0x41befc
0041bf1c  07 20 a0 e1                                      mov r2, r7
0041bf20  00 00 00 ea                                      b #0x41bf28
0041bf24  00 20 e0 e3                                      mvn r2, #0
0041bf28  08 31 9f e5                                      ldr r3, [pc, #0x108]
0041bf2c  08 11 9f e5                                      ldr r1, [pc, #0x108]
0041bf30  06 00 a0 e1                                      mov r0, r6
0041bf34  03 30 8f e0                                      add r3, pc, r3
0041bf38  01 10 8f e0                                      add r1, pc, r1
0041bf3c  d2 d1 ff eb                                      bl #0x41068c
0041bf40  e0 30 95 e5                                      ldr r3, [r5, #0xe0]
0041bf44  01 20 a0 e3                                      mov r2, #1
0041bf48  00 10 a0 e3                                      mov r1, #0
0041bf4c  85 20 c3 e5                                      strb r2, [r3, #0x85]
0041bf50  e0 00 95 e5                                      ldr r0, [r5, #0xe0]
0041bf54  b0 d5 ff eb                                      bl #0x41161c
0041bf58  fe 75 a0 e3                                      mov r7, #0x3f800000
0041bf5c  00 80 a0 e3                                      mov r8, #0
0041bf60  77 18 0f e3                                      movw r1, #0xf877
0041bf64  00 c0 05 e3                                      movw ip, #0x5000
0041bf68  e0 00 95 e5                                      ldr r0, [r5, #0xe0]
0041bf6c  00 60 a0 e3                                      mov r6, #0
0041bf70  07 20 a0 e1                                      mov r2, r7
0041bf74  08 30 a0 e1                                      mov r3, r8
0041bf78  c3 c7 44 e3                                      movt ip, #0x47c3
0041bf7c  db 1e 43 e3                                      movt r1, #0x3edb
0041bf80  00 c0 8d e5                                      str ip, [sp]
0041bf84  04 60 8d e5                                      str r6, [sp, #4]
0041bf88  86 ca ff eb                                      bl #0x40e9a8
0041bf8c  e0 30 95 e5                                      ldr r3, [r5, #0xe0]
0041bf90  06 20 a0 e1                                      mov r2, r6
0041bf94  8c 70 83 e5                                      str r7, [r3, #0x8c]
0041bf98  e0 10 95 e5                                      ldr r1, [r5, #0xe0]
0041bf9c  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0041bfa0  88 80 81 e5                                      str r8, [r1, #0x88]
0041bfa4  03 30 94 e7                                      ldr r3, [r4, r3]
0041bfa8  e0 00 95 e5                                      ldr r0, [r5, #0xe0]
0041bfac  1c 40 a0 e3                                      mov r4, #0x1c
0041bfb0  00 c0 93 e5                                      ldr ip, [r3]
0041bfb4  80 10 90 e5                                      ldr r1, [r0, #0x80]
0041bfb8  06 30 a0 e1                                      mov r3, r6
0041bfbc  94 c1 21 e0                                      mla r1, r4, r1, ip
0041bfc0  10 10 91 e5                                      ldr r1, [r1, #0x10]
0041bfc4  08 d0 8d e2                                      add sp, sp, #8
0041bfc8  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0041bfcc  4c ce ff ea                                      b #0x40f904
0041bfd0  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0041bfd4  03 30 94 e7                                      ldr r3, [r4, r3]
0041bfd8  00 30 93 e5                                      ldr r3, [r3]
0041bfdc  02 00 53 e3                                      cmp r3, #2
0041bfe0  00 60 86 05                                      streq r6, [r6]
0041bfe4  b8 ff ff 0a                                      beq #0x41becc
0041bfe8  01 00 53 e3                                      cmp r3, #1
0041bfec  b6 ff ff 1a                                      bne #0x41becc
0041bff0  50 00 9f e5                                      ldr r0, [pc, #0x50]
0041bff4  50 10 9f e5                                      ldr r1, [pc, #0x50]
0041bff8  50 20 9f e5                                      ldr r2, [pc, #0x50]
0041bffc  00 00 94 e7                                      ldr r0, [r4, r0]
0041c000  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0041c004  11 ce a0 e3                                      mov ip, #0x110
0041c008  01 10 8f e0                                      add r1, pc, r1
0041c00c  a8 00 80 e2                                      add r0, r0, #0xa8
0041c010  02 20 8f e0                                      add r2, pc, r2
0041c014  03 30 8f e0                                      add r3, pc, r3
0041c018  00 c0 8d e5                                      str ip, [sp]
0041c01c  f8 c7 fb eb                                      bl #0x30e004
0041c020  e0 60 95 e5                                      ldr r6, [r5, #0xe0]
0041c024  a8 ff ff ea                                      b #0x41becc
; mapping-symbol data/literal pool
0041c028  f0 8b 57 00 e4 38 00 00 5c 3a 00 00 c8 c9 4a 00  .byte 0xf0, 0x8b, 0x57, 0x00, 0xe4, 0x38, 0x00, 0x00, 0x5c, 0x3a, 0x00, 0x00, 0xc8, 0xc9, 0x4a, 0x00
0041c038  34 a7 4a 00 10 a7 4a 00 d4 3d 00 00 c0 39 00 00  .byte 0x34, 0xa7, 0x4a, 0x00, 0x10, 0xa7, 0x4a, 0x00, 0xd4, 0x3d, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0041c048  c0 19 00 00 d0 23 4a 00 50 c8 4a 00 5c c8 4a 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xd0, 0x23, 0x4a, 0x00, 0x50, 0xc8, 0x4a, 0x00, 0x5c, 0xc8, 0x4a, 0x00

; FUNCTION 0x0041c058, declared_size=48, range_size=48, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap23RegisterDisplayCallbackEv
; demangled: HUDMinimap::RegisterDisplayCallback()
; decoder-mode: arm
0041c058  1c c0 9f e5                                      ldr ip, [pc, #0x1c]
0041c05c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0041c060  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0041c064  0c c0 8f e0                                      add ip, pc, ip
0041c068  03 20 9c e7                                      ldr r2, [ip, r3]
0041c06c  00 30 a0 e1                                      mov r3, r0
0041c070  04 00 90 e5                                      ldr r0, [r0, #4]
0041c074  01 10 8f e0                                      add r1, pc, r1
0041c078  56 34 0e ea                                      b #0x7a91d8
; mapping-symbol data/literal pool
0041c07c  2c 8a 57 00 74 26 00 00 4c c8 4a 00              .byte 0x2c, 0x8a, 0x57, 0x00, 0x74, 0x26, 0x00, 0x00, 0x4c, 0xc8, 0x4a, 0x00

; FUNCTION 0x0041c088, declared_size=24, range_size=24, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap21RegisterToMenuManagerEv
; demangled: HUDMinimap::RegisterToMenuManager()
; decoder-mode: arm
0041c088  10 40 2d e9                                      push {r4, lr}
0041c08c  00 40 a0 e1                                      mov r4, r0
0041c090  7d 42 00 eb                                      bl #0x42ca8c
0041c094  04 10 a0 e1                                      mov r1, r4
0041c098  10 40 bd e8                                      pop {r4, lr}
0041c09c  7c 4b 00 ea                                      b #0x42ee94

; FUNCTION 0x0041c17c, declared_size=116, range_size=116, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimapD1Ev
; demangled: HUDMinimap::~HUDMinimap()
; decoder-mode: arm
0041c17c  64 30 9f e5                                      ldr r3, [pc, #0x64]
0041c180  64 20 9f e5                                      ldr r2, [pc, #0x64]
0041c184  70 40 2d e9                                      push {r4, r5, r6, lr}
0041c188  03 30 8f e0                                      add r3, pc, r3
0041c18c  02 20 93 e7                                      ldr r2, [r3, r2]
0041c190  00 60 a0 e1                                      mov r6, r0
0041c194  e4 50 86 e2                                      add r5, r6, #0xe4
0041c198  08 20 82 e2                                      add r2, r2, #8
0041c19c  9c 21 80 e4                                      str r2, [r0], #0x19c
0041c1a0  15 fa ff eb                                      bl #0x41a9fc
0041c1a4  e4 00 96 e5                                      ldr r0, [r6, #0xe4]
0041c1a8  05 00 50 e1                                      cmp r0, r5
0041c1ac  01 00 00 1a                                      bne #0x41c1b8
0041c1b0  06 00 00 ea                                      b #0x41c1d0
0041c1b4  04 00 a0 e1                                      mov r0, r4
0041c1b8  00 40 90 e5                                      ldr r4, [r0]
0041c1bc  0c 10 a0 e3                                      mov r1, #0xc
0041c1c0  4e b3 0b eb                                      bl #0x708f00
0041c1c4  05 00 54 e1                                      cmp r4, r5
0041c1c8  f9 ff ff 1a                                      bne #0x41c1b4
0041c1cc  05 00 a0 e1                                      mov r0, r5
0041c1d0  e4 00 86 e5                                      str r0, [r6, #0xe4]
0041c1d4  04 00 85 e5                                      str r0, [r5, #4]
0041c1d8  06 00 a0 e1                                      mov r0, r6
0041c1dc  e4 19 00 eb                                      bl #0x422974
0041c1e0  06 00 a0 e1                                      mov r0, r6
0041c1e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0041c1e8  08 89 57 00 34 10 00 00                          .byte 0x08, 0x89, 0x57, 0x00, 0x34, 0x10, 0x00, 0x00

; FUNCTION 0x0041c1f0, declared_size=28, range_size=28, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimapD0Ev
; demangled: HUDMinimap::~HUDMinimap()
; decoder-mode: arm
0041c1f0  10 40 2d e9                                      push {r4, lr}
0041c1f4  00 40 a0 e1                                      mov r4, r0
0041c1f8  df ff ff eb                                      bl #0x41c17c
0041c1fc  04 00 a0 e1                                      mov r0, r4
0041c200  8e d0 fb eb                                      bl #0x310440
0041c204  04 00 a0 e1                                      mov r0, r4
0041c208  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0041c20c, declared_size=116, range_size=116, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimapD2Ev
; demangled: HUDMinimap::~HUDMinimap()
; decoder-mode: arm
0041c20c  64 30 9f e5                                      ldr r3, [pc, #0x64]
0041c210  64 20 9f e5                                      ldr r2, [pc, #0x64]
0041c214  70 40 2d e9                                      push {r4, r5, r6, lr}
0041c218  03 30 8f e0                                      add r3, pc, r3
0041c21c  02 20 93 e7                                      ldr r2, [r3, r2]
0041c220  00 60 a0 e1                                      mov r6, r0
0041c224  e4 50 86 e2                                      add r5, r6, #0xe4
0041c228  08 20 82 e2                                      add r2, r2, #8
0041c22c  9c 21 80 e4                                      str r2, [r0], #0x19c
0041c230  f1 f9 ff eb                                      bl #0x41a9fc
0041c234  e4 00 96 e5                                      ldr r0, [r6, #0xe4]
0041c238  05 00 50 e1                                      cmp r0, r5
0041c23c  01 00 00 1a                                      bne #0x41c248
0041c240  06 00 00 ea                                      b #0x41c260
0041c244  04 00 a0 e1                                      mov r0, r4
0041c248  00 40 90 e5                                      ldr r4, [r0]
0041c24c  0c 10 a0 e3                                      mov r1, #0xc
0041c250  2a b3 0b eb                                      bl #0x708f00
0041c254  05 00 54 e1                                      cmp r4, r5
0041c258  f9 ff ff 1a                                      bne #0x41c244
0041c25c  05 00 a0 e1                                      mov r0, r5
0041c260  e4 00 86 e5                                      str r0, [r6, #0xe4]
0041c264  04 00 85 e5                                      str r0, [r5, #4]
0041c268  06 00 a0 e1                                      mov r0, r6
0041c26c  c0 19 00 eb                                      bl #0x422974
0041c270  06 00 a0 e1                                      mov r0, r6
0041c274  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0041c278  78 88 57 00 34 10 00 00                          .byte 0x78, 0x88, 0x57, 0x00, 0x34, 0x10, 0x00, 0x00

; FUNCTION 0x0041c4a0, declared_size=784, range_size=784, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap9RenderMapERN7gameswf12render_stateEPv
; demangled: HUDMinimap::RenderMap(gameswf::render_state&, void*)
; decoder-mode: arm
0041c4a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0041c4a4  f0 42 9f e5                                      ldr r4, [pc, #0x2f0]
0041c4a8  f0 52 9f e5                                      ldr r5, [pc, #0x2f0]
0041c4ac  f0 22 9f e5                                      ldr r2, [pc, #0x2f0]
0041c4b0  04 40 8f e0                                      add r4, pc, r4
0041c4b4  05 30 94 e7                                      ldr r3, [r4, r5]
0041c4b8  02 80 94 e7                                      ldr r8, [r4, r2]
0041c4bc  64 d0 4d e2                                      sub sp, sp, #0x64
0041c4c0  00 30 93 e5                                      ldr r3, [r3]
0041c4c4  08 00 a0 e1                                      mov r0, r8
0041c4c8  01 60 a0 e1                                      mov r6, r1
0041c4cc  5c 30 8d e5                                      str r3, [sp, #0x5c]
0041c4d0  ec 6c fc eb                                      bl #0x337888
0041c4d4  cc 12 9f e5                                      ldr r1, [pc, #0x2cc]
0041c4d8  44 70 8d e2                                      add r7, sp, #0x44
0041c4dc  40 20 8d e2                                      add r2, sp, #0x40
0041c4e0  01 10 8f e0                                      add r1, pc, r1
0041c4e4  07 00 a0 e1                                      mov r0, r7
0041c4e8  ff de fb eb                                      bl #0x3140ec
0041c4ec  08 00 a0 e1                                      mov r0, r8
0041c4f0  07 10 a0 e1                                      mov r1, r7
0041c4f4  63 6d fc eb                                      bl #0x337a88
0041c4f8  00 80 a0 e1                                      mov r8, r0
0041c4fc  07 00 a0 e1                                      mov r0, r7
0041c500  29 dd fb eb                                      bl #0x3139ac
0041c504  00 00 58 e3                                      cmp r8, #0
0041c508  06 00 00 0a                                      beq #0x41c528
0041c50c  05 30 94 e7                                      ldr r3, [r4, r5]
0041c510  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0041c514  00 30 93 e5                                      ldr r3, [r3]
0041c518  03 00 52 e1                                      cmp r2, r3
0041c51c  9d 00 00 1a                                      bne #0x41c798
0041c520  64 d0 8d e2                                      add sp, sp, #0x64
0041c524  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0041c528  7c 82 9f e5                                      ldr r8, [pc, #0x27c]
0041c52c  08 70 94 e7                                      ldr r7, [r4, r8]
0041c530  07 00 a0 e1                                      mov r0, r7
0041c534  16 0c fc eb                                      bl #0x31f594
0041c538  00 a0 50 e2                                      subs sl, r0, #0
0041c53c  f2 ff ff 0a                                      beq #0x41c50c
0041c540  30 31 9a e5                                      ldr r3, [sl, #0x130]
0041c544  26 00 53 e3                                      cmp r3, #0x26
0041c548  ef ff ff 1a                                      bne #0x41c50c
0041c54c  00 00 56 e3                                      cmp r6, #0
0041c550  ed ff ff 0a                                      beq #0x41c50c
0041c554  e0 30 96 e5                                      ldr r3, [r6, #0xe0]
0041c558  00 00 53 e3                                      cmp r3, #0
0041c55c  ea ff ff 0a                                      beq #0x41c50c
0041c560  c4 20 d6 e5                                      ldrb r2, [r6, #0xc4]
0041c564  00 00 52 e3                                      cmp r2, #0
0041c568  e7 ff ff 0a                                      beq #0x41c50c
0041c56c  84 30 d3 e5                                      ldrb r3, [r3, #0x84]
0041c570  00 00 53 e3                                      cmp r3, #0
0041c574  e4 ff ff 1a                                      bne #0x41c50c
0041c578  10 30 97 e5                                      ldr r3, [r7, #0x10]
0041c57c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0041c580  8c 72 93 e5                                      ldr r7, [r3, #0x28c]
0041c584  00 00 57 e3                                      cmp r7, #0
0041c588  04 00 00 0a                                      beq #0x41c5a0
0041c58c  00 30 97 e5                                      ldr r3, [r7]
0041c590  07 00 a0 e1                                      mov r0, r7
0041c594  01 10 a0 e3                                      mov r1, #1
0041c598  0f e0 a0 e1                                      mov lr, pc
0041c59c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0041c5a0  00 30 96 e5                                      ldr r3, [r6]
0041c5a4  06 00 a0 e1                                      mov r0, r6
0041c5a8  0f e0 a0 e1                                      mov lr, pc
0041c5ac  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
0041c5b0  67 0f 86 e2                                      add r0, r6, #0x19c
0041c5b4  e5 2d 00 eb                                      bl #0x427d50
0041c5b8  00 10 a0 e1                                      mov r1, r0
0041c5bc  30 00 8d e2                                      add r0, sp, #0x30
0041c5c0  2d e9 ff eb                                      bl #0x416a7c
0041c5c4  08 80 94 e7                                      ldr r8, [r4, r8]
0041c5c8  04 00 96 e5                                      ldr r0, [r6, #4]
0041c5cc  10 30 98 e5                                      ldr r3, [r8, #0x10]
0041c5d0  10 90 93 e5                                      ldr sb, [r3, #0x10]
0041c5d4  cc 30 99 e5                                      ldr r3, [sb, #0xcc]
0041c5d8  04 30 13 e5                                      ldr r3, [r3, #-4]
0041c5dc  14 20 93 e5                                      ldr r2, [r3, #0x14]
0041c5e0  20 20 8d e5                                      str r2, [sp, #0x20]
0041c5e4  18 20 93 e5                                      ldr r2, [r3, #0x18]
0041c5e8  24 20 8d e5                                      str r2, [sp, #0x24]
0041c5ec  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0041c5f0  28 20 8d e5                                      str r2, [sp, #0x28]
0041c5f4  20 30 93 e5                                      ldr r3, [r3, #0x20]
0041c5f8  2c 30 8d e5                                      str r3, [sp, #0x2c]
0041c5fc  aa 2d 0e eb                                      bl #0x7a7cac
0041c600  cc e7 ff eb                                      bl #0x416538
0041c604  00 b0 a0 e1                                      mov fp, r0
0041c608  04 00 96 e5                                      ldr r0, [r6, #4]
0041c60c  a6 2d 0e eb                                      bl #0x7a7cac
0041c610  d8 e7 ff eb                                      bl #0x416578
0041c614  0b 10 a0 e1                                      mov r1, fp
0041c618  0c 00 8d e5                                      str r0, [sp, #0xc]
0041c61c  30 00 9d e5                                      ldr r0, [sp, #0x30]
0041c620  9b c9 fb eb                                      bl #0x30ec94
0041c624  a8 c7 fb eb                                      bl #0x30e4cc
0041c628  0b 10 a0 e1                                      mov r1, fp
0041c62c  00 20 a0 e1                                      mov r2, r0
0041c630  34 00 9d e5                                      ldr r0, [sp, #0x34]
0041c634  04 20 8d e5                                      str r2, [sp, #4]
0041c638  95 c9 fb eb                                      bl #0x30ec94
0041c63c  a2 c7 fb eb                                      bl #0x30e4cc
0041c640  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0041c644  00 30 a0 e1                                      mov r3, r0
0041c648  38 00 9d e5                                      ldr r0, [sp, #0x38]
0041c64c  08 30 8d e5                                      str r3, [sp, #8]
0041c650  8f c9 fb eb                                      bl #0x30ec94
0041c654  9c c7 fb eb                                      bl #0x30e4cc
0041c658  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0041c65c  00 b0 a0 e1                                      mov fp, r0
0041c660  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0041c664  8a c9 fb eb                                      bl #0x30ec94
0041c668  97 c7 fb eb                                      bl #0x30e4cc
0041c66c  0c 00 9d e9                                      ldmib sp, {r2, r3}
0041c670  1c 00 8d e5                                      str r0, [sp, #0x1c]
0041c674  10 20 8d e5                                      str r2, [sp, #0x10]
0041c678  14 b0 8d e5                                      str fp, [sp, #0x14]
0041c67c  18 30 8d e5                                      str r3, [sp, #0x18]
0041c680  cc 30 99 e5                                      ldr r3, [sb, #0xcc]
0041c684  10 10 8d e2                                      add r1, sp, #0x10
0041c688  04 30 13 e5                                      ldr r3, [r3, #-4]
0041c68c  03 00 a0 e1                                      mov r0, r3
0041c690  00 30 93 e5                                      ldr r3, [r3]
0041c694  0f e0 a0 e1                                      mov lr, pc
0041c698  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0041c69c  10 30 98 e5                                      ldr r3, [r8, #0x10]
0041c6a0  00 20 a0 e3                                      mov r2, #0
0041c6a4  06 00 a0 e1                                      mov r0, r6
0041c6a8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0041c6ac  07 10 a0 e1                                      mov r1, r7
0041c6b0  50 22 c3 e5                                      strb r2, [r3, #0x250]
0041c6b4  00 30 96 e5                                      ldr r3, [r6]
0041c6b8  0f e0 a0 e1                                      mov lr, pc
0041c6bc  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0041c6c0  0a 10 a0 e1                                      mov r1, sl
0041c6c4  00 30 96 e5                                      ldr r3, [r6]
0041c6c8  06 00 a0 e1                                      mov r0, r6
0041c6cc  0f e0 a0 e1                                      mov lr, pc
0041c6d0  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0041c6d4  00 00 57 e3                                      cmp r7, #0
0041c6d8  1e 00 00 0a                                      beq #0x41c758
0041c6dc  10 30 98 e5                                      ldr r3, [r8, #0x10]
0041c6e0  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0041c6e4  e4 20 93 e5                                      ldr r2, [r3, #0xe4]
0041c6e8  00 00 52 e3                                      cmp r2, #0
0041c6ec  06 00 00 0a                                      beq #0x41c70c
0041c6f0  03 00 a0 e1                                      mov r0, r3
0041c6f4  07 10 a0 e1                                      mov r1, r7
0041c6f8  00 30 93 e5                                      ldr r3, [r3]
0041c6fc  0f e0 a0 e1                                      mov lr, pc
0041c700  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0041c704  10 30 98 e5                                      ldr r3, [r8, #0x10]
0041c708  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0041c70c  01 20 a0 e3                                      mov r2, #1
0041c710  50 22 c3 e5                                      strb r2, [r3, #0x250]
0041c714  cc 30 99 e5                                      ldr r3, [sb, #0xcc]
0041c718  20 10 8d e2                                      add r1, sp, #0x20
0041c71c  04 30 13 e5                                      ldr r3, [r3, #-4]
0041c720  03 00 a0 e1                                      mov r0, r3
0041c724  00 30 93 e5                                      ldr r3, [r3]
0041c728  0f e0 a0 e1                                      mov lr, pc
0041c72c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0041c730  00 30 96 e5                                      ldr r3, [r6]
0041c734  06 00 a0 e1                                      mov r0, r6
0041c738  0f e0 a0 e1                                      mov lr, pc
0041c73c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0041c740  07 00 a0 e1                                      mov r0, r7
0041c744  00 30 97 e5                                      ldr r3, [r7]
0041c748  00 10 a0 e3                                      mov r1, #0
0041c74c  0f e0 a0 e1                                      mov lr, pc
0041c750  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0041c754  6c ff ff ea                                      b #0x41c50c
0041c758  10 30 98 e5                                      ldr r3, [r8, #0x10]
0041c75c  01 20 a0 e3                                      mov r2, #1
0041c760  20 10 8d e2                                      add r1, sp, #0x20
0041c764  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0041c768  50 22 c3 e5                                      strb r2, [r3, #0x250]
0041c76c  cc 30 99 e5                                      ldr r3, [sb, #0xcc]
0041c770  04 30 13 e5                                      ldr r3, [r3, #-4]
0041c774  03 00 a0 e1                                      mov r0, r3
0041c778  00 30 93 e5                                      ldr r3, [r3]
0041c77c  0f e0 a0 e1                                      mov lr, pc
0041c780  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0041c784  06 00 a0 e1                                      mov r0, r6
0041c788  00 30 96 e5                                      ldr r3, [r6]
0041c78c  0f e0 a0 e1                                      mov lr, pc
0041c790  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0041c794  5c ff ff ea                                      b #0x41c50c
0041c798  dc c6 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0041c79c  e0 85 57 00 ac 40 00 00 84 08 00 00 c0 35 4a 00  .byte 0xe0, 0x85, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc0, 0x35, 0x4a, 0x00
0041c7ac  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0041c7b0, declared_size=564, range_size=564, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap6UpdateEv
; demangled: HUDMinimap::Update()
; decoder-mode: arm
0041c7b0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0041c7b4  14 42 9f e5                                      ldr r4, [pc, #0x214]
0041c7b8  14 62 9f e5                                      ldr r6, [pc, #0x214]
0041c7bc  14 22 9f e5                                      ldr r2, [pc, #0x214]
0041c7c0  04 40 8f e0                                      add r4, pc, r4
0041c7c4  06 30 94 e7                                      ldr r3, [r4, r6]
0041c7c8  02 80 94 e7                                      ldr r8, [r4, r2]
0041c7cc  3c d0 4d e2                                      sub sp, sp, #0x3c
0041c7d0  00 30 93 e5                                      ldr r3, [r3]
0041c7d4  00 50 a0 e1                                      mov r5, r0
0041c7d8  08 00 a0 e1                                      mov r0, r8
0041c7dc  34 30 8d e5                                      str r3, [sp, #0x34]
0041c7e0  28 6c fc eb                                      bl #0x337888
0041c7e4  f0 11 9f e5                                      ldr r1, [pc, #0x1f0]
0041c7e8  1c 70 8d e2                                      add r7, sp, #0x1c
0041c7ec  18 20 8d e2                                      add r2, sp, #0x18
0041c7f0  01 10 8f e0                                      add r1, pc, r1
0041c7f4  07 00 a0 e1                                      mov r0, r7
0041c7f8  3b de fb eb                                      bl #0x3140ec
0041c7fc  07 10 a0 e1                                      mov r1, r7
0041c800  08 00 a0 e1                                      mov r0, r8
0041c804  9f 6c fc eb                                      bl #0x337a88
0041c808  00 a0 a0 e1                                      mov sl, r0
0041c80c  07 00 a0 e1                                      mov r0, r7
0041c810  65 dc fb eb                                      bl #0x3139ac
0041c814  00 00 5a e3                                      cmp sl, #0
0041c818  11 00 00 1a                                      bne #0x41c864
0041c81c  bc 71 9f e5                                      ldr r7, [pc, #0x1bc]
0041c820  05 00 a0 e1                                      mov r0, r5
0041c824  ed 15 00 eb                                      bl #0x421fe0
0041c828  07 80 94 e7                                      ldr r8, [r4, r7]
0041c82c  08 00 a0 e1                                      mov r0, r8
0041c830  57 0b fc eb                                      bl #0x31f594
0041c834  00 00 50 e3                                      cmp r0, #0
0041c838  02 00 00 0a                                      beq #0x41c848
0041c83c  30 31 90 e5                                      ldr r3, [r0, #0x130]
0041c840  26 00 53 e3                                      cmp r3, #0x26
0041c844  0d 00 00 0a                                      beq #0x41c880
0041c848  06 30 94 e7                                      ldr r3, [r4, r6]
0041c84c  34 20 9d e5                                      ldr r2, [sp, #0x34]
0041c850  00 30 93 e5                                      ldr r3, [r3]
0041c854  03 00 52 e1                                      cmp r2, r3
0041c858  5b 00 00 1a                                      bne #0x41c9cc
0041c85c  3c d0 8d e2                                      add sp, sp, #0x3c
0041c860  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0041c864  05 00 a0 e1                                      mov r0, r5
0041c868  dc 15 00 eb                                      bl #0x421fe0
0041c86c  05 00 a0 e1                                      mov r0, r5
0041c870  00 30 95 e5                                      ldr r3, [r5]
0041c874  0f e0 a0 e1                                      mov lr, pc
0041c878  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0041c87c  f1 ff ff ea                                      b #0x41c848
0041c880  e0 30 95 e5                                      ldr r3, [r5, #0xe0]
0041c884  00 00 53 e3                                      cmp r3, #0
0041c888  ee ff ff 0a                                      beq #0x41c848
0041c88c  c4 30 d5 e5                                      ldrb r3, [r5, #0xc4]
0041c890  00 00 53 e3                                      cmp r3, #0
0041c894  eb ff ff 0a                                      beq #0x41c848
0041c898  40 20 98 e5                                      ldr r2, [r8, #0x40]
0041c89c  00 30 95 e5                                      ldr r3, [r5]
0041c8a0  05 00 a0 e1                                      mov r0, r5
0041c8a4  c4 26 92 e5                                      ldr r2, [r2, #0x6c4]
0041c8a8  c8 20 85 e5                                      str r2, [r5, #0xc8]
0041c8ac  0f e0 a0 e1                                      mov lr, pc
0041c8b0  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0041c8b4  10 30 98 e5                                      ldr r3, [r8, #0x10]
0041c8b8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0041c8bc  8c 82 93 e5                                      ldr r8, [r3, #0x28c]
0041c8c0  00 00 58 e3                                      cmp r8, #0
0041c8c4  04 00 00 0a                                      beq #0x41c8dc
0041c8c8  0a 10 a0 e1                                      mov r1, sl
0041c8cc  00 30 98 e5                                      ldr r3, [r8]
0041c8d0  08 00 a0 e1                                      mov r0, r8
0041c8d4  0f e0 a0 e1                                      mov lr, pc
0041c8d8  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0041c8dc  00 30 95 e5                                      ldr r3, [r5]
0041c8e0  05 00 a0 e1                                      mov r0, r5
0041c8e4  0f e0 a0 e1                                      mov lr, pc
0041c8e8  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
0041c8ec  67 0f 85 e2                                      add r0, r5, #0x19c
0041c8f0  16 2d 00 eb                                      bl #0x427d50
0041c8f4  00 10 a0 e1                                      mov r1, r0
0041c8f8  08 00 8d e2                                      add r0, sp, #8
0041c8fc  5e e8 ff eb                                      bl #0x416a7c
0041c900  05 00 a0 e1                                      mov r0, r5
0041c904  00 30 95 e5                                      ldr r3, [r5]
0041c908  0f e0 a0 e1                                      mov lr, pc
0041c90c  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0041c910  00 30 95 e5                                      ldr r3, [r5]
0041c914  05 00 a0 e1                                      mov r0, r5
0041c918  0f e0 a0 e1                                      mov lr, pc
0041c91c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0041c920  e0 a0 95 e5                                      ldr sl, [r5, #0xe0]
0041c924  00 00 5a e3                                      cmp sl, #0
0041c928  0d 00 00 0a                                      beq #0x41c964
0041c92c  07 30 94 e7                                      ldr r3, [r4, r7]
0041c930  00 10 a0 e3                                      mov r1, #0
0041c934  01 20 a0 e3                                      mov r2, #1
0041c938  40 00 93 e5                                      ldr r0, [r3, #0x40]
0041c93c  cd 46 fd eb                                      bl #0x36e478
0041c940  00 20 a0 e3                                      mov r2, #0
0041c944  60 16 90 e5                                      ldr r1, [r0, #0x660]
0041c948  0a 00 a0 e1                                      mov r0, sl
0041c94c  1c d4 ff eb                                      bl #0x4119c4
0041c950  e0 30 95 e5                                      ldr r3, [r5, #0xe0]
0041c954  03 00 a0 e1                                      mov r0, r3
0041c958  00 30 93 e5                                      ldr r3, [r3]
0041c95c  0f e0 a0 e1                                      mov lr, pc
0041c960  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0041c964  00 00 58 e3                                      cmp r8, #0
0041c968  07 00 00 0a                                      beq #0x41c98c
0041c96c  07 30 94 e7                                      ldr r3, [r4, r7]
0041c970  08 10 a0 e1                                      mov r1, r8
0041c974  10 30 93 e5                                      ldr r3, [r3, #0x10]
0041c978  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0041c97c  03 00 a0 e1                                      mov r0, r3
0041c980  00 30 93 e5                                      ldr r3, [r3]
0041c984  0f e0 a0 e1                                      mov lr, pc
0041c988  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0041c98c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0041c990  05 00 a0 e1                                      mov r0, r5
0041c994  08 20 9d e5                                      ldr r2, [sp, #8]
0041c998  00 30 8d e5                                      str r3, [sp]
0041c99c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0041c9a0  05 10 a0 e1                                      mov r1, r5
0041c9a4  04 30 8d e5                                      str r3, [sp, #4]
0041c9a8  00 c0 95 e5                                      ldr ip, [r5]
0041c9ac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0041c9b0  0f e0 a0 e1                                      mov lr, pc
0041c9b4  74 f0 9c e5                                      ldr pc, [ip, #0x74]
0041c9b8  05 00 a0 e1                                      mov r0, r5
0041c9bc  00 30 95 e5                                      ldr r3, [r5]
0041c9c0  0f e0 a0 e1                                      mov lr, pc
0041c9c4  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0041c9c8  9e ff ff ea                                      b #0x41c848
0041c9cc  4f c6 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0041c9d0  d0 82 57 00 ac 40 00 00 84 08 00 00 b0 32 4a 00  .byte 0xd0, 0x82, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xb0, 0x32, 0x4a, 0x00
0041c9e0  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0041c9e4, declared_size=508, range_size=508, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap4ShowEv
; demangled: HUDMinimap::Show()
; decoder-mode: arm
0041c9e4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0041c9e8  d8 51 9f e5                                      ldr r5, [pc, #0x1d8]
0041c9ec  d8 61 9f e5                                      ldr r6, [pc, #0x1d8]
0041c9f0  d8 21 9f e5                                      ldr r2, [pc, #0x1d8]
0041c9f4  05 50 8f e0                                      add r5, pc, r5
0041c9f8  06 30 95 e7                                      ldr r3, [r5, r6]
0041c9fc  02 70 95 e7                                      ldr r7, [r5, r2]
0041ca00  20 d0 4d e2                                      sub sp, sp, #0x20
0041ca04  00 30 93 e5                                      ldr r3, [r3]
0041ca08  00 40 a0 e1                                      mov r4, r0
0041ca0c  07 00 a0 e1                                      mov r0, r7
0041ca10  1c 30 8d e5                                      str r3, [sp, #0x1c]
0041ca14  9b 6b fc eb                                      bl #0x337888
0041ca18  b4 11 9f e5                                      ldr r1, [pc, #0x1b4]
0041ca1c  04 80 8d e2                                      add r8, sp, #4
0041ca20  0d 20 a0 e1                                      mov r2, sp
0041ca24  01 10 8f e0                                      add r1, pc, r1
0041ca28  08 00 a0 e1                                      mov r0, r8
0041ca2c  ae dd fb eb                                      bl #0x3140ec
0041ca30  07 00 a0 e1                                      mov r0, r7
0041ca34  08 10 a0 e1                                      mov r1, r8
0041ca38  12 6c fc eb                                      bl #0x337a88
0041ca3c  00 70 a0 e1                                      mov r7, r0
0041ca40  08 00 a0 e1                                      mov r0, r8
0041ca44  d8 db fb eb                                      bl #0x3139ac
0041ca48  00 00 57 e3                                      cmp r7, #0
0041ca4c  59 00 00 1a                                      bne #0x41cbb8
0041ca50  00 30 94 e5                                      ldr r3, [r4]
0041ca54  04 00 a0 e1                                      mov r0, r4
0041ca58  0f e0 a0 e1                                      mov lr, pc
0041ca5c  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0041ca60  04 00 a0 e1                                      mov r0, r4
0041ca64  04 a0 94 e5                                      ldr sl, [r4, #4]
0041ca68  77 15 00 eb                                      bl #0x42204c
0041ca6c  64 11 9f e5                                      ldr r1, [pc, #0x164]
0041ca70  64 81 9f e5                                      ldr r8, [pc, #0x164]
0041ca74  00 30 a0 e1                                      mov r3, r0
0041ca78  0a 20 a0 e1                                      mov r2, sl
0041ca7c  01 10 8f e0                                      add r1, pc, r1
0041ca80  67 0f 84 e2                                      add r0, r4, #0x19c
0041ca84  85 2c 00 eb                                      bl #0x427ca0
0041ca88  08 90 95 e7                                      ldr sb, [r5, r8]
0041ca8c  04 00 a0 e1                                      mov r0, r4
0041ca90  00 30 94 e5                                      ldr r3, [r4]
0041ca94  40 20 99 e5                                      ldr r2, [sb, #0x40]
0041ca98  c4 26 92 e5                                      ldr r2, [r2, #0x6c4]
0041ca9c  c8 20 84 e5                                      str r2, [r4, #0xc8]
0041caa0  0f e0 a0 e1                                      mov lr, pc
0041caa4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0041caa8  00 30 94 e5                                      ldr r3, [r4]
0041caac  04 00 a0 e1                                      mov r0, r4
0041cab0  0f e0 a0 e1                                      mov lr, pc
0041cab4  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0041cab8  e0 a0 94 e5                                      ldr sl, [r4, #0xe0]
0041cabc  00 00 5a e3                                      cmp sl, #0
0041cac0  0c 00 00 0a                                      beq #0x41caf8
0041cac4  07 10 a0 e1                                      mov r1, r7
0041cac8  01 20 a0 e3                                      mov r2, #1
0041cacc  40 00 99 e5                                      ldr r0, [sb, #0x40]
0041cad0  68 46 fd eb                                      bl #0x36e478
0041cad4  07 20 a0 e1                                      mov r2, r7
0041cad8  60 16 90 e5                                      ldr r1, [r0, #0x660]
0041cadc  0a 00 a0 e1                                      mov r0, sl
0041cae0  b7 d3 ff eb                                      bl #0x4119c4
0041cae4  e0 30 94 e5                                      ldr r3, [r4, #0xe0]
0041cae8  03 00 a0 e1                                      mov r0, r3
0041caec  00 30 93 e5                                      ldr r3, [r3]
0041caf0  0f e0 a0 e1                                      mov lr, pc
0041caf4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0041caf8  04 00 a0 e1                                      mov r0, r4
0041cafc  53 22 00 eb                                      bl #0x425450
0041cb00  08 30 95 e7                                      ldr r3, [r5, r8]
0041cb04  10 30 93 e5                                      ldr r3, [r3, #0x10]
0041cb08  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0041cb0c  8c 72 93 e5                                      ldr r7, [r3, #0x28c]
0041cb10  00 00 57 e3                                      cmp r7, #0
0041cb14  20 00 00 0a                                      beq #0x41cb9c
0041cb18  07 00 a0 e1                                      mov r0, r7
0041cb1c  00 10 a0 e3                                      mov r1, #0
0041cb20  00 30 97 e5                                      ldr r3, [r7]
0041cb24  0f e0 a0 e1                                      mov lr, pc
0041cb28  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0041cb2c  01 30 a0 e3                                      mov r3, #1
0041cb30  07 10 a0 e1                                      mov r1, r7
0041cb34  c4 30 c4 e5                                      strb r3, [r4, #0xc4]
0041cb38  04 00 a0 e1                                      mov r0, r4
0041cb3c  00 30 94 e5                                      ldr r3, [r4]
0041cb40  0f e0 a0 e1                                      mov lr, pc
0041cb44  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0041cb48  04 00 a0 e1                                      mov r0, r4
0041cb4c  00 30 94 e5                                      ldr r3, [r4]
0041cb50  0f e0 a0 e1                                      mov lr, pc
0041cb54  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0041cb58  04 00 a0 e1                                      mov r0, r4
0041cb5c  00 30 94 e5                                      ldr r3, [r4]
0041cb60  0f e0 a0 e1                                      mov lr, pc
0041cb64  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0041cb68  04 00 a0 e1                                      mov r0, r4
0041cb6c  00 30 94 e5                                      ldr r3, [r4]
0041cb70  0f e0 a0 e1                                      mov lr, pc
0041cb74  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0041cb78  04 00 a0 e1                                      mov r0, r4
0041cb7c  00 30 94 e5                                      ldr r3, [r4]
0041cb80  04 10 a0 e1                                      mov r1, r4
0041cb84  0f e0 a0 e1                                      mov lr, pc
0041cb88  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0041cb8c  04 00 a0 e1                                      mov r0, r4
0041cb90  00 30 94 e5                                      ldr r3, [r4]
0041cb94  0f e0 a0 e1                                      mov lr, pc
0041cb98  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0041cb9c  06 30 95 e7                                      ldr r3, [r5, r6]
0041cba0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0041cba4  00 30 93 e5                                      ldr r3, [r3]
0041cba8  03 00 52 e1                                      cmp r2, r3
0041cbac  04 00 00 1a                                      bne #0x41cbc4
0041cbb0  20 d0 8d e2                                      add sp, sp, #0x20
0041cbb4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0041cbb8  04 00 a0 e1                                      mov r0, r4
0041cbbc  23 22 00 eb                                      bl #0x425450
0041cbc0  f5 ff ff ea                                      b #0x41cb9c
0041cbc4  d1 c5 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0041cbc8  9c 80 57 00 ac 40 00 00 84 08 00 00 7c 30 4a 00  .byte 0x9c, 0x80, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x7c, 0x30, 0x4a, 0x00
0041cbd8  44 be 4a 00 f4 37 00 00                          .byte 0x44, 0xbe, 0x4a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0041cbe0, declared_size=256, range_size=256, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimapC1EPKc
; demangled: HUDMinimap::HUDMinimap(char const*)
; decoder-mode: arm
0041cbe0  70 40 2d e9                                      push {r4, r5, r6, lr}
0041cbe4  ec 50 9f e5                                      ldr r5, [pc, #0xec]
0041cbe8  00 40 a0 e1                                      mov r4, r0
0041cbec  83 29 00 eb                                      bl #0x427200
0041cbf0  e4 20 9f e5                                      ldr r2, [pc, #0xe4]
0041cbf4  05 50 8f e0                                      add r5, pc, r5
0041cbf8  00 30 a0 e3                                      mov r3, #0
0041cbfc  02 20 95 e7                                      ldr r2, [r5, r2]
0041cc00  e4 10 84 e2                                      add r1, r4, #0xe4
0041cc04  e0 30 84 e5                                      str r3, [r4, #0xe0]
0041cc08  08 20 82 e2                                      add r2, r2, #8
0041cc0c  00 20 84 e5                                      str r2, [r4]
0041cc10  e8 10 84 e5                                      str r1, [r4, #0xe8]
0041cc14  c4 30 c4 e5                                      strb r3, [r4, #0xc4]
0041cc18  c8 30 84 e5                                      str r3, [r4, #0xc8]
0041cc1c  cc 30 84 e5                                      str r3, [r4, #0xcc]
0041cc20  d0 30 84 e5                                      str r3, [r4, #0xd0]
0041cc24  d4 30 84 e5                                      str r3, [r4, #0xd4]
0041cc28  d8 30 84 e5                                      str r3, [r4, #0xd8]
0041cc2c  dc 30 84 e5                                      str r3, [r4, #0xdc]
0041cc30  e4 10 84 e5                                      str r1, [r4, #0xe4]
0041cc34  67 0f 84 e2                                      add r0, r4, #0x19c
0041cc38  ab f8 ff eb                                      bl #0x41aeec
0041cc3c  00 20 a0 e3                                      mov r2, #0
0041cc40  73 3f 84 e2                                      add r3, r4, #0x1cc
0041cc44  7f 1f 84 e2                                      add r1, r4, #0x1fc
0041cc48  00 20 83 e5                                      str r2, [r3]
0041cc4c  04 20 83 e5                                      str r2, [r3, #4]
0041cc50  08 20 83 e5                                      str r2, [r3, #8]
0041cc54  0c 30 83 e2                                      add r3, r3, #0xc
0041cc58  01 00 53 e1                                      cmp r3, r1
0041cc5c  f9 ff ff 1a                                      bne #0x41cc48
0041cc60  97 1f 84 e2                                      add r1, r4, #0x25c
0041cc64  00 20 83 e5                                      str r2, [r3]
0041cc68  04 20 83 e5                                      str r2, [r3, #4]
0041cc6c  08 20 83 e5                                      str r2, [r3, #8]
0041cc70  0c 30 83 e2                                      add r3, r3, #0xc
0041cc74  01 00 53 e1                                      cmp r3, r1
0041cc78  f9 ff ff 1a                                      bne #0x41cc64
0041cc7c  af 1f 84 e2                                      add r1, r4, #0x2bc
0041cc80  00 20 83 e5                                      str r2, [r3]
0041cc84  04 20 83 e5                                      str r2, [r3, #4]
0041cc88  08 20 83 e5                                      str r2, [r3, #8]
0041cc8c  0c 30 83 e2                                      add r3, r3, #0xc
0041cc90  01 00 53 e1                                      cmp r3, r1
0041cc94  f9 ff ff 1a                                      bne #0x41cc80
0041cc98  d3 1f 84 e2                                      add r1, r4, #0x34c
0041cc9c  00 20 83 e5                                      str r2, [r3]
0041cca0  04 20 83 e5                                      str r2, [r3, #4]
0041cca4  08 20 83 e5                                      str r2, [r3, #8]
0041cca8  0c 30 83 e2                                      add r3, r3, #0xc
0041ccac  01 00 53 e1                                      cmp r3, r1
0041ccb0  f9 ff ff 1a                                      bne #0x41cc9c
0041ccb4  f7 1f 84 e2                                      add r1, r4, #0x3dc
0041ccb8  00 20 83 e5                                      str r2, [r3]
0041ccbc  04 20 83 e5                                      str r2, [r3, #4]
0041ccc0  08 20 83 e5                                      str r2, [r3, #8]
0041ccc4  0c 30 83 e2                                      add r3, r3, #0xc
0041ccc8  01 00 53 e1                                      cmp r3, r1
0041cccc  f9 ff ff 1a                                      bne #0x41ccb8
0041ccd0  04 00 a0 e1                                      mov r0, r4
0041ccd4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0041ccd8  9c 7e 57 00 34 10 00 00                          .byte 0x9c, 0x7e, 0x57, 0x00, 0x34, 0x10, 0x00, 0x00

; FUNCTION 0x0041cce0, declared_size=148, range_size=148, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap11GetInstanceEv
; demangled: HUDMinimap::GetInstance()
; decoder-mode: arm
0041cce0  70 40 2d e9                                      push {r4, r5, r6, lr}
0041cce4  70 60 9f e5                                      ldr r6, [pc, #0x70]
0041cce8  70 40 9f e5                                      ldr r4, [pc, #0x70]
0041ccec  06 60 8f e0                                      add r6, pc, r6
0041ccf0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0041ccf4  04 40 8f e0                                      add r4, pc, r4
0041ccf8  01 00 13 e3                                      tst r3, #1
0041ccfc  03 00 00 0a                                      beq #0x41cd10
0041cd00  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
0041cd04  00 00 8f e0                                      add r0, pc, r0
0041cd08  10 00 80 e2                                      add r0, r0, #0x10
0041cd0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0041cd10  0c 50 86 e2                                      add r5, r6, #0xc
0041cd14  05 00 a0 e1                                      mov r0, r5
0041cd18  93 c6 fb eb                                      bl #0x30e76c
0041cd1c  00 00 50 e3                                      cmp r0, #0
0041cd20  f6 ff ff 0a                                      beq #0x41cd00
0041cd24  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0041cd28  10 60 86 e2                                      add r6, r6, #0x10
0041cd2c  06 00 a0 e1                                      mov r0, r6
0041cd30  01 10 8f e0                                      add r1, pc, r1
0041cd34  a9 ff ff eb                                      bl #0x41cbe0
0041cd38  05 00 a0 e1                                      mov r0, r5
0041cd3c  3e c7 fb eb                                      bl #0x30ea3c
0041cd40  24 30 9f e5                                      ldr r3, [pc, #0x24]
0041cd44  06 00 a0 e1                                      mov r0, r6
0041cd48  03 10 94 e7                                      ldr r1, [r4, r3]
0041cd4c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0041cd50  03 20 94 e7                                      ldr r2, [r4, r3]
0041cd54  6a c5 fb eb                                      bl #0x30e304
0041cd58  e8 ff ff ea                                      b #0x41cd00
; mapping-symbol data/literal pool
0041cd5c  98 71 58 00 9c 7d 57 00 80 71 58 00 a0 bb 4a 00  .byte 0x98, 0x71, 0x58, 0x00, 0x9c, 0x7d, 0x57, 0x00, 0x80, 0x71, 0x58, 0x00, 0xa0, 0xbb, 0x4a, 0x00
0041cd6c  50 18 00 00 90 18 00 00                          .byte 0x50, 0x18, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0041cd74, declared_size=256, range_size=256, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimapC2EPKc
; demangled: HUDMinimap::HUDMinimap(char const*)
; decoder-mode: arm
0041cd74  70 40 2d e9                                      push {r4, r5, r6, lr}
0041cd78  ec 50 9f e5                                      ldr r5, [pc, #0xec]
0041cd7c  00 40 a0 e1                                      mov r4, r0
0041cd80  1e 29 00 eb                                      bl #0x427200
0041cd84  e4 20 9f e5                                      ldr r2, [pc, #0xe4]
0041cd88  05 50 8f e0                                      add r5, pc, r5
0041cd8c  00 30 a0 e3                                      mov r3, #0
0041cd90  02 20 95 e7                                      ldr r2, [r5, r2]
0041cd94  e4 10 84 e2                                      add r1, r4, #0xe4
0041cd98  e0 30 84 e5                                      str r3, [r4, #0xe0]
0041cd9c  08 20 82 e2                                      add r2, r2, #8
0041cda0  00 20 84 e5                                      str r2, [r4]
0041cda4  e8 10 84 e5                                      str r1, [r4, #0xe8]
0041cda8  c4 30 c4 e5                                      strb r3, [r4, #0xc4]
0041cdac  c8 30 84 e5                                      str r3, [r4, #0xc8]
0041cdb0  cc 30 84 e5                                      str r3, [r4, #0xcc]
0041cdb4  d0 30 84 e5                                      str r3, [r4, #0xd0]
0041cdb8  d4 30 84 e5                                      str r3, [r4, #0xd4]
0041cdbc  d8 30 84 e5                                      str r3, [r4, #0xd8]
0041cdc0  dc 30 84 e5                                      str r3, [r4, #0xdc]
0041cdc4  e4 10 84 e5                                      str r1, [r4, #0xe4]
0041cdc8  67 0f 84 e2                                      add r0, r4, #0x19c
0041cdcc  46 f8 ff eb                                      bl #0x41aeec
0041cdd0  00 20 a0 e3                                      mov r2, #0
0041cdd4  73 3f 84 e2                                      add r3, r4, #0x1cc
0041cdd8  7f 1f 84 e2                                      add r1, r4, #0x1fc
0041cddc  00 20 83 e5                                      str r2, [r3]
0041cde0  04 20 83 e5                                      str r2, [r3, #4]
0041cde4  08 20 83 e5                                      str r2, [r3, #8]
0041cde8  0c 30 83 e2                                      add r3, r3, #0xc
0041cdec  01 00 53 e1                                      cmp r3, r1
0041cdf0  f9 ff ff 1a                                      bne #0x41cddc
0041cdf4  97 1f 84 e2                                      add r1, r4, #0x25c
0041cdf8  00 20 83 e5                                      str r2, [r3]
0041cdfc  04 20 83 e5                                      str r2, [r3, #4]
0041ce00  08 20 83 e5                                      str r2, [r3, #8]
0041ce04  0c 30 83 e2                                      add r3, r3, #0xc
0041ce08  01 00 53 e1                                      cmp r3, r1
0041ce0c  f9 ff ff 1a                                      bne #0x41cdf8
0041ce10  af 1f 84 e2                                      add r1, r4, #0x2bc
0041ce14  00 20 83 e5                                      str r2, [r3]
0041ce18  04 20 83 e5                                      str r2, [r3, #4]
0041ce1c  08 20 83 e5                                      str r2, [r3, #8]
0041ce20  0c 30 83 e2                                      add r3, r3, #0xc
0041ce24  01 00 53 e1                                      cmp r3, r1
0041ce28  f9 ff ff 1a                                      bne #0x41ce14
0041ce2c  d3 1f 84 e2                                      add r1, r4, #0x34c
0041ce30  00 20 83 e5                                      str r2, [r3]
0041ce34  04 20 83 e5                                      str r2, [r3, #4]
0041ce38  08 20 83 e5                                      str r2, [r3, #8]
0041ce3c  0c 30 83 e2                                      add r3, r3, #0xc
0041ce40  01 00 53 e1                                      cmp r3, r1
0041ce44  f9 ff ff 1a                                      bne #0x41ce30
0041ce48  f7 1f 84 e2                                      add r1, r4, #0x3dc
0041ce4c  00 20 83 e5                                      str r2, [r3]
0041ce50  04 20 83 e5                                      str r2, [r3, #4]
0041ce54  08 20 83 e5                                      str r2, [r3, #8]
0041ce58  0c 30 83 e2                                      add r3, r3, #0xc
0041ce5c  01 00 53 e1                                      cmp r3, r1
0041ce60  f9 ff ff 1a                                      bne #0x41ce4c
0041ce64  04 00 a0 e1                                      mov r0, r4
0041ce68  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0041ce6c  08 7d 57 00 34 10 00 00                          .byte 0x08, 0x7d, 0x57, 0x00, 0x34, 0x10, 0x00, 0x00

; FUNCTION 0x0041cff4, declared_size=912, range_size=912, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap13SetIconFramesEPS_
; demangled: HUDMinimap::SetIconFrames(HUDMinimap*)
; decoder-mode: arm
0041cff4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0041cff8  74 23 9f e5                                      ldr r2, [pc, #0x374]
0041cffc  74 33 9f e5                                      ldr r3, [pc, #0x374]
0041d000  e7 df 4d e2                                      sub sp, sp, #0x39c
0041d004  02 20 8f e0                                      add r2, pc, r2
0041d008  0c 30 8d e5                                      str r3, [sp, #0xc]
0041d00c  03 30 92 e7                                      ldr r3, [r2, r3]
0041d010  64 93 9f e5                                      ldr sb, [pc, #0x364]
0041d014  a1 af 8d e2                                      add sl, sp, #0x284
0041d018  00 30 93 e5                                      ldr r3, [r3]
0041d01c  08 20 8d e5                                      str r2, [sp, #8]
0041d020  01 70 a0 e1                                      mov r7, r1
0041d024  05 20 a0 e3                                      mov r2, #5
0041d028  20 c0 8d e2                                      add ip, sp, #0x20
0041d02c  08 10 8a e2                                      add r1, sl, #8
0041d030  dc 20 80 e5                                      str r2, [r0, #0xdc]
0041d034  00 40 a0 e1                                      mov r4, r0
0041d038  94 33 8d e5                                      str r3, [sp, #0x394]
0041d03c  09 90 8f e0                                      add sb, pc, sb
0041d040  00 80 a0 e1                                      mov r8, r0
0041d044  10 b0 80 e2                                      add fp, r0, #0x10
0041d048  00 60 a0 e1                                      mov r6, r0
0041d04c  df 5f 8d e2                                      add r5, sp, #0x37c
0041d050  00 c0 8d e5                                      str ip, [sp]
0041d054  04 10 8d e5                                      str r1, [sp, #4]
0041d058  00 20 9d e5                                      ldr r2, [sp]
0041d05c  09 10 a0 e1                                      mov r1, sb
0041d060  05 00 a0 e1                                      mov r0, r5
0041d064  20 dc fb eb                                      bl #0x3140ec
0041d068  0a 00 a0 e1                                      mov r0, sl
0041d06c  80 ff ff eb                                      bl #0x41ce74
0041d070  05 10 a0 e1                                      mov r1, r5
0041d074  04 00 9d e5                                      ldr r0, [sp, #4]
0041d078  b9 fc ff eb                                      bl #0x41c364
0041d07c  dc 10 94 e5                                      ldr r1, [r4, #0xdc]
0041d080  01 30 81 e2                                      add r3, r1, #1
0041d084  dc 30 84 e5                                      str r3, [r4, #0xdc]
0041d088  6b cb fb eb                                      bl #0x30fe3c
0041d08c  05 10 a0 e1                                      mov r1, r5
0041d090  0a 00 a0 e1                                      mov r0, sl
0041d094  af ad fc eb                                      bl #0x348758
0041d098  04 00 97 e5                                      ldr r0, [r7, #4]
0041d09c  90 13 9d e5                                      ldr r1, [sp, #0x390]
0041d0a0  2e 30 0e eb                                      bl #0x7a9160
0041d0a4  00 00 50 e3                                      cmp r0, #0
0041d0a8  ec 00 86 e5                                      str r0, [r6, #0xec]
0041d0ac  03 00 00 0a                                      beq #0x41d0c0
0041d0b0  00 30 90 e5                                      ldr r3, [r0]
0041d0b4  03 10 a0 e3                                      mov r1, #3
0041d0b8  0f e0 a0 e1                                      mov lr, pc
0041d0bc  4c f1 93 e5                                      ldr pc, [r3, #0x14c]
0041d0c0  0a 00 a0 e1                                      mov r0, sl
0041d0c4  9e b0 fd eb                                      bl #0x389344
0041d0c8  04 60 86 e2                                      add r6, r6, #4
0041d0cc  05 00 a0 e1                                      mov r0, r5
0041d0d0  35 da fb eb                                      bl #0x3139ac
0041d0d4  0b 00 56 e1                                      cmp r6, fp
0041d0d8  de ff ff 1a                                      bne #0x41d058
0041d0dc  9c b2 9f e5                                      ldr fp, [pc, #0x29c]
0041d0e0  7b af 8d e2                                      add sl, sp, #0x1ec
0041d0e4  1c 20 8d e2                                      add r2, sp, #0x1c
0041d0e8  08 30 8a e2                                      add r3, sl, #8
0041d0ec  04 80 8d e5                                      str r8, [sp, #4]
0041d0f0  30 90 84 e2                                      add sb, r4, #0x30
0041d0f4  0b b0 8f e0                                      add fp, pc, fp
0041d0f8  04 60 a0 e1                                      mov r6, r4
0041d0fc  d9 5f 8d e2                                      add r5, sp, #0x364
0041d100  00 20 8d e5                                      str r2, [sp]
0041d104  03 80 a0 e1                                      mov r8, r3
0041d108  00 20 9d e5                                      ldr r2, [sp]
0041d10c  0b 10 a0 e1                                      mov r1, fp
0041d110  05 00 a0 e1                                      mov r0, r5
0041d114  f4 db fb eb                                      bl #0x3140ec
0041d118  0a 00 a0 e1                                      mov r0, sl
0041d11c  54 ff ff eb                                      bl #0x41ce74
0041d120  05 10 a0 e1                                      mov r1, r5
0041d124  08 00 a0 e1                                      mov r0, r8
0041d128  8d fc ff eb                                      bl #0x41c364
0041d12c  dc 10 94 e5                                      ldr r1, [r4, #0xdc]
0041d130  01 30 81 e2                                      add r3, r1, #1
0041d134  dc 30 84 e5                                      str r3, [r4, #0xdc]
0041d138  3f cb fb eb                                      bl #0x30fe3c
0041d13c  05 10 a0 e1                                      mov r1, r5
0041d140  0a 00 a0 e1                                      mov r0, sl
0041d144  83 ad fc eb                                      bl #0x348758
0041d148  78 13 9d e5                                      ldr r1, [sp, #0x378]
0041d14c  04 00 97 e5                                      ldr r0, [r7, #4]
0041d150  02 30 0e eb                                      bl #0x7a9160
0041d154  6c 01 86 e5                                      str r0, [r6, #0x16c]
0041d158  00 30 90 e5                                      ldr r3, [r0]
0041d15c  04 10 a0 e3                                      mov r1, #4
0041d160  0f e0 a0 e1                                      mov lr, pc
0041d164  4c f1 93 e5                                      ldr pc, [r3, #0x14c]
0041d168  0a 00 a0 e1                                      mov r0, sl
0041d16c  74 b0 fd eb                                      bl #0x389344
0041d170  04 60 86 e2                                      add r6, r6, #4
0041d174  05 00 a0 e1                                      mov r0, r5
0041d178  0b da fb eb                                      bl #0x3139ac
0041d17c  09 00 56 e1                                      cmp r6, sb
0041d180  e0 ff ff 1a                                      bne #0x41d108
0041d184  18 30 8d e2                                      add r3, sp, #0x18
0041d188  55 af 8d e2                                      add sl, sp, #0x154
0041d18c  00 30 8d e5                                      str r3, [sp]
0041d190  08 30 8a e2                                      add r3, sl, #8
0041d194  04 60 a0 e1                                      mov r6, r4
0041d198  d3 5f 8d e2                                      add r5, sp, #0x34c
0041d19c  03 80 a0 e1                                      mov r8, r3
0041d1a0  00 20 9d e5                                      ldr r2, [sp]
0041d1a4  0b 10 a0 e1                                      mov r1, fp
0041d1a8  05 00 a0 e1                                      mov r0, r5
0041d1ac  ce db fb eb                                      bl #0x3140ec
0041d1b0  0a 00 a0 e1                                      mov r0, sl
0041d1b4  2e ff ff eb                                      bl #0x41ce74
0041d1b8  05 10 a0 e1                                      mov r1, r5
0041d1bc  08 00 a0 e1                                      mov r0, r8
0041d1c0  67 fc ff eb                                      bl #0x41c364
0041d1c4  dc 10 94 e5                                      ldr r1, [r4, #0xdc]
0041d1c8  01 30 81 e2                                      add r3, r1, #1
0041d1cc  dc 30 84 e5                                      str r3, [r4, #0xdc]
0041d1d0  19 cb fb eb                                      bl #0x30fe3c
0041d1d4  05 10 a0 e1                                      mov r1, r5
0041d1d8  0a 00 a0 e1                                      mov r0, sl
0041d1dc  5d ad fc eb                                      bl #0x348758
0041d1e0  60 13 9d e5                                      ldr r1, [sp, #0x360]
0041d1e4  04 00 97 e5                                      ldr r0, [r7, #4]
0041d1e8  dc 2f 0e eb                                      bl #0x7a9160
0041d1ec  3c 01 86 e5                                      str r0, [r6, #0x13c]
0041d1f0  00 30 90 e5                                      ldr r3, [r0]
0041d1f4  00 10 a0 e3                                      mov r1, #0
0041d1f8  0f e0 a0 e1                                      mov lr, pc
0041d1fc  4c f1 93 e5                                      ldr pc, [r3, #0x14c]
0041d200  0a 00 a0 e1                                      mov r0, sl
0041d204  4e b0 fd eb                                      bl #0x389344
0041d208  04 60 86 e2                                      add r6, r6, #4
0041d20c  05 00 a0 e1                                      mov r0, r5
0041d210  e5 d9 fb eb                                      bl #0x3139ac
0041d214  06 00 59 e1                                      cmp sb, r6
0041d218  e0 ff ff 1a                                      bne #0x41d1a0
0041d21c  bc a0 8d e2                                      add sl, sp, #0xbc
0041d220  14 c0 8d e2                                      add ip, sp, #0x14
0041d224  08 30 8a e2                                      add r3, sl, #8
0041d228  20 90 84 e2                                      add sb, r4, #0x20
0041d22c  04 60 a0 e1                                      mov r6, r4
0041d230  cd 5f 8d e2                                      add r5, sp, #0x334
0041d234  00 c0 8d e5                                      str ip, [sp]
0041d238  03 80 a0 e1                                      mov r8, r3
0041d23c  00 20 9d e5                                      ldr r2, [sp]
0041d240  0b 10 a0 e1                                      mov r1, fp
0041d244  05 00 a0 e1                                      mov r0, r5
0041d248  a7 db fb eb                                      bl #0x3140ec
0041d24c  0a 00 a0 e1                                      mov r0, sl
0041d250  07 ff ff eb                                      bl #0x41ce74
0041d254  05 10 a0 e1                                      mov r1, r5
0041d258  08 00 a0 e1                                      mov r0, r8
0041d25c  40 fc ff eb                                      bl #0x41c364
0041d260  dc 10 94 e5                                      ldr r1, [r4, #0xdc]
0041d264  01 30 81 e2                                      add r3, r1, #1
0041d268  dc 30 84 e5                                      str r3, [r4, #0xdc]
0041d26c  f2 ca fb eb                                      bl #0x30fe3c
0041d270  05 10 a0 e1                                      mov r1, r5
0041d274  0a 00 a0 e1                                      mov r0, sl
0041d278  36 ad fc eb                                      bl #0x348758
0041d27c  48 13 9d e5                                      ldr r1, [sp, #0x348]
0041d280  04 00 97 e5                                      ldr r0, [r7, #4]
0041d284  b5 2f 0e eb                                      bl #0x7a9160
0041d288  fc 00 86 e5                                      str r0, [r6, #0xfc]
0041d28c  00 30 90 e5                                      ldr r3, [r0]
0041d290  01 10 a0 e3                                      mov r1, #1
0041d294  0f e0 a0 e1                                      mov lr, pc
0041d298  4c f1 93 e5                                      ldr pc, [r3, #0x14c]
0041d29c  0a 00 a0 e1                                      mov r0, sl
0041d2a0  27 b0 fd eb                                      bl #0x389344
0041d2a4  04 60 86 e2                                      add r6, r6, #4
0041d2a8  05 00 a0 e1                                      mov r0, r5
0041d2ac  be d9 fb eb                                      bl #0x3139ac
0041d2b0  09 00 56 e1                                      cmp r6, sb
0041d2b4  e0 ff ff 1a                                      bne #0x41d23c
0041d2b8  24 60 8d e2                                      add r6, sp, #0x24
0041d2bc  04 80 9d e5                                      ldr r8, [sp, #4]
0041d2c0  08 10 86 e2                                      add r1, r6, #8
0041d2c4  c7 5f 8d e2                                      add r5, sp, #0x31c
0041d2c8  10 a0 8d e2                                      add sl, sp, #0x10
0041d2cc  00 10 8d e5                                      str r1, [sp]
0041d2d0  0a 20 a0 e1                                      mov r2, sl
0041d2d4  0b 10 a0 e1                                      mov r1, fp
0041d2d8  05 00 a0 e1                                      mov r0, r5
0041d2dc  82 db fb eb                                      bl #0x3140ec
0041d2e0  06 00 a0 e1                                      mov r0, r6
0041d2e4  e2 fe ff eb                                      bl #0x41ce74
0041d2e8  05 10 a0 e1                                      mov r1, r5
0041d2ec  00 00 9d e5                                      ldr r0, [sp]
0041d2f0  1b fc ff eb                                      bl #0x41c364
0041d2f4  dc 10 94 e5                                      ldr r1, [r4, #0xdc]
0041d2f8  01 30 81 e2                                      add r3, r1, #1
0041d2fc  dc 30 84 e5                                      str r3, [r4, #0xdc]
0041d300  cd ca fb eb                                      bl #0x30fe3c
0041d304  05 10 a0 e1                                      mov r1, r5
0041d308  06 00 a0 e1                                      mov r0, r6
0041d30c  11 ad fc eb                                      bl #0x348758
0041d310  30 13 9d e5                                      ldr r1, [sp, #0x330]
0041d314  04 00 97 e5                                      ldr r0, [r7, #4]
0041d318  90 2f 0e eb                                      bl #0x7a9160
0041d31c  1c 01 88 e5                                      str r0, [r8, #0x11c]
0041d320  00 30 90 e5                                      ldr r3, [r0]
0041d324  02 10 a0 e3                                      mov r1, #2
0041d328  0f e0 a0 e1                                      mov lr, pc
0041d32c  4c f1 93 e5                                      ldr pc, [r3, #0x14c]
0041d330  06 00 a0 e1                                      mov r0, r6
0041d334  02 b0 fd eb                                      bl #0x389344
0041d338  04 80 88 e2                                      add r8, r8, #4
0041d33c  05 00 a0 e1                                      mov r0, r5
0041d340  99 d9 fb eb                                      bl #0x3139ac
0041d344  08 00 59 e1                                      cmp sb, r8
0041d348  e0 ff ff 1a                                      bne #0x41d2d0
0041d34c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0041d350  08 c0 9d e5                                      ldr ip, [sp, #8]
0041d354  02 30 9c e7                                      ldr r3, [ip, r2]
0041d358  94 23 9d e5                                      ldr r2, [sp, #0x394]
0041d35c  00 30 93 e5                                      ldr r3, [r3]
0041d360  03 00 52 e1                                      cmp r2, r3
0041d364  01 00 00 1a                                      bne #0x41d370
0041d368  e7 df 8d e2                                      add sp, sp, #0x39c
0041d36c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0041d370  e6 c3 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0041d374  8c 7a 57 00 ac 40 00 00 a4 b8 4a 00 ec b7 4a 00  .byte 0x8c, 0x7a, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa4, 0xb8, 0x4a, 0x00, 0xec, 0xb7, 0x4a, 0x00

; FUNCTION 0x0041d384, declared_size=488, range_size=488, mode=arm
; class-group: HUDMinimap
; alias: _ZN10HUDMinimap17SetRoomVisibilityEPN6glitch5scene10ISceneNodeE
; demangled: HUDMinimap::SetRoomVisibility(glitch::scene::ISceneNode*)
; decoder-mode: arm
0041d384  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0041d388  c8 71 9f e5                                      ldr r7, [pc, #0x1c8]
0041d38c  c8 21 9f e5                                      ldr r2, [pc, #0x1c8]
0041d390  5c d0 4d e2                                      sub sp, sp, #0x5c
0041d394  07 70 8f e0                                      add r7, pc, r7
0041d398  02 30 97 e7                                      ldr r3, [r7, r2]
0041d39c  00 00 51 e3                                      cmp r1, #0
0041d3a0  10 20 8d e5                                      str r2, [sp, #0x10]
0041d3a4  00 30 93 e5                                      ldr r3, [r3]
0041d3a8  14 10 8d e5                                      str r1, [sp, #0x14]
0041d3ac  00 50 a0 e1                                      mov r5, r0
0041d3b0  54 30 8d e5                                      str r3, [sp, #0x54]
0041d3b4  4c 00 00 0a                                      beq #0x41d4ec
0041d3b8  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
0041d3bc  00 80 a0 e1                                      mov r8, r0
0041d3c0  e4 90 b8 e5                                      ldr sb, [r8, #0xe4]!
0041d3c4  03 30 97 e7                                      ldr r3, [r7, r3]
0041d3c8  08 00 59 e1                                      cmp sb, r8
0041d3cc  38 60 93 e5                                      ldr r6, [r3, #0x38]
0041d3d0  24 40 b6 e5                                      ldr r4, [r6, #0x24]!
0041d3d4  08 00 00 0a                                      beq #0x41d3fc
0041d3d8  09 00 a0 e1                                      mov r0, sb
0041d3dc  00 00 00 ea                                      b #0x41d3e4
0041d3e0  0a 00 a0 e1                                      mov r0, sl
0041d3e4  00 a0 90 e5                                      ldr sl, [r0]
0041d3e8  0c 10 a0 e3                                      mov r1, #0xc
0041d3ec  c3 ae 0b eb                                      bl #0x708f00
0041d3f0  08 00 5a e1                                      cmp sl, r8
0041d3f4  f9 ff ff 1a                                      bne #0x41d3e0
0041d3f8  08 90 a0 e1                                      mov sb, r8
0041d3fc  60 b1 9f e5                                      ldr fp, [pc, #0x160]
0041d400  60 21 9f e5                                      ldr r2, [pc, #0x160]
0041d404  34 30 8d e2                                      add r3, sp, #0x34
0041d408  e4 90 85 e5                                      str sb, [r5, #0xe4]
0041d40c  e8 90 85 e5                                      str sb, [r5, #0xe8]
0041d410  04 00 56 e1                                      cmp r6, r4
0041d414  04 30 8d e5                                      str r3, [sp, #4]
0041d418  38 30 8d e2                                      add r3, sp, #0x38
0041d41c  0b b0 8f e0                                      add fp, pc, fp
0041d420  08 20 8d e5                                      str r2, [sp, #8]
0041d424  3c 80 8d e2                                      add r8, sp, #0x3c
0041d428  0c 30 8d e5                                      str r3, [sp, #0xc]
0041d42c  11 00 00 0a                                      beq #0x41d478
0041d430  08 00 94 e5                                      ldr r0, [r4, #8]
0041d434  1b e4 fd eb                                      bl #0x3964a8
0041d438  00 00 50 e3                                      cmp r0, #0
0041d43c  32 00 00 0a                                      beq #0x41d50c
0041d440  0c 30 a0 e3                                      mov r3, #0xc
0041d444  04 00 9d e5                                      ldr r0, [sp, #4]
0041d448  34 30 8d e5                                      str r3, [sp, #0x34]
0041d44c  9b ae 0b eb                                      bl #0x708ec0
0041d450  08 30 94 e5                                      ldr r3, [r4, #8]
0041d454  08 30 80 e5                                      str r3, [r0, #8]
0041d458  e8 30 95 e5                                      ldr r3, [r5, #0xe8]
0041d45c  00 90 80 e5                                      str sb, [r0]
0041d460  04 30 80 e5                                      str r3, [r0, #4]
0041d464  00 00 83 e5                                      str r0, [r3]
0041d468  e8 00 85 e5                                      str r0, [r5, #0xe8]
0041d46c  00 40 94 e5                                      ldr r4, [r4]
0041d470  04 00 56 e1                                      cmp r6, r4
0041d474  ed ff ff 1a                                      bne #0x41d430
0041d478  14 80 9d e5                                      ldr r8, [sp, #0x14]
0041d47c  f4 40 b8 e5                                      ldr r4, [r8, #0xf4]!
0041d480  08 00 54 e1                                      cmp r4, r8
0041d484  18 00 00 0a                                      beq #0x41d4ec
0041d488  28 90 8d e2                                      add sb, sp, #0x28
0041d48c  1c a0 8d e2                                      add sl, sp, #0x1c
0041d490  00 00 54 e3                                      cmp r4, #0
0041d494  04 60 a0 01                                      moveq r6, r4
0041d498  04 60 44 12                                      subne r6, r4, #4
0041d49c  09 00 a0 e1                                      mov r0, sb
0041d4a0  06 10 a0 e1                                      mov r1, r6
0041d4a4  00 40 94 e5                                      ldr r4, [r4]
0041d4a8  34 e7 05 eb                                      bl #0x597180
0041d4ac  28 30 9d e5                                      ldr r3, [sp, #0x28]
0041d4b0  0a 10 a0 e1                                      mov r1, sl
0041d4b4  05 00 a0 e1                                      mov r0, r5
0041d4b8  1c 30 8d e5                                      str r3, [sp, #0x1c]
0041d4bc  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0041d4c0  20 30 8d e5                                      str r3, [sp, #0x20]
0041d4c4  30 30 9d e5                                      ldr r3, [sp, #0x30]
0041d4c8  24 30 8d e5                                      str r3, [sp, #0x24]
0041d4cc  e5 f8 ff eb                                      bl #0x41b868
0041d4d0  00 30 96 e5                                      ldr r3, [r6]
0041d4d4  00 10 a0 e1                                      mov r1, r0
0041d4d8  06 00 a0 e1                                      mov r0, r6
0041d4dc  0f e0 a0 e1                                      mov lr, pc
0041d4e0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0041d4e4  04 00 58 e1                                      cmp r8, r4
0041d4e8  e8 ff ff 1a                                      bne #0x41d490
0041d4ec  10 20 9d e5                                      ldr r2, [sp, #0x10]
0041d4f0  02 30 97 e7                                      ldr r3, [r7, r2]
0041d4f4  54 20 9d e5                                      ldr r2, [sp, #0x54]
0041d4f8  00 30 93 e5                                      ldr r3, [r3]
0041d4fc  03 00 52 e1                                      cmp r2, r3
0041d500  13 00 00 1a                                      bne #0x41d554
0041d504  5c d0 8d e2                                      add sp, sp, #0x5c
0041d508  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0041d50c  08 20 9d e5                                      ldr r2, [sp, #8]
0041d510  02 a0 97 e7                                      ldr sl, [r7, r2]
0041d514  0a 00 a0 e1                                      mov r0, sl
0041d518  da 68 fc eb                                      bl #0x337888
0041d51c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0041d520  0b 10 a0 e1                                      mov r1, fp
0041d524  08 00 a0 e1                                      mov r0, r8
0041d528  ef da fb eb                                      bl #0x3140ec
0041d52c  0a 00 a0 e1                                      mov r0, sl
0041d530  08 10 a0 e1                                      mov r1, r8
0041d534  53 69 fc eb                                      bl #0x337a88
0041d538  00 a0 a0 e1                                      mov sl, r0
0041d53c  08 00 a0 e1                                      mov r0, r8
0041d540  19 d9 fb eb                                      bl #0x3139ac
0041d544  00 00 5a e3                                      cmp sl, #0
0041d548  bc ff ff 1a                                      bne #0x41d440
0041d54c  00 40 94 e5                                      ldr r4, [r4]
0041d550  c6 ff ff ea                                      b #0x41d470
0041d554  6d c3 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0041d558  fc 76 57 00 ac 40 00 00 f4 37 00 00 74 26 4a 00  .byte 0xfc, 0x76, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x74, 0x26, 0x4a, 0x00
0041d568  84 08 00 00                                      .byte 0x84, 0x08, 0x00, 0x00
