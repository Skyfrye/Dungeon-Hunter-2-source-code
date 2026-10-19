; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0041b3d0, declared_size=20, range_size=20, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase11OnFSCommandEPKcS1_
; demangled: MenuBase::OnFSCommand(char const*, char const*)
; decoder-mode: arm
0041b3d0  10 40 2d e9                                      push {r4, lr}
0041b3d4  00 30 90 e5                                      ldr r3, [r0]
0041b3d8  0f e0 a0 e1                                      mov lr, pc
0041b3dc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0041b3e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0041b3e4, declared_size=4, range_size=4, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase6CreateEv
; demangled: MenuBase::Create()
; decoder-mode: arm
0041b3e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041b3e8, declared_size=4, range_size=4, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase8GotFocusEv
; demangled: MenuBase::GotFocus()
; decoder-mode: arm
0041b3e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041b3ec, declared_size=4, range_size=4, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase9LostFocusEv
; demangled: MenuBase::LostFocus()
; decoder-mode: arm
0041b3ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041b3f0, declared_size=8, range_size=8, mode=arm
; class-group: MenuBase
; alias: _ZNK8MenuBase11IsValidMenuEv
; demangled: MenuBase::IsValidMenu() const
; decoder-mode: arm
0041b3f0  7c 00 d0 e5                                      ldrb r0, [r0, #0x7c]
0041b3f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041b3f8, declared_size=8, range_size=8, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase14SetIsLocalisedEb
; demangled: MenuBase::SetIsLocalised(bool)
; decoder-mode: arm
0041b3f8  75 10 c0 e5                                      strb r1, [r0, #0x75]
0041b3fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041b400, declared_size=4, range_size=4, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase12CacheStringsEv
; demangled: MenuBase::CacheStrings()
; decoder-mode: arm
0041b400  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041f3f4, declared_size=8, range_size=8, mode=arm
; class-group: MenuBase
; alias: _ZNK8MenuBase9IsVisibleEv
; demangled: MenuBase::IsVisible() const
; decoder-mode: arm
0041f3f4  74 00 d0 e5                                      ldrb r0, [r0, #0x74]
0041f3f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041f3fc, declared_size=8, range_size=8, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase14CanHandleEventERN8RenderFX5EventE
; demangled: MenuBase::CanHandleEvent(RenderFX::Event&)
; decoder-mode: arm
0041f3fc  01 00 a0 e3                                      mov r0, #1
0041f400  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041f404, declared_size=8, range_size=8, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase16FS_LaunchTwitterEPKcS1_Pv
; demangled: MenuBase::FS_LaunchTwitter(char const*, char const*, void*)
; decoder-mode: arm
0041f404  01 00 a0 e3                                      mov r0, #1
0041f408  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041f40c, declared_size=56, range_size=56, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase11FS_ExitGameEPKcS1_Pv
; demangled: MenuBase::FS_ExitGame(char const*, char const*, void*)
; decoder-mode: arm
0041f40c  28 30 9f e5                                      ldr r3, [pc, #0x28]
0041f410  28 20 9f e5                                      ldr r2, [pc, #0x28]
0041f414  10 40 2d e9                                      push {r4, lr}
0041f418  03 30 8f e0                                      add r3, pc, r3
0041f41c  02 20 93 e7                                      ldr r2, [r3, r2]
0041f420  10 30 92 e5                                      ldr r3, [r2, #0x10]
0041f424  03 00 a0 e1                                      mov r0, r3
0041f428  00 30 93 e5                                      ldr r3, [r3]
0041f42c  0f e0 a0 e1                                      mov lr, pc
0041f430  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0041f434  01 00 a0 e3                                      mov r0, #1
0041f438  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0041f43c  78 56 57 00 f4 37 00 00                          .byte 0x78, 0x56, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0041f444, declared_size=8, range_size=8, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase16FS_PauseGameplayEPKcS1_Pv
; demangled: MenuBase::FS_PauseGameplay(char const*, char const*, void*)
; decoder-mode: arm
0041f444  00 00 a0 e3                                      mov r0, #0
0041f448  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041f44c, declared_size=8, range_size=8, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase17FS_ResumeGameplayEPKcS1_Pv
; demangled: MenuBase::FS_ResumeGameplay(char const*, char const*, void*)
; decoder-mode: arm
0041f44c  00 00 a0 e3                                      mov r0, #0
0041f450  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041f454, declared_size=164, range_size=164, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase14RemoveDeadZoneERKN7gameswf4rectE
; demangled: MenuBase::RemoveDeadZone(gameswf::rect const&)
; decoder-mode: arm
0041f454  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0041f458  b8 40 90 e5                                      ldr r4, [r0, #0xb8]
0041f45c  bc 70 90 e5                                      ldr r7, [r0, #0xbc]
0041f460  00 60 a0 e1                                      mov r6, r0
0041f464  07 00 54 e1                                      cmp r4, r7
0041f468  21 00 00 0a                                      beq #0x41f4f4
0041f46c  04 50 91 e5                                      ldr r5, [r1, #4]
0041f470  04 00 94 e5                                      ldr r0, [r4, #4]
0041f474  05 10 a0 e1                                      mov r1, r5
0041f478  cb bb fb eb                                      bl #0x30e3ac
0041f47c  17 17 0b e3                                      movw r1, #0xb717
0041f480  02 01 c0 e3                                      bic r0, r0, #0x80000000
0041f484  d1 18 43 e3                                      movt r1, #0x38d1
0041f488  9f bc fb eb                                      bl #0x30e70c
0041f48c  00 00 50 e3                                      cmp r0, #0
0041f490  11 00 00 0a                                      beq #0x41f4dc
0041f494  10 c0 84 e2                                      add ip, r4, #0x10
0041f498  0c 00 57 e1                                      cmp r7, ip
0041f49c  0b 00 00 0a                                      beq #0x41f4d0
0041f4a0  07 50 6c e0                                      rsb r5, ip, r7
0041f4a4  45 52 a0 e1                                      asr r5, r5, #4
0041f4a8  00 00 55 e3                                      cmp r5, #0
0041f4ac  01 00 00 ca                                      bgt #0x41f4b8
0041f4b0  06 00 00 ea                                      b #0x41f4d0
0041f4b4  10 c0 8c e2                                      add ip, ip, #0x10
0041f4b8  01 50 55 e2                                      subs r5, r5, #1
0041f4bc  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0041f4c0  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0041f4c4  0c 40 a0 e1                                      mov r4, ip
0041f4c8  f9 ff ff 1a                                      bne #0x41f4b4
0041f4cc  bc 70 96 e5                                      ldr r7, [r6, #0xbc]
0041f4d0  10 70 47 e2                                      sub r7, r7, #0x10
0041f4d4  bc 70 86 e5                                      str r7, [r6, #0xbc]
0041f4d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0041f4dc  10 40 84 e2                                      add r4, r4, #0x10
0041f4e0  07 00 54 e1                                      cmp r4, r7
0041f4e4  05 10 a0 e1                                      mov r1, r5
0041f4e8  04 00 94 15                                      ldrne r0, [r4, #4]
0041f4ec  e1 ff ff 1a                                      bne #0x41f478
0041f4f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0041f4f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0041f4f8, declared_size=80, range_size=80, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase16ClearSlideEventsEv
; demangled: MenuBase::ClearSlideEvents()
; decoder-mode: arm
0041f4f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0041f4fc  60 40 90 e5                                      ldr r4, [r0, #0x60]
0041f500  64 50 90 e5                                      ldr r5, [r0, #0x64]
0041f504  00 70 a0 e1                                      mov r7, r0
0041f508  05 00 54 e1                                      cmp r4, r5
0041f50c  0c 00 00 0a                                      beq #0x41f544
0041f510  00 60 a0 e3                                      mov r6, #0
0041f514  00 00 94 e5                                      ldr r0, [r4]
0041f518  00 00 50 e3                                      cmp r0, #0
0041f51c  01 00 00 0a                                      beq #0x41f528
0041f520  c6 c3 fb eb                                      bl #0x310440
0041f524  00 60 84 e5                                      str r6, [r4]
0041f528  04 40 84 e2                                      add r4, r4, #4
0041f52c  05 00 54 e1                                      cmp r4, r5
0041f530  f7 ff ff 1a                                      bne #0x41f514
0041f534  60 30 97 e5                                      ldr r3, [r7, #0x60]
0041f538  64 20 97 e5                                      ldr r2, [r7, #0x64]
0041f53c  02 00 53 e1                                      cmp r3, r2
0041f540  64 30 87 15                                      strne r3, [r7, #0x64]
0041f544  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0041f578, declared_size=200, range_size=200, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase13FS_LoadLevel2EPKcS1_Pv
; demangled: MenuBase::FS_LoadLevel2(char const*, char const*, void*)
; decoder-mode: arm
0041f578  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0041f57c  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
0041f580  00 40 51 e2                                      subs r4, r1, #0
0041f584  02 a0 a0 e1                                      mov sl, r2
0041f588  05 50 8f e0                                      add r5, pc, r5
0041f58c  24 00 00 0a                                      beq #0x41f624
0041f590  d0 30 d4 e1                                      ldrsb r3, [r4]
0041f594  00 00 53 e3                                      cmp r3, #0
0041f598  21 00 00 0a                                      beq #0x41f624
0041f59c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0041f5a0  03 30 95 e7                                      ldr r3, [r5, r3]
0041f5a4  00 70 93 e5                                      ldr r7, [r3]
0041f5a8  00 00 57 e3                                      cmp r7, #0
0041f5ac  1c 00 00 0a                                      beq #0x41f624
0041f5b0  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0041f5b4  00 60 a0 e3                                      mov r6, #0
0041f5b8  03 30 95 e7                                      ldr r3, [r5, r3]
0041f5bc  00 80 93 e5                                      ldr r8, [r3]
0041f5c0  02 00 00 ea                                      b #0x41f5d0
0041f5c4  01 60 86 e2                                      add r6, r6, #1
0041f5c8  07 00 56 e1                                      cmp r6, r7
0041f5cc  14 00 00 0a                                      beq #0x41f624
0041f5d0  06 11 98 e7                                      ldr r1, [r8, r6, lsl #2]
0041f5d4  04 00 a0 e1                                      mov r0, r4
0041f5d8  4f bb fb eb                                      bl #0x30e31c
0041f5dc  00 00 50 e3                                      cmp r0, #0
0041f5e0  f7 ff ff 1a                                      bne #0x41f5c4
0041f5e4  01 00 76 e3                                      cmn r6, #1
0041f5e8  0d 00 00 0a                                      beq #0x41f624
0041f5ec  44 30 9f e5                                      ldr r3, [pc, #0x44]
0041f5f0  48 c0 a0 e3                                      mov ip, #0x48
0041f5f4  40 10 9f e5                                      ldr r1, [pc, #0x40]
0041f5f8  03 30 95 e7                                      ldr r3, [r5, r3]
0041f5fc  0a 00 a0 e1                                      mov r0, sl
0041f600  01 10 8f e0                                      add r1, pc, r1
0041f604  00 20 93 e5                                      ldr r2, [r3]
0041f608  00 30 9a e5                                      ldr r3, [sl]
0041f60c  9c 26 26 e0                                      mla r6, ip, r6, r2
0041f610  20 20 96 e5                                      ldr r2, [r6, #0x20]
0041f614  0f e0 a0 e1                                      mov lr, pc
0041f618  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0041f61c  01 00 a0 e3                                      mov r0, #1
0041f620  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0041f624  00 00 a0 e3                                      mov r0, #0
0041f628  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0041f62c  08 55 57 00 c0 18 00 00 5c 3b 00 00 74 08 00 00  .byte 0x08, 0x55, 0x57, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00, 0x74, 0x08, 0x00, 0x00
0041f63c  98 98 4a 00                                      .byte 0x98, 0x98, 0x4a, 0x00

; FUNCTION 0x0041f640, declared_size=132, range_size=132, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase17FS_SetPlayerClassEPKcS1_Pv
; demangled: MenuBase::FS_SetPlayerClass(char const*, char const*, void*)
; decoder-mode: arm
0041f640  70 30 9f e5                                      ldr r3, [pc, #0x70]
0041f644  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0041f648  01 40 a0 e1                                      mov r4, r1
0041f64c  68 10 9f e5                                      ldr r1, [pc, #0x68]
0041f650  03 30 8f e0                                      add r3, pc, r3
0041f654  02 80 a0 e1                                      mov r8, r2
0041f658  01 10 93 e7                                      ldr r1, [r3, r1]
0041f65c  00 60 91 e5                                      ldr r6, [r1]
0041f660  00 00 56 e3                                      cmp r6, #0
0041f664  0f 00 00 0a                                      beq #0x41f6a8
0041f668  50 20 9f e5                                      ldr r2, [pc, #0x50]
0041f66c  00 50 a0 e3                                      mov r5, #0
0041f670  02 30 93 e7                                      ldr r3, [r3, r2]
0041f674  00 70 93 e5                                      ldr r7, [r3]
0041f678  02 00 00 ea                                      b #0x41f688
0041f67c  01 50 85 e2                                      add r5, r5, #1
0041f680  06 00 55 e1                                      cmp r5, r6
0041f684  07 00 00 0a                                      beq #0x41f6a8
0041f688  05 11 97 e7                                      ldr r1, [r7, r5, lsl #2]
0041f68c  04 00 a0 e1                                      mov r0, r4
0041f690  21 bb fb eb                                      bl #0x30e31c
0041f694  00 00 50 e3                                      cmp r0, #0
0041f698  f7 ff ff 1a                                      bne #0x41f67c
0041f69c  98 50 88 e5                                      str r5, [r8, #0x98]
0041f6a0  01 00 a0 e3                                      mov r0, #1
0041f6a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0041f6a8  00 50 e0 e3                                      mvn r5, #0
0041f6ac  98 50 88 e5                                      str r5, [r8, #0x98]
0041f6b0  01 00 a0 e3                                      mov r0, #1
0041f6b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0041f6b8  40 54 57 00 04 42 00 00 08 3c 00 00              .byte 0x40, 0x54, 0x57, 0x00, 0x04, 0x42, 0x00, 0x00, 0x08, 0x3c, 0x00, 0x00

; FUNCTION 0x0041ff08, declared_size=344, range_size=344, mode=arm
; class-group: MenuBase
; alias: _ZNK8MenuBase19DBG_Draw2DDeadZonesEv
; demangled: MenuBase::DBG_Draw2DDeadZones() const
; decoder-mode: arm
0041ff08  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0041ff0c  44 71 9f e5                                      ldr r7, [pc, #0x144]
0041ff10  44 31 9f e5                                      ldr r3, [pc, #0x144]
0041ff14  4c d0 4d e2                                      sub sp, sp, #0x4c
0041ff18  07 70 8f e0                                      add r7, pc, r7
0041ff1c  03 30 97 e7                                      ldr r3, [r7, r3]
0041ff20  00 c0 a0 e3                                      mov ip, #0
0041ff24  64 e0 a0 e3                                      mov lr, #0x64
0041ff28  10 30 93 e5                                      ldr r3, [r3, #0x10]
0041ff2c  00 40 e0 e3                                      mvn r4, #0
0041ff30  00 60 a0 e1                                      mov r6, r0
0041ff34  10 50 93 e5                                      ldr r5, [r3, #0x10]
0041ff38  40 80 8d e2                                      add r8, sp, #0x40
0041ff3c  3f e0 cd e5                                      strb lr, [sp, #0x3f]
0041ff40  44 c0 8d e5                                      str ip, [sp, #0x44]
0041ff44  3c 40 cd e5                                      strb r4, [sp, #0x3c]
0041ff48  44 20 8d e2                                      add r2, sp, #0x44
0041ff4c  01 30 a0 e3                                      mov r3, #1
0041ff50  05 10 a0 e1                                      mov r1, r5
0041ff54  08 00 a0 e1                                      mov r0, r8
0041ff58  bc 70 96 e5                                      ldr r7, [r6, #0xbc]
0041ff5c  31 c0 cd e5                                      strb ip, [sp, #0x31]
0041ff60  32 c0 cd e5                                      strb ip, [sp, #0x32]
0041ff64  33 e0 cd e5                                      strb lr, [sp, #0x33]
0041ff68  35 c0 cd e5                                      strb ip, [sp, #0x35]
0041ff6c  36 c0 cd e5                                      strb ip, [sp, #0x36]
0041ff70  37 e0 cd e5                                      strb lr, [sp, #0x37]
0041ff74  39 c0 cd e5                                      strb ip, [sp, #0x39]
0041ff78  3a c0 cd e5                                      strb ip, [sp, #0x3a]
0041ff7c  3b e0 cd e5                                      strb lr, [sp, #0x3b]
0041ff80  3d c0 cd e5                                      strb ip, [sp, #0x3d]
0041ff84  3e c0 cd e5                                      strb ip, [sp, #0x3e]
0041ff88  20 c0 8d e5                                      str ip, [sp, #0x20]
0041ff8c  24 c0 8d e5                                      str ip, [sp, #0x24]
0041ff90  28 c0 8d e5                                      str ip, [sp, #0x28]
0041ff94  2c c0 8d e5                                      str ip, [sp, #0x2c]
0041ff98  30 40 cd e5                                      strb r4, [sp, #0x30]
0041ff9c  34 40 cd e5                                      strb r4, [sp, #0x34]
0041ffa0  38 40 cd e5                                      strb r4, [sp, #0x38]
0041ffa4  b8 40 96 e5                                      ldr r4, [r6, #0xb8]
0041ffa8  94 fd 05 eb                                      bl #0x59f600
0041ffac  08 00 a0 e1                                      mov r0, r8
0041ffb0  0c c3 fb eb                                      bl #0x310be8
0041ffb4  44 00 9d e5                                      ldr r0, [sp, #0x44]
0041ffb8  00 00 50 e3                                      cmp r0, #0
0041ffbc  00 00 00 0a                                      beq #0x41ffc4
0041ffc0  6f f5 fb eb                                      bl #0x31d584
0041ffc4  07 00 54 e1                                      cmp r4, r7
0041ffc8  20 00 00 0a                                      beq #0x420050
0041ffcc  10 80 8d e2                                      add r8, sp, #0x10
0041ffd0  20 a0 8d e2                                      add sl, sp, #0x20
0041ffd4  30 90 8d e2                                      add sb, sp, #0x30
0041ffd8  00 30 95 e5                                      ldr r3, [r5]
0041ffdc  08 00 94 e5                                      ldr r0, [r4, #8]
0041ffe0  34 60 93 e5                                      ldr r6, [r3, #0x34]
0041ffe4  38 b9 fb eb                                      bl #0x30e4cc
0041ffe8  00 20 a0 e1                                      mov r2, r0
0041ffec  04 00 94 e5                                      ldr r0, [r4, #4]
0041fff0  08 20 8d e5                                      str r2, [sp, #8]
0041fff4  34 b9 fb eb                                      bl #0x30e4cc
0041fff8  00 30 a0 e1                                      mov r3, r0
0041fffc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00420000  0c 30 8d e5                                      str r3, [sp, #0xc]
00420004  30 b9 fb eb                                      bl #0x30e4cc
00420008  00 b0 a0 e1                                      mov fp, r0
0042000c  10 00 94 e4                                      ldr r0, [r4], #0x10
00420010  2d b9 fb eb                                      bl #0x30e4cc
00420014  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00420018  08 20 9d e5                                      ldr r2, [sp, #8]
0042001c  10 00 8d e5                                      str r0, [sp, #0x10]
00420020  18 30 8d e5                                      str r3, [sp, #0x18]
00420024  00 30 a0 e3                                      mov r3, #0
00420028  14 20 8d e5                                      str r2, [sp, #0x14]
0042002c  00 30 8d e5                                      str r3, [sp]
00420030  1c b0 8d e5                                      str fp, [sp, #0x1c]
00420034  05 00 a0 e1                                      mov r0, r5
00420038  08 10 a0 e1                                      mov r1, r8
0042003c  0a 20 a0 e1                                      mov r2, sl
00420040  09 30 a0 e1                                      mov r3, sb
00420044  36 ff 2f e1                                      blx r6
00420048  07 00 54 e1                                      cmp r4, r7
0042004c  e1 ff ff 1a                                      bne #0x41ffd8
00420050  4c d0 8d e2                                      add sp, sp, #0x4c
00420054  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00420058  78 4b 57 00 f4 37 00 00                          .byte 0x78, 0x4b, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004202a8, declared_size=156, range_size=156, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase18FS_UnlockCharacterEPKcS1_Pv
; demangled: MenuBase::FS_UnlockCharacter(char const*, char const*, void*)
; decoder-mode: arm
004202a8  01 00 a0 e1                                      mov r0, r1
004202ac  80 10 9f e5                                      ldr r1, [pc, #0x80]
004202b0  70 40 2d e9                                      push {r4, r5, r6, lr}
004202b4  01 10 8f e0                                      add r1, pc, r1
004202b8  17 b8 fb eb                                      bl #0x30e31c
004202bc  74 50 9f e5                                      ldr r5, [pc, #0x74]
004202c0  00 00 50 e3                                      cmp r0, #0
004202c4  05 50 8f e0                                      add r5, pc, r5
004202c8  14 00 00 0a                                      beq #0x420320
004202cc  68 30 9f e5                                      ldr r3, [pc, #0x68]
004202d0  00 40 a0 e3                                      mov r4, #0
004202d4  04 60 a0 e1                                      mov r6, r4
004202d8  03 50 95 e7                                      ldr r5, [r5, r3]
004202dc  06 00 00 ea                                      b #0x4202fc
004202e0  40 00 95 e5                                      ldr r0, [r5, #0x40]
004202e4  63 38 fd eb                                      bl #0x36e478
004202e8  60 36 90 e5                                      ldr r3, [r0, #0x660]
004202ec  01 40 84 e2                                      add r4, r4, #1
004202f0  00 00 53 e3                                      cmp r3, #0
004202f4  78 33 93 15                                      ldrne r3, [r3, #0x378]
004202f8  08 60 c3 15                                      strbne r6, [r3, #8]
004202fc  00 10 a0 e3                                      mov r1, #0
00420300  40 00 95 e5                                      ldr r0, [r5, #0x40]
00420304  f1 39 fd eb                                      bl #0x36ead0
00420308  00 00 54 e1                                      cmp r4, r0
0042030c  04 10 a0 e1                                      mov r1, r4
00420310  00 20 a0 e3                                      mov r2, #0
00420314  f1 ff ff ba                                      blt #0x4202e0
00420318  01 00 a0 e3                                      mov r0, #1
0042031c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00420320  18 30 9f e5                                      ldr r3, [pc, #0x18]
00420324  03 30 95 e7                                      ldr r3, [r5, r3]
00420328  00 00 c3 e5                                      strb r0, [r3]
0042032c  01 00 a0 e3                                      mov r0, #1
00420330  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00420334  94 8c 4a 00 cc 47 57 00 f4 37 00 00 50 36 00 00  .byte 0x94, 0x8c, 0x4a, 0x00, 0xcc, 0x47, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x00420344, declared_size=160, range_size=160, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase16FS_LockCharacterEPKcS1_Pv
; demangled: MenuBase::FS_LockCharacter(char const*, char const*, void*)
; decoder-mode: arm
00420344  01 00 a0 e1                                      mov r0, r1
00420348  84 10 9f e5                                      ldr r1, [pc, #0x84]
0042034c  70 40 2d e9                                      push {r4, r5, r6, lr}
00420350  01 10 8f e0                                      add r1, pc, r1
00420354  f0 b7 fb eb                                      bl #0x30e31c
00420358  78 50 9f e5                                      ldr r5, [pc, #0x78]
0042035c  00 00 50 e3                                      cmp r0, #0
00420360  05 50 8f e0                                      add r5, pc, r5
00420364  14 00 00 0a                                      beq #0x4203bc
00420368  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0042036c  00 40 a0 e3                                      mov r4, #0
00420370  01 60 a0 e3                                      mov r6, #1
00420374  03 50 95 e7                                      ldr r5, [r5, r3]
00420378  06 00 00 ea                                      b #0x420398
0042037c  40 00 95 e5                                      ldr r0, [r5, #0x40]
00420380  3c 38 fd eb                                      bl #0x36e478
00420384  60 36 90 e5                                      ldr r3, [r0, #0x660]
00420388  01 40 84 e2                                      add r4, r4, #1
0042038c  00 00 53 e3                                      cmp r3, #0
00420390  78 33 93 15                                      ldrne r3, [r3, #0x378]
00420394  08 60 c3 15                                      strbne r6, [r3, #8]
00420398  00 10 a0 e3                                      mov r1, #0
0042039c  40 00 95 e5                                      ldr r0, [r5, #0x40]
004203a0  ca 39 fd eb                                      bl #0x36ead0
004203a4  00 00 54 e1                                      cmp r4, r0
004203a8  04 10 a0 e1                                      mov r1, r4
004203ac  00 20 a0 e3                                      mov r2, #0
004203b0  f1 ff ff ba                                      blt #0x42037c
004203b4  01 00 a0 e3                                      mov r0, #1
004203b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004203bc  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004203c0  01 20 a0 e3                                      mov r2, #1
004203c4  01 00 a0 e3                                      mov r0, #1
004203c8  03 30 95 e7                                      ldr r3, [r5, r3]
004203cc  00 20 c3 e5                                      strb r2, [r3]
004203d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004203d4  f8 8b 4a 00 30 47 57 00 f4 37 00 00 50 36 00 00  .byte 0xf8, 0x8b, 0x4a, 0x00, 0x30, 0x47, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x004203e4, declared_size=40, range_size=40, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase13FS_PopAllMenuEPKcS1_Pv
; demangled: MenuBase::FS_PopAllMenu(char const*, char const*, void*)
; decoder-mode: arm
004203e4  10 40 2d e9                                      push {r4, lr}
004203e8  a7 31 00 eb                                      bl #0x42ca8c
004203ec  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
004203f0  01 10 a0 e3                                      mov r1, #1
004203f4  03 00 a0 e1                                      mov r0, r3
004203f8  00 30 93 e5                                      ldr r3, [r3]
004203fc  0f e0 a0 e1                                      mov lr, pc
00420400  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00420404  01 00 a0 e3                                      mov r0, #1
00420408  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0042040c, declared_size=176, range_size=176, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase14FS_SetBtnImageEPKcS1_Pv
; demangled: MenuBase::FS_SetBtnImage(char const*, char const*, void*)
; decoder-mode: arm
0042040c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00420410  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
00420414  9c 60 9f e5                                      ldr r6, [pc, #0x9c]
00420418  48 d0 4d e2                                      sub sp, sp, #0x48
0042041c  04 40 8f e0                                      add r4, pc, r4
00420420  06 30 94 e7                                      ldr r3, [r4, r6]
00420424  01 00 a0 e1                                      mov r0, r1
00420428  01 50 a0 e1                                      mov r5, r1
0042042c  00 30 93 e5                                      ldr r3, [r3]
00420430  7c 10 a0 e3                                      mov r1, #0x7c
00420434  02 90 a0 e1                                      mov sb, r2
00420438  44 30 8d e5                                      str r3, [sp, #0x44]
0042043c  f9 b9 fb eb                                      bl #0x30ec28
00420440  00 70 50 e2                                      subs r7, r0, #0
00420444  17 00 00 0a                                      beq #0x4204a8
00420448  07 a0 65 e0                                      rsb sl, r5, r7
0042044c  04 80 8d e2                                      add r8, sp, #4
00420450  0a 20 a0 e1                                      mov r2, sl
00420454  05 10 a0 e1                                      mov r1, r5
00420458  08 00 a0 e1                                      mov r0, r8
0042045c  01 b9 fb eb                                      bl #0x30e868
00420460  48 30 8d e2                                      add r3, sp, #0x48
00420464  0a a0 83 e0                                      add sl, r3, sl
00420468  00 30 a0 e3                                      mov r3, #0
0042046c  04 00 99 e5                                      ldr r0, [sb, #4]
00420470  08 10 a0 e1                                      mov r1, r8
00420474  44 30 4a e5                                      strb r3, [sl, #-0x44]
00420478  38 23 0e eb                                      bl #0x7a9160
0042047c  00 00 50 e3                                      cmp r0, #0
00420480  08 00 00 0a                                      beq #0x4204a8
00420484  01 10 87 e2                                      add r1, r7, #1
00420488  5a db ff eb                                      bl #0x4171f8
0042048c  06 30 94 e7                                      ldr r3, [r4, r6]
00420490  44 20 9d e5                                      ldr r2, [sp, #0x44]
00420494  00 30 93 e5                                      ldr r3, [r3]
00420498  03 00 52 e1                                      cmp r2, r3
0042049c  03 00 00 1a                                      bne #0x4204b0
004204a0  48 d0 8d e2                                      add sp, sp, #0x48
004204a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
004204a8  00 00 a0 e3                                      mov r0, #0
004204ac  f6 ff ff ea                                      b #0x42048c
004204b0  96 b7 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004204b4  74 46 57 00 ac 40 00 00                          .byte 0x74, 0x46, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x004204bc, declared_size=64, range_size=64, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase14FS_LoadOptionsEPKcS1_Pv
; demangled: MenuBase::FS_LoadOptions(char const*, char const*, void*)
; decoder-mode: arm
004204bc  30 30 9f e5                                      ldr r3, [pc, #0x30]
004204c0  30 20 9f e5                                      ldr r2, [pc, #0x30]
004204c4  10 40 2d e9                                      push {r4, lr}
004204c8  03 30 8f e0                                      add r3, pc, r3
004204cc  02 40 93 e7                                      ldr r4, [r3, r2]
004204d0  00 10 a0 e3                                      mov r1, #0
004204d4  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
004204d8  29 38 01 eb                                      bl #0x46e584
004204dc  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
004204e0  0b 34 01 eb                                      bl #0x46d514
004204e4  00 10 a0 e1                                      mov r1, r0
004204e8  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
004204ec  10 40 bd e8                                      pop {r4, lr}
004204f0  03 33 01 ea                                      b #0x46d104
; mapping-symbol data/literal pool
004204f4  c8 45 57 00 f4 37 00 00                          .byte 0xc8, 0x45, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004204fc, declared_size=64, range_size=64, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase14FS_SaveOptionsEPKcS1_Pv
; demangled: MenuBase::FS_SaveOptions(char const*, char const*, void*)
; decoder-mode: arm
004204fc  30 30 9f e5                                      ldr r3, [pc, #0x30]
00420500  30 20 9f e5                                      ldr r2, [pc, #0x30]
00420504  10 40 2d e9                                      push {r4, lr}
00420508  03 30 8f e0                                      add r3, pc, r3
0042050c  02 40 93 e7                                      ldr r4, [r3, r2]
00420510  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
00420514  86 31 01 eb                                      bl #0x46cb34
00420518  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0042051c  fc 33 01 eb                                      bl #0x46d514
00420520  00 10 a0 e1                                      mov r1, r0
00420524  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
00420528  f5 32 01 eb                                      bl #0x46d104
0042052c  01 00 a0 e3                                      mov r0, #1
00420530  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00420534  88 45 57 00 f4 37 00 00                          .byte 0x88, 0x45, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0042053c, declared_size=64, range_size=64, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase14FS_SetSaveSlotEPKcS1_Pv
; demangled: MenuBase::FS_SetSaveSlot(char const*, char const*, void*)
; decoder-mode: arm
0042053c  10 40 2d e9                                      push {r4, lr}
00420540  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
00420544  00 00 51 e2                                      subs r0, r1, #0
00420548  00 10 a0 01                                      moveq r1, r0
0042054c  04 40 8f e0                                      add r4, pc, r4
00420550  05 00 00 0a                                      beq #0x42056c
00420554  ce b6 fb eb                                      bl #0x30e094
00420558  18 30 9f e5                                      ldr r3, [pc, #0x18]
0042055c  01 10 a0 e3                                      mov r1, #1
00420560  03 30 94 e7                                      ldr r3, [r4, r3]
00420564  4c 30 93 e5                                      ldr r3, [r3, #0x4c]
00420568  08 00 83 e5                                      str r0, [r3, #8]
0042056c  01 00 a0 e1                                      mov r0, r1
00420570  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00420574  44 45 57 00 f4 37 00 00                          .byte 0x44, 0x45, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0042057c, declared_size=100, range_size=100, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase14FS_SetLanguageEPKcS1_Pv
; demangled: MenuBase::FS_SetLanguage(char const*, char const*, void*)
; decoder-mode: arm
0042057c  54 30 9f e5                                      ldr r3, [pc, #0x54]
00420580  00 00 51 e2                                      subs r0, r1, #0
00420584  10 40 2d e9                                      push {r4, lr}
00420588  03 30 8f e0                                      add r3, pc, r3
0042058c  02 00 00 0a                                      beq #0x42059c
00420590  d0 20 d0 e1                                      ldrsb r2, [r0]
00420594  00 00 52 e3                                      cmp r2, #0
00420598  01 00 00 1a                                      bne #0x4205a4
0042059c  00 00 a0 e3                                      mov r0, #0
004205a0  10 80 bd e8                                      pop {r4, pc}
004205a4  30 20 9f e5                                      ldr r2, [pc, #0x30]
004205a8  02 30 93 e7                                      ldr r3, [r3, r2]
004205ac  4c 40 93 e5                                      ldr r4, [r3, #0x4c]
004205b0  b7 b6 fb eb                                      bl #0x30e094
004205b4  00 10 a0 e1                                      mov r1, r0
004205b8  04 00 a0 e1                                      mov r0, r4
004205bc  d0 32 01 eb                                      bl #0x46d104
004205c0  00 00 50 e3                                      cmp r0, #0
004205c4  f4 ff ff 0a                                      beq #0x42059c
004205c8  2f 31 00 eb                                      bl #0x42ca8c
004205cc  56 34 00 eb                                      bl #0x42d72c
004205d0  01 00 a0 e3                                      mov r0, #1
004205d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004205d8  08 45 57 00 f4 37 00 00                          .byte 0x08, 0x45, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004205e0, declared_size=68, range_size=68, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase12FS_SetOptionEPKcS1_Pv
; demangled: MenuBase::FS_SetOption(char const*, char const*, void*)
; decoder-mode: arm
004205e0  34 30 9f e5                                      ldr r3, [pc, #0x34]
004205e4  00 00 51 e3                                      cmp r1, #0
004205e8  10 40 2d e9                                      push {r4, lr}
004205ec  03 30 8f e0                                      add r3, pc, r3
004205f0  07 00 00 0a                                      beq #0x420614
004205f4  24 00 9f e5                                      ldr r0, [pc, #0x24]
004205f8  07 10 81 e2                                      add r1, r1, #7
004205fc  00 20 a0 e3                                      mov r2, #0
00420600  00 30 93 e7                                      ldr r3, [r3, r0]
00420604  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
00420608  b0 32 01 eb                                      bl #0x46d0d0
0042060c  01 00 a0 e3                                      mov r0, #1
00420610  10 80 bd e8                                      pop {r4, pc}
00420614  01 00 a0 e1                                      mov r0, r1
00420618  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042061c  a4 44 57 00 f4 37 00 00                          .byte 0xa4, 0x44, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00420624, declared_size=260, range_size=260, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase15FS_ToggleOptionEPKcS1_Pv
; demangled: MenuBase::FS_ToggleOption(char const*, char const*, void*)
; decoder-mode: arm
00420624  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00420628  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
0042062c  00 40 51 e2                                      subs r4, r1, #0
00420630  10 d0 4d e2                                      sub sp, sp, #0x10
00420634  03 30 8f e0                                      add r3, pc, r3
00420638  02 50 a0 e1                                      mov r5, r2
0042063c  04 00 a0 01                                      moveq r0, r4
00420640  28 00 00 0a                                      beq #0x4206e8
00420644  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
00420648  07 70 84 e2                                      add r7, r4, #7
0042064c  07 10 a0 e1                                      mov r1, r7
00420650  02 60 93 e7                                      ldr r6, [r3, r2]
00420654  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00420658  c6 33 01 eb                                      bl #0x46d578
0042065c  07 10 a0 e1                                      mov r1, r7
00420660  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00420664  6b 33 01 eb                                      bl #0x46d418
00420668  07 10 a0 e1                                      mov r1, r7
0042066c  00 80 a0 e1                                      mov r8, r0
00420670  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00420674  67 33 01 eb                                      bl #0x46d418
00420678  00 30 50 e2                                      subs r3, r0, #0
0042067c  1b 00 00 1a                                      bne #0x4206f0
00420680  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
00420684  04 00 95 e5                                      ldr r0, [r5, #4]
00420688  04 10 a0 e1                                      mov r1, r4
0042068c  02 20 8f e0                                      add r2, pc, r2
00420690  20 2d 0e eb                                      bl #0x7abb18
00420694  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00420698  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0042069c  04 70 8d e2                                      add r7, sp, #4
004206a0  04 00 95 e5                                      ldr r0, [r5, #4]
004206a4  00 c0 a0 e3                                      mov ip, #0
004206a8  07 30 a0 e1                                      mov r3, r7
004206ac  01 10 8f e0                                      add r1, pc, r1
004206b0  02 20 8f e0                                      add r2, pc, r2
004206b4  01 60 a0 e3                                      mov r6, #1
004206b8  04 c0 cd e5                                      strb ip, [sp, #4]
004206bc  08 80 cd e5                                      strb r8, [sp, #8]
004206c0  05 60 cd e5                                      strb r6, [sp, #5]
004206c4  c2 2b 0e eb                                      bl #0x7ab5d4
004206c8  50 20 9f e5                                      ldr r2, [pc, #0x50]
004206cc  04 10 a0 e1                                      mov r1, r4
004206d0  04 00 95 e5                                      ldr r0, [r5, #4]
004206d4  02 20 8f e0                                      add r2, pc, r2
004206d8  8a da ff eb                                      bl #0x417108
004206dc  07 00 a0 e1                                      mov r0, r7
004206e0  8f da 0d eb                                      bl #0x797124
004206e4  06 00 a0 e1                                      mov r0, r6
004206e8  10 d0 8d e2                                      add sp, sp, #0x10
004206ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004206f0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004206f4  04 00 95 e5                                      ldr r0, [r5, #4]
004206f8  04 10 a0 e1                                      mov r1, r4
004206fc  02 20 8f e0                                      add r2, pc, r2
00420700  00 30 a0 e3                                      mov r3, #0
00420704  03 2d 0e eb                                      bl #0x7abb18
00420708  e1 ff ff ea                                      b #0x420694
; mapping-symbol data/literal pool
0042070c  5c 44 57 00 f4 37 00 00 dc de 49 00 54 2b 4a 00  .byte 0x5c, 0x44, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xdc, 0xde, 0x49, 0x00, 0x54, 0x2b, 0x4a, 0x00
0042071c  a0 88 4a 00 84 88 4a 00 f4 e1 49 00              .byte 0xa0, 0x88, 0x4a, 0x00, 0x84, 0x88, 0x4a, 0x00, 0xf4, 0xe1, 0x49, 0x00

; FUNCTION 0x00420728, declared_size=220, range_size=220, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase12FS_DecOptionEPKcS1_Pv
; demangled: MenuBase::FS_DecOption(char const*, char const*, void*)
; decoder-mode: arm
00420728  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
0042072c  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
00420730  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00420734  03 30 8f e0                                      add r3, pc, r3
00420738  02 60 93 e7                                      ldr r6, [r3, r2]
0042073c  18 d0 4d e2                                      sub sp, sp, #0x18
00420740  0c 40 8d e2                                      add r4, sp, #0xc
00420744  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00420748  71 33 01 eb                                      bl #0x46d514
0042074c  01 70 50 e2                                      subs r7, r0, #1
00420750  07 70 a0 43                                      movmi r7, #7
00420754  07 10 a0 e1                                      mov r1, r7
00420758  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
0042075c  68 32 01 eb                                      bl #0x46d104
00420760  c9 30 00 eb                                      bl #0x42ca8c
00420764  f0 33 00 eb                                      bl #0x42d72c
00420768  54 00 96 e5                                      ldr r0, [r6, #0x54]
0042076c  03 31 00 eb                                      bl #0x42cb80
00420770  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00420774  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00420778  00 80 a0 e1                                      mov r8, r0
0042077c  01 10 8f e0                                      add r1, pc, r1
00420780  02 20 8f e0                                      add r2, pc, r2
00420784  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
00420788  34 60 96 e5                                      ldr r6, [r6, #0x34]
0042078c  12 91 02 eb                                      bl #0x4c4bdc
00420790  07 10 80 e0                                      add r1, r0, r7
00420794  06 00 a0 e1                                      mov r0, r6
00420798  cf a1 03 eb                                      bl #0x508edc
0042079c  00 30 a0 e3                                      mov r3, #0
004207a0  00 10 a0 e1                                      mov r1, r0
004207a4  04 00 a0 e1                                      mov r0, r4
004207a8  0d 30 cd e5                                      strb r3, [sp, #0xd]
004207ac  0c 30 cd e5                                      strb r3, [sp, #0xc]
004207b0  e6 da 0d eb                                      bl #0x797350
004207b4  40 10 9f e5                                      ldr r1, [pc, #0x40]
004207b8  40 20 9f e5                                      ldr r2, [pc, #0x40]
004207bc  01 50 a0 e3                                      mov r5, #1
004207c0  01 10 8f e0                                      add r1, pc, r1
004207c4  02 20 8f e0                                      add r2, pc, r2
004207c8  04 30 a0 e1                                      mov r3, r4
004207cc  08 00 a0 e1                                      mov r0, r8
004207d0  00 50 8d e5                                      str r5, [sp]
004207d4  03 34 0e eb                                      bl #0x7ad7e8
004207d8  04 00 a0 e1                                      mov r0, r4
004207dc  50 da 0d eb                                      bl #0x797124
004207e0  05 00 a0 e1                                      mov r0, r5
004207e4  18 d0 8d e2                                      add sp, sp, #0x18
004207e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004207ec  5c 43 57 00 f4 37 00 00 ac e4 49 00 e8 87 4a 00  .byte 0x5c, 0x43, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xac, 0xe4, 0x49, 0x00, 0xe8, 0x87, 0x4a, 0x00
004207fc  c0 87 4a 00 d4 87 4a 00                          .byte 0xc0, 0x87, 0x4a, 0x00, 0xd4, 0x87, 0x4a, 0x00

; FUNCTION 0x00420804, declared_size=224, range_size=224, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase12FS_IncOptionEPKcS1_Pv
; demangled: MenuBase::FS_IncOption(char const*, char const*, void*)
; decoder-mode: arm
00420804  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00420808  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
0042080c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00420810  03 30 8f e0                                      add r3, pc, r3
00420814  02 70 93 e7                                      ldr r7, [r3, r2]
00420818  18 d0 4d e2                                      sub sp, sp, #0x18
0042081c  01 50 a0 e3                                      mov r5, #1
00420820  4c 00 97 e5                                      ldr r0, [r7, #0x4c]
00420824  3a 33 01 eb                                      bl #0x46d514
00420828  05 60 80 e0                                      add r6, r0, r5
0042082c  07 00 56 e3                                      cmp r6, #7
00420830  00 60 a0 c3                                      movgt r6, #0
00420834  06 10 a0 e1                                      mov r1, r6
00420838  4c 00 97 e5                                      ldr r0, [r7, #0x4c]
0042083c  30 32 01 eb                                      bl #0x46d104
00420840  91 30 00 eb                                      bl #0x42ca8c
00420844  b8 33 00 eb                                      bl #0x42d72c
00420848  54 00 97 e5                                      ldr r0, [r7, #0x54]
0042084c  cb 30 00 eb                                      bl #0x42cb80
00420850  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00420854  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00420858  00 80 a0 e1                                      mov r8, r0
0042085c  01 10 8f e0                                      add r1, pc, r1
00420860  02 20 8f e0                                      add r2, pc, r2
00420864  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
00420868  34 70 97 e5                                      ldr r7, [r7, #0x34]
0042086c  da 90 02 eb                                      bl #0x4c4bdc
00420870  06 10 80 e0                                      add r1, r0, r6
00420874  07 00 a0 e1                                      mov r0, r7
00420878  97 a1 03 eb                                      bl #0x508edc
0042087c  0c 40 8d e2                                      add r4, sp, #0xc
00420880  00 30 a0 e3                                      mov r3, #0
00420884  00 10 a0 e1                                      mov r1, r0
00420888  04 00 a0 e1                                      mov r0, r4
0042088c  0d 30 cd e5                                      strb r3, [sp, #0xd]
00420890  0c 30 cd e5                                      strb r3, [sp, #0xc]
00420894  ad da 0d eb                                      bl #0x797350
00420898  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0042089c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004208a0  04 30 a0 e1                                      mov r3, r4
004208a4  01 10 8f e0                                      add r1, pc, r1
004208a8  02 20 8f e0                                      add r2, pc, r2
004208ac  08 00 a0 e1                                      mov r0, r8
004208b0  00 50 8d e5                                      str r5, [sp]
004208b4  cb 33 0e eb                                      bl #0x7ad7e8
004208b8  04 00 a0 e1                                      mov r0, r4
004208bc  18 da 0d eb                                      bl #0x797124
004208c0  05 00 a0 e1                                      mov r0, r5
004208c4  18 d0 8d e2                                      add sp, sp, #0x18
004208c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004208cc  80 42 57 00 f4 37 00 00 cc e3 49 00 08 87 4a 00  .byte 0x80, 0x42, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xcc, 0xe3, 0x49, 0x00, 0x08, 0x87, 0x4a, 0x00
004208dc  dc 86 4a 00 f0 86 4a 00                          .byte 0xdc, 0x86, 0x4a, 0x00, 0xf0, 0x86, 0x4a, 0x00

; FUNCTION 0x004208e4, declared_size=48, range_size=48, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase25FS_ResetDraggablePositionEPKcS1_Pv
; demangled: MenuBase::FS_ResetDraggablePosition(char const*, char const*, void*)
; decoder-mode: arm
004208e4  10 40 2d e9                                      push {r4, lr}
004208e8  5c 00 92 e5                                      ldr r0, [r2, #0x5c]
004208ec  00 00 50 e3                                      cmp r0, #0
004208f0  05 00 00 0a                                      beq #0x42090c
004208f4  8e c5 ff eb                                      bl #0x411f34
004208f8  00 00 50 e3                                      cmp r0, #0
004208fc  02 00 00 0a                                      beq #0x42090c
00420900  1f c8 ff eb                                      bl #0x412984
00420904  01 00 a0 e3                                      mov r0, #1
00420908  10 80 bd e8                                      pop {r4, pc}
0042090c  00 00 a0 e3                                      mov r0, #0
00420910  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00420914, declared_size=116, range_size=116, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase12FS_GetStringEPKcS1_Pv
; demangled: MenuBase::FS_GetString(char const*, char const*, void*)
; decoder-mode: arm
00420914  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00420918  00 00 51 e2                                      subs r0, r1, #0
0042091c  70 40 2d e9                                      push {r4, r5, r6, lr}
00420920  03 30 8f e0                                      add r3, pc, r3
00420924  02 40 a0 e1                                      mov r4, r2
00420928  0f 00 00 0a                                      beq #0x42096c
0042092c  48 20 9f e5                                      ldr r2, [pc, #0x48]
00420930  02 30 93 e7                                      ldr r3, [r3, r2]
00420934  34 50 93 e5                                      ldr r5, [r3, #0x34]
00420938  d5 b5 fb eb                                      bl #0x30e094
0042093c  00 10 a0 e1                                      mov r1, r0
00420940  05 00 a0 e1                                      mov r0, r5
00420944  64 a1 03 eb                                      bl #0x508edc
00420948  00 30 50 e2                                      subs r3, r0, #0
0042094c  07 00 00 0a                                      beq #0x420970
00420950  28 10 9f e5                                      ldr r1, [pc, #0x28]
00420954  28 20 9f e5                                      ldr r2, [pc, #0x28]
00420958  04 00 94 e5                                      ldr r0, [r4, #4]
0042095c  01 10 8f e0                                      add r1, pc, r1
00420960  02 20 8f e0                                      add r2, pc, r2
00420964  71 2b 0e eb                                      bl #0x7ab730
00420968  01 00 a0 e3                                      mov r0, #1
0042096c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00420970  01 00 a0 e3                                      mov r0, #1
00420974  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00420978  70 41 57 00 f4 37 00 00 a4 28 4a 00 f0 85 4a 00  .byte 0x70, 0x41, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa4, 0x28, 0x4a, 0x00, 0xf0, 0x85, 0x4a, 0x00

; FUNCTION 0x00420988, declared_size=148, range_size=148, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase16FS_GetPlayerNameEPKcS1_Pv
; demangled: MenuBase::FS_GetPlayerName(char const*, char const*, void*)
; decoder-mode: arm
00420988  00 00 51 e2                                      subs r0, r1, #0
0042098c  10 40 2d e9                                      push {r4, lr}
00420990  02 40 a0 e1                                      mov r4, r2
00420994  02 00 00 0a                                      beq #0x4209a4
00420998  d0 30 d0 e1                                      ldrsb r3, [r0]
0042099c  00 00 53 e3                                      cmp r3, #0
004209a0  09 00 00 1a                                      bne #0x4209cc
004209a4  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
004209a8  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
004209ac  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
004209b0  04 00 94 e5                                      ldr r0, [r4, #4]
004209b4  01 10 8f e0                                      add r1, pc, r1
004209b8  02 20 8f e0                                      add r2, pc, r2
004209bc  03 30 8f e0                                      add r3, pc, r3
004209c0  5a 2b 0e eb                                      bl #0x7ab730
004209c4  01 00 a0 e3                                      mov r0, #1
004209c8  10 80 bd e8                                      pop {r4, pc}
004209cc  b0 b5 fb eb                                      bl #0x30e094
004209d0  a6 1e 01 eb                                      bl #0x468470
004209d4  00 30 50 e2                                      subs r3, r0, #0
004209d8  f1 ff ff 0a                                      beq #0x4209a4
004209dc  d0 20 d3 e1                                      ldrsb r2, [r3]
004209e0  00 00 52 e3                                      cmp r2, #0
004209e4  ee ff ff 0a                                      beq #0x4209a4
004209e8  24 10 9f e5                                      ldr r1, [pc, #0x24]
004209ec  24 20 9f e5                                      ldr r2, [pc, #0x24]
004209f0  04 00 94 e5                                      ldr r0, [r4, #4]
004209f4  01 10 8f e0                                      add r1, pc, r1
004209f8  02 20 8f e0                                      add r2, pc, r2
004209fc  4b 2b 0e eb                                      bl #0x7ab730
00420a00  01 00 a0 e3                                      mov r0, #1
00420a04  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00420a08  4c 28 4a 00 98 85 4a 00 4c ae 4a 00 0c 28 4a 00  .byte 0x4c, 0x28, 0x4a, 0x00, 0x98, 0x85, 0x4a, 0x00, 0x4c, 0xae, 0x4a, 0x00, 0x0c, 0x28, 0x4a, 0x00
00420a18  58 85 4a 00                                      .byte 0x58, 0x85, 0x4a, 0x00

; FUNCTION 0x00420a1c, declared_size=104, range_size=104, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase13FS_GetString2EPKcS1_Pv
; demangled: MenuBase::FS_GetString2(char const*, char const*, void*)
; decoder-mode: arm
00420a1c  50 30 9f e5                                      ldr r3, [pc, #0x50]
00420a20  00 00 51 e2                                      subs r0, r1, #0
00420a24  10 40 2d e9                                      push {r4, lr}
00420a28  03 30 8f e0                                      add r3, pc, r3
00420a2c  02 40 a0 e1                                      mov r4, r2
00420a30  0c 00 00 0a                                      beq #0x420a68
00420a34  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00420a38  02 30 93 e7                                      ldr r3, [r3, r2]
00420a3c  34 00 93 e5                                      ldr r0, [r3, #0x34]
00420a40  8b a0 03 eb                                      bl #0x508c74
00420a44  00 30 50 e2                                      subs r3, r0, #0
00420a48  07 00 00 0a                                      beq #0x420a6c
00420a4c  28 10 9f e5                                      ldr r1, [pc, #0x28]
00420a50  28 20 9f e5                                      ldr r2, [pc, #0x28]
00420a54  04 00 94 e5                                      ldr r0, [r4, #4]
00420a58  01 10 8f e0                                      add r1, pc, r1
00420a5c  02 20 8f e0                                      add r2, pc, r2
00420a60  32 2b 0e eb                                      bl #0x7ab730
00420a64  01 00 a0 e3                                      mov r0, #1
00420a68  10 80 bd e8                                      pop {r4, pc}
00420a6c  01 00 a0 e3                                      mov r0, #1
00420a70  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00420a74  68 40 57 00 f4 37 00 00 a8 27 4a 00 f4 84 4a 00  .byte 0x68, 0x40, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa8, 0x27, 0x4a, 0x00, 0xf4, 0x84, 0x4a, 0x00

; FUNCTION 0x00420b48, declared_size=68, range_size=68, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase13FS_EndLoadingEPKcS1_Pv
; demangled: MenuBase::FS_EndLoading(char const*, char const*, void*)
; decoder-mode: arm
00420b48  34 30 9f e5                                      ldr r3, [pc, #0x34]
00420b4c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00420b50  10 40 2d e9                                      push {r4, lr}
00420b54  03 30 8f e0                                      add r3, pc, r3
00420b58  02 00 93 e7                                      ldr r0, [r3, r2]
00420b5c  8c fa fb eb                                      bl #0x31f594
00420b60  00 00 50 e3                                      cmp r0, #0
00420b64  04 00 00 0a                                      beq #0x420b7c
00420b68  30 31 90 e5                                      ldr r3, [r0, #0x130]
00420b6c  24 00 53 e3                                      cmp r3, #0x24
00420b70  30 31 90 05                                      ldreq r3, [r0, #0x130]
00420b74  01 30 83 02                                      addeq r3, r3, #1
00420b78  30 31 80 05                                      streq r3, [r0, #0x130]
00420b7c  00 00 a0 e3                                      mov r0, #0
00420b80  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00420b84  3c 3f 57 00 f4 37 00 00                          .byte 0x3c, 0x3f, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00420b8c, declared_size=44, range_size=44, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase15FS_LoadWorldMapEPKcS1_Pv
; demangled: MenuBase::FS_LoadWorldMap(char const*, char const*, void*)
; decoder-mode: arm
00420b8c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00420b90  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00420b94  10 40 2d e9                                      push {r4, lr}
00420b98  03 30 8f e0                                      add r3, pc, r3
00420b9c  02 00 93 e7                                      ldr r0, [r3, r2]
00420ba0  00 10 e0 e3                                      mvn r1, #0
00420ba4  65 01 fc eb                                      bl #0x321140
00420ba8  01 00 a0 e3                                      mov r0, #1
00420bac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00420bb0  f8 3e 57 00 f4 37 00 00                          .byte 0xf8, 0x3e, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00420bb8, declared_size=132, range_size=132, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase12FS_LoadLevelEPKcS1_Pv
; demangled: MenuBase::FS_LoadLevel(char const*, char const*, void*)
; decoder-mode: arm
00420bb8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00420bbc  01 00 a0 e1                                      mov r0, r1
00420bc0  01 50 a0 e1                                      mov r5, r1
00420bc4  64 10 9f e5                                      ldr r1, [pc, #0x64]
00420bc8  1c d0 4d e2                                      sub sp, sp, #0x1c
00420bcc  02 70 a0 e1                                      mov r7, r2
00420bd0  01 10 8f e0                                      add r1, pc, r1
00420bd4  d0 b5 fb eb                                      bl #0x30e31c
00420bd8  54 60 9f e5                                      ldr r6, [pc, #0x54]
00420bdc  00 00 50 e3                                      cmp r0, #0
00420be0  06 60 8f e0                                      add r6, pc, r6
00420be4  0f 00 00 0a                                      beq #0x420c28
00420be8  04 00 97 e5                                      ldr r0, [r7, #4]
00420bec  cb 2b 0e eb                                      bl #0x7abb20
00420bf0  40 30 9f e5                                      ldr r3, [pc, #0x40]
00420bf4  00 c0 a0 e3                                      mov ip, #0
00420bf8  01 40 a0 e3                                      mov r4, #1
00420bfc  03 00 96 e7                                      ldr r0, [r6, r3]
00420c00  0c 20 a0 e1                                      mov r2, ip
00420c04  05 10 a0 e1                                      mov r1, r5
00420c08  0c 30 a0 e1                                      mov r3, ip
00420c0c  00 c0 8d e5                                      str ip, [sp]
00420c10  10 10 8d e9                                      stmib sp, {r4, ip}
00420c14  0c c0 8d e5                                      str ip, [sp, #0xc]
00420c18  10 c0 8d e5                                      str ip, [sp, #0x10]
00420c1c  14 c0 8d e5                                      str ip, [sp, #0x14]
00420c20  68 2c fc eb                                      bl #0x32bdc8
00420c24  04 00 a0 e1                                      mov r0, r4
00420c28  1c d0 8d e2                                      add sp, sp, #0x1c
00420c2c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00420c30  e0 83 4a 00 b0 3e 57 00 f4 37 00 00              .byte 0xe0, 0x83, 0x4a, 0x00, 0xb0, 0x3e, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00420c3c, declared_size=44, range_size=44, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase15FS_GoToMainMenuEPKcS1_Pv
; demangled: MenuBase::FS_GoToMainMenu(char const*, char const*, void*)
; decoder-mode: arm
00420c3c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00420c40  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00420c44  10 40 2d e9                                      push {r4, lr}
00420c48  03 30 8f e0                                      add r3, pc, r3
00420c4c  02 00 93 e7                                      ldr r0, [r3, r2]
00420c50  00 10 a0 e3                                      mov r1, #0
00420c54  66 2d fc eb                                      bl #0x32c1f4
00420c58  01 00 a0 e3                                      mov r0, #1
00420c5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00420c60  48 3e 57 00 f4 37 00 00                          .byte 0x48, 0x3e, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00420c68, declared_size=48, range_size=48, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase13FS_SkipScriptEPKcS1_Pv
; demangled: MenuBase::FS_SkipScript(char const*, char const*, void*)
; decoder-mode: arm
00420c68  20 30 9f e5                                      ldr r3, [pc, #0x20]
00420c6c  20 20 9f e5                                      ldr r2, [pc, #0x20]
00420c70  10 40 2d e9                                      push {r4, lr}
00420c74  03 30 8f e0                                      add r3, pc, r3
00420c78  02 00 93 e7                                      ldr r0, [r3, r2]
00420c7c  01 10 e0 e3                                      mvn r1, #1
00420c80  00 20 a0 e3                                      mov r2, #0
00420c84  0d fe 00 eb                                      bl #0x4604c0
00420c88  01 00 a0 e3                                      mov r0, #1
00420c8c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00420c90  1c 3e 57 00 20 1a 00 00                          .byte 0x1c, 0x3e, 0x57, 0x00, 0x20, 0x1a, 0x00, 0x00

; FUNCTION 0x00420c98, declared_size=100, range_size=100, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase16FS_ResetSaveFileEPKcS1_Pv
; demangled: MenuBase::FS_ResetSaveFile(char const*, char const*, void*)
; decoder-mode: arm
00420c98  54 30 9f e5                                      ldr r3, [pc, #0x54]
00420c9c  54 20 9f e5                                      ldr r2, [pc, #0x54]
00420ca0  10 40 2d e9                                      push {r4, lr}
00420ca4  03 30 8f e0                                      add r3, pc, r3
00420ca8  02 20 93 e7                                      ldr r2, [r3, r2]
00420cac  00 00 51 e2                                      subs r0, r1, #0
00420cb0  4c 30 92 e5                                      ldr r3, [r2, #0x4c]
00420cb4  02 00 00 0a                                      beq #0x420cc4
00420cb8  d0 20 d0 e1                                      ldrsb r2, [r0]
00420cbc  00 00 52 e3                                      cmp r2, #0
00420cc0  08 00 00 1a                                      bne #0x420ce8
00420cc4  08 40 93 e5                                      ldr r4, [r3, #8]
00420cc8  00 00 54 e3                                      cmp r4, #0
00420ccc  03 00 00 ba                                      blt #0x420ce0
00420cd0  04 00 a0 e1                                      mov r0, r4
00420cd4  f1 0f 01 eb                                      bl #0x464ca0
00420cd8  04 00 a0 e1                                      mov r0, r4
00420cdc  04 05 01 eb                                      bl #0x4620f4
00420ce0  01 00 a0 e3                                      mov r0, #1
00420ce4  10 80 bd e8                                      pop {r4, pc}
00420ce8  e9 b4 fb eb                                      bl #0x30e094
00420cec  00 40 a0 e1                                      mov r4, r0
00420cf0  f4 ff ff ea                                      b #0x420cc8
; mapping-symbol data/literal pool
00420cf4  ec 3d 57 00 f4 37 00 00                          .byte 0xec, 0x3d, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00420cfc, declared_size=128, range_size=128, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase18FS_IsSaveSlotValidEPKcS1_Pv
; demangled: MenuBase::FS_IsSaveSlotValid(char const*, char const*, void*)
; decoder-mode: arm
00420cfc  30 40 2d e9                                      push {r4, r5, lr}
00420d00  00 00 51 e2                                      subs r0, r1, #0
00420d04  14 d0 4d e2                                      sub sp, sp, #0x14
00420d08  02 40 a0 e1                                      mov r4, r2
00420d0c  16 00 00 0a                                      beq #0x420d6c
00420d10  df b4 fb eb                                      bl #0x30e094
00420d14  01 00 70 e3                                      cmn r0, #1
00420d18  13 00 00 0a                                      beq #0x420d6c
00420d1c  0e 10 01 eb                                      bl #0x464d5c
00420d20  00 e0 a0 e1                                      mov lr, r0
00420d24  48 10 9f e5                                      ldr r1, [pc, #0x48]
00420d28  48 20 9f e5                                      ldr r2, [pc, #0x48]
00420d2c  04 50 8d e2                                      add r5, sp, #4
00420d30  04 00 94 e5                                      ldr r0, [r4, #4]
00420d34  00 c0 a0 e3                                      mov ip, #0
00420d38  01 10 8f e0                                      add r1, pc, r1
00420d3c  02 20 8f e0                                      add r2, pc, r2
00420d40  01 40 a0 e3                                      mov r4, #1
00420d44  05 30 a0 e1                                      mov r3, r5
00420d48  04 c0 cd e5                                      strb ip, [sp, #4]
00420d4c  08 e0 cd e5                                      strb lr, [sp, #8]
00420d50  05 40 cd e5                                      strb r4, [sp, #5]
00420d54  1e 2a 0e eb                                      bl #0x7ab5d4
00420d58  05 00 a0 e1                                      mov r0, r5
00420d5c  f0 d8 0d eb                                      bl #0x797124
00420d60  04 00 a0 e1                                      mov r0, r4
00420d64  14 d0 8d e2                                      add sp, sp, #0x14
00420d68  30 80 bd e8                                      pop {r4, r5, pc}
00420d6c  00 e0 a0 e3                                      mov lr, #0
00420d70  eb ff ff ea                                      b #0x420d24
; mapping-symbol data/literal pool
00420d74  c8 24 4a 00 14 82 4a 00                          .byte 0xc8, 0x24, 0x4a, 0x00, 0x14, 0x82, 0x4a, 0x00

; FUNCTION 0x00420d7c, declared_size=232, range_size=232, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase14FS_GetSaveSlotEPKcS1_Pv
; demangled: MenuBase::FS_GetSaveSlot(char const*, char const*, void*)
; decoder-mode: arm
00420d7c  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00420d80  70 40 2d e9                                      push {r4, r5, r6, lr}
00420d84  02 50 a0 e1                                      mov r5, r2
00420d88  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
00420d8c  03 30 8f e0                                      add r3, pc, r3
00420d90  02 20 93 e7                                      ldr r2, [r3, r2]
00420d94  4c 40 92 e5                                      ldr r4, [r2, #0x4c]
00420d98  08 00 94 e5                                      ldr r0, [r4, #8]
00420d9c  01 00 70 e3                                      cmn r0, #1
00420da0  02 00 00 0a                                      beq #0x420db0
00420da4  ec 0f 01 eb                                      bl #0x464d5c
00420da8  00 00 50 e3                                      cmp r0, #0
00420dac  11 00 00 1a                                      bne #0x420df8
00420db0  01 40 a0 e3                                      mov r4, #1
00420db4  04 00 a0 e1                                      mov r0, r4
00420db8  e7 0f 01 eb                                      bl #0x464d5c
00420dbc  00 00 50 e3                                      cmp r0, #0
00420dc0  15 00 00 1a                                      bne #0x420e1c
00420dc4  01 40 84 e2                                      add r4, r4, #1
00420dc8  05 00 54 e3                                      cmp r4, #5
00420dcc  f8 ff ff 1a                                      bne #0x420db4
00420dd0  70 10 9f e5                                      ldr r1, [pc, #0x70]
00420dd4  70 20 9f e5                                      ldr r2, [pc, #0x70]
00420dd8  70 30 9f e5                                      ldr r3, [pc, #0x70]
00420ddc  04 00 95 e5                                      ldr r0, [r5, #4]
00420de0  01 10 8f e0                                      add r1, pc, r1
00420de4  02 20 8f e0                                      add r2, pc, r2
00420de8  03 30 8f e0                                      add r3, pc, r3
00420dec  4f 2a 0e eb                                      bl #0x7ab730
00420df0  01 00 a0 e3                                      mov r0, #1
00420df4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00420df8  54 10 9f e5                                      ldr r1, [pc, #0x54]
00420dfc  54 20 9f e5                                      ldr r2, [pc, #0x54]
00420e00  04 00 95 e5                                      ldr r0, [r5, #4]
00420e04  01 10 8f e0                                      add r1, pc, r1
00420e08  02 20 8f e0                                      add r2, pc, r2
00420e0c  08 30 94 e5                                      ldr r3, [r4, #8]
00420e10  2c 2a 0e eb                                      bl #0x7ab6c8
00420e14  01 00 a0 e3                                      mov r0, #1
00420e18  70 80 bd e8                                      pop {r4, r5, r6, pc}
00420e1c  38 10 9f e5                                      ldr r1, [pc, #0x38]
00420e20  38 20 9f e5                                      ldr r2, [pc, #0x38]
00420e24  04 00 95 e5                                      ldr r0, [r5, #4]
00420e28  01 10 8f e0                                      add r1, pc, r1
00420e2c  02 20 8f e0                                      add r2, pc, r2
00420e30  04 30 a0 e1                                      mov r3, r4
00420e34  23 2a 0e eb                                      bl #0x7ab6c8
00420e38  01 00 a0 e3                                      mov r0, #1
00420e3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00420e40  04 3d 57 00 f4 37 00 00 20 24 4a 00 6c 81 4a 00  .byte 0x04, 0x3d, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x20, 0x24, 0x4a, 0x00, 0x6c, 0x81, 0x4a, 0x00
00420e50  20 aa 4a 00 fc 23 4a 00 48 81 4a 00 d8 23 4a 00  .byte 0x20, 0xaa, 0x4a, 0x00, 0xfc, 0x23, 0x4a, 0x00, 0x48, 0x81, 0x4a, 0x00, 0xd8, 0x23, 0x4a, 0x00
00420e60  24 81 4a 00                                      .byte 0x24, 0x81, 0x4a, 0x00

; FUNCTION 0x00420e64, declared_size=328, range_size=328, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase15FS_ContinueGameEPKcS1_Pv
; demangled: MenuBase::FS_ContinueGame(char const*, char const*, void*)
; decoder-mode: arm
00420e64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00420e68  20 41 9f e5                                      ldr r4, [pc, #0x120]
00420e6c  20 51 9f e5                                      ldr r5, [pc, #0x120]
00420e70  6e df 4d e2                                      sub sp, sp, #0x1b8
00420e74  04 40 8f e0                                      add r4, pc, r4
00420e78  05 30 94 e7                                      ldr r3, [r4, r5]
00420e7c  04 00 92 e5                                      ldr r0, [r2, #4]
00420e80  01 80 a0 e1                                      mov r8, r1
00420e84  00 30 93 e5                                      ldr r3, [r3]
00420e88  02 70 a0 e1                                      mov r7, r2
00420e8c  b4 31 8d e5                                      str r3, [sp, #0x1b4]
00420e90  22 2b 0e eb                                      bl #0x7abb20
00420e94  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
00420e98  03 60 94 e7                                      ldr r6, [r4, r3]
00420e9c  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
00420ea0  08 10 93 e5                                      ldr r1, [r3, #8]
00420ea4  01 00 71 e3                                      cmn r1, #1
00420ea8  2f 00 00 0a                                      beq #0x420f6c
00420eac  1c 70 8d e2                                      add r7, sp, #0x1c
00420eb0  01 20 a0 e3                                      mov r2, #1
00420eb4  00 30 a0 e3                                      mov r3, #0
00420eb8  07 00 a0 e1                                      mov r0, r7
00420ebc  ba 11 01 eb                                      bl #0x4655ac
00420ec0  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
00420ec4  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
00420ec8  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
00420ecc  03 30 94 e7                                      ldr r3, [r4, r3]
00420ed0  02 20 94 e7                                      ldr r2, [r4, r2]
00420ed4  6e cf 8d e2                                      add ip, sp, #0x1b8
00420ed8  00 30 93 e5                                      ldr r3, [r3]
00420edc  01 00 94 e7                                      ldr r0, [r4, r1]
00420ee0  00 20 92 e5                                      ldr r2, [r2]
00420ee4  03 11 8c e0                                      add r1, ip, r3, lsl #2
00420ee8  4c 11 11 e5                                      ldr r1, [r1, #-0x14c]
00420eec  03 c1 8c e0                                      add ip, ip, r3, lsl #2
00420ef0  48 e0 a0 e3                                      mov lr, #0x48
00420ef4  9e 21 21 e0                                      mla r1, lr, r1, r2
00420ef8  40 e1 1c e5                                      ldr lr, [ip, #-0x140]
00420efc  5c 21 1c e5                                      ldr r2, [ip, #-0x15c]
00420f00  00 c0 90 e5                                      ldr ip, [r0]
00420f04  20 10 91 e5                                      ldr r1, [r1, #0x20]
00420f08  06 00 a0 e1                                      mov r0, r6
00420f0c  00 c0 5c e2                                      subs ip, ip, #0
00420f10  01 c0 a0 13                                      movne ip, #1
00420f14  00 60 a0 e3                                      mov r6, #0
00420f18  00 e0 5e e2                                      subs lr, lr, #0
00420f1c  01 e0 a0 13                                      movne lr, #1
00420f20  04 c0 8d e5                                      str ip, [sp, #4]
00420f24  20 30 9d e5                                      ldr r3, [sp, #0x20]
00420f28  01 c0 a0 e3                                      mov ip, #1
00420f2c  00 e0 8d e5                                      str lr, [sp]
00420f30  08 c0 8d e5                                      str ip, [sp, #8]
00420f34  14 60 8d e5                                      str r6, [sp, #0x14]
00420f38  0c 60 8d e5                                      str r6, [sp, #0xc]
00420f3c  10 60 8d e5                                      str r6, [sp, #0x10]
00420f40  a0 2b fc eb                                      bl #0x32bdc8
00420f44  07 00 a0 e1                                      mov r0, r7
00420f48  0f 0a 01 eb                                      bl #0x46378c
00420f4c  05 30 94 e7                                      ldr r3, [r4, r5]
00420f50  b4 21 9d e5                                      ldr r2, [sp, #0x1b4]
00420f54  01 00 a0 e3                                      mov r0, #1
00420f58  00 30 93 e5                                      ldr r3, [r3]
00420f5c  03 00 52 e1                                      cmp r2, r3
00420f60  09 00 00 1a                                      bne #0x420f8c
00420f64  6e df 8d e2                                      add sp, sp, #0x1b8
00420f68  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00420f6c  34 10 9f e5                                      ldr r1, [pc, #0x34]
00420f70  07 00 a0 e1                                      mov r0, r7
00420f74  08 20 a0 e1                                      mov r2, r8
00420f78  01 10 8f e0                                      add r1, pc, r1
00420f7c  00 30 97 e5                                      ldr r3, [r7]
00420f80  0f e0 a0 e1                                      mov lr, pc
00420f84  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00420f88  ef ff ff ea                                      b #0x420f4c
00420f8c  df b4 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00420f90  1c 3c 57 00 ac 40 00 00 f4 37 00 00 9c 1a 00 00  .byte 0x1c, 0x3c, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x9c, 0x1a, 0x00, 0x00
00420fa0  74 08 00 00 10 0b 00 00 48 80 4a 00              .byte 0x74, 0x08, 0x00, 0x00, 0x10, 0x0b, 0x00, 0x00, 0x48, 0x80, 0x4a, 0x00

; FUNCTION 0x00420fac, declared_size=252, range_size=252, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase15FS_ReturnToGameEPKcS1_Pv
; demangled: MenuBase::FS_ReturnToGame(char const*, char const*, void*)
; decoder-mode: arm
00420fac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00420fb0  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
00420fb4  dc 50 9f e5                                      ldr r5, [pc, #0xdc]
00420fb8  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00420fbc  04 40 8f e0                                      add r4, pc, r4
00420fc0  05 30 94 e7                                      ldr r3, [r4, r5]
00420fc4  01 60 94 e7                                      ldr r6, [r4, r1]
00420fc8  02 80 a0 e1                                      mov r8, r2
00420fcc  00 20 93 e5                                      ldr r2, [r3]
00420fd0  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
00420fd4  6e df 4d e2                                      sub sp, sp, #0x1b8
00420fd8  b4 21 8d e5                                      str r2, [sp, #0x1b4]
00420fdc  08 10 93 e5                                      ldr r1, [r3, #8]
00420fe0  01 00 71 e3                                      cmn r1, #1
00420fe4  21 00 00 0a                                      beq #0x421070
00420fe8  1c 70 8d e2                                      add r7, sp, #0x1c
00420fec  01 20 a0 e3                                      mov r2, #1
00420ff0  00 30 a0 e3                                      mov r3, #0
00420ff4  07 00 a0 e1                                      mov r0, r7
00420ff8  6b 11 01 eb                                      bl #0x4655ac
00420ffc  04 00 98 e5                                      ldr r0, [r8, #4]
00421000  c6 2a 0e eb                                      bl #0x7abb20
00421004  94 30 9f e5                                      ldr r3, [pc, #0x94]
00421008  6e cf 8d e2                                      add ip, sp, #0x1b8
0042100c  06 00 a0 e1                                      mov r0, r6
00421010  03 20 94 e7                                      ldr r2, [r4, r3]
00421014  88 30 9f e5                                      ldr r3, [pc, #0x88]
00421018  01 e0 a0 e3                                      mov lr, #1
0042101c  00 20 92 e5                                      ldr r2, [r2]
00421020  03 30 94 e7                                      ldr r3, [r4, r3]
00421024  00 10 93 e5                                      ldr r1, [r3]
00421028  02 31 8c e0                                      add r3, ip, r2, lsl #2
0042102c  4c 31 13 e5                                      ldr r3, [r3, #-0x14c]
00421030  02 21 8c e0                                      add r2, ip, r2, lsl #2
00421034  48 c0 a0 e3                                      mov ip, #0x48
00421038  9c 13 23 e0                                      mla r3, ip, r3, r1
0042103c  5c 21 12 e5                                      ldr r2, [r2, #-0x15c]
00421040  20 10 93 e5                                      ldr r1, [r3, #0x20]
00421044  00 c0 a0 e3                                      mov ip, #0
00421048  20 30 9d e5                                      ldr r3, [sp, #0x20]
0042104c  04 e0 8d e5                                      str lr, [sp, #4]
00421050  14 c0 8d e5                                      str ip, [sp, #0x14]
00421054  00 c0 8d e5                                      str ip, [sp]
00421058  08 c0 8d e5                                      str ip, [sp, #8]
0042105c  0c c0 8d e5                                      str ip, [sp, #0xc]
00421060  10 c0 8d e5                                      str ip, [sp, #0x10]
00421064  57 2b fc eb                                      bl #0x32bdc8
00421068  07 00 a0 e1                                      mov r0, r7
0042106c  c6 09 01 eb                                      bl #0x46378c
00421070  05 30 94 e7                                      ldr r3, [r4, r5]
00421074  b4 21 9d e5                                      ldr r2, [sp, #0x1b4]
00421078  01 00 a0 e3                                      mov r0, #1
0042107c  00 30 93 e5                                      ldr r3, [r3]
00421080  03 00 52 e1                                      cmp r2, r3
00421084  01 00 00 1a                                      bne #0x421090
00421088  6e df 8d e2                                      add sp, sp, #0x1b8
0042108c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00421090  9e b4 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00421094  d4 3a 57 00 ac 40 00 00 f4 37 00 00 9c 1a 00 00  .byte 0xd4, 0x3a, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x9c, 0x1a, 0x00, 0x00
004210a4  74 08 00 00                                      .byte 0x74, 0x08, 0x00, 0x00

; FUNCTION 0x004210a8, declared_size=188, range_size=188, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase12FS_PlayMusicEPKcS1_Pv
; demangled: MenuBase::FS_PlayMusic(char const*, char const*, void*)
; decoder-mode: arm
004210a8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004210ac  a0 40 9f e5                                      ldr r4, [pc, #0xa0]
004210b0  00 60 51 e2                                      subs r6, r1, #0
004210b4  08 d0 4d e2                                      sub sp, sp, #8
004210b8  04 40 8f e0                                      add r4, pc, r4
004210bc  21 00 00 0a                                      beq #0x421148
004210c0  d0 30 d6 e1                                      ldrsb r3, [r6]
004210c4  00 00 53 e3                                      cmp r3, #0
004210c8  1e 00 00 0a                                      beq #0x421148
004210cc  84 30 9f e5                                      ldr r3, [pc, #0x84]
004210d0  03 30 94 e7                                      ldr r3, [r4, r3]
004210d4  00 70 93 e5                                      ldr r7, [r3]
004210d8  00 00 57 e3                                      cmp r7, #0
004210dc  19 00 00 0a                                      beq #0x421148
004210e0  74 30 9f e5                                      ldr r3, [pc, #0x74]
004210e4  00 50 a0 e3                                      mov r5, #0
004210e8  03 30 94 e7                                      ldr r3, [r4, r3]
004210ec  00 80 93 e5                                      ldr r8, [r3]
004210f0  02 00 00 ea                                      b #0x421100
004210f4  01 50 85 e2                                      add r5, r5, #1
004210f8  07 00 55 e1                                      cmp r5, r7
004210fc  11 00 00 0a                                      beq #0x421148
00421100  05 11 98 e7                                      ldr r1, [r8, r5, lsl #2]
00421104  06 00 a0 e1                                      mov r0, r6
00421108  83 b4 fb eb                                      bl #0x30e31c
0042110c  00 00 50 e3                                      cmp r0, #0
00421110  f7 ff ff 1a                                      bne #0x4210f4
00421114  01 00 75 e3                                      cmn r5, #1
00421118  0a 00 00 0a                                      beq #0x421148
0042111c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00421120  00 30 a0 e1                                      mov r3, r0
00421124  7d ce a0 e3                                      mov ip, #0x7d0
00421128  02 00 94 e7                                      ldr r0, [r4, r2]
0042112c  05 10 a0 e1                                      mov r1, r5
00421130  01 20 a0 e3                                      mov r2, #1
00421134  00 00 90 e5                                      ldr r0, [r0]
00421138  00 c0 8d e5                                      str ip, [sp]
0042113c  0d 2b fd eb                                      bl #0x36bd78
00421140  01 00 a0 e3                                      mov r0, #1
00421144  00 00 00 ea                                      b #0x42114c
00421148  00 00 a0 e3                                      mov r0, #0
0042114c  08 d0 8d e2                                      add sp, sp, #8
00421150  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00421154  d8 39 57 00 38 3d 00 00 a8 39 00 00 a4 0d 00 00  .byte 0xd8, 0x39, 0x57, 0x00, 0x38, 0x3d, 0x00, 0x00, 0xa8, 0x39, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x00421164, declared_size=184, range_size=184, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase14FS_PlaySoundFXEPKcS1_Pv
; demangled: MenuBase::FS_PlaySoundFX(char const*, char const*, void*)
; decoder-mode: arm
00421164  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00421168  9c 50 9f e5                                      ldr r5, [pc, #0x9c]
0042116c  00 60 51 e2                                      subs r6, r1, #0
00421170  08 d0 4d e2                                      sub sp, sp, #8
00421174  05 50 8f e0                                      add r5, pc, r5
00421178  20 00 00 0a                                      beq #0x421200
0042117c  d0 30 d6 e1                                      ldrsb r3, [r6]
00421180  00 00 53 e3                                      cmp r3, #0
00421184  1d 00 00 0a                                      beq #0x421200
00421188  80 30 9f e5                                      ldr r3, [pc, #0x80]
0042118c  03 30 95 e7                                      ldr r3, [r5, r3]
00421190  00 70 93 e5                                      ldr r7, [r3]
00421194  00 00 57 e3                                      cmp r7, #0
00421198  18 00 00 0a                                      beq #0x421200
0042119c  70 30 9f e5                                      ldr r3, [pc, #0x70]
004211a0  00 40 a0 e3                                      mov r4, #0
004211a4  03 30 95 e7                                      ldr r3, [r5, r3]
004211a8  00 80 93 e5                                      ldr r8, [r3]
004211ac  02 00 00 ea                                      b #0x4211bc
004211b0  01 40 84 e2                                      add r4, r4, #1
004211b4  07 00 54 e1                                      cmp r4, r7
004211b8  10 00 00 0a                                      beq #0x421200
004211bc  04 11 98 e7                                      ldr r1, [r8, r4, lsl #2]
004211c0  06 00 a0 e1                                      mov r0, r6
004211c4  54 b4 fb eb                                      bl #0x30e31c
004211c8  00 c0 50 e2                                      subs ip, r0, #0
004211cc  f7 ff ff 1a                                      bne #0x4211b0
004211d0  01 00 74 e3                                      cmn r4, #1
004211d4  09 00 00 0a                                      beq #0x421200
004211d8  38 30 9f e5                                      ldr r3, [pc, #0x38]
004211dc  00 c0 8d e5                                      str ip, [sp]
004211e0  0c 20 a0 e1                                      mov r2, ip
004211e4  03 00 95 e7                                      ldr r0, [r5, r3]
004211e8  04 10 a0 e1                                      mov r1, r4
004211ec  0c 30 a0 e1                                      mov r3, ip
004211f0  00 00 90 e5                                      ldr r0, [r0]
004211f4  8e 2a fd eb                                      bl #0x36bc34
004211f8  01 00 a0 e3                                      mov r0, #1
004211fc  00 00 00 ea                                      b #0x421204
00421200  00 00 a0 e3                                      mov r0, #0
00421204  08 d0 8d e2                                      add sp, sp, #8
00421208  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0042120c  1c 39 57 00 38 3d 00 00 a8 39 00 00 a4 0d 00 00  .byte 0x1c, 0x39, 0x57, 0x00, 0x38, 0x3d, 0x00, 0x00, 0xa8, 0x39, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x0042121c, declared_size=24, range_size=24, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase11FS_SetFocusEPKcS1_Pv
; demangled: MenuBase::FS_SetFocus(char const*, char const*, void*)
; decoder-mode: arm
0042121c  10 40 2d e9                                      push {r4, lr}
00421220  04 00 92 e5                                      ldr r0, [r2, #4]
00421224  00 20 a0 e3                                      mov r2, #0
00421228  9a 2c 0e eb                                      bl #0x7ac498
0042122c  01 00 a0 e3                                      mov r0, #1
00421230  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00421234, declared_size=196, range_size=196, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase12FS_PushStateEPKcS1_Pv
; demangled: MenuBase::FS_PushState(char const*, char const*, void*)
; decoder-mode: arm
00421234  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
00421238  70 40 2d e9                                      push {r4, r5, r6, lr}
0042123c  00 00 8f e0                                      add r0, pc, r0
00421240  01 60 a0 e1                                      mov r6, r1
00421244  34 b4 fb eb                                      bl #0x30e31c
00421248  94 40 9f e5                                      ldr r4, [pc, #0x94]
0042124c  00 00 50 e3                                      cmp r0, #0
00421250  04 40 8f e0                                      add r4, pc, r4
00421254  12 00 00 0a                                      beq #0x4212a4
00421258  88 00 9f e5                                      ldr r0, [pc, #0x88]
0042125c  06 10 a0 e1                                      mov r1, r6
00421260  00 00 8f e0                                      add r0, pc, r0
00421264  2c b4 fb eb                                      bl #0x30e31c
00421268  00 00 50 e3                                      cmp r0, #0
0042126c  0c 00 00 0a                                      beq #0x4212a4
00421270  74 50 9f e5                                      ldr r5, [pc, #0x74]
00421274  04 2e 00 eb                                      bl #0x42ca8c
00421278  06 10 a0 e1                                      mov r1, r6
0042127c  db 2f 00 eb                                      bl #0x42d1f0
00421280  68 10 9f e5                                      ldr r1, [pc, #0x68]
00421284  05 30 94 e7                                      ldr r3, [r4, r5]
00421288  00 20 a0 e3                                      mov r2, #0
0042128c  01 10 94 e7                                      ldr r1, [r4, r1]
00421290  0c 00 81 e5                                      str r0, [r1, #0xc]
00421294  18 00 93 e5                                      ldr r0, [r3, #0x18]
00421298  29 64 fc eb                                      bl #0x33a344
0042129c  01 00 a0 e3                                      mov r0, #1
004212a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
004212a4  40 50 9f e5                                      ldr r5, [pc, #0x40]
004212a8  05 30 94 e7                                      ldr r3, [r4, r5]
004212ac  18 30 93 e5                                      ldr r3, [r3, #0x18]
004212b0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004212b4  10 30 93 e5                                      ldr r3, [r3, #0x10]
004212b8  03 20 62 e0                                      rsb r2, r2, r3
004212bc  a2 21 b0 e1                                      lsrs r2, r2, #3
004212c0  04 00 00 0a                                      beq #0x4212d8
004212c4  08 20 13 e5                                      ldr r2, [r3, #-8]
004212c8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004212cc  03 30 94 e7                                      ldr r3, [r4, r3]
004212d0  03 00 52 e1                                      cmp r2, r3
004212d4  e6 ff ff 0a                                      beq #0x421274
004212d8  00 00 a0 e3                                      mov r0, #0
004212dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004212e0  c4 da 49 00 40 38 57 00 b8 da 49 00 f4 37 00 00  .byte 0xc4, 0xda, 0x49, 0x00, 0x40, 0x38, 0x57, 0x00, 0xb8, 0xda, 0x49, 0x00, 0xf4, 0x37, 0x00, 0x00
004212f0  54 21 00 00 80 22 00 00                          .byte 0x54, 0x21, 0x00, 0x00, 0x80, 0x22, 0x00, 0x00

; FUNCTION 0x004212f8, declared_size=60, range_size=60, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase13FS_SwitchMenuEPKcS1_Pv
; demangled: MenuBase::FS_SwitchMenu(char const*, char const*, void*)
; decoder-mode: arm
004212f8  70 40 2d e9                                      push {r4, r5, r6, lr}
004212fc  01 50 a0 e1                                      mov r5, r1
00421300  e1 2d 00 eb                                      bl #0x42ca8c
00421304  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
00421308  00 40 a0 e1                                      mov r4, r0
0042130c  00 10 a0 e3                                      mov r1, #0
00421310  03 00 a0 e1                                      mov r0, r3
00421314  00 30 93 e5                                      ldr r3, [r3]
00421318  0f e0 a0 e1                                      mov lr, pc
0042131c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00421320  04 00 a0 e1                                      mov r0, r4
00421324  05 10 a0 e1                                      mov r1, r5
00421328  7d 41 00 eb                                      bl #0x431924
0042132c  01 00 a0 e3                                      mov r0, #1
00421330  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00421334, declared_size=28, range_size=28, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase11FS_PushMenuEPKcS1_Pv
; demangled: MenuBase::FS_PushMenu(char const*, char const*, void*)
; decoder-mode: arm
00421334  10 40 2d e9                                      push {r4, lr}
00421338  01 40 a0 e1                                      mov r4, r1
0042133c  d2 2d 00 eb                                      bl #0x42ca8c
00421340  04 10 a0 e1                                      mov r1, r4
00421344  76 41 00 eb                                      bl #0x431924
00421348  01 00 a0 e3                                      mov r0, #1
0042134c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00421350, declared_size=160, range_size=160, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase14FS_PopAllAboveEPKcS1_Pv
; demangled: MenuBase::FS_PopAllAbove(char const*, char const*, void*)
; decoder-mode: arm
00421350  70 40 2d e9                                      push {r4, r5, r6, lr}
00421354  01 50 a0 e1                                      mov r5, r1
00421358  02 40 a0 e1                                      mov r4, r2
0042135c  ca 2d 00 eb                                      bl #0x42ca8c
00421360  00 00 55 e3                                      cmp r5, #0
00421364  00 60 a0 e1                                      mov r6, r0
00421368  05 10 a0 11                                      movne r1, r5
0042136c  1b 00 00 0a                                      beq #0x4213e0
00421370  04 00 94 e5                                      ldr r0, [r4, #4]
00421374  d2 1b 0e eb                                      bl #0x7a82c4
00421378  00 50 50 e2                                      subs r5, r0, #0
0042137c  11 00 00 0a                                      beq #0x4213c8
00421380  04 00 94 e5                                      ldr r0, [r4, #4]
00421384  e9 1a 0e eb                                      bl #0x7a7f30
00421388  00 00 55 e1                                      cmp r5, r0
0042138c  0d 00 00 0a                                      beq #0x4213c8
00421390  04 00 94 e5                                      ldr r0, [r4, #4]
00421394  00 10 a0 e3                                      mov r1, #0
00421398  18 31 90 e5                                      ldr r3, [r0, #0x118]
0042139c  01 00 53 e1                                      cmp r3, r1
004213a0  09 00 00 da                                      ble #0x4213cc
004213a4  f4 30 96 e5                                      ldr r3, [r6, #0xf4]
004213a8  03 00 a0 e1                                      mov r0, r3
004213ac  00 30 93 e5                                      ldr r3, [r3]
004213b0  0f e0 a0 e1                                      mov lr, pc
004213b4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
004213b8  04 00 94 e5                                      ldr r0, [r4, #4]
004213bc  db 1a 0e eb                                      bl #0x7a7f30
004213c0  00 00 55 e1                                      cmp r5, r0
004213c4  f1 ff ff 1a                                      bne #0x421390
004213c8  04 00 94 e5                                      ldr r0, [r4, #4]
004213cc  d7 1a 0e eb                                      bl #0x7a7f30
004213d0  00 00 55 e1                                      cmp r5, r0
004213d4  00 00 a0 13                                      movne r0, #0
004213d8  01 00 a0 03                                      moveq r0, #1
004213dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
004213e0  04 10 9f e5                                      ldr r1, [pc, #4]
004213e4  01 10 8f e0                                      add r1, pc, r1
004213e8  e0 ff ff ea                                      b #0x421370
; mapping-symbol data/literal pool
004213ec  1c d9 49 00                                      .byte 0x1c, 0xd9, 0x49, 0x00

; FUNCTION 0x004213f0, declared_size=32, range_size=32, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase9IsTopMostEv
; demangled: MenuBase::IsTopMost()
; decoder-mode: arm
004213f0  10 40 2d e9                                      push {r4, lr}
004213f4  00 40 a0 e1                                      mov r4, r0
004213f8  04 00 90 e5                                      ldr r0, [r0, #4]
004213fc  cb 1a 0e eb                                      bl #0x7a7f30
00421400  00 00 54 e1                                      cmp r4, r0
00421404  00 00 a0 13                                      movne r0, #0
00421408  01 00 a0 03                                      moveq r0, #1
0042140c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00421410, declared_size=44, range_size=44, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase10FS_PopMenuEPKcS1_Pv
; demangled: MenuBase::FS_PopMenu(char const*, char const*, void*)
; decoder-mode: arm
00421410  70 40 2d e9                                      push {r4, r5, r6, lr}
00421414  01 40 a0 e1                                      mov r4, r1
00421418  02 50 a0 e1                                      mov r5, r2
0042141c  9a 2d 00 eb                                      bl #0x42ca8c
00421420  00 30 d4 e5                                      ldrb r3, [r4]
00421424  00 00 53 e3                                      cmp r3, #0
00421428  08 40 85 02                                      addeq r4, r5, #8
0042142c  04 10 a0 e1                                      mov r1, r4
00421430  9e 33 00 eb                                      bl #0x42e2b0
00421434  01 00 a0 e3                                      mov r0, #1
00421438  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0042143c, declared_size=280, range_size=280, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase16FS_AutoEquipSlotEPKcS1_Pv
; demangled: MenuBase::FS_AutoEquipSlot(char const*, char const*, void*)
; decoder-mode: arm
0042143c  04 31 9f e5                                      ldr r3, [pc, #0x104]
00421440  04 21 9f e5                                      ldr r2, [pc, #0x104]
00421444  70 40 2d e9                                      push {r4, r5, r6, lr}
00421448  03 30 8f e0                                      add r3, pc, r3
0042144c  02 00 93 e7                                      ldr r0, [r3, r2]
00421450  01 40 a0 e1                                      mov r4, r1
00421454  01 20 a0 e3                                      mov r2, #1
00421458  00 10 a0 e3                                      mov r1, #0
0042145c  40 00 90 e5                                      ldr r0, [r0, #0x40]
00421460  04 34 fd eb                                      bl #0x36e478
00421464  60 56 90 e5                                      ldr r5, [r0, #0x660]
00421468  00 00 54 e3                                      cmp r4, #0
0042146c  00 00 55 13                                      cmpne r5, #0
00421470  23 00 00 0a                                      beq #0x421504
00421474  d0 30 d4 e1                                      ldrsb r3, [r4]
00421478  00 00 53 e3                                      cmp r3, #0
0042147c  20 00 00 0a                                      beq #0x421504
00421480  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
00421484  04 00 a0 e1                                      mov r0, r4
00421488  01 10 8f e0                                      add r1, pc, r1
0042148c  a2 b3 fb eb                                      bl #0x30e31c
00421490  00 00 50 e3                                      cmp r0, #0
00421494  00 40 a0 01                                      moveq r4, r0
00421498  df 6f 85 02                                      addeq r6, r5, #0x37c
0042149c  04 00 00 0a                                      beq #0x4214b4
004214a0  19 00 00 ea                                      b #0x42150c
004214a4  00 30 95 e5                                      ldr r3, [r5]
004214a8  0f e0 a0 e1                                      mov lr, pc
004214ac  44 f1 93 e5                                      ldr pc, [r3, #0x144]
004214b0  01 40 84 e2                                      add r4, r4, #1
004214b4  06 00 a0 e1                                      mov r0, r6
004214b8  18 7a ff eb                                      bl #0x3ffd20
004214bc  00 00 54 e1                                      cmp r4, r0
004214c0  04 10 a0 e1                                      mov r1, r4
004214c4  05 00 a0 e1                                      mov r0, r5
004214c8  f5 ff ff ba                                      blt #0x4214a4
004214cc  06 00 a0 e1                                      mov r0, r6
004214d0  12 7a ff eb                                      bl #0x3ffd20
004214d4  01 40 50 e2                                      subs r4, r0, #1
004214d8  07 00 00 4a                                      bmi #0x4214fc
004214dc  04 10 a0 e1                                      mov r1, r4
004214e0  00 30 95 e5                                      ldr r3, [r5]
004214e4  01 40 44 e2                                      sub r4, r4, #1
004214e8  05 00 a0 e1                                      mov r0, r5
004214ec  0f e0 a0 e1                                      mov lr, pc
004214f0  40 f1 93 e5                                      ldr pc, [r3, #0x140]
004214f4  01 00 74 e3                                      cmn r4, #1
004214f8  f7 ff ff 1a                                      bne #0x4214dc
004214fc  01 00 a0 e3                                      mov r0, #1
00421500  70 80 bd e8                                      pop {r4, r5, r6, pc}
00421504  00 00 a0 e3                                      mov r0, #0
00421508  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042150c  04 00 a0 e1                                      mov r0, r4
00421510  df b2 fb eb                                      bl #0x30e094
00421514  00 30 95 e5                                      ldr r3, [r5]
00421518  00 10 a0 e1                                      mov r1, r0
0042151c  00 40 a0 e1                                      mov r4, r0
00421520  05 00 a0 e1                                      mov r0, r5
00421524  0f e0 a0 e1                                      mov lr, pc
00421528  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0042152c  05 00 a0 e1                                      mov r0, r5
00421530  04 10 a0 e1                                      mov r1, r4
00421534  00 30 95 e5                                      ldr r3, [r5]
00421538  0f e0 a0 e1                                      mov lr, pc
0042153c  40 f1 93 e5                                      ldr pc, [r3, #0x140]
00421540  01 00 a0 e3                                      mov r0, #1
00421544  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00421548  48 36 57 00 f4 37 00 00 48 7b 4a 00              .byte 0x48, 0x36, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x48, 0x7b, 0x4a, 0x00

; FUNCTION 0x00421554, declared_size=152, range_size=152, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase22FS_GetHasOffHandWeaponEPKcS1_Pv
; demangled: MenuBase::FS_GetHasOffHandWeapon(char const*, char const*, void*)
; decoder-mode: arm
00421554  80 30 9f e5                                      ldr r3, [pc, #0x80]
00421558  70 40 2d e9                                      push {r4, r5, r6, lr}
0042155c  02 60 a0 e1                                      mov r6, r2
00421560  78 20 9f e5                                      ldr r2, [pc, #0x78]
00421564  03 30 8f e0                                      add r3, pc, r3
00421568  10 d0 4d e2                                      sub sp, sp, #0x10
0042156c  02 00 93 e7                                      ldr r0, [r3, r2]
00421570  00 10 a0 e3                                      mov r1, #0
00421574  01 20 a0 e3                                      mov r2, #1
00421578  40 00 90 e5                                      ldr r0, [r0, #0x40]
0042157c  bd 33 fd eb                                      bl #0x36e478
00421580  60 06 90 e5                                      ldr r0, [r0, #0x660]
00421584  00 00 50 e3                                      cmp r0, #0
00421588  11 00 00 0a                                      beq #0x4215d4
0042158c  df 0f 80 e2                                      add r0, r0, #0x37c
00421590  f0 7a ff eb                                      bl #0x400158
00421594  48 10 9f e5                                      ldr r1, [pc, #0x48]
00421598  48 20 9f e5                                      ldr r2, [pc, #0x48]
0042159c  04 50 8d e2                                      add r5, sp, #4
004215a0  08 00 cd e5                                      strb r0, [sp, #8]
004215a4  04 00 96 e5                                      ldr r0, [r6, #4]
004215a8  00 c0 a0 e3                                      mov ip, #0
004215ac  01 10 8f e0                                      add r1, pc, r1
004215b0  02 20 8f e0                                      add r2, pc, r2
004215b4  01 40 a0 e3                                      mov r4, #1
004215b8  05 30 a0 e1                                      mov r3, r5
004215bc  04 c0 cd e5                                      strb ip, [sp, #4]
004215c0  05 40 cd e5                                      strb r4, [sp, #5]
004215c4  02 28 0e eb                                      bl #0x7ab5d4
004215c8  05 00 a0 e1                                      mov r0, r5
004215cc  d4 d6 0d eb                                      bl #0x797124
004215d0  04 00 a0 e1                                      mov r0, r4
004215d4  10 d0 8d e2                                      add sp, sp, #0x10
004215d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004215dc  2c 35 57 00 f4 37 00 00 54 1c 4a 00 a0 79 4a 00  .byte 0x2c, 0x35, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x54, 0x1c, 0x4a, 0x00, 0xa0, 0x79, 0x4a, 0x00

; FUNCTION 0x004215ec, declared_size=152, range_size=152, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase23FS_GetHasMainHandWeaponEPKcS1_Pv
; demangled: MenuBase::FS_GetHasMainHandWeapon(char const*, char const*, void*)
; decoder-mode: arm
004215ec  80 30 9f e5                                      ldr r3, [pc, #0x80]
004215f0  70 40 2d e9                                      push {r4, r5, r6, lr}
004215f4  02 60 a0 e1                                      mov r6, r2
004215f8  78 20 9f e5                                      ldr r2, [pc, #0x78]
004215fc  03 30 8f e0                                      add r3, pc, r3
00421600  10 d0 4d e2                                      sub sp, sp, #0x10
00421604  02 00 93 e7                                      ldr r0, [r3, r2]
00421608  00 10 a0 e3                                      mov r1, #0
0042160c  01 20 a0 e3                                      mov r2, #1
00421610  40 00 90 e5                                      ldr r0, [r0, #0x40]
00421614  97 33 fd eb                                      bl #0x36e478
00421618  60 06 90 e5                                      ldr r0, [r0, #0x660]
0042161c  00 00 50 e3                                      cmp r0, #0
00421620  11 00 00 0a                                      beq #0x42166c
00421624  df 0f 80 e2                                      add r0, r0, #0x37c
00421628  17 7a ff eb                                      bl #0x3ffe8c
0042162c  48 10 9f e5                                      ldr r1, [pc, #0x48]
00421630  48 20 9f e5                                      ldr r2, [pc, #0x48]
00421634  04 50 8d e2                                      add r5, sp, #4
00421638  08 00 cd e5                                      strb r0, [sp, #8]
0042163c  04 00 96 e5                                      ldr r0, [r6, #4]
00421640  00 c0 a0 e3                                      mov ip, #0
00421644  01 10 8f e0                                      add r1, pc, r1
00421648  02 20 8f e0                                      add r2, pc, r2
0042164c  01 40 a0 e3                                      mov r4, #1
00421650  05 30 a0 e1                                      mov r3, r5
00421654  04 c0 cd e5                                      strb ip, [sp, #4]
00421658  05 40 cd e5                                      strb r4, [sp, #5]
0042165c  dc 27 0e eb                                      bl #0x7ab5d4
00421660  05 00 a0 e1                                      mov r0, r5
00421664  ae d6 0d eb                                      bl #0x797124
00421668  04 00 a0 e1                                      mov r0, r4
0042166c  10 d0 8d e2                                      add sp, sp, #0x10
00421670  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00421674  94 34 57 00 f4 37 00 00 bc 1b 4a 00 08 79 4a 00  .byte 0x94, 0x34, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xbc, 0x1b, 0x4a, 0x00, 0x08, 0x79, 0x4a, 0x00

; FUNCTION 0x00421684, declared_size=156, range_size=156, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase22FS_GetHasTwoHandWeaponEPKcS1_Pv
; demangled: MenuBase::FS_GetHasTwoHandWeapon(char const*, char const*, void*)
; decoder-mode: arm
00421684  84 30 9f e5                                      ldr r3, [pc, #0x84]
00421688  70 40 2d e9                                      push {r4, r5, r6, lr}
0042168c  02 60 a0 e1                                      mov r6, r2
00421690  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00421694  03 30 8f e0                                      add r3, pc, r3
00421698  10 d0 4d e2                                      sub sp, sp, #0x10
0042169c  02 00 93 e7                                      ldr r0, [r3, r2]
004216a0  00 10 a0 e3                                      mov r1, #0
004216a4  01 20 a0 e3                                      mov r2, #1
004216a8  40 00 90 e5                                      ldr r0, [r0, #0x40]
004216ac  71 33 fd eb                                      bl #0x36e478
004216b0  60 06 90 e5                                      ldr r0, [r0, #0x660]
004216b4  00 00 50 e3                                      cmp r0, #0
004216b8  12 00 00 0a                                      beq #0x421708
004216bc  00 10 a0 e3                                      mov r1, #0
004216c0  df 0f 80 e2                                      add r0, r0, #0x37c
004216c4  b5 7a ff eb                                      bl #0x4001a0
004216c8  48 10 9f e5                                      ldr r1, [pc, #0x48]
004216cc  48 20 9f e5                                      ldr r2, [pc, #0x48]
004216d0  04 50 8d e2                                      add r5, sp, #4
004216d4  08 00 cd e5                                      strb r0, [sp, #8]
004216d8  04 00 96 e5                                      ldr r0, [r6, #4]
004216dc  00 c0 a0 e3                                      mov ip, #0
004216e0  01 10 8f e0                                      add r1, pc, r1
004216e4  02 20 8f e0                                      add r2, pc, r2
004216e8  01 40 a0 e3                                      mov r4, #1
004216ec  05 30 a0 e1                                      mov r3, r5
004216f0  04 c0 cd e5                                      strb ip, [sp, #4]
004216f4  05 40 cd e5                                      strb r4, [sp, #5]
004216f8  b5 27 0e eb                                      bl #0x7ab5d4
004216fc  05 00 a0 e1                                      mov r0, r5
00421700  87 d6 0d eb                                      bl #0x797124
00421704  04 00 a0 e1                                      mov r0, r4
00421708  10 d0 8d e2                                      add sp, sp, #0x10
0042170c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00421710  fc 33 57 00 f4 37 00 00 20 1b 4a 00 6c 78 4a 00  .byte 0xfc, 0x33, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x20, 0x1b, 0x4a, 0x00, 0x6c, 0x78, 0x4a, 0x00

; FUNCTION 0x00421720, declared_size=232, range_size=232, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase17FS_GetPlayerClassEPKcS1_Pv
; demangled: MenuBase::FS_GetPlayerClass(char const*, char const*, void*)
; decoder-mode: arm
00421720  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00421724  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
00421728  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
0042172c  01 60 a0 e1                                      mov r6, r1
00421730  04 40 8f e0                                      add r4, pc, r4
00421734  05 30 94 e7                                      ldr r3, [r4, r5]
00421738  02 70 a0 e1                                      mov r7, r2
0042173c  00 10 a0 e3                                      mov r1, #0
00421740  40 00 93 e5                                      ldr r0, [r3, #0x40]
00421744  01 20 a0 e3                                      mov r2, #1
00421748  4a 33 fd eb                                      bl #0x36e478
0042174c  60 86 90 e5                                      ldr r8, [r0, #0x660]
00421750  00 00 58 e3                                      cmp r8, #0
00421754  17 00 00 0a                                      beq #0x4217b8
00421758  00 00 56 e3                                      cmp r6, #0
0042175c  1f 00 00 0a                                      beq #0x4217e0
00421760  06 00 a0 e1                                      mov r0, r6
00421764  4a b2 fb eb                                      bl #0x30e094
00421768  08 00 a0 e1                                      mov r0, r8
0042176c  22 68 fe eb                                      bl #0x3bb7fc
00421770  01 00 70 e3                                      cmn r0, #1
00421774  0f 00 00 0a                                      beq #0x4217b8
00421778  05 30 94 e7                                      ldr r3, [r4, r5]
0042177c  34 40 93 e5                                      ldr r4, [r3, #0x34]
00421780  2b f8 ff eb                                      bl #0x41f834
00421784  00 10 a0 e1                                      mov r1, r0
00421788  04 00 a0 e1                                      mov r0, r4
0042178c  d2 9d 03 eb                                      bl #0x508edc
00421790  00 30 50 e2                                      subs r3, r0, #0
00421794  05 00 00 0a                                      beq #0x4217b0
00421798  54 10 9f e5                                      ldr r1, [pc, #0x54]
0042179c  54 20 9f e5                                      ldr r2, [pc, #0x54]
004217a0  04 00 97 e5                                      ldr r0, [r7, #4]
004217a4  01 10 8f e0                                      add r1, pc, r1
004217a8  02 20 8f e0                                      add r2, pc, r2
004217ac  df 27 0e eb                                      bl #0x7ab730
004217b0  01 00 a0 e3                                      mov r0, #1
004217b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004217b8  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
004217bc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004217c0  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004217c4  04 00 97 e5                                      ldr r0, [r7, #4]
004217c8  01 10 8f e0                                      add r1, pc, r1
004217cc  02 20 8f e0                                      add r2, pc, r2
004217d0  03 30 8f e0                                      add r3, pc, r3
004217d4  d5 27 0e eb                                      bl #0x7ab730
004217d8  01 00 a0 e3                                      mov r0, #1
004217dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004217e0  08 00 a0 e1                                      mov r0, r8
004217e4  04 68 fe eb                                      bl #0x3bb7fc
004217e8  e0 ff ff ea                                      b #0x421770
; mapping-symbol data/literal pool
004217ec  60 33 57 00 f4 37 00 00 5c 1a 4a 00 a8 77 4a 00  .byte 0x60, 0x33, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x5c, 0x1a, 0x4a, 0x00, 0xa8, 0x77, 0x4a, 0x00
004217fc  38 1a 4a 00 84 77 4a 00 38 a0 4a 00              .byte 0x38, 0x1a, 0x4a, 0x00, 0x84, 0x77, 0x4a, 0x00, 0x38, 0xa0, 0x4a, 0x00

; FUNCTION 0x00421808, declared_size=220, range_size=220, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase18FS_GetCharPropertyEPKcS1_Pv
; demangled: MenuBase::FS_GetCharProperty(char const*, char const*, void*)
; decoder-mode: arm
00421808  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0042180c  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
00421810  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
00421814  b8 00 9f e5                                      ldr r0, [pc, #0xb8]
00421818  04 40 8f e0                                      add r4, pc, r4
0042181c  05 30 94 e7                                      ldr r3, [r4, r5]
00421820  00 00 94 e7                                      ldr r0, [r4, r0]
00421824  10 d0 4d e2                                      sub sp, sp, #0x10
00421828  00 30 93 e5                                      ldr r3, [r3]
0042182c  01 60 a0 e1                                      mov r6, r1
00421830  02 70 a0 e1                                      mov r7, r2
00421834  40 00 90 e5                                      ldr r0, [r0, #0x40]
00421838  00 10 a0 e3                                      mov r1, #0
0042183c  01 20 a0 e3                                      mov r2, #1
00421840  0c 30 8d e5                                      str r3, [sp, #0xc]
00421844  0b 33 fd eb                                      bl #0x36e478
00421848  60 86 90 e5                                      ldr r8, [r0, #0x660]
0042184c  00 00 58 e3                                      cmp r8, #0
00421850  14 00 00 0a                                      beq #0x4218a8
00421854  06 00 a0 e1                                      mov r0, r6
00421858  be ff fe eb                                      bl #0x3e1758
0042185c  01 00 70 e3                                      cmn r0, #1
00421860  10 00 00 0a                                      beq #0x4218a8
00421864  00 10 a0 e1                                      mov r1, r0
00421868  00 20 a0 e3                                      mov r2, #0
0042186c  56 0e 88 e2                                      add r0, r8, #0x560
00421870  9a f7 fe eb                                      bl #0x3df6e0
00421874  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00421878  04 60 8d e2                                      add r6, sp, #4
0042187c  00 20 a0 e1                                      mov r2, r0
00421880  01 10 8f e0                                      add r1, pc, r1
00421884  06 00 a0 e1                                      mov r0, r6
00421888  95 b4 fb eb                                      bl #0x30eae4
0042188c  48 10 9f e5                                      ldr r1, [pc, #0x48]
00421890  48 20 9f e5                                      ldr r2, [pc, #0x48]
00421894  04 00 97 e5                                      ldr r0, [r7, #4]
00421898  01 10 8f e0                                      add r1, pc, r1
0042189c  02 20 8f e0                                      add r2, pc, r2
004218a0  06 30 a0 e1                                      mov r3, r6
004218a4  a1 27 0e eb                                      bl #0x7ab730
004218a8  05 30 94 e7                                      ldr r3, [r4, r5]
004218ac  0c 20 9d e5                                      ldr r2, [sp, #0xc]
004218b0  01 00 a0 e3                                      mov r0, #1
004218b4  00 30 93 e5                                      ldr r3, [r3]
004218b8  03 00 52 e1                                      cmp r2, r3
004218bc  01 00 00 1a                                      bne #0x4218c8
004218c0  10 d0 8d e2                                      add sp, sp, #0x10
004218c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004218c8  90 b2 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004218cc  78 32 57 00 ac 40 00 00 f4 37 00 00 30 06 4a 00  .byte 0x78, 0x32, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x30, 0x06, 0x4a, 0x00
004218dc  68 19 4a 00 b4 76 4a 00                          .byte 0x68, 0x19, 0x4a, 0x00, 0xb4, 0x76, 0x4a, 0x00

; FUNCTION 0x00421980, declared_size=56, range_size=56, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase18FS_GetPlayerClass2EPKcS1_Pv
; demangled: MenuBase::FS_GetPlayerClass2(char const*, char const*, void*)
; decoder-mode: arm
00421980  10 40 2d e9                                      push {r4, lr}
00421984  04 40 92 e5                                      ldr r4, [r2, #4]
00421988  d5 ff ff eb                                      bl #0x4218e4
0042198c  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00421990  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00421994  00 30 a0 e1                                      mov r3, r0
00421998  01 10 8f e0                                      add r1, pc, r1
0042199c  04 00 a0 e1                                      mov r0, r4
004219a0  02 20 8f e0                                      add r2, pc, r2
004219a4  61 27 0e eb                                      bl #0x7ab730
004219a8  01 00 a0 e3                                      mov r0, #1
004219ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004219b0  68 18 4a 00 b0 75 4a 00                          .byte 0x68, 0x18, 0x4a, 0x00, 0xb0, 0x75, 0x4a, 0x00

; FUNCTION 0x004219b8, declared_size=244, range_size=244, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase14FS_AssignPointEPKcS1_Pv
; demangled: MenuBase::FS_AssignPoint(char const*, char const*, void*)
; decoder-mode: arm
004219b8  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
004219bc  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
004219c0  70 40 2d e9                                      push {r4, r5, r6, lr}
004219c4  03 30 8f e0                                      add r3, pc, r3
004219c8  02 00 93 e7                                      ldr r0, [r3, r2]
004219cc  01 40 a0 e1                                      mov r4, r1
004219d0  01 20 a0 e3                                      mov r2, #1
004219d4  00 10 a0 e3                                      mov r1, #0
004219d8  40 00 90 e5                                      ldr r0, [r0, #0x40]
004219dc  a5 32 fd eb                                      bl #0x36e478
004219e0  60 56 90 e5                                      ldr r5, [r0, #0x660]
004219e4  00 00 55 e3                                      cmp r5, #0
004219e8  17 00 00 0a                                      beq #0x421a4c
004219ec  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
004219f0  04 00 a0 e1                                      mov r0, r4
004219f4  01 10 8f e0                                      add r1, pc, r1
004219f8  47 b2 fb eb                                      bl #0x30e31c
004219fc  00 00 50 e3                                      cmp r0, #0
00421a00  17 00 00 0a                                      beq #0x421a64
00421a04  94 10 9f e5                                      ldr r1, [pc, #0x94]
00421a08  04 00 a0 e1                                      mov r0, r4
00421a0c  01 10 8f e0                                      add r1, pc, r1
00421a10  41 b2 fb eb                                      bl #0x30e31c
00421a14  00 00 50 e3                                      cmp r0, #0
00421a18  19 00 00 0a                                      beq #0x421a84
00421a1c  80 10 9f e5                                      ldr r1, [pc, #0x80]
00421a20  04 00 a0 e1                                      mov r0, r4
00421a24  01 10 8f e0                                      add r1, pc, r1
00421a28  3b b2 fb eb                                      bl #0x30e31c
00421a2c  00 00 50 e3                                      cmp r0, #0
00421a30  07 00 00 0a                                      beq #0x421a54
00421a34  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00421a38  04 00 a0 e1                                      mov r0, r4
00421a3c  01 10 8f e0                                      add r1, pc, r1
00421a40  35 b2 fb eb                                      bl #0x30e31c
00421a44  00 00 50 e3                                      cmp r0, #0
00421a48  09 00 00 0a                                      beq #0x421a74
00421a4c  00 00 a0 e3                                      mov r0, #0
00421a50  70 80 bd e8                                      pop {r4, r5, r6, pc}
00421a54  05 00 a0 e1                                      mov r0, r5
00421a58  e8 6e fe eb                                      bl #0x3bd600
00421a5c  01 00 a0 e3                                      mov r0, #1
00421a60  70 80 bd e8                                      pop {r4, r5, r6, pc}
00421a64  05 00 a0 e1                                      mov r0, r5
00421a68  68 6f fe eb                                      bl #0x3bd810
00421a6c  01 00 a0 e3                                      mov r0, #1
00421a70  70 80 bd e8                                      pop {r4, r5, r6, pc}
00421a74  05 00 a0 e1                                      mov r0, r5
00421a78  9e 6e fe eb                                      bl #0x3bd4f8
00421a7c  01 00 a0 e3                                      mov r0, #1
00421a80  70 80 bd e8                                      pop {r4, r5, r6, pc}
00421a84  05 00 a0 e1                                      mov r0, r5
00421a88  1e 6f fe eb                                      bl #0x3bd708
00421a8c  01 00 a0 e3                                      mov r0, #1
00421a90  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00421a94  cc 30 57 00 f4 37 00 00 f4 75 4a 00 e4 75 4a 00  .byte 0xcc, 0x30, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xf4, 0x75, 0x4a, 0x00, 0xe4, 0x75, 0x4a, 0x00
00421aa4  b4 e5 4b 00 bc 75 4a 00                          .byte 0xb4, 0xe5, 0x4b, 0x00, 0xbc, 0x75, 0x4a, 0x00

; FUNCTION 0x00421aac, declared_size=172, range_size=172, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase16FS_GetNumPotionsEPKcS1_Pv
; demangled: MenuBase::FS_GetNumPotions(char const*, char const*, void*)
; decoder-mode: arm
00421aac  94 30 9f e5                                      ldr r3, [pc, #0x94]
00421ab0  30 40 2d e9                                      push {r4, r5, lr}
00421ab4  02 50 a0 e1                                      mov r5, r2
00421ab8  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
00421abc  03 30 8f e0                                      add r3, pc, r3
00421ac0  1c d0 4d e2                                      sub sp, sp, #0x1c
00421ac4  02 00 93 e7                                      ldr r0, [r3, r2]
00421ac8  00 10 a0 e3                                      mov r1, #0
00421acc  01 20 a0 e3                                      mov r2, #1
00421ad0  40 00 90 e5                                      ldr r0, [r0, #0x40]
00421ad4  67 32 fd eb                                      bl #0x36e478
00421ad8  60 06 90 e5                                      ldr r0, [r0, #0x660]
00421adc  00 00 50 e3                                      cmp r0, #0
00421ae0  16 00 00 0a                                      beq #0x421b40
00421ae4  df 0f 80 e2                                      add r0, r0, #0x37c
00421ae8  e8 6a ff eb                                      bl #0x3fc690
00421aec  00 30 a0 e3                                      mov r3, #0
00421af0  04 30 cd e5                                      strb r3, [sp, #4]
00421af4  02 30 a0 e3                                      mov r3, #2
00421af8  05 30 cd e5                                      strb r3, [sp, #5]
00421afc  8b b4 fb eb                                      bl #0x30ed30
00421b00  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
00421b04  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00421b08  40 10 9f e5                                      ldr r1, [pc, #0x40]
00421b0c  40 20 9f e5                                      ldr r2, [pc, #0x40]
00421b10  04 00 95 e5                                      ldr r0, [r5, #4]
00421b14  08 c0 8d e5                                      str ip, [sp, #8]
00421b18  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00421b1c  04 40 8d e2                                      add r4, sp, #4
00421b20  01 10 8f e0                                      add r1, pc, r1
00421b24  02 20 8f e0                                      add r2, pc, r2
00421b28  04 30 a0 e1                                      mov r3, r4
00421b2c  08 c0 84 e5                                      str ip, [r4, #8]
00421b30  a7 26 0e eb                                      bl #0x7ab5d4
00421b34  04 00 a0 e1                                      mov r0, r4
00421b38  79 d5 0d eb                                      bl #0x797124
00421b3c  01 00 a0 e3                                      mov r0, #1
00421b40  1c d0 8d e2                                      add sp, sp, #0x1c
00421b44  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00421b48  d4 2f 57 00 f4 37 00 00 e0 16 4a 00 2c 74 4a 00  .byte 0xd4, 0x2f, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe0, 0x16, 0x4a, 0x00, 0x2c, 0x74, 0x4a, 0x00

; FUNCTION 0x00421b58, declared_size=160, range_size=160, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase12FS_GetOptionEPKcS1_Pv
; demangled: MenuBase::FS_GetOption(char const*, char const*, void*)
; decoder-mode: arm
00421b58  30 40 2d e9                                      push {r4, r5, lr}
00421b5c  84 30 9f e5                                      ldr r3, [pc, #0x84]
00421b60  00 00 51 e3                                      cmp r1, #0
00421b64  1c d0 4d e2                                      sub sp, sp, #0x1c
00421b68  03 30 8f e0                                      add r3, pc, r3
00421b6c  02 50 a0 e1                                      mov r5, r2
00421b70  01 00 a0 01                                      moveq r0, r1
00421b74  19 00 00 0a                                      beq #0x421be0
00421b78  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00421b7c  07 10 81 e2                                      add r1, r1, #7
00421b80  04 40 8d e2                                      add r4, sp, #4
00421b84  02 30 93 e7                                      ldr r3, [r3, r2]
00421b88  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
00421b8c  38 2e 01 eb                                      bl #0x46d474
00421b90  00 30 a0 e3                                      mov r3, #0
00421b94  04 30 cd e5                                      strb r3, [sp, #4]
00421b98  02 30 a0 e3                                      mov r3, #2
00421b9c  05 30 cd e5                                      strb r3, [sp, #5]
00421ba0  62 b4 fb eb                                      bl #0x30ed30
00421ba4  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
00421ba8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00421bac  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00421bb0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00421bb4  04 00 95 e5                                      ldr r0, [r5, #4]
00421bb8  08 c0 8d e5                                      str ip, [sp, #8]
00421bbc  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00421bc0  01 10 8f e0                                      add r1, pc, r1
00421bc4  02 20 8f e0                                      add r2, pc, r2
00421bc8  04 30 a0 e1                                      mov r3, r4
00421bcc  08 c0 84 e5                                      str ip, [r4, #8]
00421bd0  7f 26 0e eb                                      bl #0x7ab5d4
00421bd4  04 00 a0 e1                                      mov r0, r4
00421bd8  51 d5 0d eb                                      bl #0x797124
00421bdc  01 00 a0 e3                                      mov r0, #1
00421be0  1c d0 8d e2                                      add sp, sp, #0x1c
00421be4  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00421be8  28 2f 57 00 f4 37 00 00 40 16 4a 00 8c 73 4a 00  .byte 0x28, 0x2f, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x40, 0x16, 0x4a, 0x00, 0x8c, 0x73, 0x4a, 0x00

; FUNCTION 0x00421ce0, declared_size=212, range_size=212, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase11FS_IncSkillEPKcS1_Pv
; demangled: MenuBase::FS_IncSkill(char const*, char const*, void*)
; decoder-mode: arm
00421ce0  70 40 2d e9                                      push {r4, r5, r6, lr}
00421ce4  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00421ce8  00 40 51 e2                                      subs r4, r1, #0
00421cec  08 d0 4d e2                                      sub sp, sp, #8
00421cf0  02 50 a0 e1                                      mov r5, r2
00421cf4  03 30 8f e0                                      add r3, pc, r3
00421cf8  02 00 00 0a                                      beq #0x421d08
00421cfc  d0 20 d4 e1                                      ldrsb r2, [r4]
00421d00  00 00 52 e3                                      cmp r2, #0
00421d04  02 00 00 1a                                      bne #0x421d14
00421d08  00 00 a0 e3                                      mov r0, #0
00421d0c  08 d0 8d e2                                      add sp, sp, #8
00421d10  70 80 bd e8                                      pop {r4, r5, r6, pc}
00421d14  88 00 9f e5                                      ldr r0, [pc, #0x88]
00421d18  00 10 a0 e3                                      mov r1, #0
00421d1c  01 20 a0 e3                                      mov r2, #1
00421d20  00 30 93 e7                                      ldr r3, [r3, r0]
00421d24  40 00 93 e5                                      ldr r0, [r3, #0x40]
00421d28  d2 31 fd eb                                      bl #0x36e478
00421d2c  60 66 90 e5                                      ldr r6, [r0, #0x660]
00421d30  00 00 56 e3                                      cmp r6, #0
00421d34  17 00 00 0a                                      beq #0x421d98
00421d38  04 00 a0 e1                                      mov r0, r4
00421d3c  d4 b0 fb eb                                      bl #0x30e094
00421d40  00 20 a0 e3                                      mov r2, #0
00421d44  00 10 a0 e1                                      mov r1, r0
00421d48  06 00 a0 e1                                      mov r0, r6
00421d4c  c1 6b fe eb                                      bl #0x3bcc58
00421d50  04 00 a0 e1                                      mov r0, r4
00421d54  ce b0 fb eb                                      bl #0x30e094
00421d58  00 10 a0 e1                                      mov r1, r0
00421d5c  06 00 a0 e1                                      mov r0, r6
00421d60  5a 68 fe eb                                      bl #0x3bbed0
00421d64  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00421d68  04 40 8d e2                                      add r4, sp, #4
00421d6c  00 20 a0 e1                                      mov r2, r0
00421d70  01 10 8f e0                                      add r1, pc, r1
00421d74  04 00 a0 e1                                      mov r0, r4
00421d78  59 b3 fb eb                                      bl #0x30eae4
00421d7c  28 10 9f e5                                      ldr r1, [pc, #0x28]
00421d80  28 20 9f e5                                      ldr r2, [pc, #0x28]
00421d84  04 00 95 e5                                      ldr r0, [r5, #4]
00421d88  01 10 8f e0                                      add r1, pc, r1
00421d8c  02 20 8f e0                                      add r2, pc, r2
00421d90  04 30 a0 e1                                      mov r3, r4
00421d94  65 26 0e eb                                      bl #0x7ab730
00421d98  01 00 a0 e3                                      mov r0, #1
00421d9c  da ff ff ea                                      b #0x421d0c
; mapping-symbol data/literal pool
00421da0  9c 2d 57 00 f4 37 00 00 40 01 4a 00 78 14 4a 00  .byte 0x9c, 0x2d, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x40, 0x01, 0x4a, 0x00, 0x78, 0x14, 0x4a, 0x00
00421db0  c4 71 4a 00                                      .byte 0xc4, 0x71, 0x4a, 0x00

; FUNCTION 0x00421fe0, declared_size=108, range_size=108, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase6UpdateEv
; demangled: MenuBase::Update()
; decoder-mode: arm
00421fe0  70 40 2d e9                                      push {r4, r5, r6, lr}
00421fe4  4c 10 90 e5                                      ldr r1, [r0, #0x4c]
00421fe8  00 40 a0 e1                                      mov r4, r0
00421fec  04 50 90 e5                                      ldr r5, [r0, #4]
00421ff0  00 00 51 e3                                      cmp r1, #0
00421ff4  03 00 00 0a                                      beq #0x422008
00421ff8  48 00 90 e5                                      ldr r0, [r0, #0x48]
00421ffc  04 30 d0 e5                                      ldrb r3, [r0, #4]
00422000  00 00 53 e3                                      cmp r3, #0
00422004  06 00 00 0a                                      beq #0x422024
00422008  05 00 a0 e1                                      mov r0, r5
0042200c  70 17 0e eb                                      bl #0x7a7dd4
00422010  00 00 50 e3                                      cmp r0, #0
00422014  78 30 94 15                                      ldrne r3, [r4, #0x78]
00422018  01 30 83 12                                      addne r3, r3, #1
0042201c  78 30 84 15                                      strne r3, [r4, #0x78]
00422020  70 80 bd e8                                      pop {r4, r5, r6, pc}
00422024  00 10 90 e5                                      ldr r1, [r0]
00422028  01 10 41 e2                                      sub r1, r1, #1
0042202c  00 00 51 e3                                      cmp r1, #0
00422030  00 10 80 e5                                      str r1, [r0]
00422034  00 00 00 1a                                      bne #0x42203c
00422038  be c2 0c eb                                      bl #0x752b38
0042203c  00 10 a0 e3                                      mov r1, #0
00422040  48 10 84 e5                                      str r1, [r4, #0x48]
00422044  4c 10 84 e5                                      str r1, [r4, #0x4c]
00422048  ee ff ff ea                                      b #0x422008

; FUNCTION 0x0042204c, declared_size=84, range_size=84, mode=arm
; class-group: MenuBase
; alias: _ZNK8MenuBase21GetCurrentMenuContextEv
; demangled: MenuBase::GetCurrentMenuContext() const
; decoder-mode: arm
0042204c  10 40 2d e9                                      push {r4, lr}
00422050  00 40 a0 e1                                      mov r4, r0
00422054  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
00422058  00 00 50 e3                                      cmp r0, #0
0042205c  03 00 00 0a                                      beq #0x422070
00422060  48 30 94 e5                                      ldr r3, [r4, #0x48]
00422064  04 20 d3 e5                                      ldrb r2, [r3, #4]
00422068  00 00 52 e3                                      cmp r2, #0
0042206c  00 00 00 0a                                      beq #0x422074
00422070  10 80 bd e8                                      pop {r4, pc}
00422074  00 10 93 e5                                      ldr r1, [r3]
00422078  01 10 41 e2                                      sub r1, r1, #1
0042207c  00 00 51 e3                                      cmp r1, #0
00422080  00 10 83 e5                                      str r1, [r3]
00422084  01 00 00 1a                                      bne #0x422090
00422088  03 00 a0 e1                                      mov r0, r3
0042208c  a9 c2 0c eb                                      bl #0x752b38
00422090  00 00 a0 e3                                      mov r0, #0
00422094  4c 00 84 e5                                      str r0, [r4, #0x4c]
00422098  48 00 84 e5                                      str r0, [r4, #0x48]
0042209c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004220a0, declared_size=480, range_size=480, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase12FS_StartGameEPKcS1_Pv
; demangled: MenuBase::FS_StartGame(char const*, char const*, void*)
; decoder-mode: arm
004220a0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004220a4  b8 41 9f e5                                      ldr r4, [pc, #0x1b8]
004220a8  b8 71 9f e5                                      ldr r7, [pc, #0x1b8]
004220ac  6e df 4d e2                                      sub sp, sp, #0x1b8
004220b0  04 40 8f e0                                      add r4, pc, r4
004220b4  07 30 94 e7                                      ldr r3, [r4, r7]
004220b8  00 60 51 e2                                      subs r6, r1, #0
004220bc  02 a0 a0 e1                                      mov sl, r2
004220c0  00 30 93 e5                                      ldr r3, [r3]
004220c4  b4 31 8d e5                                      str r3, [sp, #0x1b4]
004220c8  5e 00 00 0a                                      beq #0x422248
004220cc  98 11 9f e5                                      ldr r1, [pc, #0x198]
004220d0  06 00 a0 e1                                      mov r0, r6
004220d4  01 10 8f e0                                      add r1, pc, r1
004220d8  8f b0 fb eb                                      bl #0x30e31c
004220dc  00 00 50 e3                                      cmp r0, #0
004220e0  58 00 00 1a                                      bne #0x422248
004220e4  84 81 9f e5                                      ldr r8, [pc, #0x184]
004220e8  08 30 94 e7                                      ldr r3, [r4, r8]
004220ec  4c 30 93 e5                                      ldr r3, [r3, #0x4c]
004220f0  08 90 93 e5                                      ldr sb, [r3, #8]
004220f4  01 00 79 e3                                      cmn sb, #1
004220f8  00 90 a0 03                                      moveq sb, #0
004220fc  08 90 83 05                                      streq sb, [r3, #8]
00422100  09 00 a0 e1                                      mov r0, sb
00422104  14 0b 01 eb                                      bl #0x464d5c
00422108  00 00 50 e3                                      cmp r0, #0
0042210c  50 00 00 1a                                      bne #0x422254
00422110  1c 50 8d e2                                      add r5, sp, #0x1c
00422114  09 10 a0 e1                                      mov r1, sb
00422118  01 20 a0 e3                                      mov r2, #1
0042211c  00 30 a0 e3                                      mov r3, #0
00422120  05 00 a0 e1                                      mov r0, r5
00422124  20 0d 01 eb                                      bl #0x4655ac
00422128  78 1e 00 eb                                      bl #0x429b10
0042212c  94 90 9a e5                                      ldr sb, [sl, #0x94]
00422130  64 31 90 e5                                      ldr r3, [r0, #0x164]
00422134  38 a1 9f e5                                      ldr sl, [pc, #0x138]
00422138  09 00 a0 e1                                      mov r0, sb
0042213c  50 30 8d e5                                      str r3, [sp, #0x50]
00422140  43 af fb eb                                      bl #0x30de54
00422144  09 10 a0 e1                                      mov r1, sb
00422148  00 20 89 e0                                      add r2, sb, r0
0042214c  18 00 85 e2                                      add r0, r5, #0x18
00422150  22 ba fb eb                                      bl #0x3109e0
00422154  01 30 a0 e3                                      mov r3, #1
00422158  05 00 a0 e1                                      mov r0, r5
0042215c  4c 30 8d e5                                      str r3, [sp, #0x4c]
00422160  77 15 01 eb                                      bl #0x467744
00422164  0a 20 94 e7                                      ldr r2, [r4, sl]
00422168  6e cf 8d e2                                      add ip, sp, #0x1b8
0042216c  99 34 a0 e3                                      mov r3, #0x99000000
00422170  00 20 92 e5                                      ldr r2, [r2]
00422174  05 00 a0 e1                                      mov r0, r5
00422178  10 10 82 e2                                      add r1, r2, #0x10
0042217c  14 20 82 e2                                      add r2, r2, #0x14
00422180  02 21 8c e0                                      add r2, ip, r2, lsl #2
00422184  01 11 8c e0                                      add r1, ip, r1, lsl #2
00422188  29 c0 a0 e3                                      mov ip, #0x29
0042218c  43 cb 82 e7                                      str ip, [r2, r3, asr #22]
00422190  00 20 a0 e3                                      mov r2, #0
00422194  43 2b 81 e7                                      str r2, [r1, r3, asr #22]
00422198  63 0a 01 eb                                      bl #0x464b2c
0042219c  00 00 56 e3                                      cmp r6, #0
004221a0  05 00 00 0a                                      beq #0x4221bc
004221a4  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
004221a8  06 00 a0 e1                                      mov r0, r6
004221ac  01 10 8f e0                                      add r1, pc, r1
004221b0  59 b0 fb eb                                      bl #0x30e31c
004221b4  00 00 50 e3                                      cmp r0, #0
004221b8  18 00 00 0a                                      beq #0x422220
004221bc  0a 30 94 e7                                      ldr r3, [r4, sl]
004221c0  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
004221c4  6e cf 8d e2                                      add ip, sp, #0x1b8
004221c8  00 30 93 e5                                      ldr r3, [r3]
004221cc  02 20 94 e7                                      ldr r2, [r4, r2]
004221d0  01 e0 a0 e3                                      mov lr, #1
004221d4  03 11 8c e0                                      add r1, ip, r3, lsl #2
004221d8  4c c1 11 e5                                      ldr ip, [r1, #-0x14c]
004221dc  00 10 92 e5                                      ldr r1, [r2]
004221e0  6e 2f 8d e2                                      add r2, sp, #0x1b8
004221e4  03 31 82 e0                                      add r3, r2, r3, lsl #2
004221e8  5c 21 13 e5                                      ldr r2, [r3, #-0x15c]
004221ec  48 30 a0 e3                                      mov r3, #0x48
004221f0  93 1c 23 e0                                      mla r3, r3, ip, r1
004221f4  08 00 94 e7                                      ldr r0, [r4, r8]
004221f8  20 10 93 e5                                      ldr r1, [r3, #0x20]
004221fc  00 c0 a0 e3                                      mov ip, #0
00422200  20 30 9d e5                                      ldr r3, [sp, #0x20]
00422204  04 e0 8d e5                                      str lr, [sp, #4]
00422208  14 c0 8d e5                                      str ip, [sp, #0x14]
0042220c  00 c0 8d e5                                      str ip, [sp]
00422210  08 c0 8d e5                                      str ip, [sp, #8]
00422214  0c c0 8d e5                                      str ip, [sp, #0xc]
00422218  10 c0 8d e5                                      str ip, [sp, #0x10]
0042221c  e9 26 fc eb                                      bl #0x32bdc8
00422220  05 00 a0 e1                                      mov r0, r5
00422224  58 05 01 eb                                      bl #0x46378c
00422228  07 30 94 e7                                      ldr r3, [r4, r7]
0042222c  b4 21 9d e5                                      ldr r2, [sp, #0x1b4]
00422230  01 00 a0 e3                                      mov r0, #1
00422234  00 30 93 e5                                      ldr r3, [r3]
00422238  03 00 52 e1                                      cmp r2, r3
0042223c  07 00 00 1a                                      bne #0x422260
00422240  6e df 8d e2                                      add sp, sp, #0x1b8
00422244  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00422248  04 00 9a e5                                      ldr r0, [sl, #4]
0042224c  33 26 0e eb                                      bl #0x7abb20
00422250  a3 ff ff ea                                      b #0x4220e4
00422254  09 00 a0 e1                                      mov r0, sb
00422258  90 0a 01 eb                                      bl #0x464ca0
0042225c  ab ff ff ea                                      b #0x422110
00422260  2a b0 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00422264  e0 29 57 00 ac 40 00 00 94 c4 49 00 f4 37 00 00  .byte 0xe0, 0x29, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0x94, 0xc4, 0x49, 0x00, 0xf4, 0x37, 0x00, 0x00
00422274  9c 1a 00 00 bc c3 49 00 74 08 00 00              .byte 0x9c, 0x1a, 0x00, 0x00, 0xbc, 0xc3, 0x49, 0x00, 0x74, 0x08, 0x00, 0x00

; FUNCTION 0x00422280, declared_size=88, range_size=88, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase16FS_SetPlayerNameEPKcS1_Pv
; demangled: MenuBase::FS_SetPlayerName(char const*, char const*, void*)
; decoder-mode: arm
00422280  70 40 2d e9                                      push {r4, r5, r6, lr}
00422284  00 40 51 e2                                      subs r4, r1, #0
00422288  80 50 82 e2                                      add r5, r2, #0x80
0042228c  07 00 00 0a                                      beq #0x4222b0
00422290  04 00 a0 e1                                      mov r0, r4
00422294  ee ae fb eb                                      bl #0x30de54
00422298  04 10 a0 e1                                      mov r1, r4
0042229c  00 20 84 e0                                      add r2, r4, r0
004222a0  05 00 a0 e1                                      mov r0, r5
004222a4  cd b9 fb eb                                      bl #0x3109e0
004222a8  01 00 a0 e3                                      mov r0, #1
004222ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
004222b0  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
004222b4  05 00 a0 e1                                      mov r0, r5
004222b8  02 20 8f e0                                      add r2, pc, r2
004222bc  02 40 a0 e1                                      mov r4, r2
004222c0  04 10 a0 e1                                      mov r1, r4
004222c4  04 20 82 e2                                      add r2, r2, #4
004222c8  c4 b9 fb eb                                      bl #0x3109e0
004222cc  01 00 a0 e3                                      mov r0, #1
004222d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004222d4  48 6d 4a 00                                      .byte 0x48, 0x6d, 0x4a, 0x00

; FUNCTION 0x004222d8, declared_size=44, range_size=44, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase16FS_SetDifficultyEPKcS1_Pv
; demangled: MenuBase::FS_SetDifficulty(char const*, char const*, void*)
; decoder-mode: arm
004222d8  70 40 2d e9                                      push {r4, r5, r6, lr}
004222dc  01 00 a0 e1                                      mov r0, r1
004222e0  01 40 a0 e1                                      mov r4, r1
004222e4  02 50 a0 e1                                      mov r5, r2
004222e8  d9 ae fb eb                                      bl #0x30de54
004222ec  04 10 a0 e1                                      mov r1, r4
004222f0  00 20 84 e0                                      add r2, r4, r0
004222f4  9c 00 85 e2                                      add r0, r5, #0x9c
004222f8  b8 b9 fb eb                                      bl #0x3109e0
004222fc  01 00 a0 e3                                      mov r0, #1
00422300  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00422304, declared_size=184, range_size=184, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase12FS_StopMusicEPKcS1_Pv
; demangled: MenuBase::FS_StopMusic(char const*, char const*, void*)
; decoder-mode: arm
00422304  70 40 2d e9                                      push {r4, r5, r6, lr}
00422308  df 29 00 eb                                      bl #0x42ca8c
0042230c  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
00422310  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
00422314  01 10 8f e0                                      add r1, pc, r1
00422318  b4 2b 00 eb                                      bl #0x42d1f0
0042231c  00 50 50 e2                                      subs r5, r0, #0
00422320  04 40 8f e0                                      add r4, pc, r4
00422324  0e 00 00 0a                                      beq #0x422364
00422328  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
0042232c  00 00 51 e3                                      cmp r1, #0
00422330  0b 00 00 0a                                      beq #0x422364
00422334  48 00 95 e5                                      ldr r0, [r5, #0x48]
00422338  04 30 d0 e5                                      ldrb r3, [r0, #4]
0042233c  00 00 53 e3                                      cmp r3, #0
00422340  0e 00 00 0a                                      beq #0x422380
00422344  04 00 95 e5                                      ldr r0, [r5, #4]
00422348  98 2e 0e eb                                      bl #0x7addb0
0042234c  00 10 50 e2                                      subs r1, r0, #0
00422350  03 00 00 0a                                      beq #0x422364
00422354  04 00 95 e5                                      ldr r0, [r5, #4]
00422358  fb 16 0e eb                                      bl #0x7a7f4c
0042235c  00 00 50 e3                                      cmp r0, #0
00422360  10 00 00 1a                                      bne #0x4223a8
00422364  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00422368  00 10 a0 e3                                      mov r1, #0
0042236c  03 30 94 e7                                      ldr r3, [r4, r3]
00422370  00 00 93 e5                                      ldr r0, [r3]
00422374  89 1f fd eb                                      bl #0x36a1a0
00422378  01 00 a0 e3                                      mov r0, #1
0042237c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00422380  00 10 90 e5                                      ldr r1, [r0]
00422384  01 10 41 e2                                      sub r1, r1, #1
00422388  00 00 51 e3                                      cmp r1, #0
0042238c  00 10 80 e5                                      str r1, [r0]
00422390  00 00 00 1a                                      bne #0x422398
00422394  e7 c1 0c eb                                      bl #0x752b38
00422398  00 30 a0 e3                                      mov r3, #0
0042239c  4c 30 85 e5                                      str r3, [r5, #0x4c]
004223a0  48 30 85 e5                                      str r3, [r5, #0x48]
004223a4  ee ff ff ea                                      b #0x422364
004223a8  00 00 a0 e3                                      mov r0, #0
004223ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004223b0  bc cd 49 00 70 27 57 00 a4 0d 00 00              .byte 0xbc, 0xcd, 0x49, 0x00, 0x70, 0x27, 0x57, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x004223bc, declared_size=112, range_size=112, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase10SetVisibleEb
; demangled: MenuBase::SetVisible(bool)
; decoder-mode: arm
004223bc  70 40 2d e9                                      push {r4, r5, r6, lr}
004223c0  00 30 90 e5                                      ldr r3, [r0]
004223c4  00 40 a0 e1                                      mov r4, r0
004223c8  01 50 a0 e1                                      mov r5, r1
004223cc  0f e0 a0 e1                                      mov lr, pc
004223d0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
004223d4  00 00 50 e3                                      cmp r0, #0
004223d8  08 00 00 0a                                      beq #0x422400
004223dc  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
004223e0  00 00 53 e3                                      cmp r3, #0
004223e4  03 00 00 0a                                      beq #0x4223f8
004223e8  48 00 94 e5                                      ldr r0, [r4, #0x48]
004223ec  04 20 d0 e5                                      ldrb r2, [r0, #4]
004223f0  00 00 52 e3                                      cmp r2, #0
004223f4  02 00 00 0a                                      beq #0x422404
004223f8  9b 50 c3 e5                                      strb r5, [r3, #0x9b]
004223fc  74 50 c4 e5                                      strb r5, [r4, #0x74]
00422400  70 80 bd e8                                      pop {r4, r5, r6, pc}
00422404  00 10 90 e5                                      ldr r1, [r0]
00422408  01 10 41 e2                                      sub r1, r1, #1
0042240c  00 00 51 e3                                      cmp r1, #0
00422410  00 10 80 e5                                      str r1, [r0]
00422414  00 00 00 1a                                      bne #0x42241c
00422418  c6 c1 0c eb                                      bl #0x752b38
0042241c  00 30 a0 e3                                      mov r3, #0
00422420  48 30 84 e5                                      str r3, [r4, #0x48]
00422424  4c 30 84 e5                                      str r3, [r4, #0x4c]
00422428  f2 ff ff ea                                      b #0x4223f8

; FUNCTION 0x00422620, declared_size=400, range_size=400, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase18RegisterSlideEventEv
; demangled: MenuBase::RegisterSlideEvent()
; decoder-mode: arm
00422620  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00422624  00 40 a0 e1                                      mov r4, r0
00422628  0c d0 4d e2                                      sub sp, sp, #0xc
0042262c  b1 f3 ff eb                                      bl #0x41f4f8
00422630  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00422634  00 00 51 e3                                      cmp r1, #0
00422638  23 00 00 0a                                      beq #0x4226cc
0042263c  48 00 94 e5                                      ldr r0, [r4, #0x48]
00422640  04 30 d0 e5                                      ldrb r3, [r0, #4]
00422644  00 00 53 e3                                      cmp r3, #0
00422648  47 00 00 0a                                      beq #0x42276c
0042264c  58 21 9f e5                                      ldr r2, [pc, #0x158]
00422650  00 30 a0 e3                                      mov r3, #0
00422654  04 00 94 e5                                      ldr r0, [r4, #4]
00422658  02 20 8f e0                                      add r2, pc, r2
0042265c  69 19 0e eb                                      bl #0x7a8c08
00422660  04 30 90 e5                                      ldr r3, [r0, #4]
00422664  00 70 a0 e1                                      mov r7, r0
00422668  00 00 53 e3                                      cmp r3, #0
0042266c  16 00 00 da                                      ble #0x4226cc
00422670  68 90 84 e2                                      add sb, r4, #0x68
00422674  00 50 a0 e3                                      mov r5, #0
00422678  04 b0 8d e2                                      add fp, sp, #4
0042267c  00 30 97 e5                                      ldr r3, [r7]
00422680  00 10 a0 e3                                      mov r1, #0
00422684  2c 00 a0 e3                                      mov r0, #0x2c
00422688  05 61 93 e7                                      ldr r6, [r3, r5, lsl #2]
0042268c  b7 b7 fb eb                                      bl #0x310570
00422690  06 10 a0 e1                                      mov r1, r6
00422694  00 80 a0 e1                                      mov r8, r0
00422698  09 f4 ff eb                                      bl #0x41f6c4
0042269c  64 60 94 e5                                      ldr r6, [r4, #0x64]
004226a0  68 30 94 e5                                      ldr r3, [r4, #0x68]
004226a4  03 00 56 e1                                      cmp r6, r3
004226a8  09 00 00 0a                                      beq #0x4226d4
004226ac  00 80 86 e5                                      str r8, [r6]
004226b0  64 30 94 e5                                      ldr r3, [r4, #0x64]
004226b4  04 30 83 e2                                      add r3, r3, #4
004226b8  64 30 84 e5                                      str r3, [r4, #0x64]
004226bc  04 30 97 e5                                      ldr r3, [r7, #4]
004226c0  01 50 85 e2                                      add r5, r5, #1
004226c4  03 00 55 e1                                      cmp r5, r3
004226c8  eb ff ff ba                                      blt #0x42267c
004226cc  0c d0 8d e2                                      add sp, sp, #0xc
004226d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004226d4  60 20 94 e5                                      ldr r2, [r4, #0x60]
004226d8  06 20 62 e0                                      rsb r2, r2, r6
004226dc  42 21 a0 e1                                      asr r2, r2, #2
004226e0  01 00 52 e3                                      cmp r2, #1
004226e4  02 30 82 20                                      addhs r3, r2, r2
004226e8  01 30 82 32                                      addlo r3, r2, #1
004226ec  07 01 73 e3                                      cmn r3, #0xc0000001
004226f0  1a 00 00 9a                                      bls #0x422760
004226f4  03 31 e0 e3                                      mvn r3, #0xc0000000
004226f8  03 10 a0 e1                                      mov r1, r3
004226fc  09 00 a0 e1                                      mov r0, sb
00422700  0b 20 a0 e1                                      mov r2, fp
00422704  04 30 8d e5                                      str r3, [sp, #4]
00422708  63 ff ff eb                                      bl #0x42249c
0042270c  60 10 94 e5                                      ldr r1, [r4, #0x60]
00422710  00 a0 a0 e1                                      mov sl, r0
00422714  01 60 56 e0                                      subs r6, r6, r1
00422718  00 60 a0 01                                      moveq r6, r0
0042271c  1e 00 00 1a                                      bne #0x42279c
00422720  04 80 86 e4                                      str r8, [r6], #4
00422724  60 00 94 e5                                      ldr r0, [r4, #0x60]
00422728  68 10 94 e5                                      ldr r1, [r4, #0x68]
0042272c  00 00 50 e3                                      cmp r0, #0
00422730  04 00 00 0a                                      beq #0x422748
00422734  01 10 60 e0                                      rsb r1, r0, r1
00422738  03 10 c1 e3                                      bic r1, r1, #3
0042273c  80 00 51 e3                                      cmp r1, #0x80
00422740  13 00 00 8a                                      bhi #0x422794
00422744  ed 99 0b eb                                      bl #0x708f00
00422748  04 30 9d e5                                      ldr r3, [sp, #4]
0042274c  60 a0 84 e5                                      str sl, [r4, #0x60]
00422750  64 60 84 e5                                      str r6, [r4, #0x64]
00422754  03 a1 8a e0                                      add sl, sl, r3, lsl #2
00422758  68 a0 84 e5                                      str sl, [r4, #0x68]
0042275c  d6 ff ff ea                                      b #0x4226bc
00422760  03 00 52 e1                                      cmp r2, r3
00422764  e3 ff ff 9a                                      bls #0x4226f8
00422768  e1 ff ff ea                                      b #0x4226f4
0042276c  00 10 90 e5                                      ldr r1, [r0]
00422770  01 10 41 e2                                      sub r1, r1, #1
00422774  00 00 51 e3                                      cmp r1, #0
00422778  00 10 80 e5                                      str r1, [r0]
0042277c  00 00 00 1a                                      bne #0x422784
00422780  ec c0 0c eb                                      bl #0x752b38
00422784  00 30 a0 e3                                      mov r3, #0
00422788  4c 30 84 e5                                      str r3, [r4, #0x4c]
0042278c  48 30 84 e5                                      str r3, [r4, #0x48]
00422790  cd ff ff ea                                      b #0x4226cc
00422794  29 b7 fb eb                                      bl #0x310440
00422798  ea ff ff ea                                      b #0x422748
0042279c  06 20 a0 e1                                      mov r2, r6
004227a0  e4 ad fb eb                                      bl #0x30df38
004227a4  06 60 80 e0                                      add r6, r0, r6
004227a8  dc ff ff ea                                      b #0x422720
; mapping-symbol data/literal pool
004227ac  b0 69 4a 00                                      .byte 0xb0, 0x69, 0x4a, 0x00

; FUNCTION 0x00422824, declared_size=308, range_size=308, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBaseD1Ev
; demangled: MenuBase::~MenuBase()
; decoder-mode: arm
00422824  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00422828  1c 71 9f e5                                      ldr r7, [pc, #0x11c]
0042282c  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
00422830  00 50 a0 e1                                      mov r5, r0
00422834  07 70 8f e0                                      add r7, pc, r7
00422838  03 30 97 e7                                      ldr r3, [r7, r3]
0042283c  08 30 83 e2                                      add r3, r3, #8
00422840  00 30 80 e5                                      str r3, [r0]
00422844  2b f3 ff eb                                      bl #0x41f4f8
00422848  5c 40 95 e5                                      ldr r4, [r5, #0x5c]
0042284c  00 00 54 e3                                      cmp r4, #0
00422850  05 00 00 0a                                      beq #0x42286c
00422854  04 00 a0 e1                                      mov r0, r4
00422858  09 bf ff eb                                      bl #0x412484
0042285c  04 00 a0 e1                                      mov r0, r4
00422860  f6 b6 fb eb                                      bl #0x310440
00422864  00 30 a0 e3                                      mov r3, #0
00422868  5c 30 85 e5                                      str r3, [r5, #0x5c]
0042286c  b8 00 85 e2                                      add r0, r5, #0xb8
00422870  5a ff ff eb                                      bl #0x4225e0
00422874  9c 00 85 e2                                      add r0, r5, #0x9c
00422878  75 d6 fb eb                                      bl #0x318254
0042287c  80 00 85 e2                                      add r0, r5, #0x80
00422880  73 d6 fb eb                                      bl #0x318254
00422884  6c 00 95 e5                                      ldr r0, [r5, #0x6c]
00422888  6c 60 85 e2                                      add r6, r5, #0x6c
0042288c  06 00 50 e1                                      cmp r0, r6
00422890  01 00 00 1a                                      bne #0x42289c
00422894  06 00 00 ea                                      b #0x4228b4
00422898  04 00 a0 e1                                      mov r0, r4
0042289c  00 40 90 e5                                      ldr r4, [r0]
004228a0  14 10 a0 e3                                      mov r1, #0x14
004228a4  95 99 0b eb                                      bl #0x708f00
004228a8  06 00 54 e1                                      cmp r4, r6
004228ac  f9 ff ff 1a                                      bne #0x422898
004228b0  06 00 a0 e1                                      mov r0, r6
004228b4  6c 00 85 e5                                      str r0, [r5, #0x6c]
004228b8  04 00 86 e5                                      str r0, [r6, #4]
004228bc  60 00 95 e5                                      ldr r0, [r5, #0x60]
004228c0  60 30 85 e2                                      add r3, r5, #0x60
004228c4  00 00 50 e3                                      cmp r0, #0
004228c8  05 00 00 0a                                      beq #0x4228e4
004228cc  08 10 93 e5                                      ldr r1, [r3, #8]
004228d0  01 10 60 e0                                      rsb r1, r0, r1
004228d4  03 10 c1 e3                                      bic r1, r1, #3
004228d8  80 00 51 e3                                      cmp r1, #0x80
004228dc  18 00 00 8a                                      bhi #0x422944
004228e0  86 99 0b eb                                      bl #0x708f00
004228e4  68 30 9f e5                                      ldr r3, [pc, #0x68]
004228e8  50 00 95 e5                                      ldr r0, [r5, #0x50]
004228ec  03 30 97 e7                                      ldr r3, [r7, r3]
004228f0  00 00 50 e3                                      cmp r0, #0
004228f4  08 30 83 e2                                      add r3, r3, #8
004228f8  00 30 85 e5                                      str r3, [r5]
004228fc  05 00 00 0a                                      beq #0x422918
00422900  00 10 90 e5                                      ldr r1, [r0]
00422904  01 10 41 e2                                      sub r1, r1, #1
00422908  00 00 51 e3                                      cmp r1, #0
0042290c  00 10 80 e5                                      str r1, [r0]
00422910  00 00 00 1a                                      bne #0x422918
00422914  87 c0 0c eb                                      bl #0x752b38
00422918  48 00 95 e5                                      ldr r0, [r5, #0x48]
0042291c  00 00 50 e3                                      cmp r0, #0
00422920  05 00 00 0a                                      beq #0x42293c
00422924  00 10 90 e5                                      ldr r1, [r0]
00422928  01 10 41 e2                                      sub r1, r1, #1
0042292c  00 00 51 e3                                      cmp r1, #0
00422930  00 10 80 e5                                      str r1, [r0]
00422934  00 00 00 1a                                      bne #0x42293c
00422938  7e c0 0c eb                                      bl #0x752b38
0042293c  05 00 a0 e1                                      mov r0, r5
00422940  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00422944  bd b6 fb eb                                      bl #0x310440
00422948  e5 ff ff ea                                      b #0x4228e4
; mapping-symbol data/literal pool
0042294c  5c 22 57 00 1c 4a 00 00 30 17 00 00              .byte 0x5c, 0x22, 0x57, 0x00, 0x1c, 0x4a, 0x00, 0x00, 0x30, 0x17, 0x00, 0x00

; FUNCTION 0x00422958, declared_size=28, range_size=28, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBaseD0Ev
; demangled: MenuBase::~MenuBase()
; decoder-mode: arm
00422958  10 40 2d e9                                      push {r4, lr}
0042295c  00 40 a0 e1                                      mov r4, r0
00422960  af ff ff eb                                      bl #0x422824
00422964  04 00 a0 e1                                      mov r0, r4
00422968  b4 b6 fb eb                                      bl #0x310440
0042296c  04 00 a0 e1                                      mov r0, r4
00422970  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00422974, declared_size=308, range_size=308, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBaseD2Ev
; demangled: MenuBase::~MenuBase()
; decoder-mode: arm
00422974  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00422978  1c 71 9f e5                                      ldr r7, [pc, #0x11c]
0042297c  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
00422980  00 50 a0 e1                                      mov r5, r0
00422984  07 70 8f e0                                      add r7, pc, r7
00422988  03 30 97 e7                                      ldr r3, [r7, r3]
0042298c  08 30 83 e2                                      add r3, r3, #8
00422990  00 30 80 e5                                      str r3, [r0]
00422994  d7 f2 ff eb                                      bl #0x41f4f8
00422998  5c 40 95 e5                                      ldr r4, [r5, #0x5c]
0042299c  00 00 54 e3                                      cmp r4, #0
004229a0  05 00 00 0a                                      beq #0x4229bc
004229a4  04 00 a0 e1                                      mov r0, r4
004229a8  b5 be ff eb                                      bl #0x412484
004229ac  04 00 a0 e1                                      mov r0, r4
004229b0  a2 b6 fb eb                                      bl #0x310440
004229b4  00 30 a0 e3                                      mov r3, #0
004229b8  5c 30 85 e5                                      str r3, [r5, #0x5c]
004229bc  b8 00 85 e2                                      add r0, r5, #0xb8
004229c0  06 ff ff eb                                      bl #0x4225e0
004229c4  9c 00 85 e2                                      add r0, r5, #0x9c
004229c8  21 d6 fb eb                                      bl #0x318254
004229cc  80 00 85 e2                                      add r0, r5, #0x80
004229d0  1f d6 fb eb                                      bl #0x318254
004229d4  6c 00 95 e5                                      ldr r0, [r5, #0x6c]
004229d8  6c 60 85 e2                                      add r6, r5, #0x6c
004229dc  06 00 50 e1                                      cmp r0, r6
004229e0  01 00 00 1a                                      bne #0x4229ec
004229e4  06 00 00 ea                                      b #0x422a04
004229e8  04 00 a0 e1                                      mov r0, r4
004229ec  00 40 90 e5                                      ldr r4, [r0]
004229f0  14 10 a0 e3                                      mov r1, #0x14
004229f4  41 99 0b eb                                      bl #0x708f00
004229f8  06 00 54 e1                                      cmp r4, r6
004229fc  f9 ff ff 1a                                      bne #0x4229e8
00422a00  06 00 a0 e1                                      mov r0, r6
00422a04  6c 00 85 e5                                      str r0, [r5, #0x6c]
00422a08  04 00 86 e5                                      str r0, [r6, #4]
00422a0c  60 00 95 e5                                      ldr r0, [r5, #0x60]
00422a10  60 30 85 e2                                      add r3, r5, #0x60
00422a14  00 00 50 e3                                      cmp r0, #0
00422a18  05 00 00 0a                                      beq #0x422a34
00422a1c  08 10 93 e5                                      ldr r1, [r3, #8]
00422a20  01 10 60 e0                                      rsb r1, r0, r1
00422a24  03 10 c1 e3                                      bic r1, r1, #3
00422a28  80 00 51 e3                                      cmp r1, #0x80
00422a2c  18 00 00 8a                                      bhi #0x422a94
00422a30  32 99 0b eb                                      bl #0x708f00
00422a34  68 30 9f e5                                      ldr r3, [pc, #0x68]
00422a38  50 00 95 e5                                      ldr r0, [r5, #0x50]
00422a3c  03 30 97 e7                                      ldr r3, [r7, r3]
00422a40  00 00 50 e3                                      cmp r0, #0
00422a44  08 30 83 e2                                      add r3, r3, #8
00422a48  00 30 85 e5                                      str r3, [r5]
00422a4c  05 00 00 0a                                      beq #0x422a68
00422a50  00 10 90 e5                                      ldr r1, [r0]
00422a54  01 10 41 e2                                      sub r1, r1, #1
00422a58  00 00 51 e3                                      cmp r1, #0
00422a5c  00 10 80 e5                                      str r1, [r0]
00422a60  00 00 00 1a                                      bne #0x422a68
00422a64  33 c0 0c eb                                      bl #0x752b38
00422a68  48 00 95 e5                                      ldr r0, [r5, #0x48]
00422a6c  00 00 50 e3                                      cmp r0, #0
00422a70  05 00 00 0a                                      beq #0x422a8c
00422a74  00 10 90 e5                                      ldr r1, [r0]
00422a78  01 10 41 e2                                      sub r1, r1, #1
00422a7c  00 00 51 e3                                      cmp r1, #0
00422a80  00 10 80 e5                                      str r1, [r0]
00422a84  00 00 00 1a                                      bne #0x422a8c
00422a88  2a c0 0c eb                                      bl #0x752b38
00422a8c  05 00 a0 e1                                      mov r0, r5
00422a90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00422a94  69 b6 fb eb                                      bl #0x310440
00422a98  e5 ff ff ea                                      b #0x422a34
; mapping-symbol data/literal pool
00422a9c  0c 21 57 00 1c 4a 00 00 30 17 00 00              .byte 0x0c, 0x21, 0x57, 0x00, 0x1c, 0x4a, 0x00, 0x00, 0x30, 0x17, 0x00, 0x00

; FUNCTION 0x00422d10, declared_size=904, range_size=904, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase19ProcessLocalizationEv
; demangled: MenuBase::ProcessLocalization()
; decoder-mode: arm
00422d10  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00422d14  50 13 9f e5                                      ldr r1, [pc, #0x350]
00422d18  50 23 9f e5                                      ldr r2, [pc, #0x350]
00422d1c  9d df 4d e2                                      sub sp, sp, #0x274
00422d20  01 10 8f e0                                      add r1, pc, r1
00422d24  02 30 91 e7                                      ldr r3, [r1, r2]
00422d28  18 10 8d e5                                      str r1, [sp, #0x18]
00422d2c  2c 20 8d e5                                      str r2, [sp, #0x2c]
00422d30  14 00 8d e5                                      str r0, [sp, #0x14]
00422d34  4c 20 90 e5                                      ldr r2, [r0, #0x4c]
00422d38  00 30 93 e5                                      ldr r3, [r3]
00422d3c  00 00 52 e3                                      cmp r2, #0
00422d40  6c 32 8d e5                                      str r3, [sp, #0x26c]
00422d44  ba 00 00 0a                                      beq #0x423034
00422d48  48 00 90 e5                                      ldr r0, [r0, #0x48]
00422d4c  04 30 d0 e5                                      ldrb r3, [r0, #4]
00422d50  00 00 53 e3                                      cmp r3, #0
00422d54  ac 00 00 0a                                      beq #0x42300c
00422d58  18 30 9d e5                                      ldr r3, [sp, #0x18]
00422d5c  10 13 9f e5                                      ldr r1, [pc, #0x310]
00422d60  14 20 9d e5                                      ldr r2, [sp, #0x14]
00422d64  95 4f 8d e2                                      add r4, sp, #0x254
00422d68  01 50 93 e7                                      ldr r5, [r3, r1]
00422d6c  1c 10 8d e5                                      str r1, [sp, #0x1c]
00422d70  08 b0 82 e2                                      add fp, r2, #8
00422d74  05 00 a0 e1                                      mov r0, r5
00422d78  c2 52 fc eb                                      bl #0x337888
00422d7c  f4 12 9f e5                                      ldr r1, [pc, #0x2f4]
00422d80  38 20 8d e2                                      add r2, sp, #0x38
00422d84  04 00 a0 e1                                      mov r0, r4
00422d88  01 10 8f e0                                      add r1, pc, r1
00422d8c  d6 c4 fb eb                                      bl #0x3140ec
00422d90  04 10 a0 e1                                      mov r1, r4
00422d94  05 00 a0 e1                                      mov r0, r5
00422d98  3a 53 fc eb                                      bl #0x337a88
00422d9c  04 00 a0 e1                                      mov r0, r4
00422da0  2b d5 fb eb                                      bl #0x318254
00422da4  d0 32 9f e5                                      ldr r3, [pc, #0x2d0]
00422da8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00422dac  00 60 a0 e3                                      mov r6, #0
00422db0  03 30 9c e7                                      ldr r3, [ip, r3]
00422db4  34 40 93 e5                                      ldr r4, [r3, #0x34]
00422db8  c0 32 9f e5                                      ldr r3, [pc, #0x2c0]
00422dbc  03 30 8f e0                                      add r3, pc, r3
00422dc0  10 30 8d e5                                      str r3, [sp, #0x10]
00422dc4  b8 32 9f e5                                      ldr r3, [pc, #0x2b8]
00422dc8  03 30 8f e0                                      add r3, pc, r3
00422dcc  0c 30 8d e5                                      str r3, [sp, #0xc]
00422dd0  b0 32 9f e5                                      ldr r3, [pc, #0x2b0]
00422dd4  03 30 8f e0                                      add r3, pc, r3
00422dd8  20 30 8d e5                                      str r3, [sp, #0x20]
00422ddc  a8 32 9f e5                                      ldr r3, [pc, #0x2a8]
00422de0  03 30 8f e0                                      add r3, pc, r3
00422de4  24 30 8d e5                                      str r3, [sp, #0x24]
00422de8  04 00 00 ea                                      b #0x422e00
00422dec  13 00 56 e3                                      cmp r6, #0x13
00422df0  05 00 00 0a                                      beq #0x422e0c
00422df4  01 60 86 e2                                      add r6, r6, #1
00422df8  25 00 56 e3                                      cmp r6, #0x25
00422dfc  95 00 00 0a                                      beq #0x423058
00422e00  1c 00 56 e3                                      cmp r6, #0x1c
00422e04  14 00 56 13                                      cmpne r6, #0x14
00422e08  f7 ff ff 1a                                      bne #0x422dec
00422e0c  04 00 a0 e1                                      mov r0, r4
00422e10  e6 91 03 eb                                      bl #0x5075b0
00422e14  06 10 a0 e1                                      mov r1, r6
00422e18  00 30 a0 e1                                      mov r3, r0
00422e1c  00 20 a0 e3                                      mov r2, #0
00422e20  04 00 a0 e1                                      mov r0, r4
00422e24  a6 96 03 eb                                      bl #0x5088c4
00422e28  14 20 9d e5                                      ldr r2, [sp, #0x14]
00422e2c  4c 10 92 e5                                      ldr r1, [r2, #0x4c]
00422e30  04 50 92 e5                                      ldr r5, [r2, #4]
00422e34  00 00 51 e3                                      cmp r1, #0
00422e38  03 00 00 0a                                      beq #0x422e4c
00422e3c  48 00 92 e5                                      ldr r0, [r2, #0x48]
00422e40  04 30 d0 e5                                      ldrb r3, [r0, #4]
00422e44  00 00 53 e3                                      cmp r3, #0
00422e48  64 00 00 0a                                      beq #0x422fe0
00422e4c  05 00 a0 e1                                      mov r0, r5
00422e50  24 14 0e eb                                      bl #0x7a7ee8
00422e54  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00422e58  30 12 9f e5                                      ldr r1, [pc, #0x230]
00422e5c  00 50 a0 e3                                      mov r5, #0
00422e60  04 00 9c e5                                      ldr r0, [ip, #4]
00422e64  28 10 8d e5                                      str r1, [sp, #0x28]
00422e68  c9 2b 0e eb                                      bl #0x7add94
00422e6c  00 90 a0 e1                                      mov sb, r0
00422e70  04 00 a0 e1                                      mov r0, r4
00422e74  cd 91 03 eb                                      bl #0x5075b0
00422e78  06 10 a0 e1                                      mov r1, r6
00422e7c  00 20 a0 e1                                      mov r2, r0
00422e80  04 00 a0 e1                                      mov r0, r4
00422e84  b1 91 03 eb                                      bl #0x507550
00422e88  00 00 55 e1                                      cmp r5, r0
00422e8c  d8 ff ff aa                                      bge #0x422df4
00422e90  04 00 a0 e1                                      mov r0, r4
00422e94  c5 91 03 eb                                      bl #0x5075b0
00422e98  06 10 a0 e1                                      mov r1, r6
00422e9c  00 30 a0 e1                                      mov r3, r0
00422ea0  05 20 a0 e1                                      mov r2, r5
00422ea4  04 00 a0 e1                                      mov r0, r4
00422ea8  85 96 03 eb                                      bl #0x5088c4
00422eac  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00422eb0  3c 70 8d e2                                      add r7, sp, #0x3c
00422eb4  00 30 a0 e1                                      mov r3, r0
00422eb8  0b 20 a0 e1                                      mov r2, fp
00422ebc  10 10 9d e5                                      ldr r1, [sp, #0x10]
00422ec0  00 80 a0 e1                                      mov r8, r0
00422ec4  07 00 a0 e1                                      mov r0, r7
00422ec8  00 c0 8d e5                                      str ip, [sp]
00422ecc  04 af fb eb                                      bl #0x30eae4
00422ed0  09 00 a0 e1                                      mov r0, sb
00422ed4  07 10 a0 e1                                      mov r1, r7
00422ed8  c6 1f 0e eb                                      bl #0x7aadf8
00422edc  00 a0 50 e2                                      subs sl, r0, #0
00422ee0  24 00 00 0a                                      beq #0x422f78
00422ee4  00 30 9a e5                                      ldr r3, [sl]
00422ee8  0a 00 a0 e1                                      mov r0, sl
00422eec  20 10 a0 e3                                      mov r1, #0x20
00422ef0  0f e0 a0 e1                                      mov lr, pc
00422ef4  08 f0 93 e5                                      ldr pc, [r3, #8]
00422ef8  00 00 50 e3                                      cmp r0, #0
00422efc  1b 00 00 0a                                      beq #0x422f70
00422f00  18 20 9d e5                                      ldr r2, [sp, #0x18]
00422f04  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00422f08  8f 7f 8d e2                                      add r7, sp, #0x23c
00422f0c  01 80 92 e7                                      ldr r8, [r2, r1]
00422f10  08 00 a0 e1                                      mov r0, r8
00422f14  5b 52 fc eb                                      bl #0x337888
00422f18  34 20 8d e2                                      add r2, sp, #0x34
00422f1c  07 00 a0 e1                                      mov r0, r7
00422f20  20 10 9d e5                                      ldr r1, [sp, #0x20]
00422f24  70 c4 fb eb                                      bl #0x3140ec
00422f28  07 10 a0 e1                                      mov r1, r7
00422f2c  08 00 a0 e1                                      mov r0, r8
00422f30  d4 52 fc eb                                      bl #0x337a88
00422f34  07 00 a0 e1                                      mov r0, r7
00422f38  c5 d4 fb eb                                      bl #0x318254
00422f3c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00422f40  06 10 a0 e1                                      mov r1, r6
00422f44  05 20 a0 e1                                      mov r2, r5
00422f48  04 00 a0 e1                                      mov r0, r4
00422f4c  04 70 93 e5                                      ldr r7, [r3, #4]
00422f50  45 97 03 eb                                      bl #0x508c6c
00422f54  01 c0 a0 e3                                      mov ip, #1
00422f58  00 30 a0 e1                                      mov r3, r0
00422f5c  0a 10 a0 e1                                      mov r1, sl
00422f60  07 00 a0 e1                                      mov r0, r7
00422f64  24 20 9d e5                                      ldr r2, [sp, #0x24]
00422f68  00 c0 8d e5                                      str ip, [sp]
00422f6c  42 19 0e eb                                      bl #0x7a947c
00422f70  01 50 85 e2                                      add r5, r5, #1
00422f74  bd ff ff ea                                      b #0x422e70
00422f78  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00422f7c  0b 20 a0 e1                                      mov r2, fp
00422f80  08 30 a0 e1                                      mov r3, r8
00422f84  0c 10 8f e0                                      add r1, pc, ip
00422f88  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00422f8c  07 00 a0 e1                                      mov r0, r7
00422f90  00 c0 8d e5                                      str ip, [sp]
00422f94  d2 ae fb eb                                      bl #0x30eae4
00422f98  09 00 a0 e1                                      mov r0, sb
00422f9c  07 10 a0 e1                                      mov r1, r7
00422fa0  94 1f 0e eb                                      bl #0x7aadf8
00422fa4  00 a0 50 e2                                      subs sl, r0, #0
00422fa8  cd ff ff 1a                                      bne #0x422ee4
00422fac  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
00422fb0  08 30 a0 e1                                      mov r3, r8
00422fb4  0b 20 a0 e1                                      mov r2, fp
00422fb8  01 10 8f e0                                      add r1, pc, r1
00422fbc  07 00 a0 e1                                      mov r0, r7
00422fc0  c7 ae fb eb                                      bl #0x30eae4
00422fc4  09 00 a0 e1                                      mov r0, sb
00422fc8  07 10 a0 e1                                      mov r1, r7
00422fcc  89 1f 0e eb                                      bl #0x7aadf8
00422fd0  00 a0 50 e2                                      subs sl, r0, #0
00422fd4  c2 ff ff 1a                                      bne #0x422ee4
00422fd8  01 50 85 e2                                      add r5, r5, #1
00422fdc  a3 ff ff ea                                      b #0x422e70
00422fe0  00 10 90 e5                                      ldr r1, [r0]
00422fe4  01 10 41 e2                                      sub r1, r1, #1
00422fe8  00 00 51 e3                                      cmp r1, #0
00422fec  00 10 80 e5                                      str r1, [r0]
00422ff0  00 00 00 1a                                      bne #0x422ff8
00422ff4  cf be 0c eb                                      bl #0x752b38
00422ff8  14 30 9d e5                                      ldr r3, [sp, #0x14]
00422ffc  00 10 a0 e3                                      mov r1, #0
00423000  48 10 83 e5                                      str r1, [r3, #0x48]
00423004  4c 10 83 e5                                      str r1, [r3, #0x4c]
00423008  8f ff ff ea                                      b #0x422e4c
0042300c  00 10 90 e5                                      ldr r1, [r0]
00423010  01 10 41 e2                                      sub r1, r1, #1
00423014  00 00 51 e3                                      cmp r1, #0
00423018  00 10 80 e5                                      str r1, [r0]
0042301c  00 00 00 1a                                      bne #0x423024
00423020  c4 be 0c eb                                      bl #0x752b38
00423024  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00423028  00 30 a0 e3                                      mov r3, #0
0042302c  4c 30 8c e5                                      str r3, [ip, #0x4c]
00423030  48 30 8c e5                                      str r3, [ip, #0x48]
00423034  18 20 9d e5                                      ldr r2, [sp, #0x18]
00423038  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0042303c  01 30 92 e7                                      ldr r3, [r2, r1]
00423040  6c 22 9d e5                                      ldr r2, [sp, #0x26c]
00423044  00 30 93 e5                                      ldr r3, [r3]
00423048  03 00 52 e1                                      cmp r2, r3
0042304c  05 00 00 1a                                      bne #0x423068
00423050  9d df 8d e2                                      add sp, sp, #0x274
00423054  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00423058  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0042305c  01 30 a0 e3                                      mov r3, #1
00423060  75 30 cc e5                                      strb r3, [ip, #0x75]
00423064  f2 ff ff ea                                      b #0x423034
00423068  a8 ac fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0042306c  70 1d 57 00 ac 40 00 00 84 08 00 00 b8 62 4a 00  .byte 0x70, 0x1d, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xb8, 0x62, 0x4a, 0x00
0042307c  f4 37 00 00 9c 62 4a 00 48 5f 4a 00 6c 62 4a 00  .byte 0xf4, 0x37, 0x00, 0x00, 0x9c, 0x62, 0x4a, 0x00, 0x48, 0x5f, 0x4a, 0x00, 0x6c, 0x62, 0x4a, 0x00
0042308c  10 c0 4c 00 e4 60 4a 00 c0 60 4a 00              .byte 0x10, 0xc0, 0x4c, 0x00, 0xe4, 0x60, 0x4a, 0x00, 0xc0, 0x60, 0x4a, 0x00

; FUNCTION 0x00423098, declared_size=284, range_size=284, mode=arm
; class-group: MenuBase
; alias: _ZNK8MenuBase14HasHitDeadZoneEii
; demangled: MenuBase::HasHitDeadZone(int, int) const
; decoder-mode: arm
00423098  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0042309c  00 71 9f e5                                      ldr r7, [pc, #0x100]
004230a0  00 81 9f e5                                      ldr r8, [pc, #0x100]
004230a4  bc 60 90 e5                                      ldr r6, [r0, #0xbc]
004230a8  07 70 8f e0                                      add r7, pc, r7
004230ac  08 30 97 e7                                      ldr r3, [r7, r8]
004230b0  b8 40 90 e5                                      ldr r4, [r0, #0xb8]
004230b4  20 d0 4d e2                                      sub sp, sp, #0x20
004230b8  00 30 93 e5                                      ldr r3, [r3]
004230bc  06 00 54 e1                                      cmp r4, r6
004230c0  01 50 a0 e1                                      mov r5, r1
004230c4  1c 30 8d e5                                      str r3, [sp, #0x1c]
004230c8  02 90 a0 e1                                      mov sb, r2
004230cc  31 00 00 0a                                      beq #0x423198
004230d0  05 00 a0 e1                                      mov r0, r5
004230d4  22 ae fb eb                                      bl #0x30e964
004230d8  00 10 94 e5                                      ldr r1, [r4]
004230dc  00 a0 a0 e1                                      mov sl, r0
004230e0  89 ad fb eb                                      bl #0x30e70c
004230e4  00 00 50 e3                                      cmp r0, #0
004230e8  27 00 00 1a                                      bne #0x42318c
004230ec  0a 00 a0 e1                                      mov r0, sl
004230f0  04 10 94 e5                                      ldr r1, [r4, #4]
004230f4  7f ac fb eb                                      bl #0x30e2f8
004230f8  00 00 50 e3                                      cmp r0, #0
004230fc  22 00 00 1a                                      bne #0x42318c
00423100  09 00 a0 e1                                      mov r0, sb
00423104  16 ae fb eb                                      bl #0x30e964
00423108  08 10 94 e5                                      ldr r1, [r4, #8]
0042310c  00 a0 a0 e1                                      mov sl, r0
00423110  7d ad fb eb                                      bl #0x30e70c
00423114  00 00 50 e3                                      cmp r0, #0
00423118  1b 00 00 1a                                      bne #0x42318c
0042311c  0a 00 a0 e1                                      mov r0, sl
00423120  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00423124  73 ac fb eb                                      bl #0x30e2f8
00423128  00 00 50 e3                                      cmp r0, #0
0042312c  16 00 00 1a                                      bne #0x42318c
00423130  74 30 9f e5                                      ldr r3, [pc, #0x74]
00423134  04 40 8d e2                                      add r4, sp, #4
00423138  03 50 97 e7                                      ldr r5, [r7, r3]
0042313c  05 00 a0 e1                                      mov r0, r5
00423140  d0 51 fc eb                                      bl #0x337888
00423144  64 10 9f e5                                      ldr r1, [pc, #0x64]
00423148  0d 20 a0 e1                                      mov r2, sp
0042314c  04 00 a0 e1                                      mov r0, r4
00423150  01 10 8f e0                                      add r1, pc, r1
00423154  e4 c3 fb eb                                      bl #0x3140ec
00423158  04 10 a0 e1                                      mov r1, r4
0042315c  05 00 a0 e1                                      mov r0, r5
00423160  48 52 fc eb                                      bl #0x337a88
00423164  04 00 a0 e1                                      mov r0, r4
00423168  39 d4 fb eb                                      bl #0x318254
0042316c  01 00 a0 e3                                      mov r0, #1
00423170  08 30 97 e7                                      ldr r3, [r7, r8]
00423174  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00423178  00 30 93 e5                                      ldr r3, [r3]
0042317c  03 00 52 e1                                      cmp r2, r3
00423180  06 00 00 1a                                      bne #0x4231a0
00423184  20 d0 8d e2                                      add sp, sp, #0x20
00423188  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0042318c  10 40 84 e2                                      add r4, r4, #0x10
00423190  06 00 54 e1                                      cmp r4, r6
00423194  cd ff ff 1a                                      bne #0x4230d0
00423198  00 00 a0 e3                                      mov r0, #0
0042319c  f3 ff ff ea                                      b #0x423170
004231a0  5a ac fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004231a4  e8 19 57 00 ac 40 00 00 84 08 00 00 f0 5e 4a 00  .byte 0xe8, 0x19, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xf0, 0x5e, 0x4a, 0x00

; FUNCTION 0x004231b4, declared_size=96, range_size=96, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase11PostOnEventERN8RenderFX5EventE
; demangled: MenuBase::PostOnEvent(RenderFX::Event&)
; decoder-mode: arm
004231b4  10 40 2d e9                                      push {r4, lr}
004231b8  08 d0 4d e2                                      sub sp, sp, #8
004231bc  00 40 a0 e1                                      mov r4, r0
004231c0  31 26 00 eb                                      bl #0x42ca8c
004231c4  b4 30 90 e5                                      ldr r3, [r0, #0xb4]
004231c8  00 00 53 e3                                      cmp r3, #0
004231cc  0e 00 00 0a                                      beq #0x42320c
004231d0  00 30 a0 e3                                      mov r3, #0
004231d4  00 30 8d e5                                      str r3, [sp]
004231d8  04 30 8d e5                                      str r3, [sp, #4]
004231dc  2a 26 00 eb                                      bl #0x42ca8c
004231e0  04 10 8d e2                                      add r1, sp, #4
004231e4  0d 20 a0 e1                                      mov r2, sp
004231e8  73 26 00 eb                                      bl #0x42cbbc
004231ec  04 00 a0 e1                                      mov r0, r4
004231f0  04 10 9d e5                                      ldr r1, [sp, #4]
004231f4  00 20 9d e5                                      ldr r2, [sp]
004231f8  a6 ff ff eb                                      bl #0x423098
004231fc  00 00 50 e3                                      cmp r0, #0
00423200  01 00 00 0a                                      beq #0x42320c
00423204  20 26 00 eb                                      bl #0x42ca8c
00423208  89 26 00 eb                                      bl #0x42cc34
0042320c  08 d0 8d e2                                      add sp, sp, #8
00423210  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00423214, declared_size=264, range_size=264, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase7OnEventERN8RenderFX5EventE
; demangled: MenuBase::OnEvent(RenderFX::Event&)
; decoder-mode: arm
00423214  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00423218  00 50 a0 e1                                      mov r5, r0
0042321c  5c 00 90 e5                                      ldr r0, [r0, #0x5c]
00423220  e0 60 9f e5                                      ldr r6, [pc, #0xe0]
00423224  01 40 a0 e1                                      mov r4, r1
00423228  00 00 50 e3                                      cmp r0, #0
0042322c  06 60 8f e0                                      add r6, pc, r6
00423230  00 00 00 0a                                      beq #0x423238
00423234  a3 bf ff eb                                      bl #0x4130c8
00423238  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0042323c  03 30 96 e7                                      ldr r3, [r6, r3]
00423240  00 30 d3 e5                                      ldrb r3, [r3]
00423244  00 00 53 e3                                      cmp r3, #0
00423248  1f 00 00 0a                                      beq #0x4232cc
0042324c  08 30 94 e5                                      ldr r3, [r4, #8]
00423250  08 00 53 e3                                      cmp r3, #8
00423254  03 60 a0 e1                                      mov r6, r3
00423258  05 00 00 0a                                      beq #0x423274
0042325c  06 00 53 e3                                      cmp r3, #6
00423260  1c 00 00 0a                                      beq #0x4232d8
00423264  05 00 a0 e1                                      mov r0, r5
00423268  04 10 a0 e1                                      mov r1, r4
0042326c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00423270  cf ff ff ea                                      b #0x4231b4
00423274  04 70 94 e5                                      ldr r7, [r4, #4]
00423278  90 10 9f e5                                      ldr r1, [pc, #0x90]
0042327c  07 00 a0 e1                                      mov r0, r7
00423280  01 10 8f e0                                      add r1, pc, r1
00423284  52 ae fb eb                                      bl #0x30ebd4
00423288  00 00 57 e1                                      cmp r7, r0
0042328c  1b 00 00 1a                                      bne #0x423300
00423290  00 30 94 e5                                      ldr r3, [r4]
00423294  03 00 a0 e1                                      mov r0, r3
00423298  00 30 93 e5                                      ldr r3, [r3]
0042329c  0f e0 a0 e1                                      mov lr, pc
004232a0  70 f1 93 e5                                      ldr pc, [r3, #0x170]
004232a4  00 00 50 e3                                      cmp r0, #0
004232a8  08 60 94 05                                      ldreq r6, [r4, #8]
004232ac  13 00 00 0a                                      beq #0x423300
004232b0  04 00 a0 e1                                      mov r0, r4
004232b4  04 60 95 e5                                      ldr r6, [r5, #4]
004232b8  e2 fa ff eb                                      bl #0x421e48
004232bc  00 20 a0 e3                                      mov r2, #0
004232c0  00 10 a0 e1                                      mov r1, r0
004232c4  06 00 a0 e1                                      mov r0, r6
004232c8  72 24 0e eb                                      bl #0x7ac498
004232cc  08 30 94 e5                                      ldr r3, [r4, #8]
004232d0  06 00 53 e3                                      cmp r3, #6
004232d4  e2 ff ff 1a                                      bne #0x423264
004232d8  34 10 9f e5                                      ldr r1, [pc, #0x34]
004232dc  04 00 94 e5                                      ldr r0, [r4, #4]
004232e0  01 10 8f e0                                      add r1, pc, r1
004232e4  3a ae fb eb                                      bl #0x30ebd4
004232e8  00 00 50 e3                                      cmp r0, #0
004232ec  dc ff ff 0a                                      beq #0x423264
004232f0  20 00 9f e5                                      ldr r0, [pc, #0x20]
004232f4  00 00 8f e0                                      add r0, pc, r0
004232f8  52 3e 04 eb                                      bl #0x532c48
004232fc  d8 ff ff ea                                      b #0x423264
00423300  06 30 a0 e1                                      mov r3, r6
00423304  d4 ff ff ea                                      b #0x42325c
; mapping-symbol data/literal pool
00423308  64 18 57 00 64 37 00 00 00 5e 4a 00 a8 5d 4a 00  .byte 0x64, 0x18, 0x57, 0x00, 0x64, 0x37, 0x00, 0x00, 0x00, 0x5e, 0x4a, 0x00, 0xa8, 0x5d, 0x4a, 0x00
00423318  ac 5d 4a 00                                      .byte 0xac, 0x5d, 0x4a, 0x00

; FUNCTION 0x0042331c, declared_size=932, range_size=932, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase17RegisterDeadZonesEv
; demangled: MenuBase::RegisterDeadZones()
; decoder-mode: arm
0042331c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00423320  80 83 9f e5                                      ldr r8, [pc, #0x380]
00423324  80 23 9f e5                                      ldr r2, [pc, #0x380]
00423328  94 d0 4d e2                                      sub sp, sp, #0x94
0042332c  08 80 8f e0                                      add r8, pc, r8
00423330  02 30 98 e7                                      ldr r3, [r8, r2]
00423334  0c 20 8d e5                                      str r2, [sp, #0xc]
00423338  b4 20 d0 e5                                      ldrb r2, [r0, #0xb4]
0042333c  00 30 93 e5                                      ldr r3, [r3]
00423340  00 40 a0 e1                                      mov r4, r0
00423344  00 00 52 e3                                      cmp r2, #0
00423348  8c 30 8d e5                                      str r3, [sp, #0x8c]
0042334c  07 00 00 0a                                      beq #0x423370
00423350  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00423354  02 30 98 e7                                      ldr r3, [r8, r2]
00423358  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
0042335c  00 30 93 e5                                      ldr r3, [r3]
00423360  03 00 52 e1                                      cmp r2, r3
00423364  ce 00 00 1a                                      bne #0x4236a4
00423368  94 d0 8d e2                                      add sp, sp, #0x94
0042336c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00423370  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
00423374  00 00 53 e3                                      cmp r3, #0
00423378  f4 ff ff 0a                                      beq #0x423350
0042337c  48 00 90 e5                                      ldr r0, [r0, #0x48]
00423380  04 30 d0 e5                                      ldrb r3, [r0, #4]
00423384  00 00 53 e3                                      cmp r3, #0
00423388  b7 00 00 0a                                      beq #0x42366c
0042338c  1c 33 9f e5                                      ldr r3, [pc, #0x31c]
00423390  74 50 8d e2                                      add r5, sp, #0x74
00423394  14 30 8d e5                                      str r3, [sp, #0x14]
00423398  01 30 a0 e3                                      mov r3, #1
0042339c  b4 30 c4 e5                                      strb r3, [r4, #0xb4]
004233a0  14 20 9d e5                                      ldr r2, [sp, #0x14]
004233a4  02 60 98 e7                                      ldr r6, [r8, r2]
004233a8  06 00 a0 e1                                      mov r0, r6
004233ac  35 51 fc eb                                      bl #0x337888
004233b0  fc 12 9f e5                                      ldr r1, [pc, #0x2fc]
004233b4  58 20 8d e2                                      add r2, sp, #0x58
004233b8  05 00 a0 e1                                      mov r0, r5
004233bc  01 10 8f e0                                      add r1, pc, r1
004233c0  49 c3 fb eb                                      bl #0x3140ec
004233c4  05 10 a0 e1                                      mov r1, r5
004233c8  06 00 a0 e1                                      mov r0, r6
004233cc  ad 51 fc eb                                      bl #0x337a88
004233d0  05 00 a0 e1                                      mov r0, r5
004233d4  9e d3 fb eb                                      bl #0x318254
004233d8  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
004233dc  04 50 94 e5                                      ldr r5, [r4, #4]
004233e0  00 00 51 e3                                      cmp r1, #0
004233e4  03 00 00 0a                                      beq #0x4233f8
004233e8  48 00 94 e5                                      ldr r0, [r4, #0x48]
004233ec  04 30 d0 e5                                      ldrb r3, [r0, #4]
004233f0  00 00 53 e3                                      cmp r3, #0
004233f4  8f 00 00 0a                                      beq #0x423638
004233f8  b8 22 9f e5                                      ldr r2, [pc, #0x2b8]
004233fc  00 30 a0 e3                                      mov r3, #0
00423400  05 00 a0 e1                                      mov r0, r5
00423404  02 20 8f e0                                      add r2, pc, r2
00423408  fe 15 0e eb                                      bl #0x7a8c08
0042340c  04 30 90 e5                                      ldr r3, [r0, #4]
00423410  00 70 a0 e1                                      mov r7, r0
00423414  00 00 53 e3                                      cmp r3, #0
00423418  cc ff ff da                                      ble #0x423350
0042341c  c0 30 84 e2                                      add r3, r4, #0xc0
00423420  2c 30 8d e5                                      str r3, [sp, #0x2c]
00423424  90 32 9f e5                                      ldr r3, [pc, #0x290]
00423428  40 20 8d e2                                      add r2, sp, #0x40
0042342c  1c 20 8d e5                                      str r2, [sp, #0x1c]
00423430  03 30 8f e0                                      add r3, pc, r3
00423434  20 30 8d e5                                      str r3, [sp, #0x20]
00423438  50 20 8d e2                                      add r2, sp, #0x50
0042343c  54 30 8d e2                                      add r3, sp, #0x54
00423440  00 50 a0 e3                                      mov r5, #0
00423444  5c 60 8d e2                                      add r6, sp, #0x5c
00423448  18 30 8d e5                                      str r3, [sp, #0x18]
0042344c  30 20 8d e5                                      str r2, [sp, #0x30]
00423450  10 80 8d e5                                      str r8, [sp, #0x10]
00423454  00 30 97 e5                                      ldr r3, [r7]
00423458  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0042345c  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
00423460  85 cd ff eb                                      bl #0x416a7c
00423464  10 20 9d e5                                      ldr r2, [sp, #0x10]
00423468  14 30 9d e5                                      ldr r3, [sp, #0x14]
0042346c  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
00423470  48 90 9d e5                                      ldr sb, [sp, #0x48]
00423474  03 a0 92 e7                                      ldr sl, [r2, r3]
00423478  40 30 9d e5                                      ldr r3, [sp, #0x40]
0042347c  44 b0 9d e5                                      ldr fp, [sp, #0x44]
00423480  0a 00 a0 e1                                      mov r0, sl
00423484  08 30 8d e5                                      str r3, [sp, #8]
00423488  fe 50 fc eb                                      bl #0x337888
0042348c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00423490  20 10 9d e5                                      ldr r1, [sp, #0x20]
00423494  06 00 a0 e1                                      mov r0, r6
00423498  13 c3 fb eb                                      bl #0x3140ec
0042349c  0a 00 a0 e1                                      mov r0, sl
004234a0  06 10 a0 e1                                      mov r1, r6
004234a4  77 51 fc eb                                      bl #0x337a88
004234a8  06 00 a0 e1                                      mov r0, r6
004234ac  68 d3 fb eb                                      bl #0x318254
004234b0  bc a0 94 e5                                      ldr sl, [r4, #0xbc]
004234b4  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
004234b8  03 00 5a e1                                      cmp sl, r3
004234bc  0d 00 00 0a                                      beq #0x4234f8
004234c0  08 20 9d e5                                      ldr r2, [sp, #8]
004234c4  0c 80 8a e5                                      str r8, [sl, #0xc]
004234c8  08 90 8a e5                                      str sb, [sl, #8]
004234cc  00 20 8a e5                                      str r2, [sl]
004234d0  04 b0 8a e5                                      str fp, [sl, #4]
004234d4  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
004234d8  10 30 83 e2                                      add r3, r3, #0x10
004234dc  bc 30 84 e5                                      str r3, [r4, #0xbc]
004234e0  04 30 97 e5                                      ldr r3, [r7, #4]
004234e4  01 50 85 e2                                      add r5, r5, #1
004234e8  03 00 55 e1                                      cmp r5, r3
004234ec  d8 ff ff ba                                      blt #0x423454
004234f0  10 80 9d e5                                      ldr r8, [sp, #0x10]
004234f4  95 ff ff ea                                      b #0x423350
004234f8  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
004234fc  0a 30 63 e0                                      rsb r3, r3, sl
00423500  43 22 a0 e1                                      asr r2, r3, #4
00423504  01 00 52 e3                                      cmp r2, #1
00423508  02 30 82 20                                      addhs r3, r2, r2
0042350c  01 30 82 32                                      addlo r3, r2, #1
00423510  1f 02 73 e3                                      cmn r3, #0xf0000001
00423514  51 00 00 9a                                      bls #0x423660
00423518  0f 32 e0 e3                                      mvn r3, #0xf0000000
0042351c  03 10 a0 e1                                      mov r1, r3
00423520  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00423524  30 20 9d e5                                      ldr r2, [sp, #0x30]
00423528  50 30 8d e5                                      str r3, [sp, #0x50]
0042352c  be fb ff eb                                      bl #0x42242c
00423530  24 00 8d e5                                      str r0, [sp, #0x24]
00423534  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
00423538  0a a0 63 e0                                      rsb sl, r3, sl
0042353c  4a a2 a0 e1                                      asr sl, sl, #4
00423540  00 00 5a e3                                      cmp sl, #0
00423544  28 a0 8d e5                                      str sl, [sp, #0x28]
00423548  00 a0 a0 d1                                      movle sl, r0
0042354c  1b 00 00 da                                      ble #0x4235c0
00423550  38 90 8d e5                                      str sb, [sp, #0x38]
00423554  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00423558  07 90 a0 e1                                      mov sb, r7
0042355c  06 70 a0 e1                                      mov r7, r6
00423560  24 60 9d e5                                      ldr r6, [sp, #0x24]
00423564  34 80 8d e5                                      str r8, [sp, #0x34]
00423568  3c b0 8d e5                                      str fp, [sp, #0x3c]
0042356c  00 c0 a0 e3                                      mov ip, #0
00423570  05 b0 a0 e1                                      mov fp, r5
00423574  04 80 a0 e1                                      mov r8, r4
00423578  03 50 a0 e1                                      mov r5, r3
0042357c  0c 40 86 e0                                      add r4, r6, ip
00423580  0c 30 85 e0                                      add r3, r5, ip
00423584  01 a0 5a e2                                      subs sl, sl, #1
00423588  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0042358c  10 c0 8c e2                                      add ip, ip, #0x10
00423590  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00423594  f8 ff ff 1a                                      bne #0x42357c
00423598  24 30 9d e5                                      ldr r3, [sp, #0x24]
0042359c  28 20 9d e5                                      ldr r2, [sp, #0x28]
004235a0  0b 50 a0 e1                                      mov r5, fp
004235a4  08 40 a0 e1                                      mov r4, r8
004235a8  07 60 a0 e1                                      mov r6, r7
004235ac  3c b0 9d e5                                      ldr fp, [sp, #0x3c]
004235b0  09 70 a0 e1                                      mov r7, sb
004235b4  34 80 9d e5                                      ldr r8, [sp, #0x34]
004235b8  38 90 9d e5                                      ldr sb, [sp, #0x38]
004235bc  02 a2 83 e0                                      add sl, r3, r2, lsl #4
004235c0  0c 80 8a e5                                      str r8, [sl, #0xc]
004235c4  08 90 8a e5                                      str sb, [sl, #8]
004235c8  04 b0 8a e5                                      str fp, [sl, #4]
004235cc  08 30 9d e5                                      ldr r3, [sp, #8]
004235d0  0a c0 a0 e1                                      mov ip, sl
004235d4  10 30 8c e4                                      str r3, [ip], #0x10
004235d8  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
004235dc  b8 00 94 e5                                      ldr r0, [r4, #0xb8]
004235e0  00 00 53 e1                                      cmp r3, r0
004235e4  10 20 43 12                                      subne r2, r3, #0x10
004235e8  02 20 60 10                                      rsbne r2, r0, r2
004235ec  22 22 e0 11                                      mvnne r2, r2, lsr #4
004235f0  02 32 83 10                                      addne r3, r3, r2, lsl #4
004235f4  00 00 53 e3                                      cmp r3, #0
004235f8  c0 20 94 e5                                      ldr r2, [r4, #0xc0]
004235fc  06 00 00 0a                                      beq #0x42361c
00423600  02 30 63 e0                                      rsb r3, r3, r2
00423604  0f 10 c3 e3                                      bic r1, r3, #0xf
00423608  80 00 51 e3                                      cmp r1, #0x80
0042360c  20 00 00 8a                                      bhi #0x423694
00423610  04 c0 8d e5                                      str ip, [sp, #4]
00423614  39 96 0b eb                                      bl #0x708f00
00423618  04 c0 9d e5                                      ldr ip, [sp, #4]
0042361c  50 30 9d e5                                      ldr r3, [sp, #0x50]
00423620  24 20 9d e5                                      ldr r2, [sp, #0x24]
00423624  bc c0 84 e5                                      str ip, [r4, #0xbc]
00423628  03 32 82 e0                                      add r3, r2, r3, lsl #4
0042362c  b8 20 84 e5                                      str r2, [r4, #0xb8]
00423630  c0 30 84 e5                                      str r3, [r4, #0xc0]
00423634  a9 ff ff ea                                      b #0x4234e0
00423638  00 10 90 e5                                      ldr r1, [r0]
0042363c  01 10 41 e2                                      sub r1, r1, #1
00423640  00 00 51 e3                                      cmp r1, #0
00423644  00 10 80 e5                                      str r1, [r0]
00423648  00 00 00 1a                                      bne #0x423650
0042364c  39 bd 0c eb                                      bl #0x752b38
00423650  00 10 a0 e3                                      mov r1, #0
00423654  48 10 84 e5                                      str r1, [r4, #0x48]
00423658  4c 10 84 e5                                      str r1, [r4, #0x4c]
0042365c  65 ff ff ea                                      b #0x4233f8
00423660  03 00 52 e1                                      cmp r2, r3
00423664  ac ff ff 9a                                      bls #0x42351c
00423668  aa ff ff ea                                      b #0x423518
0042366c  00 10 90 e5                                      ldr r1, [r0]
00423670  01 10 41 e2                                      sub r1, r1, #1
00423674  00 00 51 e3                                      cmp r1, #0
00423678  00 10 80 e5                                      str r1, [r0]
0042367c  00 00 00 1a                                      bne #0x423684
00423680  2c bd 0c eb                                      bl #0x752b38
00423684  00 30 a0 e3                                      mov r3, #0
00423688  4c 30 84 e5                                      str r3, [r4, #0x4c]
0042368c  48 30 84 e5                                      str r3, [r4, #0x48]
00423690  2e ff ff ea                                      b #0x423350
00423694  04 c0 8d e5                                      str ip, [sp, #4]
00423698  68 b3 fb eb                                      bl #0x310440
0042369c  04 c0 9d e5                                      ldr ip, [sp, #4]
004236a0  dd ff ff ea                                      b #0x42361c
004236a4  19 ab fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004236a8  64 17 57 00 ac 40 00 00 84 08 00 00 84 5c 4a 00  .byte 0x64, 0x17, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x84, 0x5c, 0x4a, 0x00
004236b8  ec 5c 4a 00 10 5c 4a 00                          .byte 0xec, 0x5c, 0x4a, 0x00, 0x10, 0x5c, 0x4a, 0x00

; FUNCTION 0x00423d6c, declared_size=76, range_size=76, mode=arm
; class-group: MenuBase
; alias: _ZNK8MenuBase15TestSlideEventsERN8RenderFX5EventE
; demangled: MenuBase::TestSlideEvents(RenderFX::Event&) const
; decoder-mode: arm
00423d6c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00423d70  08 30 91 e5                                      ldr r3, [r1, #8]
00423d74  01 50 a0 e1                                      mov r5, r1
00423d78  00 60 a0 e1                                      mov r6, r0
00423d7c  04 30 43 e2                                      sub r3, r3, #4
00423d80  01 00 53 e3                                      cmp r3, #1
00423d84  00 00 00 9a                                      bls #0x423d8c
00423d88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00423d8c  60 40 90 e5                                      ldr r4, [r0, #0x60]
00423d90  64 70 90 e5                                      ldr r7, [r0, #0x64]
00423d94  07 00 54 e1                                      cmp r4, r7
00423d98  fa ff ff 0a                                      beq #0x423d88
00423d9c  04 00 94 e4                                      ldr r0, [r4], #4
00423da0  05 10 a0 e1                                      mov r1, r5
00423da4  04 20 96 e5                                      ldr r2, [r6, #4]
00423da8  44 fe ff eb                                      bl #0x4236c0
00423dac  07 00 54 e1                                      cmp r4, r7
00423db0  f9 ff ff 1a                                      bne #0x423d9c
00423db4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00423db8, declared_size=1232, range_size=1232, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase20RegisterDragAndDropsEPFiPKN7gameswf9characterEE
; demangled: MenuBase::RegisterDragAndDrops(int (*)(gameswf::character const*))
; decoder-mode: arm
00423db8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00423dbc  a0 24 9f e5                                      ldr r2, [pc, #0x4a0]
00423dc0  a0 34 9f e5                                      ldr r3, [pc, #0x4a0]
00423dc4  a4 d0 4d e2                                      sub sp, sp, #0xa4
00423dc8  9c c4 9f e5                                      ldr ip, [pc, #0x49c]
00423dcc  02 20 8f e0                                      add r2, pc, r2
00423dd0  0c 30 8d e5                                      str r3, [sp, #0xc]
00423dd4  03 30 92 e7                                      ldr r3, [r2, r3]
00423dd8  0c 70 92 e7                                      ldr r7, [r2, ip]
00423ddc  00 60 a0 e1                                      mov r6, r0
00423de0  00 30 93 e5                                      ldr r3, [r3]
00423de4  07 00 a0 e1                                      mov r0, r7
00423de8  10 c0 8d e5                                      str ip, [sp, #0x10]
00423dec  9c 30 8d e5                                      str r3, [sp, #0x9c]
00423df0  06 00 8d e9                                      stmib sp, {r1, r2}
00423df4  a3 4e fc eb                                      bl #0x337888
00423df8  70 14 9f e5                                      ldr r1, [pc, #0x470]
00423dfc  84 50 8d e2                                      add r5, sp, #0x84
00423e00  38 20 8d e2                                      add r2, sp, #0x38
00423e04  01 10 8f e0                                      add r1, pc, r1
00423e08  05 00 a0 e1                                      mov r0, r5
00423e0c  b6 c0 fb eb                                      bl #0x3140ec
00423e10  05 10 a0 e1                                      mov r1, r5
00423e14  07 00 a0 e1                                      mov r0, r7
00423e18  1a 4f fc eb                                      bl #0x337a88
00423e1c  05 00 a0 e1                                      mov r0, r5
00423e20  0b d1 fb eb                                      bl #0x318254
00423e24  5c 50 96 e5                                      ldr r5, [r6, #0x5c]
00423e28  00 00 55 e3                                      cmp r5, #0
00423e2c  05 00 00 0a                                      beq #0x423e48
00423e30  05 00 a0 e1                                      mov r0, r5
00423e34  92 b9 ff eb                                      bl #0x412484
00423e38  05 00 a0 e1                                      mov r0, r5
00423e3c  7f b1 fb eb                                      bl #0x310440
00423e40  00 30 a0 e3                                      mov r3, #0
00423e44  5c 30 86 e5                                      str r3, [r6, #0x5c]
00423e48  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
00423e4c  00 00 53 e3                                      cmp r3, #0
00423e50  71 00 00 0a                                      beq #0x42401c
00423e54  48 00 96 e5                                      ldr r0, [r6, #0x48]
00423e58  04 30 d0 e5                                      ldrb r3, [r0, #4]
00423e5c  00 00 53 e3                                      cmp r3, #0
00423e60  80 00 00 0a                                      beq #0x424068
00423e64  00 10 a0 e3                                      mov r1, #0
00423e68  1c 00 a0 e3                                      mov r0, #0x1c
00423e6c  bf b1 fb eb                                      bl #0x310570
00423e70  00 50 a0 e1                                      mov r5, r0
00423e74  19 b8 ff eb                                      bl #0x411ee0
00423e78  4c 10 96 e5                                      ldr r1, [r6, #0x4c]
00423e7c  5c 50 86 e5                                      str r5, [r6, #0x5c]
00423e80  04 50 96 e5                                      ldr r5, [r6, #4]
00423e84  00 00 51 e3                                      cmp r1, #0
00423e88  03 00 00 0a                                      beq #0x423e9c
00423e8c  48 00 96 e5                                      ldr r0, [r6, #0x48]
00423e90  04 30 d0 e5                                      ldrb r3, [r0, #4]
00423e94  00 00 53 e3                                      cmp r3, #0
00423e98  68 00 00 0a                                      beq #0x424040
00423e9c  d0 23 9f e5                                      ldr r2, [pc, #0x3d0]
00423ea0  05 00 a0 e1                                      mov r0, r5
00423ea4  00 50 a0 e3                                      mov r5, #0
00423ea8  02 20 8f e0                                      add r2, pc, r2
00423eac  05 30 a0 e1                                      mov r3, r5
00423eb0  54 13 0e eb                                      bl #0x7a8c08
00423eb4  1c 50 8d e5                                      str r5, [sp, #0x1c]
00423eb8  20 50 8d e5                                      str r5, [sp, #0x20]
00423ebc  24 50 8d e5                                      str r5, [sp, #0x24]
00423ec0  28 50 cd e5                                      strb r5, [sp, #0x28]
00423ec4  04 80 90 e5                                      ldr r8, [r0, #4]
00423ec8  00 70 a0 e1                                      mov r7, r0
00423ecc  05 00 58 e1                                      cmp r8, r5
00423ed0  6e 00 00 aa                                      bge #0x424090
00423ed4  1c 30 8d e2                                      add r3, sp, #0x1c
00423ed8  14 30 8d e5                                      str r3, [sp, #0x14]
00423edc  00 00 58 e3                                      cmp r8, #0
00423ee0  06 00 00 aa                                      bge #0x423f00
00423ee4  08 31 a0 e1                                      lsl r3, r8, #2
00423ee8  00 10 a0 e3                                      mov r1, #0
00423eec  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00423ef0  01 80 98 e2                                      adds r8, r8, #1
00423ef4  03 10 82 e7                                      str r1, [r2, r3]
00423ef8  04 30 83 e2                                      add r3, r3, #4
00423efc  fa ff ff 1a                                      bne #0x423eec
00423f00  00 30 a0 e3                                      mov r3, #0
00423f04  03 10 a0 e1                                      mov r1, r3
00423f08  14 00 9d e5                                      ldr r0, [sp, #0x14]
00423f0c  20 30 8d e5                                      str r3, [sp, #0x20]
00423f10  bf bf ff eb                                      bl #0x413e14
00423f14  4c 10 96 e5                                      ldr r1, [r6, #0x4c]
00423f18  04 40 96 e5                                      ldr r4, [r6, #4]
00423f1c  00 00 51 e3                                      cmp r1, #0
00423f20  03 00 00 0a                                      beq #0x423f34
00423f24  48 00 96 e5                                      ldr r0, [r6, #0x48]
00423f28  04 30 d0 e5                                      ldrb r3, [r0, #4]
00423f2c  00 00 53 e3                                      cmp r3, #0
00423f30  be 00 00 0a                                      beq #0x424230
00423f34  3c 23 9f e5                                      ldr r2, [pc, #0x33c]
00423f38  00 30 a0 e3                                      mov r3, #0
00423f3c  04 00 a0 e1                                      mov r0, r4
00423f40  02 20 8f e0                                      add r2, pc, r2
00423f44  2f 13 0e eb                                      bl #0x7a8c08
00423f48  04 30 90 e5                                      ldr r3, [r0, #4]
00423f4c  00 50 a0 e1                                      mov r5, r0
00423f50  00 00 53 e3                                      cmp r3, #0
00423f54  09 00 00 da                                      ble #0x423f80
00423f58  00 40 a0 e3                                      mov r4, #0
00423f5c  00 30 95 e5                                      ldr r3, [r5]
00423f60  5c 00 96 e5                                      ldr r0, [r6, #0x5c]
00423f64  04 10 96 e5                                      ldr r1, [r6, #4]
00423f68  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
00423f6c  ac bd ff eb                                      bl #0x413624
00423f70  04 30 95 e5                                      ldr r3, [r5, #4]
00423f74  01 40 84 e2                                      add r4, r4, #1
00423f78  03 00 54 e1                                      cmp r4, r3
00423f7c  f6 ff ff ba                                      blt #0x423f5c
00423f80  5c 30 96 e5                                      ldr r3, [r6, #0x5c]
00423f84  3d 2f 0c e3                                      movw r2, #0xcf3d
00423f88  f3 2c 43 e3                                      movt r2, #0x3cf3
00423f8c  08 00 93 e5                                      ldr r0, [r3, #8]
00423f90  04 10 93 e5                                      ldr r1, [r3, #4]
00423f94  00 10 61 e0                                      rsb r1, r1, r0
00423f98  41 11 a0 e1                                      asr r1, r1, #2
00423f9c  92 01 02 e0                                      mul r2, r2, r1
00423fa0  00 00 52 e3                                      cmp r2, #0
00423fa4  83 00 00 1a                                      bne #0x4241b8
00423fa8  10 20 93 e5                                      ldr r2, [r3, #0x10]
00423fac  14 50 93 e5                                      ldr r5, [r3, #0x14]
00423fb0  05 50 62 e0                                      rsb r5, r2, r5
00423fb4  c5 52 b0 e1                                      asrs r5, r5, #5
00423fb8  7e 00 00 1a                                      bne #0x4241b8
00423fbc  08 c0 9d e5                                      ldr ip, [sp, #8]
00423fc0  10 30 9d e5                                      ldr r3, [sp, #0x10]
00423fc4  6c 40 8d e2                                      add r4, sp, #0x6c
00423fc8  03 70 9c e7                                      ldr r7, [ip, r3]
00423fcc  07 00 a0 e1                                      mov r0, r7
00423fd0  2c 4e fc eb                                      bl #0x337888
00423fd4  a0 12 9f e5                                      ldr r1, [pc, #0x2a0]
00423fd8  34 20 8d e2                                      add r2, sp, #0x34
00423fdc  04 00 a0 e1                                      mov r0, r4
00423fe0  01 10 8f e0                                      add r1, pc, r1
00423fe4  40 c0 fb eb                                      bl #0x3140ec
00423fe8  04 10 a0 e1                                      mov r1, r4
00423fec  07 00 a0 e1                                      mov r0, r7
00423ff0  a4 4e fc eb                                      bl #0x337a88
00423ff4  04 00 a0 e1                                      mov r0, r4
00423ff8  95 d0 fb eb                                      bl #0x318254
00423ffc  5c 40 96 e5                                      ldr r4, [r6, #0x5c]
00424000  00 00 54 e3                                      cmp r4, #0
00424004  04 00 00 0a                                      beq #0x42401c
00424008  04 00 a0 e1                                      mov r0, r4
0042400c  1c b9 ff eb                                      bl #0x412484
00424010  04 00 a0 e1                                      mov r0, r4
00424014  09 b1 fb eb                                      bl #0x310440
00424018  5c 50 86 e5                                      str r5, [r6, #0x5c]
0042401c  08 10 9d e5                                      ldr r1, [sp, #8]
00424020  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00424024  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
00424028  0c 30 91 e7                                      ldr r3, [r1, ip]
0042402c  00 30 93 e5                                      ldr r3, [r3]
00424030  03 00 52 e1                                      cmp r2, r3
00424034  89 00 00 1a                                      bne #0x424260
00424038  a4 d0 8d e2                                      add sp, sp, #0xa4
0042403c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00424040  00 10 90 e5                                      ldr r1, [r0]
00424044  01 10 41 e2                                      sub r1, r1, #1
00424048  00 00 51 e3                                      cmp r1, #0
0042404c  00 10 80 e5                                      str r1, [r0]
00424050  00 00 00 1a                                      bne #0x424058
00424054  b7 ba 0c eb                                      bl #0x752b38
00424058  00 10 a0 e3                                      mov r1, #0
0042405c  48 10 86 e5                                      str r1, [r6, #0x48]
00424060  4c 10 86 e5                                      str r1, [r6, #0x4c]
00424064  8c ff ff ea                                      b #0x423e9c
00424068  00 10 90 e5                                      ldr r1, [r0]
0042406c  01 10 41 e2                                      sub r1, r1, #1
00424070  00 00 51 e3                                      cmp r1, #0
00424074  00 10 80 e5                                      str r1, [r0]
00424078  00 00 00 1a                                      bne #0x424080
0042407c  ad ba 0c eb                                      bl #0x752b38
00424080  00 30 a0 e3                                      mov r3, #0
00424084  4c 30 86 e5                                      str r3, [r6, #0x4c]
00424088  48 30 86 e5                                      str r3, [r6, #0x48]
0042408c  e2 ff ff ea                                      b #0x42401c
00424090  8f ff ff 0a                                      beq #0x423ed4
00424094  8e ff ff da                                      ble #0x423ed4
00424098  1c 10 8d e2                                      add r1, sp, #0x1c
0042409c  14 10 8d e5                                      str r1, [sp, #0x14]
004240a0  01 00 a0 e1                                      mov r0, r1
004240a4  c8 10 88 e0                                      add r1, r8, r8, asr #1
004240a8  59 bf ff eb                                      bl #0x413e14
004240ac  05 30 a0 e1                                      mov r3, r5
004240b0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004240b4  05 31 82 e7                                      str r3, [r2, r5, lsl #2]
004240b8  01 50 85 e2                                      add r5, r5, #1
004240bc  08 00 55 e1                                      cmp r5, r8
004240c0  fa ff ff 1a                                      bne #0x4240b0
004240c4  20 50 8d e5                                      str r5, [sp, #0x20]
004240c8  00 20 97 e5                                      ldr r2, [r7]
004240cc  03 11 92 e7                                      ldr r1, [r2, r3, lsl #2]
004240d0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004240d4  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
004240d8  20 80 9d e5                                      ldr r8, [sp, #0x20]
004240dc  01 30 83 e2                                      add r3, r3, #1
004240e0  08 00 53 e1                                      cmp r3, r8
004240e4  f7 ff ff ba                                      blt #0x4240c8
004240e8  00 00 58 e3                                      cmp r8, #0
004240ec  7a ff ff da                                      ble #0x423edc
004240f0  88 51 9f e5                                      ldr r5, [pc, #0x188]
004240f4  00 70 a0 e3                                      mov r7, #0
004240f8  06 a0 a0 e1                                      mov sl, r6
004240fc  05 50 8f e0                                      add r5, pc, r5
00424100  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00424104  00 20 a0 e3                                      mov r2, #0
00424108  04 00 9a e5                                      ldr r0, [sl, #4]
0042410c  07 61 93 e7                                      ldr r6, [r3, r7, lsl #2]
00424110  02 30 a0 e1                                      mov r3, r2
00424114  06 10 a0 e1                                      mov r1, r6
00424118  ba 12 0e eb                                      bl #0x7a8c08
0042411c  04 90 90 e5                                      ldr sb, [r0, #4]
00424120  00 00 59 e3                                      cmp sb, #0
00424124  0f 00 00 da                                      ble #0x424168
00424128  00 b0 90 e5                                      ldr fp, [r0]
0042412c  00 80 a0 e3                                      mov r8, #0
00424130  02 00 00 ea                                      b #0x424140
00424134  01 80 88 e2                                      add r8, r8, #1
00424138  09 00 58 e1                                      cmp r8, sb
0042413c  45 00 00 0a                                      beq #0x424258
00424140  08 41 9b e7                                      ldr r4, [fp, r8, lsl #2]
00424144  05 10 a0 e1                                      mov r1, r5
00424148  44 00 94 e5                                      ldr r0, [r4, #0x44]
0042414c  d0 30 d0 e1                                      ldrsb r3, [r0]
00424150  01 00 73 e3                                      cmn r3, #1
00424154  01 00 80 12                                      addne r0, r0, #1
00424158  0c 00 90 05                                      ldreq r0, [r0, #0xc]
0042415c  9c aa fb eb                                      bl #0x30ebd4
00424160  00 00 50 e3                                      cmp r0, #0
00424164  f2 ff ff 0a                                      beq #0x424134
00424168  04 20 9d e5                                      ldr r2, [sp, #4]
0042416c  00 00 52 e3                                      cmp r2, #0
00424170  03 00 00 0a                                      beq #0x424184
00424174  06 00 a0 e1                                      mov r0, r6
00424178  32 ff 2f e1                                      blx r2
0042417c  00 00 50 e3                                      cmp r0, #0
00424180  04 00 00 0a                                      beq #0x424198
00424184  06 20 a0 e1                                      mov r2, r6
00424188  5c 00 9a e5                                      ldr r0, [sl, #0x5c]
0042418c  04 10 9a e5                                      ldr r1, [sl, #4]
00424190  04 30 a0 e1                                      mov r3, r4
00424194  b9 bc ff eb                                      bl #0x413480
00424198  20 80 9d e5                                      ldr r8, [sp, #0x20]
0042419c  01 70 87 e2                                      add r7, r7, #1
004241a0  08 00 57 e1                                      cmp r7, r8
004241a4  d5 ff ff ba                                      blt #0x424100
004241a8  00 00 58 e3                                      cmp r8, #0
004241ac  0a 60 a0 e1                                      mov r6, sl
004241b0  52 ff ff ca                                      bgt #0x423f00
004241b4  48 ff ff ea                                      b #0x423edc
004241b8  08 20 9d e5                                      ldr r2, [sp, #8]
004241bc  10 10 9d e5                                      ldr r1, [sp, #0x10]
004241c0  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
004241c4  54 60 8d e2                                      add r6, sp, #0x54
004241c8  01 40 92 e7                                      ldr r4, [r2, r1]
004241cc  05 50 8f e0                                      add r5, pc, r5
004241d0  04 00 a0 e1                                      mov r0, r4
004241d4  ab 4d fc eb                                      bl #0x337888
004241d8  30 20 8d e2                                      add r2, sp, #0x30
004241dc  05 10 a0 e1                                      mov r1, r5
004241e0  06 00 a0 e1                                      mov r0, r6
004241e4  c0 bf fb eb                                      bl #0x3140ec
004241e8  06 10 a0 e1                                      mov r1, r6
004241ec  04 00 a0 e1                                      mov r0, r4
004241f0  24 4e fc eb                                      bl #0x337a88
004241f4  06 00 a0 e1                                      mov r0, r6
004241f8  15 d0 fb eb                                      bl #0x318254
004241fc  3c 60 8d e2                                      add r6, sp, #0x3c
00424200  04 00 a0 e1                                      mov r0, r4
00424204  9f 4d fc eb                                      bl #0x337888
00424208  05 10 a0 e1                                      mov r1, r5
0042420c  2c 20 8d e2                                      add r2, sp, #0x2c
00424210  06 00 a0 e1                                      mov r0, r6
00424214  b4 bf fb eb                                      bl #0x3140ec
00424218  04 00 a0 e1                                      mov r0, r4
0042421c  06 10 a0 e1                                      mov r1, r6
00424220  18 4e fc eb                                      bl #0x337a88
00424224  06 00 a0 e1                                      mov r0, r6
00424228  09 d0 fb eb                                      bl #0x318254
0042422c  7a ff ff ea                                      b #0x42401c
00424230  00 10 90 e5                                      ldr r1, [r0]
00424234  01 10 41 e2                                      sub r1, r1, #1
00424238  00 00 51 e3                                      cmp r1, #0
0042423c  00 10 80 e5                                      str r1, [r0]
00424240  00 00 00 1a                                      bne #0x424248
00424244  3b ba 0c eb                                      bl #0x752b38
00424248  00 10 a0 e3                                      mov r1, #0
0042424c  48 10 86 e5                                      str r1, [r6, #0x48]
00424250  4c 10 86 e5                                      str r1, [r6, #0x4c]
00424254  36 ff ff ea                                      b #0x423f34
00424258  00 40 a0 e1                                      mov r4, r0
0042425c  c1 ff ff ea                                      b #0x424168
00424260  2a a8 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00424264  c4 0c 57 00 ac 40 00 00 84 08 00 00 3c 52 4a 00  .byte 0xc4, 0x0c, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x3c, 0x52, 0x4a, 0x00
00424274  00 53 4a 00 d0 24 4a 00 60 50 4a 00 bc 50 4a 00  .byte 0x00, 0x53, 0x4a, 0x00, 0xd0, 0x24, 0x4a, 0x00, 0x60, 0x50, 0x4a, 0x00, 0xbc, 0x50, 0x4a, 0x00
00424284  74 4e 4a 00                                      .byte 0x74, 0x4e, 0x4a, 0x00

; FUNCTION 0x00424288, declared_size=344, range_size=344, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase12FS_GotoFrameEPKcS1_Pv
; demangled: MenuBase::FS_GotoFrame(char const*, char const*, void*)
; decoder-mode: arm
00424288  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0042428c  3c 41 9f e5                                      ldr r4, [pc, #0x13c]
00424290  3c 71 9f e5                                      ldr r7, [pc, #0x13c]
00424294  c4 d0 4d e2                                      sub sp, sp, #0xc4
00424298  04 40 8f e0                                      add r4, pc, r4
0042429c  07 30 94 e7                                      ldr r3, [r4, r7]
004242a0  01 00 a0 e1                                      mov r0, r1
004242a4  01 80 a0 e1                                      mov r8, r1
004242a8  00 30 93 e5                                      ldr r3, [r3]
004242ac  7c 10 a0 e3                                      mov r1, #0x7c
004242b0  02 b0 a0 e1                                      mov fp, r2
004242b4  bc 30 8d e5                                      str r3, [sp, #0xbc]
004242b8  5a aa fb eb                                      bl #0x30ec28
004242bc  00 60 50 e2                                      subs r6, r0, #0
004242c0  3f 00 00 0a                                      beq #0x4243c4
004242c4  06 50 68 e0                                      rsb r5, r8, r6
004242c8  4c a0 8d e2                                      add sl, sp, #0x4c
004242cc  05 20 a0 e1                                      mov r2, r5
004242d0  08 10 a0 e1                                      mov r1, r8
004242d4  0a 00 a0 e1                                      mov r0, sl
004242d8  62 a9 fb eb                                      bl #0x30e868
004242dc  c0 30 8d e2                                      add r3, sp, #0xc0
004242e0  05 50 83 e0                                      add r5, r3, r5
004242e4  0c 90 8d e2                                      add sb, sp, #0xc
004242e8  00 30 a0 e3                                      mov r3, #0
004242ec  01 10 86 e2                                      add r1, r6, #1
004242f0  74 30 45 e5                                      strb r3, [r5, #-0x74]
004242f4  09 00 a0 e1                                      mov r0, sb
004242f8  88 a8 fb eb                                      bl #0x30e520
004242fc  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
00424300  d4 50 9f e5                                      ldr r5, [pc, #0xd4]
00424304  a4 60 8d e2                                      add r6, sp, #0xa4
00424308  03 80 94 e7                                      ldr r8, [r4, r3]
0042430c  05 50 8f e0                                      add r5, pc, r5
00424310  08 00 a0 e1                                      mov r0, r8
00424314  5b 4d fc eb                                      bl #0x337888
00424318  08 20 8d e2                                      add r2, sp, #8
0042431c  06 00 a0 e1                                      mov r0, r6
00424320  05 10 a0 e1                                      mov r1, r5
00424324  70 bf fb eb                                      bl #0x3140ec
00424328  06 10 a0 e1                                      mov r1, r6
0042432c  08 00 a0 e1                                      mov r0, r8
00424330  d4 4d fc eb                                      bl #0x337a88
00424334  06 00 a0 e1                                      mov r0, r6
00424338  c5 cf fb eb                                      bl #0x318254
0042433c  04 00 9b e5                                      ldr r0, [fp, #4]
00424340  0a 10 a0 e1                                      mov r1, sl
00424344  85 13 0e eb                                      bl #0x7a9160
00424348  00 60 50 e2                                      subs r6, r0, #0
0042434c  0a 00 00 0a                                      beq #0x42437c
00424350  06 00 a0 e1                                      mov r0, r6
00424354  09 10 a0 e1                                      mov r1, sb
00424358  a6 cb ff eb                                      bl #0x4171f8
0042435c  01 00 a0 e3                                      mov r0, #1
00424360  07 30 94 e7                                      ldr r3, [r4, r7]
00424364  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
00424368  00 30 93 e5                                      ldr r3, [r3]
0042436c  03 00 52 e1                                      cmp r2, r3
00424370  15 00 00 1a                                      bne #0x4243cc
00424374  c4 d0 8d e2                                      add sp, sp, #0xc4
00424378  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0042437c  c2 21 00 eb                                      bl #0x42ca8c
00424380  fe 21 00 eb                                      bl #0x42cb80
00424384  0a 10 a0 e1                                      mov r1, sl
00424388  74 13 0e eb                                      bl #0x7a9160
0042438c  00 60 50 e2                                      subs r6, r0, #0
00424390  ee ff ff 1a                                      bne #0x424350
00424394  8c a0 8d e2                                      add sl, sp, #0x8c
00424398  08 00 a0 e1                                      mov r0, r8
0042439c  39 4d fc eb                                      bl #0x337888
004243a0  05 10 a0 e1                                      mov r1, r5
004243a4  04 20 8d e2                                      add r2, sp, #4
004243a8  0a 00 a0 e1                                      mov r0, sl
004243ac  4e bf fb eb                                      bl #0x3140ec
004243b0  08 00 a0 e1                                      mov r0, r8
004243b4  0a 10 a0 e1                                      mov r1, sl
004243b8  b2 4d fc eb                                      bl #0x337a88
004243bc  0a 00 a0 e1                                      mov r0, sl
004243c0  a3 cf fb eb                                      bl #0x318254
004243c4  06 00 a0 e1                                      mov r0, r6
004243c8  e4 ff ff ea                                      b #0x424360
004243cc  cf a7 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004243d0  f8 07 57 00 ac 40 00 00 84 08 00 00 34 4d 4a 00  .byte 0xf8, 0x07, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x34, 0x4d, 0x4a, 0x00

; FUNCTION 0x004243e0, declared_size=352, range_size=352, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase11FS_PlayAnimEPKcS1_Pv
; demangled: MenuBase::FS_PlayAnim(char const*, char const*, void*)
; decoder-mode: arm
004243e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004243e4  44 41 9f e5                                      ldr r4, [pc, #0x144]
004243e8  44 51 9f e5                                      ldr r5, [pc, #0x144]
004243ec  c4 d0 4d e2                                      sub sp, sp, #0xc4
004243f0  04 40 8f e0                                      add r4, pc, r4
004243f4  05 30 94 e7                                      ldr r3, [r4, r5]
004243f8  01 00 a0 e1                                      mov r0, r1
004243fc  01 60 a0 e1                                      mov r6, r1
00424400  00 30 93 e5                                      ldr r3, [r3]
00424404  7c 10 a0 e3                                      mov r1, #0x7c
00424408  02 90 a0 e1                                      mov sb, r2
0042440c  bc 30 8d e5                                      str r3, [sp, #0xbc]
00424410  04 aa fb eb                                      bl #0x30ec28
00424414  00 70 50 e2                                      subs r7, r0, #0
00424418  41 00 00 0a                                      beq #0x424524
0042441c  07 a0 66 e0                                      rsb sl, r6, r7
00424420  4c 80 8d e2                                      add r8, sp, #0x4c
00424424  0a 20 a0 e1                                      mov r2, sl
00424428  06 10 a0 e1                                      mov r1, r6
0042442c  08 00 a0 e1                                      mov r0, r8
00424430  0c a9 fb eb                                      bl #0x30e868
00424434  c0 30 8d e2                                      add r3, sp, #0xc0
00424438  0a a0 83 e0                                      add sl, r3, sl
0042443c  0c b0 8d e2                                      add fp, sp, #0xc
00424440  00 30 a0 e3                                      mov r3, #0
00424444  01 10 87 e2                                      add r1, r7, #1
00424448  74 30 4a e5                                      strb r3, [sl, #-0x74]
0042444c  0b 00 a0 e1                                      mov r0, fp
00424450  32 a8 fb eb                                      bl #0x30e520
00424454  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
00424458  dc 60 9f e5                                      ldr r6, [pc, #0xdc]
0042445c  a4 70 8d e2                                      add r7, sp, #0xa4
00424460  03 a0 94 e7                                      ldr sl, [r4, r3]
00424464  06 60 8f e0                                      add r6, pc, r6
00424468  0a 00 a0 e1                                      mov r0, sl
0042446c  05 4d fc eb                                      bl #0x337888
00424470  08 20 8d e2                                      add r2, sp, #8
00424474  07 00 a0 e1                                      mov r0, r7
00424478  06 10 a0 e1                                      mov r1, r6
0042447c  1a bf fb eb                                      bl #0x3140ec
00424480  07 10 a0 e1                                      mov r1, r7
00424484  0a 00 a0 e1                                      mov r0, sl
00424488  7e 4d fc eb                                      bl #0x337a88
0042448c  07 00 a0 e1                                      mov r0, r7
00424490  6f cf fb eb                                      bl #0x318254
00424494  04 00 99 e5                                      ldr r0, [sb, #4]
00424498  08 10 a0 e1                                      mov r1, r8
0042449c  2f 13 0e eb                                      bl #0x7a9160
004244a0  00 70 50 e2                                      subs r7, r0, #0
004244a4  0c 00 00 0a                                      beq #0x4244dc
004244a8  04 00 99 e5                                      ldr r0, [sb, #4]
004244ac  07 10 a0 e1                                      mov r1, r7
004244b0  0b 20 a0 e1                                      mov r2, fp
004244b4  00 30 a0 e3                                      mov r3, #0
004244b8  51 1d 0e eb                                      bl #0x7aba04
004244bc  01 00 a0 e3                                      mov r0, #1
004244c0  05 30 94 e7                                      ldr r3, [r4, r5]
004244c4  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
004244c8  00 30 93 e5                                      ldr r3, [r3]
004244cc  03 00 52 e1                                      cmp r2, r3
004244d0  15 00 00 1a                                      bne #0x42452c
004244d4  c4 d0 8d e2                                      add sp, sp, #0xc4
004244d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004244dc  6a 21 00 eb                                      bl #0x42ca8c
004244e0  a6 21 00 eb                                      bl #0x42cb80
004244e4  08 10 a0 e1                                      mov r1, r8
004244e8  1c 13 0e eb                                      bl #0x7a9160
004244ec  00 70 50 e2                                      subs r7, r0, #0
004244f0  ec ff ff 1a                                      bne #0x4244a8
004244f4  8c 80 8d e2                                      add r8, sp, #0x8c
004244f8  0a 00 a0 e1                                      mov r0, sl
004244fc  e1 4c fc eb                                      bl #0x337888
00424500  06 10 a0 e1                                      mov r1, r6
00424504  04 20 8d e2                                      add r2, sp, #4
00424508  08 00 a0 e1                                      mov r0, r8
0042450c  f6 be fb eb                                      bl #0x3140ec
00424510  0a 00 a0 e1                                      mov r0, sl
00424514  08 10 a0 e1                                      mov r1, r8
00424518  5a 4d fc eb                                      bl #0x337a88
0042451c  08 00 a0 e1                                      mov r0, r8
00424520  4b cf fb eb                                      bl #0x318254
00424524  07 00 a0 e1                                      mov r0, r7
00424528  e4 ff ff ea                                      b #0x4244c0
0042452c  77 a7 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00424530  a0 06 57 00 ac 40 00 00 84 08 00 00 dc 4b 4a 00  .byte 0xa0, 0x06, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xdc, 0x4b, 0x4a, 0x00

; FUNCTION 0x00424540, declared_size=344, range_size=344, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase11FS_SetText2EPKcS1_Pv
; demangled: MenuBase::FS_SetText2(char const*, char const*, void*)
; decoder-mode: arm
00424540  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00424544  34 41 9f e5                                      ldr r4, [pc, #0x134]
00424548  34 51 9f e5                                      ldr r5, [pc, #0x134]
0042454c  a8 d0 4d e2                                      sub sp, sp, #0xa8
00424550  04 40 8f e0                                      add r4, pc, r4
00424554  05 30 94 e7                                      ldr r3, [r4, r5]
00424558  01 00 a0 e1                                      mov r0, r1
0042455c  01 60 a0 e1                                      mov r6, r1
00424560  00 30 93 e5                                      ldr r3, [r3]
00424564  7c 10 a0 e3                                      mov r1, #0x7c
00424568  02 90 a0 e1                                      mov sb, r2
0042456c  a4 30 8d e5                                      str r3, [sp, #0xa4]
00424570  ac a9 fb eb                                      bl #0x30ec28
00424574  00 70 50 e2                                      subs r7, r0, #0
00424578  3d 00 00 0a                                      beq #0x424674
0042457c  07 80 66 e0                                      rsb r8, r6, r7
00424580  4c a0 8d e2                                      add sl, sp, #0x4c
00424584  08 20 a0 e1                                      mov r2, r8
00424588  06 10 a0 e1                                      mov r1, r6
0042458c  0a 00 a0 e1                                      mov r0, sl
00424590  b4 a8 fb eb                                      bl #0x30e868
00424594  a8 30 8d e2                                      add r3, sp, #0xa8
00424598  0c 60 8d e2                                      add r6, sp, #0xc
0042459c  08 80 83 e0                                      add r8, r3, r8
004245a0  00 30 a0 e3                                      mov r3, #0
004245a4  01 10 87 e2                                      add r1, r7, #1
004245a8  5c 30 48 e5                                      strb r3, [r8, #-0x5c]
004245ac  06 00 a0 e1                                      mov r0, r6
004245b0  da a7 fb eb                                      bl #0x30e520
004245b4  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
004245b8  8c 70 8d e2                                      add r7, sp, #0x8c
004245bc  03 80 94 e7                                      ldr r8, [r4, r3]
004245c0  08 00 a0 e1                                      mov r0, r8
004245c4  af 4c fc eb                                      bl #0x337888
004245c8  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
004245cc  08 20 8d e2                                      add r2, sp, #8
004245d0  07 00 a0 e1                                      mov r0, r7
004245d4  01 10 8f e0                                      add r1, pc, r1
004245d8  c3 be fb eb                                      bl #0x3140ec
004245dc  07 10 a0 e1                                      mov r1, r7
004245e0  08 00 a0 e1                                      mov r0, r8
004245e4  27 4d fc eb                                      bl #0x337a88
004245e8  07 00 a0 e1                                      mov r0, r7
004245ec  18 cf fb eb                                      bl #0x318254
004245f0  98 30 9f e5                                      ldr r3, [pc, #0x98]
004245f4  06 10 a0 e1                                      mov r1, r6
004245f8  03 30 94 e7                                      ldr r3, [r4, r3]
004245fc  34 00 93 e5                                      ldr r0, [r3, #0x34]
00424600  9b 91 03 eb                                      bl #0x508c74
00424604  00 60 50 e2                                      subs r6, r0, #0
00424608  19 00 00 0a                                      beq #0x424674
0042460c  0a 10 a0 e1                                      mov r1, sl
00424610  04 00 99 e5                                      ldr r0, [sb, #4]
00424614  d1 12 0e eb                                      bl #0x7a9160
00424618  00 10 50 e2                                      subs r1, r0, #0
0042461c  0e 00 00 0a                                      beq #0x42465c
00424620  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00424624  04 00 99 e5                                      ldr r0, [sb, #4]
00424628  06 30 a0 e1                                      mov r3, r6
0042462c  02 20 8f e0                                      add r2, pc, r2
00424630  01 60 a0 e3                                      mov r6, #1
00424634  00 60 8d e5                                      str r6, [sp]
00424638  8f 13 0e eb                                      bl #0x7a947c
0042463c  06 00 a0 e1                                      mov r0, r6
00424640  05 30 94 e7                                      ldr r3, [r4, r5]
00424644  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
00424648  00 30 93 e5                                      ldr r3, [r3]
0042464c  03 00 52 e1                                      cmp r2, r3
00424650  09 00 00 1a                                      bne #0x42467c
00424654  a8 d0 8d e2                                      add sp, sp, #0xa8
00424658  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0042465c  0a 21 00 eb                                      bl #0x42ca8c
00424660  46 21 00 eb                                      bl #0x42cb80
00424664  0a 10 a0 e1                                      mov r1, sl
00424668  bc 12 0e eb                                      bl #0x7a9160
0042466c  00 10 50 e2                                      subs r1, r0, #0
00424670  ea ff ff 1a                                      bne #0x424620
00424674  00 00 a0 e3                                      mov r0, #0
00424678  f0 ff ff ea                                      b #0x424640
0042467c  23 a7 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00424680  40 05 57 00 ac 40 00 00 84 08 00 00 6c 4a 4a 00  .byte 0x40, 0x05, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x6c, 0x4a, 0x4a, 0x00
00424690  f4 37 00 00 c4 a7 4c 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0xc4, 0xa7, 0x4c, 0x00

; FUNCTION 0x00424698, declared_size=296, range_size=296, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase10FS_SetTextEPKcS1_Pv
; demangled: MenuBase::FS_SetText(char const*, char const*, void*)
; decoder-mode: arm
00424698  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0042469c  04 41 9f e5                                      ldr r4, [pc, #0x104]
004246a0  04 51 9f e5                                      ldr r5, [pc, #0x104]
004246a4  68 d0 4d e2                                      sub sp, sp, #0x68
004246a8  04 40 8f e0                                      add r4, pc, r4
004246ac  05 30 94 e7                                      ldr r3, [r4, r5]
004246b0  01 00 a0 e1                                      mov r0, r1
004246b4  01 60 a0 e1                                      mov r6, r1
004246b8  00 30 93 e5                                      ldr r3, [r3]
004246bc  7c 10 a0 e3                                      mov r1, #0x7c
004246c0  02 90 a0 e1                                      mov sb, r2
004246c4  64 30 8d e5                                      str r3, [sp, #0x64]
004246c8  56 a9 fb eb                                      bl #0x30ec28
004246cc  00 70 50 e2                                      subs r7, r0, #0
004246d0  31 00 00 0a                                      beq #0x42479c
004246d4  07 a0 66 e0                                      rsb sl, r6, r7
004246d8  0c 80 8d e2                                      add r8, sp, #0xc
004246dc  06 10 a0 e1                                      mov r1, r6
004246e0  0a 20 a0 e1                                      mov r2, sl
004246e4  08 00 a0 e1                                      mov r0, r8
004246e8  5e a8 fb eb                                      bl #0x30e868
004246ec  68 30 8d e2                                      add r3, sp, #0x68
004246f0  0a a0 83 e0                                      add sl, r3, sl
004246f4  00 30 a0 e3                                      mov r3, #0
004246f8  5c 30 4a e5                                      strb r3, [sl, #-0x5c]
004246fc  01 00 87 e2                                      add r0, r7, #1
00424700  63 a6 fb eb                                      bl #0x30e094
00424704  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00424708  00 a0 a0 e1                                      mov sl, r0
0042470c  4c 60 8d e2                                      add r6, sp, #0x4c
00424710  03 70 94 e7                                      ldr r7, [r4, r3]
00424714  07 00 a0 e1                                      mov r0, r7
00424718  5a 4c fc eb                                      bl #0x337888
0042471c  90 10 9f e5                                      ldr r1, [pc, #0x90]
00424720  08 20 8d e2                                      add r2, sp, #8
00424724  06 00 a0 e1                                      mov r0, r6
00424728  01 10 8f e0                                      add r1, pc, r1
0042472c  6e be fb eb                                      bl #0x3140ec
00424730  06 10 a0 e1                                      mov r1, r6
00424734  07 00 a0 e1                                      mov r0, r7
00424738  d2 4c fc eb                                      bl #0x337a88
0042473c  06 00 a0 e1                                      mov r0, r6
00424740  c3 ce fb eb                                      bl #0x318254
00424744  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00424748  0a 10 a0 e1                                      mov r1, sl
0042474c  03 30 94 e7                                      ldr r3, [r4, r3]
00424750  34 00 93 e5                                      ldr r0, [r3, #0x34]
00424754  e0 91 03 eb                                      bl #0x508edc
00424758  00 30 50 e2                                      subs r3, r0, #0
0042475c  0e 00 00 0a                                      beq #0x42479c
00424760  54 20 9f e5                                      ldr r2, [pc, #0x54]
00424764  04 00 99 e5                                      ldr r0, [sb, #4]
00424768  01 60 a0 e3                                      mov r6, #1
0042476c  08 10 a0 e1                                      mov r1, r8
00424770  02 20 8f e0                                      add r2, pc, r2
00424774  00 60 8d e5                                      str r6, [sp]
00424778  0f 13 0e eb                                      bl #0x7a93bc
0042477c  06 00 a0 e1                                      mov r0, r6
00424780  05 30 94 e7                                      ldr r3, [r4, r5]
00424784  64 20 9d e5                                      ldr r2, [sp, #0x64]
00424788  00 30 93 e5                                      ldr r3, [r3]
0042478c  03 00 52 e1                                      cmp r2, r3
00424790  03 00 00 1a                                      bne #0x4247a4
00424794  68 d0 8d e2                                      add sp, sp, #0x68
00424798  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0042479c  00 00 a0 e3                                      mov r0, #0
004247a0  f6 ff ff ea                                      b #0x424780
004247a4  d9 a6 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004247a8  e8 03 57 00 ac 40 00 00 84 08 00 00 18 49 4a 00  .byte 0xe8, 0x03, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x18, 0x49, 0x4a, 0x00
004247b8  f4 37 00 00 80 a6 4c 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0x80, 0xa6, 0x4c, 0x00

; FUNCTION 0x004247c0, declared_size=284, range_size=284, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase14FS_GetCharPropEPKcS1_Pv
; demangled: MenuBase::FS_GetCharProp(char const*, char const*, void*)
; decoder-mode: arm
004247c0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004247c4  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
004247c8  f0 50 9f e5                                      ldr r5, [pc, #0xf0]
004247cc  2c d0 4d e2                                      sub sp, sp, #0x2c
004247d0  04 40 8f e0                                      add r4, pc, r4
004247d4  05 30 94 e7                                      ldr r3, [r4, r5]
004247d8  01 00 a0 e1                                      mov r0, r1
004247dc  02 80 a0 e1                                      mov r8, r2
004247e0  00 30 93 e5                                      ldr r3, [r3]
004247e4  04 60 8d e2                                      add r6, sp, #4
004247e8  24 30 8d e5                                      str r3, [sp, #0x24]
004247ec  28 a6 fb eb                                      bl #0x30e094
004247f0  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
004247f4  00 a0 a0 e1                                      mov sl, r0
004247f8  03 70 94 e7                                      ldr r7, [r4, r3]
004247fc  07 00 a0 e1                                      mov r0, r7
00424800  20 4c fc eb                                      bl #0x337888
00424804  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
00424808  0d 20 a0 e1                                      mov r2, sp
0042480c  06 00 a0 e1                                      mov r0, r6
00424810  01 10 8f e0                                      add r1, pc, r1
00424814  34 be fb eb                                      bl #0x3140ec
00424818  06 10 a0 e1                                      mov r1, r6
0042481c  07 00 a0 e1                                      mov r0, r7
00424820  98 4c fc eb                                      bl #0x337a88
00424824  06 00 a0 e1                                      mov r0, r6
00424828  89 ce fb eb                                      bl #0x318254
0042482c  98 30 9f e5                                      ldr r3, [pc, #0x98]
00424830  00 10 a0 e3                                      mov r1, #0
00424834  01 20 a0 e3                                      mov r2, #1
00424838  03 30 94 e7                                      ldr r3, [r4, r3]
0042483c  40 00 93 e5                                      ldr r0, [r3, #0x40]
00424840  0c 27 fd eb                                      bl #0x36e478
00424844  60 06 90 e5                                      ldr r0, [r0, #0x660]
00424848  00 00 50 e3                                      cmp r0, #0
0042484c  12 00 00 0a                                      beq #0x42489c
00424850  ff 1e 80 e2                                      add r1, r0, #0xff0
00424854  04 10 81 e2                                      add r1, r1, #4
00424858  0a 20 a0 e1                                      mov r2, sl
0042485c  56 0e 80 e2                                      add r0, r0, #0x560
00424860  53 e9 fe eb                                      bl #0x3dedb4
00424864  64 10 9f e5                                      ldr r1, [pc, #0x64]
00424868  1c 60 8d e2                                      add r6, sp, #0x1c
0042486c  00 20 a0 e1                                      mov r2, r0
00424870  01 10 8f e0                                      add r1, pc, r1
00424874  06 00 a0 e1                                      mov r0, r6
00424878  99 a8 fb eb                                      bl #0x30eae4
0042487c  50 10 9f e5                                      ldr r1, [pc, #0x50]
00424880  50 20 9f e5                                      ldr r2, [pc, #0x50]
00424884  04 00 98 e5                                      ldr r0, [r8, #4]
00424888  01 10 8f e0                                      add r1, pc, r1
0042488c  02 20 8f e0                                      add r2, pc, r2
00424890  06 30 a0 e1                                      mov r3, r6
00424894  a5 1b 0e eb                                      bl #0x7ab730
00424898  01 00 a0 e3                                      mov r0, #1
0042489c  05 30 94 e7                                      ldr r3, [r4, r5]
004248a0  24 20 9d e5                                      ldr r2, [sp, #0x24]
004248a4  00 30 93 e5                                      ldr r3, [r3]
004248a8  03 00 52 e1                                      cmp r2, r3
004248ac  01 00 00 1a                                      bne #0x4248b8
004248b0  2c d0 8d e2                                      add sp, sp, #0x2c
004248b4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
004248b8  94 a6 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004248bc  c0 02 57 00 ac 40 00 00 84 08 00 00 30 48 4a 00  .byte 0xc0, 0x02, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x30, 0x48, 0x4a, 0x00
004248cc  f4 37 00 00 40 d6 49 00 78 e9 49 00 c4 46 4a 00  .byte 0xf4, 0x37, 0x00, 0x00, 0x40, 0xd6, 0x49, 0x00, 0x78, 0xe9, 0x49, 0x00, 0xc4, 0x46, 0x4a, 0x00

; FUNCTION 0x004248dc, declared_size=296, range_size=296, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase17FS_IsMapLocLockedEPKcS1_Pv
; demangled: MenuBase::FS_IsMapLocLocked(char const*, char const*, void*)
; decoder-mode: arm
004248dc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004248e0  00 41 9f e5                                      ldr r4, [pc, #0x100]
004248e4  00 51 9f e5                                      ldr r5, [pc, #0x100]
004248e8  00 01 9f e5                                      ldr r0, [pc, #0x100]
004248ec  04 40 8f e0                                      add r4, pc, r4
004248f0  05 30 94 e7                                      ldr r3, [r4, r5]
004248f4  34 d0 4d e2                                      sub sp, sp, #0x34
004248f8  00 00 94 e7                                      ldr r0, [r4, r0]
004248fc  00 30 93 e5                                      ldr r3, [r3]
00424900  01 60 a0 e1                                      mov r6, r1
00424904  02 70 a0 e1                                      mov r7, r2
00424908  2c 30 8d e5                                      str r3, [sp, #0x2c]
0042490c  20 eb fb eb                                      bl #0x31f594
00424910  00 00 50 e3                                      cmp r0, #0
00424914  00 00 56 13                                      cmpne r6, #0
00424918  00 80 a0 e1                                      mov r8, r0
0042491c  02 00 00 0a                                      beq #0x42492c
00424920  d0 30 d6 e1                                      ldrsb r3, [r6]
00424924  00 00 53 e3                                      cmp r3, #0
00424928  07 00 00 1a                                      bne #0x42494c
0042492c  00 00 a0 e3                                      mov r0, #0
00424930  05 30 94 e7                                      ldr r3, [r4, r5]
00424934  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00424938  00 30 93 e5                                      ldr r3, [r3]
0042493c  03 00 52 e1                                      cmp r2, r3
00424940  27 00 00 1a                                      bne #0x4249e4
00424944  34 d0 8d e2                                      add sp, sp, #0x34
00424948  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0042494c  06 00 a0 e1                                      mov r0, r6
00424950  cf a5 fb eb                                      bl #0x30e094
00424954  00 10 a0 e1                                      mov r1, r0
00424958  08 00 a0 e1                                      mov r0, r8
0042495c  bb 2b ff eb                                      bl #0x3ef850
00424960  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00424964  00 b0 a0 e1                                      mov fp, r0
00424968  14 80 8d e2                                      add r8, sp, #0x14
0042496c  03 a0 94 e7                                      ldr sl, [r4, r3]
00424970  04 60 8d e2                                      add r6, sp, #4
00424974  01 90 a0 e3                                      mov sb, #1
00424978  0a 00 a0 e1                                      mov r0, sl
0042497c  c1 4b fc eb                                      bl #0x337888
00424980  70 10 9f e5                                      ldr r1, [pc, #0x70]
00424984  10 20 8d e2                                      add r2, sp, #0x10
00424988  08 00 a0 e1                                      mov r0, r8
0042498c  01 10 8f e0                                      add r1, pc, r1
00424990  d5 bd fb eb                                      bl #0x3140ec
00424994  08 10 a0 e1                                      mov r1, r8
00424998  0a 00 a0 e1                                      mov r0, sl
0042499c  39 4c fc eb                                      bl #0x337a88
004249a0  08 00 a0 e1                                      mov r0, r8
004249a4  2a ce fb eb                                      bl #0x318254
004249a8  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
004249ac  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
004249b0  04 00 97 e5                                      ldr r0, [r7, #4]
004249b4  00 c0 a0 e3                                      mov ip, #0
004249b8  01 10 8f e0                                      add r1, pc, r1
004249bc  02 20 8f e0                                      add r2, pc, r2
004249c0  06 30 a0 e1                                      mov r3, r6
004249c4  04 c0 cd e5                                      strb ip, [sp, #4]
004249c8  08 b0 cd e5                                      strb fp, [sp, #8]
004249cc  05 90 cd e5                                      strb sb, [sp, #5]
004249d0  ff 1a 0e eb                                      bl #0x7ab5d4
004249d4  06 00 a0 e1                                      mov r0, r6
004249d8  d1 c9 0d eb                                      bl #0x797124
004249dc  09 00 a0 e1                                      mov r0, sb
004249e0  d2 ff ff ea                                      b #0x424930
004249e4  49 a6 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004249e8  a4 01 57 00 ac 40 00 00 f4 37 00 00 84 08 00 00  .byte 0xa4, 0x01, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
004249f8  b4 46 4a 00 48 e8 49 00 94 45 4a 00              .byte 0xb4, 0x46, 0x4a, 0x00, 0x48, 0xe8, 0x49, 0x00, 0x94, 0x45, 0x4a, 0x00

; FUNCTION 0x00424af4, declared_size=620, range_size=620, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase4HideEv
; demangled: MenuBase::Hide()
; decoder-mode: arm
00424af4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00424af8  28 42 9f e5                                      ldr r4, [pc, #0x228]
00424afc  28 52 9f e5                                      ldr r5, [pc, #0x228]
00424b00  2c d0 4d e2                                      sub sp, sp, #0x2c
00424b04  04 40 8f e0                                      add r4, pc, r4
00424b08  05 20 94 e7                                      ldr r2, [r4, r5]
00424b0c  00 30 90 e5                                      ldr r3, [r0]
00424b10  00 60 a0 e1                                      mov r6, r0
00424b14  00 20 92 e5                                      ldr r2, [r2]
00424b18  24 20 8d e5                                      str r2, [sp, #0x24]
00424b1c  0f e0 a0 e1                                      mov lr, pc
00424b20  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00424b24  00 00 50 e3                                      cmp r0, #0
00424b28  06 00 00 1a                                      bne #0x424b48
00424b2c  05 30 94 e7                                      ldr r3, [r4, r5]
00424b30  24 20 9d e5                                      ldr r2, [sp, #0x24]
00424b34  00 30 93 e5                                      ldr r3, [r3]
00424b38  03 00 52 e1                                      cmp r2, r3
00424b3c  78 00 00 1a                                      bne #0x424d24
00424b40  2c d0 8d e2                                      add sp, sp, #0x2c
00424b44  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00424b48  e0 31 9f e5                                      ldr r3, [pc, #0x1e0]
00424b4c  0c 70 8d e2                                      add r7, sp, #0xc
00424b50  03 80 94 e7                                      ldr r8, [r4, r3]
00424b54  08 00 a0 e1                                      mov r0, r8
00424b58  4a 4b fc eb                                      bl #0x337888
00424b5c  d0 11 9f e5                                      ldr r1, [pc, #0x1d0]
00424b60  08 20 8d e2                                      add r2, sp, #8
00424b64  07 00 a0 e1                                      mov r0, r7
00424b68  01 10 8f e0                                      add r1, pc, r1
00424b6c  5e bd fb eb                                      bl #0x3140ec
00424b70  07 10 a0 e1                                      mov r1, r7
00424b74  08 00 a0 e1                                      mov r0, r8
00424b78  c2 4b fc eb                                      bl #0x337a88
00424b7c  07 00 a0 e1                                      mov r0, r7
00424b80  b3 cd fb eb                                      bl #0x318254
00424b84  5c 00 96 e5                                      ldr r0, [r6, #0x5c]
00424b88  00 00 50 e3                                      cmp r0, #0
00424b8c  00 00 00 0a                                      beq #0x424b94
00424b90  c4 b7 ff eb                                      bl #0x412aa8
00424b94  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
00424b98  08 70 86 e2                                      add r7, r6, #8
00424b9c  07 00 a0 e1                                      mov r0, r7
00424ba0  01 10 8f e0                                      add r1, pc, r1
00424ba4  dc a5 fb eb                                      bl #0x30e31c
00424ba8  00 00 50 e3                                      cmp r0, #0
00424bac  31 00 00 0a                                      beq #0x424c78
00424bb0  84 11 9f e5                                      ldr r1, [pc, #0x184]
00424bb4  07 00 a0 e1                                      mov r0, r7
00424bb8  01 10 8f e0                                      add r1, pc, r1
00424bbc  d6 a5 fb eb                                      bl #0x30e31c
00424bc0  00 00 50 e3                                      cmp r0, #0
00424bc4  2b 00 00 0a                                      beq #0x424c78
00424bc8  70 11 9f e5                                      ldr r1, [pc, #0x170]
00424bcc  07 00 a0 e1                                      mov r0, r7
00424bd0  01 10 8f e0                                      add r1, pc, r1
00424bd4  d0 a5 fb eb                                      bl #0x30e31c
00424bd8  00 a0 50 e2                                      subs sl, r0, #0
00424bdc  3a 00 00 0a                                      beq #0x424ccc
00424be0  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
00424be4  07 00 a0 e1                                      mov r0, r7
00424be8  01 10 8f e0                                      add r1, pc, r1
00424bec  ca a5 fb eb                                      bl #0x30e31c
00424bf0  00 00 50 e3                                      cmp r0, #0
00424bf4  27 00 00 1a                                      bne #0x424c98
00424bf8  48 31 9f e5                                      ldr r3, [pc, #0x148]
00424bfc  00 20 a0 e3                                      mov r2, #0
00424c00  03 30 94 e7                                      ldr r3, [r4, r3]
00424c04  00 20 c3 e5                                      strb r2, [r3]
00424c08  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
00424c0c  07 00 a0 e1                                      mov r0, r7
00424c10  01 10 8f e0                                      add r1, pc, r1
00424c14  c0 a5 fb eb                                      bl #0x30e31c
00424c18  00 00 50 e3                                      cmp r0, #0
00424c1c  19 00 00 0a                                      beq #0x424c88
00424c20  00 10 a0 e3                                      mov r1, #0
00424c24  06 00 a0 e1                                      mov r0, r6
00424c28  e3 f5 ff eb                                      bl #0x4223bc
00424c2c  96 1f 00 eb                                      bl #0x42ca8c
00424c30  06 10 a0 e1                                      mov r1, r6
00424c34  35 25 00 eb                                      bl #0x42e110
00424c38  4c 10 96 e5                                      ldr r1, [r6, #0x4c]
00424c3c  04 70 96 e5                                      ldr r7, [r6, #4]
00424c40  00 00 51 e3                                      cmp r1, #0
00424c44  03 00 00 0a                                      beq #0x424c58
00424c48  48 00 96 e5                                      ldr r0, [r6, #0x48]
00424c4c  04 30 d0 e5                                      ldrb r3, [r0, #4]
00424c50  00 00 53 e3                                      cmp r3, #0
00424c54  28 00 00 0a                                      beq #0x424cfc
00424c58  f0 20 9f e5                                      ldr r2, [pc, #0xf0]
00424c5c  00 c0 a0 e3                                      mov ip, #0
00424c60  07 00 a0 e1                                      mov r0, r7
00424c64  02 20 8f e0                                      add r2, pc, r2
00424c68  0c 30 a0 e1                                      mov r3, ip
00424c6c  00 c0 8d e5                                      str ip, [sp]
00424c70  65 1c 0e eb                                      bl #0x7abe0c
00424c74  ac ff ff ea                                      b #0x424b2c
00424c78  83 1f 00 eb                                      bl #0x42ca8c
00424c7c  00 30 a0 e3                                      mov r3, #0
00424c80  60 30 80 e5                                      str r3, [r0, #0x60]
00424c84  cf ff ff ea                                      b #0x424bc8
00424c88  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00424c8c  03 30 94 e7                                      ldr r3, [r4, r3]
00424c90  ec 00 c3 e5                                      strb r0, [r3, #0xec]
00424c94  e1 ff ff ea                                      b #0x424c20
00424c98  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
00424c9c  07 00 a0 e1                                      mov r0, r7
00424ca0  01 10 8f e0                                      add r1, pc, r1
00424ca4  9c a5 fb eb                                      bl #0x30e31c
00424ca8  00 00 50 e3                                      cmp r0, #0
00424cac  d1 ff ff 0a                                      beq #0x424bf8
00424cb0  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
00424cb4  07 00 a0 e1                                      mov r0, r7
00424cb8  01 10 8f e0                                      add r1, pc, r1
00424cbc  96 a5 fb eb                                      bl #0x30e31c
00424cc0  00 00 50 e3                                      cmp r0, #0
00424cc4  cf ff ff 1a                                      bne #0x424c08
00424cc8  ca ff ff ea                                      b #0x424bf8
00424ccc  80 30 9f e5                                      ldr r3, [pc, #0x80]
00424cd0  03 80 94 e7                                      ldr r8, [r4, r3]
00424cd4  4c 00 98 e5                                      ldr r0, [r8, #0x4c]
00424cd8  0d 22 01 eb                                      bl #0x46d514
00424cdc  07 00 50 e3                                      cmp r0, #7
00424ce0  be ff ff 9a                                      bls #0x424be0
00424ce4  0a 10 a0 e1                                      mov r1, sl
00424ce8  4c 00 98 e5                                      ldr r0, [r8, #0x4c]
00424cec  04 21 01 eb                                      bl #0x46d104
00424cf0  4c 00 98 e5                                      ldr r0, [r8, #0x4c]
00424cf4  8e 1f 01 eb                                      bl #0x46cb34
00424cf8  b8 ff ff ea                                      b #0x424be0
00424cfc  00 10 90 e5                                      ldr r1, [r0]
00424d00  01 10 41 e2                                      sub r1, r1, #1
00424d04  00 00 51 e3                                      cmp r1, #0
00424d08  00 10 80 e5                                      str r1, [r0]
00424d0c  00 00 00 1a                                      bne #0x424d14
00424d10  88 b7 0c eb                                      bl #0x752b38
00424d14  00 10 a0 e3                                      mov r1, #0
00424d18  4c 10 86 e5                                      str r1, [r6, #0x4c]
00424d1c  48 10 86 e5                                      str r1, [r6, #0x48]
00424d20  cc ff ff ea                                      b #0x424c58
00424d24  79 a5 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00424d28  8c ff 56 00 ac 40 00 00 84 08 00 00 d8 44 4a 00  .byte 0x8c, 0xff, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xd8, 0x44, 0x4a, 0x00
00424d38  60 a1 49 00 10 46 4a 00 70 d3 49 00 30 a1 49 00  .byte 0x60, 0xa1, 0x49, 0x00, 0x10, 0x46, 0x4a, 0x00, 0x70, 0xd3, 0x49, 0x00, 0x30, 0xa1, 0x49, 0x00
00424d48  a0 2f 00 00 d8 45 4a 00 a4 45 4a 00 f4 37 00 00  .byte 0xa0, 0x2f, 0x00, 0x00, 0xd8, 0x45, 0x4a, 0x00, 0xa4, 0x45, 0x4a, 0x00, 0xf4, 0x37, 0x00, 0x00
00424d58  38 45 4a 00 10 45 4a 00                          .byte 0x38, 0x45, 0x4a, 0x00, 0x10, 0x45, 0x4a, 0x00

; FUNCTION 0x00424ef0, declared_size=1376, range_size=1376, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase19FS_GetParsedString2EPKcS1_Pv
; demangled: MenuBase::FS_GetParsedString2(char const*, char const*, void*)
; decoder-mode: arm
00424ef0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00424ef4  38 05 9f e5                                      ldr r0, [pc, #0x538]
00424ef8  ac d0 4d e2                                      sub sp, sp, #0xac
00424efc  34 35 9f e5                                      ldr r3, [pc, #0x534]
00424f00  08 00 8d e5                                      str r0, [sp, #8]
00424f04  08 40 9d e5                                      ldr r4, [sp, #8]
00424f08  10 30 8d e5                                      str r3, [sp, #0x10]
00424f0c  00 00 51 e2                                      subs r0, r1, #0
00424f10  04 40 8f e0                                      add r4, pc, r4
00424f14  03 30 94 e7                                      ldr r3, [r4, r3]
00424f18  08 40 8d e5                                      str r4, [sp, #8]
00424f1c  1c 20 8d e5                                      str r2, [sp, #0x1c]
00424f20  00 30 93 e5                                      ldr r3, [r3]
00424f24  a4 30 8d e5                                      str r3, [sp, #0xa4]
00424f28  cd 00 00 0a                                      beq #0x425264
00424f2c  08 c5 9f e5                                      ldr ip, [pc, #0x508]
00424f30  78 00 8d e2                                      add r0, sp, #0x78
00424f34  0c 00 8d e5                                      str r0, [sp, #0xc]
00424f38  0c 30 94 e7                                      ldr r3, [r4, ip]
00424f3c  20 c0 8d e5                                      str ip, [sp, #0x20]
00424f40  00 70 a0 e3                                      mov r7, #0
00424f44  34 00 93 e5                                      ldr r0, [r3, #0x34]
00424f48  49 8f 03 eb                                      bl #0x508c74
00424f4c  2c 00 8d e5                                      str r0, [sp, #0x2c]
00424f50  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00424f54  10 10 a0 e3                                      mov r1, #0x10
00424f58  90 40 8d e2                                      add r4, sp, #0x90
00424f5c  88 00 8d e5                                      str r0, [sp, #0x88]
00424f60  8c 00 8d e5                                      str r0, [sp, #0x8c]
00424f64  c4 b1 fb eb                                      bl #0x31167c
00424f68  88 30 9d e5                                      ldr r3, [sp, #0x88]
00424f6c  00 70 c3 e5                                      strb r7, [r3]
00424f70  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00424f74  04 00 9c e5                                      ldr r0, [ip, #4]
00424f78  64 70 cd e5                                      strb r7, [sp, #0x64]
00424f7c  65 70 cd e5                                      strb r7, [sp, #0x65]
00424f80  49 0b 0e eb                                      bl #0x7a7cac
00424f84  72 3c 0d eb                                      bl #0x774154
00424f88  00 30 90 e5                                      ldr r3, [r0]
00424f8c  00 50 a0 e1                                      mov r5, r0
00424f90  10 10 a0 e3                                      mov r1, #0x10
00424f94  20 60 93 e5                                      ldr r6, [r3, #0x20]
00424f98  04 00 a0 e1                                      mov r0, r4
00424f9c  01 30 a0 e3                                      mov r3, #1
00424fa0  90 30 cd e5                                      strb r3, [sp, #0x90]
00424fa4  91 70 cd e5                                      strb r7, [sp, #0x91]
00424fa8  59 b3 0c eb                                      bl #0x751d14
00424fac  d0 39 dd e1                                      ldrsb r3, [sp, #0x90]
00424fb0  88 14 9f e5                                      ldr r1, [pc, #0x488]
00424fb4  11 20 a0 e3                                      mov r2, #0x11
00424fb8  01 00 73 e3                                      cmn r3, #1
00424fbc  01 00 84 12                                      addne r0, r4, #1
00424fc0  9c 00 9d 05                                      ldreq r0, [sp, #0x9c]
00424fc4  01 10 8f e0                                      add r1, pc, r1
00424fc8  26 a6 fb eb                                      bl #0x30e868
00424fcc  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
00424fd0  00 20 e0 e3                                      mvn r2, #0
00424fd4  64 00 8d e2                                      add r0, sp, #0x64
00424fd8  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
00424fdc  23 2c a0 e1                                      lsr r2, r3, #0x18
00424fe0  24 00 8d e5                                      str r0, [sp, #0x24]
00424fe4  1f 20 c0 e7                                      bfc r2, #0, #1
00424fe8  a0 30 8d e5                                      str r3, [sp, #0xa0]
00424fec  05 00 a0 e1                                      mov r0, r5
00424ff0  a3 20 cd e5                                      strb r2, [sp, #0xa3]
00424ff4  04 10 a0 e1                                      mov r1, r4
00424ff8  24 20 9d e5                                      ldr r2, [sp, #0x24]
00424ffc  36 ff 2f e1                                      blx r6
00425000  d0 39 dd e1                                      ldrsb r3, [sp, #0x90]
00425004  01 00 73 e3                                      cmn r3, #1
00425008  f5 00 00 0a                                      beq #0x4253e4
0042500c  d5 36 dd e1                                      ldrsb r3, [sp, #0x65]
00425010  2c 14 9f e5                                      ldr r1, [pc, #0x42c]
00425014  08 20 9d e5                                      ldr r2, [sp, #8]
00425018  05 00 53 e3                                      cmp r3, #5
0042501c  68 70 9d 05                                      ldreq r7, [sp, #0x68]
00425020  01 30 92 e7                                      ldr r3, [r2, r1]
00425024  00 70 a0 13                                      movne r7, #0
00425028  00 40 a0 e3                                      mov r4, #0
0042502c  08 30 83 e2                                      add r3, r3, #8
00425030  00 00 57 e3                                      cmp r7, #0
00425034  28 10 8d e5                                      str r1, [sp, #0x28]
00425038  40 40 8d e5                                      str r4, [sp, #0x40]
0042503c  44 40 8d e5                                      str r4, [sp, #0x44]
00425040  3c 30 8d e5                                      str r3, [sp, #0x3c]
00425044  48 40 8d e5                                      str r4, [sp, #0x48]
00425048  e9 00 00 0a                                      beq #0x4253f4
0042504c  58 00 8d e2                                      add r0, sp, #0x58
00425050  50 10 97 e5                                      ldr r1, [r7, #0x50]
00425054  48 f5 ff eb                                      bl #0x42257c
00425058  50 30 97 e5                                      ldr r3, [r7, #0x50]
0042505c  04 00 53 e1                                      cmp r3, r4
00425060  3c 30 8d d2                                      addle r3, sp, #0x3c
00425064  14 30 8d d5                                      strle r3, [sp, #0x14]
00425068  43 00 00 da                                      ble #0x42517c
0042506c  3c c0 8d e2                                      add ip, sp, #0x3c
00425070  55 05 05 e3                                      movw r0, #0x5555
00425074  4c 90 8d e2                                      add sb, sp, #0x4c
00425078  00 07 80 e1                                      orr r0, r0, r0, lsl #14
0042507c  0c 10 8c e2                                      add r1, ip, #0xc
00425080  14 c0 8d e5                                      str ip, [sp, #0x14]
00425084  18 00 8d e5                                      str r0, [sp, #0x18]
00425088  70 a0 8d e2                                      add sl, sp, #0x70
0042508c  04 50 a0 e1                                      mov r5, r4
00425090  04 b0 89 e2                                      add fp, sb, #4
00425094  34 10 8d e5                                      str r1, [sp, #0x34]
00425098  00 10 a0 e3                                      mov r1, #0
0042509c  0c 00 a0 e3                                      mov r0, #0xc
004250a0  32 ad fb eb                                      bl #0x310570
004250a4  00 50 c0 e5                                      strb r5, [r0]
004250a8  01 50 c0 e5                                      strb r5, [r0, #1]
004250ac  58 20 9d e5                                      ldr r2, [sp, #0x58]
004250b0  00 30 a0 e1                                      mov r3, r0
004250b4  04 00 a0 e1                                      mov r0, r4
004250b8  04 31 82 e7                                      str r3, [r2, r4, lsl #2]
004250bc  58 30 9d e5                                      ldr r3, [sp, #0x58]
004250c0  02 20 a0 e3                                      mov r2, #2
004250c4  04 61 93 e7                                      ldr r6, [r3, r4, lsl #2]
004250c8  4d 20 cd e5                                      strb r2, [sp, #0x4d]
004250cc  4c 50 cd e5                                      strb r5, [sp, #0x4c]
004250d0  16 a7 fb eb                                      bl #0x30ed30
004250d4  f0 07 cd e1                                      strd r0, r1, [sp, #0x70]
004250d8  0c 00 9a e8                                      ldm sl, {r2, r3}
004250dc  09 00 a0 e1                                      mov r0, sb
004250e0  0c 00 8b e8                                      stm fp, {r2, r3}
004250e4  00 30 97 e5                                      ldr r3, [r7]
004250e8  20 80 93 e5                                      ldr r8, [r3, #0x20]
004250ec  64 ee ff eb                                      bl #0x420a84
004250f0  06 20 a0 e1                                      mov r2, r6
004250f4  00 10 a0 e1                                      mov r1, r0
004250f8  07 00 a0 e1                                      mov r0, r7
004250fc  38 ff 2f e1                                      blx r8
00425100  00 00 50 e3                                      cmp r0, #0
00425104  16 00 00 0a                                      beq #0x425164
00425108  44 80 9d e5                                      ldr r8, [sp, #0x44]
0042510c  48 30 9d e5                                      ldr r3, [sp, #0x48]
00425110  03 00 58 e1                                      cmp r8, r3
00425114  5b 00 00 0a                                      beq #0x425288
00425118  00 30 a0 e3                                      mov r3, #0
0042511c  00 30 88 e5                                      str r3, [r8]
00425120  08 50 88 e5                                      str r5, [r8, #8]
00425124  04 50 88 e5                                      str r5, [r8, #4]
00425128  44 80 9d e5                                      ldr r8, [sp, #0x44]
0042512c  0c 80 88 e2                                      add r8, r8, #0xc
00425130  44 80 8d e5                                      str r8, [sp, #0x44]
00425134  06 00 a0 e1                                      mov r0, r6
00425138  45 ca 0d eb                                      bl #0x797a54
0042513c  57 a5 fb eb                                      bl #0x30e6a0
00425140  0c 00 08 e5                                      str r0, [r8, #-0xc]
00425144  06 00 a0 e1                                      mov r0, r6
00425148  41 ca 0d eb                                      bl #0x797a54
0042514c  34 a6 fb eb                                      bl #0x30ea24
00425150  0c 80 48 e2                                      sub r8, r8, #0xc
00425154  04 00 88 e5                                      str r0, [r8, #4]
00425158  06 00 a0 e1                                      mov r0, r6
0042515c  94 c7 0d eb                                      bl #0x796fb4
00425160  08 00 88 e5                                      str r0, [r8, #8]
00425164  09 00 a0 e1                                      mov r0, sb
00425168  ed c7 0d eb                                      bl #0x797124
0042516c  50 30 97 e5                                      ldr r3, [r7, #0x50]
00425170  01 40 84 e2                                      add r4, r4, #1
00425174  03 00 54 e1                                      cmp r4, r3
00425178  c6 ff ff ba                                      blt #0x425098
0042517c  08 20 9d e5                                      ldr r2, [sp, #8]
00425180  20 10 9d e5                                      ldr r1, [sp, #0x20]
00425184  01 30 92 e7                                      ldr r3, [r2, r1]
00425188  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0042518c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00425190  34 00 93 e5                                      ldr r0, [r3, #0x34]
00425194  14 30 9d e5                                      ldr r3, [sp, #0x14]
00425198  53 92 03 eb                                      bl #0x509aec
0042519c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
004251a0  58 00 9d e5                                      ldr r0, [sp, #0x58]
004251a4  02 30 60 e0                                      rsb r3, r0, r2
004251a8  23 31 b0 e1                                      lsrs r3, r3, #2
004251ac  0d 00 00 0a                                      beq #0x4251e8
004251b0  00 40 a0 e3                                      mov r4, #0
004251b4  04 51 90 e7                                      ldr r5, [r0, r4, lsl #2]
004251b8  00 00 55 e3                                      cmp r5, #0
004251bc  05 00 00 0a                                      beq #0x4251d8
004251c0  05 00 a0 e1                                      mov r0, r5
004251c4  d6 c7 0d eb                                      bl #0x797124
004251c8  05 00 a0 e1                                      mov r0, r5
004251cc  9b ac fb eb                                      bl #0x310440
004251d0  58 00 9d e5                                      ldr r0, [sp, #0x58]
004251d4  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
004251d8  01 40 84 e2                                      add r4, r4, #1
004251dc  02 30 60 e0                                      rsb r3, r0, r2
004251e0  43 01 54 e1                                      cmp r4, r3, asr #2
004251e4  f2 ff ff 3a                                      blo #0x4251b4
004251e8  00 00 52 e1                                      cmp r2, r0
004251ec  5c 00 8d 15                                      strne r0, [sp, #0x5c]
004251f0  00 00 50 e3                                      cmp r0, #0
004251f4  05 00 00 0a                                      beq #0x425210
004251f8  60 10 9d e5                                      ldr r1, [sp, #0x60]
004251fc  01 10 60 e0                                      rsb r1, r0, r1
00425200  03 10 c1 e3                                      bic r1, r1, #3
00425204  80 00 51 e3                                      cmp r1, #0x80
00425208  70 00 00 8a                                      bhi #0x4253d0
0042520c  3b 8f 0b eb                                      bl #0x708f00
00425210  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00425214  2c 22 9f e5                                      ldr r2, [pc, #0x22c]
00425218  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
0042521c  04 00 91 e5                                      ldr r0, [r1, #4]
00425220  24 12 9f e5                                      ldr r1, [pc, #0x224]
00425224  02 20 8f e0                                      add r2, pc, r2
00425228  01 10 8f e0                                      add r1, pc, r1
0042522c  3f 19 0e eb                                      bl #0x7ab730
00425230  28 20 9d e5                                      ldr r2, [sp, #0x28]
00425234  08 40 9d e5                                      ldr r4, [sp, #8]
00425238  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0042523c  02 30 94 e7                                      ldr r3, [r4, r2]
00425240  04 00 8c e2                                      add r0, ip, #4
00425244  08 30 83 e2                                      add r3, r3, #8
00425248  3c 30 8d e5                                      str r3, [sp, #0x3c]
0042524c  31 56 ff eb                                      bl #0x3fab18
00425250  24 00 9d e5                                      ldr r0, [sp, #0x24]
00425254  b2 c7 0d eb                                      bl #0x797124
00425258  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0042525c  fc cb fb eb                                      bl #0x318254
00425260  01 00 a0 e3                                      mov r0, #1
00425264  08 20 9d e5                                      ldr r2, [sp, #8]
00425268  10 10 9d e5                                      ldr r1, [sp, #0x10]
0042526c  01 30 92 e7                                      ldr r3, [r2, r1]
00425270  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
00425274  00 30 93 e5                                      ldr r3, [r3]
00425278  03 00 52 e1                                      cmp r2, r3
0042527c  6b 00 00 1a                                      bne #0x425430
00425280  ac d0 8d e2                                      add sp, sp, #0xac
00425284  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00425288  40 30 9d e5                                      ldr r3, [sp, #0x40]
0042528c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00425290  08 30 63 e0                                      rsb r3, r3, r8
00425294  43 31 a0 e1                                      asr r3, r3, #2
00425298  03 21 83 e0                                      add r2, r3, r3, lsl #2
0042529c  02 22 82 e0                                      add r2, r2, r2, lsl #4
004252a0  02 24 82 e0                                      add r2, r2, r2, lsl #8
004252a4  02 28 82 e0                                      add r2, r2, r2, lsl #16
004252a8  82 20 83 e0                                      add r2, r3, r2, lsl #1
004252ac  01 00 52 e3                                      cmp r2, #1
004252b0  02 30 82 20                                      addhs r3, r2, r2
004252b4  01 30 82 32                                      addlo r3, r2, #1
004252b8  0c 00 53 e1                                      cmp r3, ip
004252bc  45 00 00 9a                                      bls #0x4253d8
004252c0  55 35 05 e3                                      movw r3, #0x5555
004252c4  03 37 83 e1                                      orr r3, r3, r3, lsl #14
004252c8  03 10 a0 e1                                      mov r1, r3
004252cc  0a 20 a0 e1                                      mov r2, sl
004252d0  34 00 9d e5                                      ldr r0, [sp, #0x34]
004252d4  70 30 8d e5                                      str r3, [sp, #0x70]
004252d8  5d 56 ff eb                                      bl #0x3fac54
004252dc  40 e0 9d e5                                      ldr lr, [sp, #0x40]
004252e0  00 30 a0 e1                                      mov r3, r0
004252e4  08 80 6e e0                                      rsb r8, lr, r8
004252e8  48 81 a0 e1                                      asr r8, r8, #2
004252ec  08 21 88 e0                                      add r2, r8, r8, lsl #2
004252f0  02 22 82 e0                                      add r2, r2, r2, lsl #4
004252f4  02 24 82 e0                                      add r2, r2, r2, lsl #8
004252f8  02 28 82 e0                                      add r2, r2, r2, lsl #16
004252fc  82 20 88 e0                                      add r2, r8, r2, lsl #1
00425300  00 00 52 e3                                      cmp r2, #0
00425304  30 20 8d e5                                      str r2, [sp, #0x30]
00425308  00 20 a0 d1                                      movle r2, r0
0042530c  11 00 00 da                                      ble #0x425358
00425310  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00425314  00 20 a0 e3                                      mov r2, #0
00425318  02 10 9e e7                                      ldr r1, [lr, r2]
0042531c  02 00 8e e0                                      add r0, lr, r2
00425320  04 00 80 e2                                      add r0, r0, #4
00425324  02 10 83 e7                                      str r1, [r3, r2]
00425328  04 80 90 e4                                      ldr r8, [r0], #4
0042532c  02 10 83 e0                                      add r1, r3, r2
00425330  04 10 81 e2                                      add r1, r1, #4
00425334  04 80 81 e4                                      str r8, [r1], #4
00425338  00 00 90 e5                                      ldr r0, [r0]
0042533c  01 c0 5c e2                                      subs ip, ip, #1
00425340  0c 20 82 e2                                      add r2, r2, #0xc
00425344  00 00 81 e5                                      str r0, [r1]
00425348  f2 ff ff 1a                                      bne #0x425318
0042534c  30 00 9d e5                                      ldr r0, [sp, #0x30]
00425350  0c 10 a0 e3                                      mov r1, #0xc
00425354  91 30 22 e0                                      mla r2, r1, r0, r3
00425358  08 50 82 e5                                      str r5, [r2, #8]
0042535c  04 50 82 e5                                      str r5, [r2, #4]
00425360  02 80 a0 e1                                      mov r8, r2
00425364  00 20 a0 e3                                      mov r2, #0
00425368  0c 20 88 e4                                      str r2, [r8], #0xc
0042536c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00425370  48 20 9d e5                                      ldr r2, [sp, #0x48]
00425374  00 00 50 e3                                      cmp r0, #0
00425378  0d 00 00 0a                                      beq #0x4253b4
0042537c  02 20 60 e0                                      rsb r2, r0, r2
00425380  42 21 a0 e1                                      asr r2, r2, #2
00425384  0c c0 a0 e3                                      mov ip, #0xc
00425388  02 11 82 e0                                      add r1, r2, r2, lsl #2
0042538c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00425390  01 14 81 e0                                      add r1, r1, r1, lsl #8
00425394  01 18 81 e0                                      add r1, r1, r1, lsl #16
00425398  81 10 82 e0                                      add r1, r2, r1, lsl #1
0042539c  9c 01 01 e0                                      mul r1, ip, r1
004253a0  80 00 51 e3                                      cmp r1, #0x80
004253a4  1d 00 00 8a                                      bhi #0x425420
004253a8  04 30 8d e5                                      str r3, [sp, #4]
004253ac  d3 8e 0b eb                                      bl #0x708f00
004253b0  04 30 9d e5                                      ldr r3, [sp, #4]
004253b4  70 20 9d e5                                      ldr r2, [sp, #0x70]
004253b8  0c 00 a0 e3                                      mov r0, #0xc
004253bc  40 30 8d e5                                      str r3, [sp, #0x40]
004253c0  90 32 23 e0                                      mla r3, r0, r2, r3
004253c4  44 80 8d e5                                      str r8, [sp, #0x44]
004253c8  48 30 8d e5                                      str r3, [sp, #0x48]
004253cc  58 ff ff ea                                      b #0x425134
004253d0  1a ac fb eb                                      bl #0x310440
004253d4  8d ff ff ea                                      b #0x425210
004253d8  03 00 52 e1                                      cmp r2, r3
004253dc  b9 ff ff 9a                                      bls #0x4252c8
004253e0  b6 ff ff ea                                      b #0x4252c0
004253e4  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
004253e8  98 10 9d e5                                      ldr r1, [sp, #0x98]
004253ec  d1 b5 0c eb                                      bl #0x752b38
004253f0  05 ff ff ea                                      b #0x42500c
004253f4  08 c0 9d e5                                      ldr ip, [sp, #8]
004253f8  20 40 9d e5                                      ldr r4, [sp, #0x20]
004253fc  3c 00 8d e2                                      add r0, sp, #0x3c
00425400  14 00 8d e5                                      str r0, [sp, #0x14]
00425404  04 30 9c e7                                      ldr r3, [ip, r4]
00425408  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0042540c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00425410  34 00 93 e5                                      ldr r0, [r3, #0x34]
00425414  14 30 9d e5                                      ldr r3, [sp, #0x14]
00425418  b3 91 03 eb                                      bl #0x509aec
0042541c  7b ff ff ea                                      b #0x425210
00425420  04 30 8d e5                                      str r3, [sp, #4]
00425424  05 ac fb eb                                      bl #0x310440
00425428  04 30 9d e5                                      ldr r3, [sp, #4]
0042542c  e0 ff ff ea                                      b #0x4253b4
00425430  b6 a3 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00425434  80 fb 56 00 ac 40 00 00 f4 37 00 00 4c 42 4a 00  .byte 0x80, 0xfb, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x4c, 0x42, 0x4a, 0x00
00425444  88 40 00 00 2c 3d 4a 00 d8 df 49 00              .byte 0x88, 0x40, 0x00, 0x00, 0x2c, 0x3d, 0x4a, 0x00, 0xd8, 0xdf, 0x49, 0x00

; FUNCTION 0x00425450, declared_size=728, range_size=728, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase4ShowEv
; demangled: MenuBase::Show()
; decoder-mode: arm
00425450  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00425454  88 42 9f e5                                      ldr r4, [pc, #0x288]
00425458  88 62 9f e5                                      ldr r6, [pc, #0x288]
0042545c  5c d0 4d e2                                      sub sp, sp, #0x5c
00425460  04 40 8f e0                                      add r4, pc, r4
00425464  06 20 94 e7                                      ldr r2, [r4, r6]
00425468  00 30 90 e5                                      ldr r3, [r0]
0042546c  00 50 a0 e1                                      mov r5, r0
00425470  00 20 92 e5                                      ldr r2, [r2]
00425474  54 20 8d e5                                      str r2, [sp, #0x54]
00425478  0f e0 a0 e1                                      mov lr, pc
0042547c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00425480  00 00 50 e3                                      cmp r0, #0
00425484  06 00 00 1a                                      bne #0x4254a4
00425488  06 30 94 e7                                      ldr r3, [r4, r6]
0042548c  54 20 9d e5                                      ldr r2, [sp, #0x54]
00425490  00 30 93 e5                                      ldr r3, [r3]
00425494  03 00 52 e1                                      cmp r2, r3
00425498  90 00 00 1a                                      bne #0x4256e0
0042549c  5c d0 8d e2                                      add sp, sp, #0x5c
004254a0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
004254a4  40 32 9f e5                                      ldr r3, [pc, #0x240]
004254a8  3c 70 8d e2                                      add r7, sp, #0x3c
004254ac  03 80 94 e7                                      ldr r8, [r4, r3]
004254b0  08 00 a0 e1                                      mov r0, r8
004254b4  f3 48 fc eb                                      bl #0x337888
004254b8  30 12 9f e5                                      ldr r1, [pc, #0x230]
004254bc  08 20 8d e2                                      add r2, sp, #8
004254c0  07 00 a0 e1                                      mov r0, r7
004254c4  01 10 8f e0                                      add r1, pc, r1
004254c8  07 bb fb eb                                      bl #0x3140ec
004254cc  07 10 a0 e1                                      mov r1, r7
004254d0  08 00 a0 e1                                      mov r0, r8
004254d4  6b 49 fc eb                                      bl #0x337a88
004254d8  07 00 a0 e1                                      mov r0, r7
004254dc  5c cb fb eb                                      bl #0x318254
004254e0  0c 32 9f e5                                      ldr r3, [pc, #0x20c]
004254e4  01 20 a0 e3                                      mov r2, #1
004254e8  03 30 94 e7                                      ldr r3, [r4, r3]
004254ec  00 20 c3 e5                                      strb r2, [r3]
004254f0  75 30 d5 e5                                      ldrb r3, [r5, #0x75]
004254f4  00 00 53 e3                                      cmp r3, #0
004254f8  4b 00 00 0a                                      beq #0x42562c
004254fc  01 10 a0 e3                                      mov r1, #1
00425500  05 00 a0 e1                                      mov r0, r5
00425504  ac f3 ff eb                                      bl #0x4223bc
00425508  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
0042550c  04 80 95 e5                                      ldr r8, [r5, #4]
00425510  00 00 51 e3                                      cmp r1, #0
00425514  03 00 00 0a                                      beq #0x425528
00425518  48 00 95 e5                                      ldr r0, [r5, #0x48]
0042551c  04 30 d0 e5                                      ldrb r3, [r0, #4]
00425520  00 00 53 e3                                      cmp r3, #0
00425524  63 00 00 0a                                      beq #0x4256b8
00425528  c8 21 9f e5                                      ldr r2, [pc, #0x1c8]
0042552c  00 70 a0 e3                                      mov r7, #0
00425530  07 30 a0 e1                                      mov r3, r7
00425534  02 20 8f e0                                      add r2, pc, r2
00425538  08 00 a0 e1                                      mov r0, r8
0042553c  00 70 8d e5                                      str r7, [sp]
00425540  31 1a 0e eb                                      bl #0x7abe0c
00425544  b0 11 9f e5                                      ldr r1, [pc, #0x1b0]
00425548  08 80 85 e2                                      add r8, r5, #8
0042554c  78 70 85 e5                                      str r7, [r5, #0x78]
00425550  01 10 8f e0                                      add r1, pc, r1
00425554  08 00 a0 e1                                      mov r0, r8
00425558  6f a3 fb eb                                      bl #0x30e31c
0042555c  9c 71 9f e5                                      ldr r7, [pc, #0x19c]
00425560  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
00425564  01 20 70 e2                                      rsbs r2, r0, #1
00425568  00 20 a0 33                                      movlo r2, #0
0042556c  07 30 94 e7                                      ldr r3, [r4, r7]
00425570  01 10 8f e0                                      add r1, pc, r1
00425574  08 00 a0 e1                                      mov r0, r8
00425578  ec 20 c3 e5                                      strb r2, [r3, #0xec]
0042557c  66 a3 fb eb                                      bl #0x30e31c
00425580  00 00 50 e3                                      cmp r0, #0
00425584  05 00 00 0a                                      beq #0x4255a0
00425588  78 11 9f e5                                      ldr r1, [pc, #0x178]
0042558c  08 00 a0 e1                                      mov r0, r8
00425590  01 10 8f e0                                      add r1, pc, r1
00425594  60 a3 fb eb                                      bl #0x30e31c
00425598  00 00 50 e3                                      cmp r0, #0
0042559c  02 00 00 1a                                      bne #0x4255ac
004255a0  64 31 9f e5                                      ldr r3, [pc, #0x164]
004255a4  03 00 94 e7                                      ldr r0, [r4, r3]
004255a8  50 7e fd eb                                      bl #0x384ef0
004255ac  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
004255b0  08 00 a0 e1                                      mov r0, r8
004255b4  01 10 8f e0                                      add r1, pc, r1
004255b8  57 a3 fb eb                                      bl #0x30e31c
004255bc  00 00 50 e3                                      cmp r0, #0
004255c0  0c 00 00 1a                                      bne #0x4255f8
004255c4  48 31 9f e5                                      ldr r3, [pc, #0x148]
004255c8  01 20 a0 e3                                      mov r2, #1
004255cc  03 30 94 e7                                      ldr r3, [r4, r3]
004255d0  00 20 c3 e5                                      strb r2, [r3]
004255d4  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
004255d8  08 00 a0 e1                                      mov r0, r8
004255dc  01 10 8f e0                                      add r1, pc, r1
004255e0  4d a3 fb eb                                      bl #0x30e31c
004255e4  00 00 50 e3                                      cmp r0, #0
004255e8  14 00 00 0a                                      beq #0x425640
004255ec  05 00 a0 e1                                      mov r0, r5
004255f0  49 f7 ff eb                                      bl #0x42331c
004255f4  a3 ff ff ea                                      b #0x425488
004255f8  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
004255fc  08 00 a0 e1                                      mov r0, r8
00425600  01 10 8f e0                                      add r1, pc, r1
00425604  44 a3 fb eb                                      bl #0x30e31c
00425608  00 00 50 e3                                      cmp r0, #0
0042560c  ec ff ff 0a                                      beq #0x4255c4
00425610  08 11 9f e5                                      ldr r1, [pc, #0x108]
00425614  08 00 a0 e1                                      mov r0, r8
00425618  01 10 8f e0                                      add r1, pc, r1
0042561c  3e a3 fb eb                                      bl #0x30e31c
00425620  00 00 50 e3                                      cmp r0, #0
00425624  ea ff ff 1a                                      bne #0x4255d4
00425628  e5 ff ff ea                                      b #0x4255c4
0042562c  00 30 95 e5                                      ldr r3, [r5]
00425630  05 00 a0 e1                                      mov r0, r5
00425634  0f e0 a0 e1                                      mov lr, pc
00425638  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0042563c  ae ff ff ea                                      b #0x4254fc
00425640  0c 80 8d e2                                      add r8, sp, #0xc
00425644  08 00 a0 e1                                      mov r0, r8
00425648  27 d6 ff eb                                      bl #0x41aeec
0042564c  05 00 a0 e1                                      mov r0, r5
00425650  04 a0 95 e5                                      ldr sl, [r5, #4]
00425654  7c f2 ff eb                                      bl #0x42204c
00425658  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
0042565c  00 30 a0 e1                                      mov r3, r0
00425660  0a 20 a0 e1                                      mov r2, sl
00425664  01 10 8f e0                                      add r1, pc, r1
00425668  08 00 a0 e1                                      mov r0, r8
0042566c  8b 09 00 eb                                      bl #0x427ca0
00425670  08 00 a0 e1                                      mov r0, r8
00425674  b5 09 00 eb                                      bl #0x427d50
00425678  00 a0 a0 e1                                      mov sl, r0
0042567c  07 00 94 e7                                      ldr r0, [r4, r7]
00425680  35 ee fb eb                                      bl #0x320f5c
00425684  9b 00 ca e5                                      strb r0, [sl, #0x9b]
00425688  34 00 9d e5                                      ldr r0, [sp, #0x34]
0042568c  00 00 50 e3                                      cmp r0, #0
00425690  05 00 00 0a                                      beq #0x4256ac
00425694  00 10 90 e5                                      ldr r1, [r0]
00425698  01 10 41 e2                                      sub r1, r1, #1
0042569c  00 00 51 e3                                      cmp r1, #0
004256a0  00 10 80 e5                                      str r1, [r0]
004256a4  00 00 00 1a                                      bne #0x4256ac
004256a8  22 b5 0c eb                                      bl #0x752b38
004256ac  08 00 88 e2                                      add r0, r8, #8
004256b0  e7 ca fb eb                                      bl #0x318254
004256b4  cc ff ff ea                                      b #0x4255ec
004256b8  00 10 90 e5                                      ldr r1, [r0]
004256bc  01 10 41 e2                                      sub r1, r1, #1
004256c0  00 00 51 e3                                      cmp r1, #0
004256c4  00 10 80 e5                                      str r1, [r0]
004256c8  00 00 00 1a                                      bne #0x4256d0
004256cc  19 b5 0c eb                                      bl #0x752b38
004256d0  00 10 a0 e3                                      mov r1, #0
004256d4  48 10 85 e5                                      str r1, [r5, #0x48]
004256d8  4c 10 85 e5                                      str r1, [r5, #0x4c]
004256dc  91 ff ff ea                                      b #0x425528
004256e0  0a a3 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004256e4  30 f6 56 00 ac 40 00 00 84 08 00 00 7c 3b 4a 00  .byte 0x30, 0xf6, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x7c, 0x3b, 0x4a, 0x00
004256f4  64 37 00 00 f4 3c 4a 00 98 3c 4a 00 f4 37 00 00  .byte 0x64, 0x37, 0x00, 0x00, 0xf4, 0x3c, 0x4a, 0x00, 0x98, 0x3c, 0x4a, 0x00, 0xf4, 0x37, 0x00, 0x00
00425704  d0 c9 49 00 a0 c9 49 00 e8 13 00 00 64 97 49 00  .byte 0xd0, 0xc9, 0x49, 0x00, 0xa0, 0xc9, 0x49, 0x00, 0xe8, 0x13, 0x00, 0x00, 0x64, 0x97, 0x49, 0x00
00425714  a0 2f 00 00 54 3c 4a 00 d8 3b 4a 00 b0 3b 4a 00  .byte 0xa0, 0x2f, 0x00, 0x00, 0x54, 0x3c, 0x4a, 0x00, 0xd8, 0x3b, 0x4a, 0x00, 0xb0, 0x3b, 0x4a, 0x00
00425724  dc 3b 4a 00                                      .byte 0xdc, 0x3b, 0x4a, 0x00

; FUNCTION 0x00426980, declared_size=92, range_size=92, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase17RegisterFSCommandEPKcPFbS1_S1_PvE
; demangled: MenuBase::RegisterFSCommand(char const*, bool (*)(char const*, char const*, void*))
; decoder-mode: arm
00426980  30 40 2d e9                                      push {r4, r5, lr}
00426984  0c d0 4d e2                                      sub sp, sp, #0xc
00426988  08 40 8d e2                                      add r4, sp, #8
0042698c  04 00 24 e5                                      str r0, [r4, #-4]!
00426990  04 00 a0 e1                                      mov r0, r4
00426994  01 50 a0 e1                                      mov r5, r1
00426998  f0 f8 ff eb                                      bl #0x424d60
0042699c  30 30 9f e5                                      ldr r3, [pc, #0x30]
004269a0  30 20 9f e5                                      ldr r2, [pc, #0x30]
004269a4  03 30 8f e0                                      add r3, pc, r3
004269a8  02 20 93 e7                                      ldr r2, [r3, r2]
004269ac  00 00 52 e1                                      cmp r2, r0
004269b0  00 00 a0 13                                      movne r0, #0
004269b4  01 00 00 0a                                      beq #0x4269c0
004269b8  0c d0 8d e2                                      add sp, sp, #0xc
004269bc  30 80 bd e8                                      pop {r4, r5, pc}
004269c0  04 00 a0 e1                                      mov r0, r4
004269c4  99 ff ff eb                                      bl #0x426830
004269c8  00 50 80 e5                                      str r5, [r0]
004269cc  01 00 a0 e3                                      mov r0, #1
004269d0  f8 ff ff ea                                      b #0x4269b8
; mapping-symbol data/literal pool
004269d4  ec e0 56 00 00 0f 00 00                          .byte 0xec, 0xe0, 0x56, 0x00, 0x00, 0x0f, 0x00, 0x00

; FUNCTION 0x004269dc, declared_size=2084, range_size=2084, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBaseC1EPKc
; demangled: MenuBase::MenuBase(char const*)
; decoder-mode: arm
004269dc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004269e0  08 46 9f e5                                      ldr r4, [pc, #0x608]
004269e4  08 36 9f e5                                      ldr r3, [pc, #0x608]
004269e8  24 d0 4d e2                                      sub sp, sp, #0x24
004269ec  04 40 8f e0                                      add r4, pc, r4
004269f0  03 70 94 e7                                      ldr r7, [r4, r3]
004269f4  00 50 a0 e1                                      mov r5, r0
004269f8  00 a0 a0 e3                                      mov sl, #0
004269fc  00 30 97 e5                                      ldr r3, [r7]
00426a00  04 60 8d e2                                      add r6, sp, #4
00426a04  1c 30 8d e5                                      str r3, [sp, #0x1c]
00426a08  5c ed ff eb                                      bl #0x421f80
00426a0c  e4 25 9f e5                                      ldr r2, [pc, #0x5e4]
00426a10  80 30 85 e2                                      add r3, r5, #0x80
00426a14  6c 10 85 e2                                      add r1, r5, #0x6c
00426a18  02 20 94 e7                                      ldr r2, [r4, r2]
00426a1c  03 00 a0 e1                                      mov r0, r3
00426a20  70 10 85 e5                                      str r1, [r5, #0x70]
00426a24  08 20 82 e2                                      add r2, r2, #8
00426a28  00 20 85 e5                                      str r2, [r5]
00426a2c  6c 10 85 e5                                      str r1, [r5, #0x6c]
00426a30  90 30 85 e5                                      str r3, [r5, #0x90]
00426a34  94 30 85 e5                                      str r3, [r5, #0x94]
00426a38  10 10 a0 e3                                      mov r1, #0x10
00426a3c  5c a0 85 e5                                      str sl, [r5, #0x5c]
00426a40  60 a0 85 e5                                      str sl, [r5, #0x60]
00426a44  64 a0 85 e5                                      str sl, [r5, #0x64]
00426a48  68 a0 85 e5                                      str sl, [r5, #0x68]
00426a4c  74 a0 c5 e5                                      strb sl, [r5, #0x74]
00426a50  75 a0 c5 e5                                      strb sl, [r5, #0x75]
00426a54  78 a0 85 e5                                      str sl, [r5, #0x78]
00426a58  7c a0 c5 e5                                      strb sl, [r5, #0x7c]
00426a5c  7d a0 c5 e5                                      strb sl, [r5, #0x7d]
00426a60  05 ab fb eb                                      bl #0x31167c
00426a64  90 20 95 e5                                      ldr r2, [r5, #0x90]
00426a68  9c 30 85 e2                                      add r3, r5, #0x9c
00426a6c  03 00 a0 e1                                      mov r0, r3
00426a70  00 a0 c2 e5                                      strb sl, [r2]
00426a74  10 10 a0 e3                                      mov r1, #0x10
00426a78  ac 30 85 e5                                      str r3, [r5, #0xac]
00426a7c  b0 30 85 e5                                      str r3, [r5, #0xb0]
00426a80  fd aa fb eb                                      bl #0x31167c
00426a84  70 25 9f e5                                      ldr r2, [pc, #0x570]
00426a88  ac 30 95 e5                                      ldr r3, [r5, #0xac]
00426a8c  02 80 94 e7                                      ldr r8, [r4, r2]
00426a90  00 a0 c3 e5                                      strb sl, [r3]
00426a94  c0 a0 85 e5                                      str sl, [r5, #0xc0]
00426a98  08 00 a0 e1                                      mov r0, r8
00426a9c  b4 a0 c5 e5                                      strb sl, [r5, #0xb4]
00426aa0  b8 a0 85 e5                                      str sl, [r5, #0xb8]
00426aa4  bc a0 85 e5                                      str sl, [r5, #0xbc]
00426aa8  76 43 fc eb                                      bl #0x337888
00426aac  4c 15 9f e5                                      ldr r1, [pc, #0x54c]
00426ab0  0d 20 a0 e1                                      mov r2, sp
00426ab4  06 00 a0 e1                                      mov r0, r6
00426ab8  01 10 8f e0                                      add r1, pc, r1
00426abc  8a b5 fb eb                                      bl #0x3140ec
00426ac0  06 10 a0 e1                                      mov r1, r6
00426ac4  08 00 a0 e1                                      mov r0, r8
00426ac8  ee 43 fc eb                                      bl #0x337a88
00426acc  06 00 a0 e1                                      mov r0, r6
00426ad0  df c5 fb eb                                      bl #0x318254
00426ad4  28 35 9f e5                                      ldr r3, [pc, #0x528]
00426ad8  28 25 9f e5                                      ldr r2, [pc, #0x528]
00426adc  28 05 9f e5                                      ldr r0, [pc, #0x528]
00426ae0  03 30 94 e7                                      ldr r3, [r4, r3]
00426ae4  02 10 94 e7                                      ldr r1, [r4, r2]
00426ae8  01 20 a0 e3                                      mov r2, #1
00426aec  00 20 c3 e5                                      strb r2, [r3]
00426af0  00 00 8f e0                                      add r0, pc, r0
00426af4  a1 ff ff eb                                      bl #0x426980
00426af8  10 35 9f e5                                      ldr r3, [pc, #0x510]
00426afc  10 05 9f e5                                      ldr r0, [pc, #0x510]
00426b00  03 10 94 e7                                      ldr r1, [r4, r3]
00426b04  00 00 8f e0                                      add r0, pc, r0
00426b08  9c ff ff eb                                      bl #0x426980
00426b0c  04 35 9f e5                                      ldr r3, [pc, #0x504]
00426b10  04 05 9f e5                                      ldr r0, [pc, #0x504]
00426b14  03 10 94 e7                                      ldr r1, [r4, r3]
00426b18  00 00 8f e0                                      add r0, pc, r0
00426b1c  97 ff ff eb                                      bl #0x426980
00426b20  f8 34 9f e5                                      ldr r3, [pc, #0x4f8]
00426b24  f8 04 9f e5                                      ldr r0, [pc, #0x4f8]
00426b28  03 10 94 e7                                      ldr r1, [r4, r3]
00426b2c  00 00 8f e0                                      add r0, pc, r0
00426b30  92 ff ff eb                                      bl #0x426980
00426b34  ec 34 9f e5                                      ldr r3, [pc, #0x4ec]
00426b38  ec 04 9f e5                                      ldr r0, [pc, #0x4ec]
00426b3c  03 10 94 e7                                      ldr r1, [r4, r3]
00426b40  00 00 8f e0                                      add r0, pc, r0
00426b44  8d ff ff eb                                      bl #0x426980
00426b48  e0 34 9f e5                                      ldr r3, [pc, #0x4e0]
00426b4c  e0 04 9f e5                                      ldr r0, [pc, #0x4e0]
00426b50  03 10 94 e7                                      ldr r1, [r4, r3]
00426b54  00 00 8f e0                                      add r0, pc, r0
00426b58  88 ff ff eb                                      bl #0x426980
00426b5c  d4 34 9f e5                                      ldr r3, [pc, #0x4d4]
00426b60  d4 04 9f e5                                      ldr r0, [pc, #0x4d4]
00426b64  03 10 94 e7                                      ldr r1, [r4, r3]
00426b68  00 00 8f e0                                      add r0, pc, r0
00426b6c  83 ff ff eb                                      bl #0x426980
00426b70  c8 34 9f e5                                      ldr r3, [pc, #0x4c8]
00426b74  c8 04 9f e5                                      ldr r0, [pc, #0x4c8]
00426b78  03 10 94 e7                                      ldr r1, [r4, r3]
00426b7c  00 00 8f e0                                      add r0, pc, r0
00426b80  7e ff ff eb                                      bl #0x426980
00426b84  bc 34 9f e5                                      ldr r3, [pc, #0x4bc]
00426b88  bc 04 9f e5                                      ldr r0, [pc, #0x4bc]
00426b8c  03 10 94 e7                                      ldr r1, [r4, r3]
00426b90  00 00 8f e0                                      add r0, pc, r0
00426b94  79 ff ff eb                                      bl #0x426980
00426b98  b0 34 9f e5                                      ldr r3, [pc, #0x4b0]
00426b9c  b0 04 9f e5                                      ldr r0, [pc, #0x4b0]
00426ba0  03 10 94 e7                                      ldr r1, [r4, r3]
00426ba4  00 00 8f e0                                      add r0, pc, r0
00426ba8  74 ff ff eb                                      bl #0x426980
00426bac  a4 34 9f e5                                      ldr r3, [pc, #0x4a4]
00426bb0  a4 04 9f e5                                      ldr r0, [pc, #0x4a4]
00426bb4  03 10 94 e7                                      ldr r1, [r4, r3]
00426bb8  00 00 8f e0                                      add r0, pc, r0
00426bbc  6f ff ff eb                                      bl #0x426980
00426bc0  98 34 9f e5                                      ldr r3, [pc, #0x498]
00426bc4  98 04 9f e5                                      ldr r0, [pc, #0x498]
00426bc8  03 10 94 e7                                      ldr r1, [r4, r3]
00426bcc  00 00 8f e0                                      add r0, pc, r0
00426bd0  6a ff ff eb                                      bl #0x426980
00426bd4  8c 34 9f e5                                      ldr r3, [pc, #0x48c]
00426bd8  8c 04 9f e5                                      ldr r0, [pc, #0x48c]
00426bdc  03 10 94 e7                                      ldr r1, [r4, r3]
00426be0  00 00 8f e0                                      add r0, pc, r0
00426be4  65 ff ff eb                                      bl #0x426980
00426be8  80 34 9f e5                                      ldr r3, [pc, #0x480]
00426bec  80 04 9f e5                                      ldr r0, [pc, #0x480]
00426bf0  03 10 94 e7                                      ldr r1, [r4, r3]
00426bf4  00 00 8f e0                                      add r0, pc, r0
00426bf8  60 ff ff eb                                      bl #0x426980
00426bfc  74 34 9f e5                                      ldr r3, [pc, #0x474]
00426c00  74 04 9f e5                                      ldr r0, [pc, #0x474]
00426c04  03 10 94 e7                                      ldr r1, [r4, r3]
00426c08  00 00 8f e0                                      add r0, pc, r0
00426c0c  5b ff ff eb                                      bl #0x426980
00426c10  68 34 9f e5                                      ldr r3, [pc, #0x468]
00426c14  68 04 9f e5                                      ldr r0, [pc, #0x468]
00426c18  03 10 94 e7                                      ldr r1, [r4, r3]
00426c1c  00 00 8f e0                                      add r0, pc, r0
00426c20  56 ff ff eb                                      bl #0x426980
00426c24  5c 34 9f e5                                      ldr r3, [pc, #0x45c]
00426c28  5c 04 9f e5                                      ldr r0, [pc, #0x45c]
00426c2c  03 10 94 e7                                      ldr r1, [r4, r3]
00426c30  00 00 8f e0                                      add r0, pc, r0
00426c34  51 ff ff eb                                      bl #0x426980
00426c38  50 34 9f e5                                      ldr r3, [pc, #0x450]
00426c3c  50 04 9f e5                                      ldr r0, [pc, #0x450]
00426c40  03 10 94 e7                                      ldr r1, [r4, r3]
00426c44  00 00 8f e0                                      add r0, pc, r0
00426c48  4c ff ff eb                                      bl #0x426980
00426c4c  44 34 9f e5                                      ldr r3, [pc, #0x444]
00426c50  44 04 9f e5                                      ldr r0, [pc, #0x444]
00426c54  03 10 94 e7                                      ldr r1, [r4, r3]
00426c58  00 00 8f e0                                      add r0, pc, r0
00426c5c  47 ff ff eb                                      bl #0x426980
00426c60  38 34 9f e5                                      ldr r3, [pc, #0x438]
00426c64  38 04 9f e5                                      ldr r0, [pc, #0x438]
00426c68  03 10 94 e7                                      ldr r1, [r4, r3]
00426c6c  00 00 8f e0                                      add r0, pc, r0
00426c70  42 ff ff eb                                      bl #0x426980
00426c74  2c 34 9f e5                                      ldr r3, [pc, #0x42c]
00426c78  2c 04 9f e5                                      ldr r0, [pc, #0x42c]
00426c7c  03 10 94 e7                                      ldr r1, [r4, r3]
00426c80  00 00 8f e0                                      add r0, pc, r0
00426c84  3d ff ff eb                                      bl #0x426980
00426c88  20 34 9f e5                                      ldr r3, [pc, #0x420]
00426c8c  20 04 9f e5                                      ldr r0, [pc, #0x420]
00426c90  03 10 94 e7                                      ldr r1, [r4, r3]
00426c94  00 00 8f e0                                      add r0, pc, r0
00426c98  38 ff ff eb                                      bl #0x426980
00426c9c  14 34 9f e5                                      ldr r3, [pc, #0x414]
00426ca0  14 04 9f e5                                      ldr r0, [pc, #0x414]
00426ca4  03 10 94 e7                                      ldr r1, [r4, r3]
00426ca8  00 00 8f e0                                      add r0, pc, r0
00426cac  33 ff ff eb                                      bl #0x426980
00426cb0  08 34 9f e5                                      ldr r3, [pc, #0x408]
00426cb4  08 04 9f e5                                      ldr r0, [pc, #0x408]
00426cb8  03 10 94 e7                                      ldr r1, [r4, r3]
00426cbc  00 00 8f e0                                      add r0, pc, r0
00426cc0  2e ff ff eb                                      bl #0x426980
00426cc4  fc 33 9f e5                                      ldr r3, [pc, #0x3fc]
00426cc8  fc 03 9f e5                                      ldr r0, [pc, #0x3fc]
00426ccc  03 10 94 e7                                      ldr r1, [r4, r3]
00426cd0  00 00 8f e0                                      add r0, pc, r0
00426cd4  29 ff ff eb                                      bl #0x426980
00426cd8  f0 33 9f e5                                      ldr r3, [pc, #0x3f0]
00426cdc  f0 03 9f e5                                      ldr r0, [pc, #0x3f0]
00426ce0  03 10 94 e7                                      ldr r1, [r4, r3]
00426ce4  00 00 8f e0                                      add r0, pc, r0
00426ce8  24 ff ff eb                                      bl #0x426980
00426cec  e4 33 9f e5                                      ldr r3, [pc, #0x3e4]
00426cf0  e4 03 9f e5                                      ldr r0, [pc, #0x3e4]
00426cf4  03 10 94 e7                                      ldr r1, [r4, r3]
00426cf8  00 00 8f e0                                      add r0, pc, r0
00426cfc  1f ff ff eb                                      bl #0x426980
00426d00  d8 33 9f e5                                      ldr r3, [pc, #0x3d8]
00426d04  d8 03 9f e5                                      ldr r0, [pc, #0x3d8]
00426d08  03 10 94 e7                                      ldr r1, [r4, r3]
00426d0c  00 00 8f e0                                      add r0, pc, r0
00426d10  1a ff ff eb                                      bl #0x426980
00426d14  cc 33 9f e5                                      ldr r3, [pc, #0x3cc]
00426d18  cc 03 9f e5                                      ldr r0, [pc, #0x3cc]
00426d1c  03 10 94 e7                                      ldr r1, [r4, r3]
00426d20  00 00 8f e0                                      add r0, pc, r0
00426d24  15 ff ff eb                                      bl #0x426980
00426d28  c0 33 9f e5                                      ldr r3, [pc, #0x3c0]
00426d2c  c0 03 9f e5                                      ldr r0, [pc, #0x3c0]
00426d30  03 10 94 e7                                      ldr r1, [r4, r3]
00426d34  00 00 8f e0                                      add r0, pc, r0
00426d38  10 ff ff eb                                      bl #0x426980
00426d3c  b4 33 9f e5                                      ldr r3, [pc, #0x3b4]
00426d40  b4 03 9f e5                                      ldr r0, [pc, #0x3b4]
00426d44  03 10 94 e7                                      ldr r1, [r4, r3]
00426d48  00 00 8f e0                                      add r0, pc, r0
00426d4c  0b ff ff eb                                      bl #0x426980
00426d50  a8 33 9f e5                                      ldr r3, [pc, #0x3a8]
00426d54  a8 03 9f e5                                      ldr r0, [pc, #0x3a8]
00426d58  03 10 94 e7                                      ldr r1, [r4, r3]
00426d5c  00 00 8f e0                                      add r0, pc, r0
00426d60  06 ff ff eb                                      bl #0x426980
00426d64  9c 33 9f e5                                      ldr r3, [pc, #0x39c]
00426d68  9c 03 9f e5                                      ldr r0, [pc, #0x39c]
00426d6c  03 10 94 e7                                      ldr r1, [r4, r3]
00426d70  00 00 8f e0                                      add r0, pc, r0
00426d74  01 ff ff eb                                      bl #0x426980
00426d78  90 33 9f e5                                      ldr r3, [pc, #0x390]
00426d7c  90 03 9f e5                                      ldr r0, [pc, #0x390]
00426d80  03 10 94 e7                                      ldr r1, [r4, r3]
00426d84  00 00 8f e0                                      add r0, pc, r0
00426d88  fc fe ff eb                                      bl #0x426980
00426d8c  84 33 9f e5                                      ldr r3, [pc, #0x384]
00426d90  84 03 9f e5                                      ldr r0, [pc, #0x384]
00426d94  03 10 94 e7                                      ldr r1, [r4, r3]
00426d98  00 00 8f e0                                      add r0, pc, r0
00426d9c  f7 fe ff eb                                      bl #0x426980
00426da0  78 33 9f e5                                      ldr r3, [pc, #0x378]
00426da4  78 03 9f e5                                      ldr r0, [pc, #0x378]
00426da8  03 10 94 e7                                      ldr r1, [r4, r3]
00426dac  00 00 8f e0                                      add r0, pc, r0
00426db0  f2 fe ff eb                                      bl #0x426980
00426db4  6c 33 9f e5                                      ldr r3, [pc, #0x36c]
00426db8  6c 03 9f e5                                      ldr r0, [pc, #0x36c]
00426dbc  03 10 94 e7                                      ldr r1, [r4, r3]
00426dc0  00 00 8f e0                                      add r0, pc, r0
00426dc4  ed fe ff eb                                      bl #0x426980
00426dc8  60 33 9f e5                                      ldr r3, [pc, #0x360]
00426dcc  60 03 9f e5                                      ldr r0, [pc, #0x360]
00426dd0  03 10 94 e7                                      ldr r1, [r4, r3]
00426dd4  00 00 8f e0                                      add r0, pc, r0
00426dd8  e8 fe ff eb                                      bl #0x426980
00426ddc  54 33 9f e5                                      ldr r3, [pc, #0x354]
00426de0  54 03 9f e5                                      ldr r0, [pc, #0x354]
00426de4  03 10 94 e7                                      ldr r1, [r4, r3]
00426de8  00 00 8f e0                                      add r0, pc, r0
00426dec  e3 fe ff eb                                      bl #0x426980
00426df0  48 33 9f e5                                      ldr r3, [pc, #0x348]
00426df4  48 03 9f e5                                      ldr r0, [pc, #0x348]
00426df8  03 10 94 e7                                      ldr r1, [r4, r3]
00426dfc  00 00 8f e0                                      add r0, pc, r0
00426e00  de fe ff eb                                      bl #0x426980
00426e04  3c 33 9f e5                                      ldr r3, [pc, #0x33c]
00426e08  3c 03 9f e5                                      ldr r0, [pc, #0x33c]
00426e0c  03 10 94 e7                                      ldr r1, [r4, r3]
00426e10  00 00 8f e0                                      add r0, pc, r0
00426e14  d9 fe ff eb                                      bl #0x426980
00426e18  30 33 9f e5                                      ldr r3, [pc, #0x330]
00426e1c  30 03 9f e5                                      ldr r0, [pc, #0x330]
00426e20  03 10 94 e7                                      ldr r1, [r4, r3]
00426e24  00 00 8f e0                                      add r0, pc, r0
00426e28  d4 fe ff eb                                      bl #0x426980
00426e2c  24 33 9f e5                                      ldr r3, [pc, #0x324]
00426e30  24 03 9f e5                                      ldr r0, [pc, #0x324]
00426e34  03 10 94 e7                                      ldr r1, [r4, r3]
00426e38  00 00 8f e0                                      add r0, pc, r0
00426e3c  cf fe ff eb                                      bl #0x426980
00426e40  18 33 9f e5                                      ldr r3, [pc, #0x318]
00426e44  18 03 9f e5                                      ldr r0, [pc, #0x318]
00426e48  03 10 94 e7                                      ldr r1, [r4, r3]
00426e4c  00 00 8f e0                                      add r0, pc, r0
00426e50  ca fe ff eb                                      bl #0x426980
00426e54  0c 33 9f e5                                      ldr r3, [pc, #0x30c]
00426e58  0c 03 9f e5                                      ldr r0, [pc, #0x30c]
00426e5c  03 10 94 e7                                      ldr r1, [r4, r3]
00426e60  00 00 8f e0                                      add r0, pc, r0
00426e64  c5 fe ff eb                                      bl #0x426980
00426e68  00 33 9f e5                                      ldr r3, [pc, #0x300]
00426e6c  00 03 9f e5                                      ldr r0, [pc, #0x300]
00426e70  03 10 94 e7                                      ldr r1, [r4, r3]
00426e74  00 00 8f e0                                      add r0, pc, r0
00426e78  c0 fe ff eb                                      bl #0x426980
00426e7c  f4 32 9f e5                                      ldr r3, [pc, #0x2f4]
00426e80  f4 02 9f e5                                      ldr r0, [pc, #0x2f4]
00426e84  03 10 94 e7                                      ldr r1, [r4, r3]
00426e88  00 00 8f e0                                      add r0, pc, r0
00426e8c  bb fe ff eb                                      bl #0x426980
00426e90  e8 32 9f e5                                      ldr r3, [pc, #0x2e8]
00426e94  e8 02 9f e5                                      ldr r0, [pc, #0x2e8]
00426e98  03 10 94 e7                                      ldr r1, [r4, r3]
00426e9c  00 00 8f e0                                      add r0, pc, r0
00426ea0  b6 fe ff eb                                      bl #0x426980
00426ea4  dc 32 9f e5                                      ldr r3, [pc, #0x2dc]
00426ea8  dc 02 9f e5                                      ldr r0, [pc, #0x2dc]
00426eac  03 10 94 e7                                      ldr r1, [r4, r3]
00426eb0  00 00 8f e0                                      add r0, pc, r0
00426eb4  b1 fe ff eb                                      bl #0x426980
00426eb8  d0 32 9f e5                                      ldr r3, [pc, #0x2d0]
00426ebc  d0 02 9f e5                                      ldr r0, [pc, #0x2d0]
00426ec0  03 10 94 e7                                      ldr r1, [r4, r3]
00426ec4  00 00 8f e0                                      add r0, pc, r0
00426ec8  ac fe ff eb                                      bl #0x426980
00426ecc  c4 32 9f e5                                      ldr r3, [pc, #0x2c4]
00426ed0  c4 02 9f e5                                      ldr r0, [pc, #0x2c4]
00426ed4  03 10 94 e7                                      ldr r1, [r4, r3]
00426ed8  00 00 8f e0                                      add r0, pc, r0
00426edc  a7 fe ff eb                                      bl #0x426980
00426ee0  b8 32 9f e5                                      ldr r3, [pc, #0x2b8]
00426ee4  b8 02 9f e5                                      ldr r0, [pc, #0x2b8]
00426ee8  03 10 94 e7                                      ldr r1, [r4, r3]
00426eec  00 00 8f e0                                      add r0, pc, r0
00426ef0  a2 fe ff eb                                      bl #0x426980
00426ef4  ac 32 9f e5                                      ldr r3, [pc, #0x2ac]
00426ef8  ac 02 9f e5                                      ldr r0, [pc, #0x2ac]
00426efc  03 10 94 e7                                      ldr r1, [r4, r3]
00426f00  00 00 8f e0                                      add r0, pc, r0
00426f04  9d fe ff eb                                      bl #0x426980
00426f08  a0 32 9f e5                                      ldr r3, [pc, #0x2a0]
00426f0c  a0 02 9f e5                                      ldr r0, [pc, #0x2a0]
00426f10  03 10 94 e7                                      ldr r1, [r4, r3]
00426f14  00 00 8f e0                                      add r0, pc, r0
00426f18  98 fe ff eb                                      bl #0x426980
00426f1c  94 32 9f e5                                      ldr r3, [pc, #0x294]
00426f20  94 02 9f e5                                      ldr r0, [pc, #0x294]
00426f24  03 10 94 e7                                      ldr r1, [r4, r3]
00426f28  00 00 8f e0                                      add r0, pc, r0
00426f2c  93 fe ff eb                                      bl #0x426980
00426f30  88 32 9f e5                                      ldr r3, [pc, #0x288]
00426f34  88 02 9f e5                                      ldr r0, [pc, #0x288]
00426f38  03 10 94 e7                                      ldr r1, [r4, r3]
00426f3c  00 00 8f e0                                      add r0, pc, r0
00426f40  8e fe ff eb                                      bl #0x426980
00426f44  7c 32 9f e5                                      ldr r3, [pc, #0x27c]
00426f48  7c 02 9f e5                                      ldr r0, [pc, #0x27c]
00426f4c  03 10 94 e7                                      ldr r1, [r4, r3]
00426f50  00 00 8f e0                                      add r0, pc, r0
00426f54  89 fe ff eb                                      bl #0x426980
00426f58  70 32 9f e5                                      ldr r3, [pc, #0x270]
00426f5c  70 02 9f e5                                      ldr r0, [pc, #0x270]
00426f60  03 10 94 e7                                      ldr r1, [r4, r3]
00426f64  00 00 8f e0                                      add r0, pc, r0
00426f68  84 fe ff eb                                      bl #0x426980
00426f6c  64 32 9f e5                                      ldr r3, [pc, #0x264]
00426f70  64 02 9f e5                                      ldr r0, [pc, #0x264]
00426f74  03 10 94 e7                                      ldr r1, [r4, r3]
00426f78  00 00 8f e0                                      add r0, pc, r0
00426f7c  7f fe ff eb                                      bl #0x426980
00426f80  58 32 9f e5                                      ldr r3, [pc, #0x258]
00426f84  58 02 9f e5                                      ldr r0, [pc, #0x258]
00426f88  03 10 94 e7                                      ldr r1, [r4, r3]
00426f8c  00 00 8f e0                                      add r0, pc, r0
00426f90  7a fe ff eb                                      bl #0x426980
00426f94  4c 32 9f e5                                      ldr r3, [pc, #0x24c]
00426f98  4c 02 9f e5                                      ldr r0, [pc, #0x24c]
00426f9c  03 10 94 e7                                      ldr r1, [r4, r3]
00426fa0  00 00 8f e0                                      add r0, pc, r0
00426fa4  75 fe ff eb                                      bl #0x426980
00426fa8  40 32 9f e5                                      ldr r3, [pc, #0x240]
00426fac  40 02 9f e5                                      ldr r0, [pc, #0x240]
00426fb0  03 10 94 e7                                      ldr r1, [r4, r3]
00426fb4  00 00 8f e0                                      add r0, pc, r0
00426fb8  70 fe ff eb                                      bl #0x426980
00426fbc  34 32 9f e5                                      ldr r3, [pc, #0x234]
00426fc0  34 02 9f e5                                      ldr r0, [pc, #0x234]
00426fc4  03 10 94 e7                                      ldr r1, [r4, r3]
00426fc8  00 00 8f e0                                      add r0, pc, r0
00426fcc  6b fe ff eb                                      bl #0x426980
00426fd0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00426fd4  00 30 97 e5                                      ldr r3, [r7]
00426fd8  05 00 a0 e1                                      mov r0, r5
00426fdc  03 00 52 e1                                      cmp r2, r3
00426fe0  01 00 00 1a                                      bne #0x426fec
00426fe4  24 d0 8d e2                                      add sp, sp, #0x24
00426fe8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00426fec  c7 9c fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00426ff0  a4 e0 56 00 ac 40 00 00 1c 4a 00 00 84 08 00 00  .byte 0xa4, 0xe0, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0x1c, 0x4a, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
00427000  88 25 4a 00 64 37 00 00 ec 3e 00 00 a8 cc 49 00  .byte 0x88, 0x25, 0x4a, 0x00, 0x64, 0x37, 0x00, 0x00, 0xec, 0x3e, 0x00, 0x00, 0xa8, 0xcc, 0x49, 0x00
00427010  44 35 00 00 8c cc 49 00 94 3e 00 00 68 cc 49 00  .byte 0x44, 0x35, 0x00, 0x00, 0x8c, 0xcc, 0x49, 0x00, 0x94, 0x3e, 0x00, 0x00, 0x68, 0xcc, 0x49, 0x00
00427020  a0 11 00 00 24 27 4a 00 20 40 00 00 20 27 4a 00  .byte 0xa0, 0x11, 0x00, 0x00, 0x24, 0x27, 0x4a, 0x00, 0x20, 0x40, 0x00, 0x00, 0x20, 0x27, 0x4a, 0x00
00427030  c4 22 00 00 1c 27 4a 00 48 3d 00 00 18 27 4a 00  .byte 0xc4, 0x22, 0x00, 0x00, 0x1c, 0x27, 0x4a, 0x00, 0x48, 0x3d, 0x00, 0x00, 0x18, 0x27, 0x4a, 0x00
00427040  94 23 00 00 14 27 4a 00 90 47 00 00 60 b0 49 00  .byte 0x94, 0x23, 0x00, 0x00, 0x14, 0x27, 0x4a, 0x00, 0x90, 0x47, 0x00, 0x00, 0x60, 0xb0, 0x49, 0x00
00427050  d8 22 00 00 fc 26 4a 00 e8 28 00 00 08 24 4a 00  .byte 0xd8, 0x22, 0x00, 0x00, 0xfc, 0x26, 0x4a, 0x00, 0xe8, 0x28, 0x00, 0x00, 0x08, 0x24, 0x4a, 0x00
00427060  30 2e 00 00 e4 26 4a 00 30 3a 00 00 e0 26 4a 00  .byte 0x30, 0x2e, 0x00, 0x00, 0xe4, 0x26, 0x4a, 0x00, 0x30, 0x3a, 0x00, 0x00, 0xe0, 0x26, 0x4a, 0x00
00427070  dc 07 00 00 dc 26 4a 00 5c 0c 00 00 d8 26 4a 00  .byte 0xdc, 0x07, 0x00, 0x00, 0xdc, 0x26, 0x4a, 0x00, 0x5c, 0x0c, 0x00, 0x00, 0xd8, 0x26, 0x4a, 0x00
00427080  ac 08 00 00 d4 26 4a 00 94 17 00 00 d0 26 4a 00  .byte 0xac, 0x08, 0x00, 0x00, 0xd4, 0x26, 0x4a, 0x00, 0x94, 0x17, 0x00, 0x00, 0xd0, 0x26, 0x4a, 0x00
00427090  0c 34 00 00 cc 26 4a 00 fc 44 00 00 c8 26 4a 00  .byte 0x0c, 0x34, 0x00, 0x00, 0xcc, 0x26, 0x4a, 0x00, 0xfc, 0x44, 0x00, 0x00, 0xc8, 0x26, 0x4a, 0x00
004270a0  64 19 00 00 c4 26 4a 00 00 3d 00 00 c0 26 4a 00  .byte 0x64, 0x19, 0x00, 0x00, 0xc4, 0x26, 0x4a, 0x00, 0x00, 0x3d, 0x00, 0x00, 0xc0, 0x26, 0x4a, 0x00
004270b0  80 2e 00 00 bc 26 4a 00 c8 44 00 00 f0 21 4a 00  .byte 0x80, 0x2e, 0x00, 0x00, 0xbc, 0x26, 0x4a, 0x00, 0xc8, 0x44, 0x00, 0x00, 0xf0, 0x21, 0x4a, 0x00
004270c0  30 0c 00 00 a4 26 4a 00 b4 2e 00 00 a0 26 4a 00  .byte 0x30, 0x0c, 0x00, 0x00, 0xa4, 0x26, 0x4a, 0x00, 0xb4, 0x2e, 0x00, 0x00, 0xa0, 0x26, 0x4a, 0x00
004270d0  ec 1c 00 00 9c 26 4a 00 00 28 00 00 98 26 4a 00  .byte 0xec, 0x1c, 0x00, 0x00, 0x9c, 0x26, 0x4a, 0x00, 0x00, 0x28, 0x00, 0x00, 0x98, 0x26, 0x4a, 0x00
004270e0  80 0f 00 00 94 26 4a 00 84 25 00 00 90 26 4a 00  .byte 0x80, 0x0f, 0x00, 0x00, 0x94, 0x26, 0x4a, 0x00, 0x84, 0x25, 0x00, 0x00, 0x90, 0x26, 0x4a, 0x00
004270f0  fc 47 00 00 8c 26 4a 00 a0 35 00 00 88 26 4a 00  .byte 0xfc, 0x47, 0x00, 0x00, 0x8c, 0x26, 0x4a, 0x00, 0xa0, 0x35, 0x00, 0x00, 0x88, 0x26, 0x4a, 0x00
00427100  fc 3d 00 00 84 26 4a 00 d4 3f 00 00 78 26 4a 00  .byte 0xfc, 0x3d, 0x00, 0x00, 0x84, 0x26, 0x4a, 0x00, 0xd4, 0x3f, 0x00, 0x00, 0x78, 0x26, 0x4a, 0x00
00427110  18 20 00 00 74 26 4a 00 7c 3e 00 00 70 26 4a 00  .byte 0x18, 0x20, 0x00, 0x00, 0x74, 0x26, 0x4a, 0x00, 0x7c, 0x3e, 0x00, 0x00, 0x70, 0x26, 0x4a, 0x00
00427120  98 10 00 00 6c 26 4a 00 44 49 00 00 70 26 4a 00  .byte 0x98, 0x10, 0x00, 0x00, 0x6c, 0x26, 0x4a, 0x00, 0x44, 0x49, 0x00, 0x00, 0x70, 0x26, 0x4a, 0x00
00427130  a0 3a 00 00 6c 26 4a 00 f0 06 00 00 68 26 4a 00  .byte 0xa0, 0x3a, 0x00, 0x00, 0x6c, 0x26, 0x4a, 0x00, 0xf0, 0x06, 0x00, 0x00, 0x68, 0x26, 0x4a, 0x00
00427140  00 35 00 00 64 26 4a 00 34 20 00 00 68 26 4a 00  .byte 0x00, 0x35, 0x00, 0x00, 0x64, 0x26, 0x4a, 0x00, 0x34, 0x20, 0x00, 0x00, 0x68, 0x26, 0x4a, 0x00
00427150  64 14 00 00 6c 26 4a 00 34 36 00 00 70 26 4a 00  .byte 0x64, 0x14, 0x00, 0x00, 0x6c, 0x26, 0x4a, 0x00, 0x34, 0x36, 0x00, 0x00, 0x70, 0x26, 0x4a, 0x00
00427160  b4 34 00 00 6c 26 4a 00 58 13 00 00 68 26 4a 00  .byte 0xb4, 0x34, 0x00, 0x00, 0x6c, 0x26, 0x4a, 0x00, 0x58, 0x13, 0x00, 0x00, 0x68, 0x26, 0x4a, 0x00
00427170  d0 24 00 00 64 26 4a 00 bc 35 00 00 60 26 4a 00  .byte 0xd0, 0x24, 0x00, 0x00, 0x64, 0x26, 0x4a, 0x00, 0xbc, 0x35, 0x00, 0x00, 0x60, 0x26, 0x4a, 0x00
00427180  88 45 00 00 64 26 4a 00 54 31 00 00 60 26 4a 00  .byte 0x88, 0x45, 0x00, 0x00, 0x64, 0x26, 0x4a, 0x00, 0x54, 0x31, 0x00, 0x00, 0x60, 0x26, 0x4a, 0x00
00427190  48 32 00 00 5c 26 4a 00 2c 1b 00 00 58 26 4a 00  .byte 0x48, 0x32, 0x00, 0x00, 0x5c, 0x26, 0x4a, 0x00, 0x2c, 0x1b, 0x00, 0x00, 0x58, 0x26, 0x4a, 0x00
004271a0  1c 2e 00 00 54 26 4a 00 00 15 00 00 50 26 4a 00  .byte 0x1c, 0x2e, 0x00, 0x00, 0x54, 0x26, 0x4a, 0x00, 0x00, 0x15, 0x00, 0x00, 0x50, 0x26, 0x4a, 0x00
004271b0  a8 41 00 00 4c 26 4a 00 a8 34 00 00 48 26 4a 00  .byte 0xa8, 0x41, 0x00, 0x00, 0x4c, 0x26, 0x4a, 0x00, 0xa8, 0x34, 0x00, 0x00, 0x48, 0x26, 0x4a, 0x00
004271c0  3c 49 00 00 24 d3 49 00 c4 1d 00 00 30 26 4a 00  .byte 0x3c, 0x49, 0x00, 0x00, 0x24, 0xd3, 0x49, 0x00, 0xc4, 0x1d, 0x00, 0x00, 0x30, 0x26, 0x4a, 0x00
004271d0  c8 1e 00 00 2c 26 4a 00 1c 23 00 00 28 26 4a 00  .byte 0xc8, 0x1e, 0x00, 0x00, 0x2c, 0x26, 0x4a, 0x00, 0x1c, 0x23, 0x00, 0x00, 0x28, 0x26, 0x4a, 0x00
004271e0  30 27 00 00 24 26 4a 00 b4 11 00 00 20 26 4a 00  .byte 0x30, 0x27, 0x00, 0x00, 0x24, 0x26, 0x4a, 0x00, 0xb4, 0x11, 0x00, 0x00, 0x20, 0x26, 0x4a, 0x00
004271f0  c4 1b 00 00 1c 26 4a 00 d0 19 00 00 18 26 4a 00  .byte 0xc4, 0x1b, 0x00, 0x00, 0x1c, 0x26, 0x4a, 0x00, 0xd0, 0x19, 0x00, 0x00, 0x18, 0x26, 0x4a, 0x00

; FUNCTION 0x00427200, declared_size=2084, range_size=2084, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBaseC2EPKc
; demangled: MenuBase::MenuBase(char const*)
; decoder-mode: arm
00427200  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00427204  08 46 9f e5                                      ldr r4, [pc, #0x608]
00427208  08 36 9f e5                                      ldr r3, [pc, #0x608]
0042720c  24 d0 4d e2                                      sub sp, sp, #0x24
00427210  04 40 8f e0                                      add r4, pc, r4
00427214  03 70 94 e7                                      ldr r7, [r4, r3]
00427218  00 50 a0 e1                                      mov r5, r0
0042721c  00 a0 a0 e3                                      mov sl, #0
00427220  00 30 97 e5                                      ldr r3, [r7]
00427224  04 60 8d e2                                      add r6, sp, #4
00427228  1c 30 8d e5                                      str r3, [sp, #0x1c]
0042722c  53 eb ff eb                                      bl #0x421f80
00427230  e4 25 9f e5                                      ldr r2, [pc, #0x5e4]
00427234  80 30 85 e2                                      add r3, r5, #0x80
00427238  6c 10 85 e2                                      add r1, r5, #0x6c
0042723c  02 20 94 e7                                      ldr r2, [r4, r2]
00427240  03 00 a0 e1                                      mov r0, r3
00427244  70 10 85 e5                                      str r1, [r5, #0x70]
00427248  08 20 82 e2                                      add r2, r2, #8
0042724c  00 20 85 e5                                      str r2, [r5]
00427250  6c 10 85 e5                                      str r1, [r5, #0x6c]
00427254  90 30 85 e5                                      str r3, [r5, #0x90]
00427258  94 30 85 e5                                      str r3, [r5, #0x94]
0042725c  10 10 a0 e3                                      mov r1, #0x10
00427260  5c a0 85 e5                                      str sl, [r5, #0x5c]
00427264  60 a0 85 e5                                      str sl, [r5, #0x60]
00427268  64 a0 85 e5                                      str sl, [r5, #0x64]
0042726c  68 a0 85 e5                                      str sl, [r5, #0x68]
00427270  74 a0 c5 e5                                      strb sl, [r5, #0x74]
00427274  75 a0 c5 e5                                      strb sl, [r5, #0x75]
00427278  78 a0 85 e5                                      str sl, [r5, #0x78]
0042727c  7c a0 c5 e5                                      strb sl, [r5, #0x7c]
00427280  7d a0 c5 e5                                      strb sl, [r5, #0x7d]
00427284  fc a8 fb eb                                      bl #0x31167c
00427288  90 20 95 e5                                      ldr r2, [r5, #0x90]
0042728c  9c 30 85 e2                                      add r3, r5, #0x9c
00427290  03 00 a0 e1                                      mov r0, r3
00427294  00 a0 c2 e5                                      strb sl, [r2]
00427298  10 10 a0 e3                                      mov r1, #0x10
0042729c  ac 30 85 e5                                      str r3, [r5, #0xac]
004272a0  b0 30 85 e5                                      str r3, [r5, #0xb0]
004272a4  f4 a8 fb eb                                      bl #0x31167c
004272a8  70 25 9f e5                                      ldr r2, [pc, #0x570]
004272ac  ac 30 95 e5                                      ldr r3, [r5, #0xac]
004272b0  02 80 94 e7                                      ldr r8, [r4, r2]
004272b4  00 a0 c3 e5                                      strb sl, [r3]
004272b8  c0 a0 85 e5                                      str sl, [r5, #0xc0]
004272bc  08 00 a0 e1                                      mov r0, r8
004272c0  b4 a0 c5 e5                                      strb sl, [r5, #0xb4]
004272c4  b8 a0 85 e5                                      str sl, [r5, #0xb8]
004272c8  bc a0 85 e5                                      str sl, [r5, #0xbc]
004272cc  6d 41 fc eb                                      bl #0x337888
004272d0  4c 15 9f e5                                      ldr r1, [pc, #0x54c]
004272d4  0d 20 a0 e1                                      mov r2, sp
004272d8  06 00 a0 e1                                      mov r0, r6
004272dc  01 10 8f e0                                      add r1, pc, r1
004272e0  81 b3 fb eb                                      bl #0x3140ec
004272e4  06 10 a0 e1                                      mov r1, r6
004272e8  08 00 a0 e1                                      mov r0, r8
004272ec  e5 41 fc eb                                      bl #0x337a88
004272f0  06 00 a0 e1                                      mov r0, r6
004272f4  d6 c3 fb eb                                      bl #0x318254
004272f8  28 35 9f e5                                      ldr r3, [pc, #0x528]
004272fc  28 25 9f e5                                      ldr r2, [pc, #0x528]
00427300  28 05 9f e5                                      ldr r0, [pc, #0x528]
00427304  03 30 94 e7                                      ldr r3, [r4, r3]
00427308  02 10 94 e7                                      ldr r1, [r4, r2]
0042730c  01 20 a0 e3                                      mov r2, #1
00427310  00 20 c3 e5                                      strb r2, [r3]
00427314  00 00 8f e0                                      add r0, pc, r0
00427318  98 fd ff eb                                      bl #0x426980
0042731c  10 35 9f e5                                      ldr r3, [pc, #0x510]
00427320  10 05 9f e5                                      ldr r0, [pc, #0x510]
00427324  03 10 94 e7                                      ldr r1, [r4, r3]
00427328  00 00 8f e0                                      add r0, pc, r0
0042732c  93 fd ff eb                                      bl #0x426980
00427330  04 35 9f e5                                      ldr r3, [pc, #0x504]
00427334  04 05 9f e5                                      ldr r0, [pc, #0x504]
00427338  03 10 94 e7                                      ldr r1, [r4, r3]
0042733c  00 00 8f e0                                      add r0, pc, r0
00427340  8e fd ff eb                                      bl #0x426980
00427344  f8 34 9f e5                                      ldr r3, [pc, #0x4f8]
00427348  f8 04 9f e5                                      ldr r0, [pc, #0x4f8]
0042734c  03 10 94 e7                                      ldr r1, [r4, r3]
00427350  00 00 8f e0                                      add r0, pc, r0
00427354  89 fd ff eb                                      bl #0x426980
00427358  ec 34 9f e5                                      ldr r3, [pc, #0x4ec]
0042735c  ec 04 9f e5                                      ldr r0, [pc, #0x4ec]
00427360  03 10 94 e7                                      ldr r1, [r4, r3]
00427364  00 00 8f e0                                      add r0, pc, r0
00427368  84 fd ff eb                                      bl #0x426980
0042736c  e0 34 9f e5                                      ldr r3, [pc, #0x4e0]
00427370  e0 04 9f e5                                      ldr r0, [pc, #0x4e0]
00427374  03 10 94 e7                                      ldr r1, [r4, r3]
00427378  00 00 8f e0                                      add r0, pc, r0
0042737c  7f fd ff eb                                      bl #0x426980
00427380  d4 34 9f e5                                      ldr r3, [pc, #0x4d4]
00427384  d4 04 9f e5                                      ldr r0, [pc, #0x4d4]
00427388  03 10 94 e7                                      ldr r1, [r4, r3]
0042738c  00 00 8f e0                                      add r0, pc, r0
00427390  7a fd ff eb                                      bl #0x426980
00427394  c8 34 9f e5                                      ldr r3, [pc, #0x4c8]
00427398  c8 04 9f e5                                      ldr r0, [pc, #0x4c8]
0042739c  03 10 94 e7                                      ldr r1, [r4, r3]
004273a0  00 00 8f e0                                      add r0, pc, r0
004273a4  75 fd ff eb                                      bl #0x426980
004273a8  bc 34 9f e5                                      ldr r3, [pc, #0x4bc]
004273ac  bc 04 9f e5                                      ldr r0, [pc, #0x4bc]
004273b0  03 10 94 e7                                      ldr r1, [r4, r3]
004273b4  00 00 8f e0                                      add r0, pc, r0
004273b8  70 fd ff eb                                      bl #0x426980
004273bc  b0 34 9f e5                                      ldr r3, [pc, #0x4b0]
004273c0  b0 04 9f e5                                      ldr r0, [pc, #0x4b0]
004273c4  03 10 94 e7                                      ldr r1, [r4, r3]
004273c8  00 00 8f e0                                      add r0, pc, r0
004273cc  6b fd ff eb                                      bl #0x426980
004273d0  a4 34 9f e5                                      ldr r3, [pc, #0x4a4]
004273d4  a4 04 9f e5                                      ldr r0, [pc, #0x4a4]
004273d8  03 10 94 e7                                      ldr r1, [r4, r3]
004273dc  00 00 8f e0                                      add r0, pc, r0
004273e0  66 fd ff eb                                      bl #0x426980
004273e4  98 34 9f e5                                      ldr r3, [pc, #0x498]
004273e8  98 04 9f e5                                      ldr r0, [pc, #0x498]
004273ec  03 10 94 e7                                      ldr r1, [r4, r3]
004273f0  00 00 8f e0                                      add r0, pc, r0
004273f4  61 fd ff eb                                      bl #0x426980
004273f8  8c 34 9f e5                                      ldr r3, [pc, #0x48c]
004273fc  8c 04 9f e5                                      ldr r0, [pc, #0x48c]
00427400  03 10 94 e7                                      ldr r1, [r4, r3]
00427404  00 00 8f e0                                      add r0, pc, r0
00427408  5c fd ff eb                                      bl #0x426980
0042740c  80 34 9f e5                                      ldr r3, [pc, #0x480]
00427410  80 04 9f e5                                      ldr r0, [pc, #0x480]
00427414  03 10 94 e7                                      ldr r1, [r4, r3]
00427418  00 00 8f e0                                      add r0, pc, r0
0042741c  57 fd ff eb                                      bl #0x426980
00427420  74 34 9f e5                                      ldr r3, [pc, #0x474]
00427424  74 04 9f e5                                      ldr r0, [pc, #0x474]
00427428  03 10 94 e7                                      ldr r1, [r4, r3]
0042742c  00 00 8f e0                                      add r0, pc, r0
00427430  52 fd ff eb                                      bl #0x426980
00427434  68 34 9f e5                                      ldr r3, [pc, #0x468]
00427438  68 04 9f e5                                      ldr r0, [pc, #0x468]
0042743c  03 10 94 e7                                      ldr r1, [r4, r3]
00427440  00 00 8f e0                                      add r0, pc, r0
00427444  4d fd ff eb                                      bl #0x426980
00427448  5c 34 9f e5                                      ldr r3, [pc, #0x45c]
0042744c  5c 04 9f e5                                      ldr r0, [pc, #0x45c]
00427450  03 10 94 e7                                      ldr r1, [r4, r3]
00427454  00 00 8f e0                                      add r0, pc, r0
00427458  48 fd ff eb                                      bl #0x426980
0042745c  50 34 9f e5                                      ldr r3, [pc, #0x450]
00427460  50 04 9f e5                                      ldr r0, [pc, #0x450]
00427464  03 10 94 e7                                      ldr r1, [r4, r3]
00427468  00 00 8f e0                                      add r0, pc, r0
0042746c  43 fd ff eb                                      bl #0x426980
00427470  44 34 9f e5                                      ldr r3, [pc, #0x444]
00427474  44 04 9f e5                                      ldr r0, [pc, #0x444]
00427478  03 10 94 e7                                      ldr r1, [r4, r3]
0042747c  00 00 8f e0                                      add r0, pc, r0
00427480  3e fd ff eb                                      bl #0x426980
00427484  38 34 9f e5                                      ldr r3, [pc, #0x438]
00427488  38 04 9f e5                                      ldr r0, [pc, #0x438]
0042748c  03 10 94 e7                                      ldr r1, [r4, r3]
00427490  00 00 8f e0                                      add r0, pc, r0
00427494  39 fd ff eb                                      bl #0x426980
00427498  2c 34 9f e5                                      ldr r3, [pc, #0x42c]
0042749c  2c 04 9f e5                                      ldr r0, [pc, #0x42c]
004274a0  03 10 94 e7                                      ldr r1, [r4, r3]
004274a4  00 00 8f e0                                      add r0, pc, r0
004274a8  34 fd ff eb                                      bl #0x426980
004274ac  20 34 9f e5                                      ldr r3, [pc, #0x420]
004274b0  20 04 9f e5                                      ldr r0, [pc, #0x420]
004274b4  03 10 94 e7                                      ldr r1, [r4, r3]
004274b8  00 00 8f e0                                      add r0, pc, r0
004274bc  2f fd ff eb                                      bl #0x426980
004274c0  14 34 9f e5                                      ldr r3, [pc, #0x414]
004274c4  14 04 9f e5                                      ldr r0, [pc, #0x414]
004274c8  03 10 94 e7                                      ldr r1, [r4, r3]
004274cc  00 00 8f e0                                      add r0, pc, r0
004274d0  2a fd ff eb                                      bl #0x426980
004274d4  08 34 9f e5                                      ldr r3, [pc, #0x408]
004274d8  08 04 9f e5                                      ldr r0, [pc, #0x408]
004274dc  03 10 94 e7                                      ldr r1, [r4, r3]
004274e0  00 00 8f e0                                      add r0, pc, r0
004274e4  25 fd ff eb                                      bl #0x426980
004274e8  fc 33 9f e5                                      ldr r3, [pc, #0x3fc]
004274ec  fc 03 9f e5                                      ldr r0, [pc, #0x3fc]
004274f0  03 10 94 e7                                      ldr r1, [r4, r3]
004274f4  00 00 8f e0                                      add r0, pc, r0
004274f8  20 fd ff eb                                      bl #0x426980
004274fc  f0 33 9f e5                                      ldr r3, [pc, #0x3f0]
00427500  f0 03 9f e5                                      ldr r0, [pc, #0x3f0]
00427504  03 10 94 e7                                      ldr r1, [r4, r3]
00427508  00 00 8f e0                                      add r0, pc, r0
0042750c  1b fd ff eb                                      bl #0x426980
00427510  e4 33 9f e5                                      ldr r3, [pc, #0x3e4]
00427514  e4 03 9f e5                                      ldr r0, [pc, #0x3e4]
00427518  03 10 94 e7                                      ldr r1, [r4, r3]
0042751c  00 00 8f e0                                      add r0, pc, r0
00427520  16 fd ff eb                                      bl #0x426980
00427524  d8 33 9f e5                                      ldr r3, [pc, #0x3d8]
00427528  d8 03 9f e5                                      ldr r0, [pc, #0x3d8]
0042752c  03 10 94 e7                                      ldr r1, [r4, r3]
00427530  00 00 8f e0                                      add r0, pc, r0
00427534  11 fd ff eb                                      bl #0x426980
00427538  cc 33 9f e5                                      ldr r3, [pc, #0x3cc]
0042753c  cc 03 9f e5                                      ldr r0, [pc, #0x3cc]
00427540  03 10 94 e7                                      ldr r1, [r4, r3]
00427544  00 00 8f e0                                      add r0, pc, r0
00427548  0c fd ff eb                                      bl #0x426980
0042754c  c0 33 9f e5                                      ldr r3, [pc, #0x3c0]
00427550  c0 03 9f e5                                      ldr r0, [pc, #0x3c0]
00427554  03 10 94 e7                                      ldr r1, [r4, r3]
00427558  00 00 8f e0                                      add r0, pc, r0
0042755c  07 fd ff eb                                      bl #0x426980
00427560  b4 33 9f e5                                      ldr r3, [pc, #0x3b4]
00427564  b4 03 9f e5                                      ldr r0, [pc, #0x3b4]
00427568  03 10 94 e7                                      ldr r1, [r4, r3]
0042756c  00 00 8f e0                                      add r0, pc, r0
00427570  02 fd ff eb                                      bl #0x426980
00427574  a8 33 9f e5                                      ldr r3, [pc, #0x3a8]
00427578  a8 03 9f e5                                      ldr r0, [pc, #0x3a8]
0042757c  03 10 94 e7                                      ldr r1, [r4, r3]
00427580  00 00 8f e0                                      add r0, pc, r0
00427584  fd fc ff eb                                      bl #0x426980
00427588  9c 33 9f e5                                      ldr r3, [pc, #0x39c]
0042758c  9c 03 9f e5                                      ldr r0, [pc, #0x39c]
00427590  03 10 94 e7                                      ldr r1, [r4, r3]
00427594  00 00 8f e0                                      add r0, pc, r0
00427598  f8 fc ff eb                                      bl #0x426980
0042759c  90 33 9f e5                                      ldr r3, [pc, #0x390]
004275a0  90 03 9f e5                                      ldr r0, [pc, #0x390]
004275a4  03 10 94 e7                                      ldr r1, [r4, r3]
004275a8  00 00 8f e0                                      add r0, pc, r0
004275ac  f3 fc ff eb                                      bl #0x426980
004275b0  84 33 9f e5                                      ldr r3, [pc, #0x384]
004275b4  84 03 9f e5                                      ldr r0, [pc, #0x384]
004275b8  03 10 94 e7                                      ldr r1, [r4, r3]
004275bc  00 00 8f e0                                      add r0, pc, r0
004275c0  ee fc ff eb                                      bl #0x426980
004275c4  78 33 9f e5                                      ldr r3, [pc, #0x378]
004275c8  78 03 9f e5                                      ldr r0, [pc, #0x378]
004275cc  03 10 94 e7                                      ldr r1, [r4, r3]
004275d0  00 00 8f e0                                      add r0, pc, r0
004275d4  e9 fc ff eb                                      bl #0x426980
004275d8  6c 33 9f e5                                      ldr r3, [pc, #0x36c]
004275dc  6c 03 9f e5                                      ldr r0, [pc, #0x36c]
004275e0  03 10 94 e7                                      ldr r1, [r4, r3]
004275e4  00 00 8f e0                                      add r0, pc, r0
004275e8  e4 fc ff eb                                      bl #0x426980
004275ec  60 33 9f e5                                      ldr r3, [pc, #0x360]
004275f0  60 03 9f e5                                      ldr r0, [pc, #0x360]
004275f4  03 10 94 e7                                      ldr r1, [r4, r3]
004275f8  00 00 8f e0                                      add r0, pc, r0
004275fc  df fc ff eb                                      bl #0x426980
00427600  54 33 9f e5                                      ldr r3, [pc, #0x354]
00427604  54 03 9f e5                                      ldr r0, [pc, #0x354]
00427608  03 10 94 e7                                      ldr r1, [r4, r3]
0042760c  00 00 8f e0                                      add r0, pc, r0
00427610  da fc ff eb                                      bl #0x426980
00427614  48 33 9f e5                                      ldr r3, [pc, #0x348]
00427618  48 03 9f e5                                      ldr r0, [pc, #0x348]
0042761c  03 10 94 e7                                      ldr r1, [r4, r3]
00427620  00 00 8f e0                                      add r0, pc, r0
00427624  d5 fc ff eb                                      bl #0x426980
00427628  3c 33 9f e5                                      ldr r3, [pc, #0x33c]
0042762c  3c 03 9f e5                                      ldr r0, [pc, #0x33c]
00427630  03 10 94 e7                                      ldr r1, [r4, r3]
00427634  00 00 8f e0                                      add r0, pc, r0
00427638  d0 fc ff eb                                      bl #0x426980
0042763c  30 33 9f e5                                      ldr r3, [pc, #0x330]
00427640  30 03 9f e5                                      ldr r0, [pc, #0x330]
00427644  03 10 94 e7                                      ldr r1, [r4, r3]
00427648  00 00 8f e0                                      add r0, pc, r0
0042764c  cb fc ff eb                                      bl #0x426980
00427650  24 33 9f e5                                      ldr r3, [pc, #0x324]
00427654  24 03 9f e5                                      ldr r0, [pc, #0x324]
00427658  03 10 94 e7                                      ldr r1, [r4, r3]
0042765c  00 00 8f e0                                      add r0, pc, r0
00427660  c6 fc ff eb                                      bl #0x426980
00427664  18 33 9f e5                                      ldr r3, [pc, #0x318]
00427668  18 03 9f e5                                      ldr r0, [pc, #0x318]
0042766c  03 10 94 e7                                      ldr r1, [r4, r3]
00427670  00 00 8f e0                                      add r0, pc, r0
00427674  c1 fc ff eb                                      bl #0x426980
00427678  0c 33 9f e5                                      ldr r3, [pc, #0x30c]
0042767c  0c 03 9f e5                                      ldr r0, [pc, #0x30c]
00427680  03 10 94 e7                                      ldr r1, [r4, r3]
00427684  00 00 8f e0                                      add r0, pc, r0
00427688  bc fc ff eb                                      bl #0x426980
0042768c  00 33 9f e5                                      ldr r3, [pc, #0x300]
00427690  00 03 9f e5                                      ldr r0, [pc, #0x300]
00427694  03 10 94 e7                                      ldr r1, [r4, r3]
00427698  00 00 8f e0                                      add r0, pc, r0
0042769c  b7 fc ff eb                                      bl #0x426980
004276a0  f4 32 9f e5                                      ldr r3, [pc, #0x2f4]
004276a4  f4 02 9f e5                                      ldr r0, [pc, #0x2f4]
004276a8  03 10 94 e7                                      ldr r1, [r4, r3]
004276ac  00 00 8f e0                                      add r0, pc, r0
004276b0  b2 fc ff eb                                      bl #0x426980
004276b4  e8 32 9f e5                                      ldr r3, [pc, #0x2e8]
004276b8  e8 02 9f e5                                      ldr r0, [pc, #0x2e8]
004276bc  03 10 94 e7                                      ldr r1, [r4, r3]
004276c0  00 00 8f e0                                      add r0, pc, r0
004276c4  ad fc ff eb                                      bl #0x426980
004276c8  dc 32 9f e5                                      ldr r3, [pc, #0x2dc]
004276cc  dc 02 9f e5                                      ldr r0, [pc, #0x2dc]
004276d0  03 10 94 e7                                      ldr r1, [r4, r3]
004276d4  00 00 8f e0                                      add r0, pc, r0
004276d8  a8 fc ff eb                                      bl #0x426980
004276dc  d0 32 9f e5                                      ldr r3, [pc, #0x2d0]
004276e0  d0 02 9f e5                                      ldr r0, [pc, #0x2d0]
004276e4  03 10 94 e7                                      ldr r1, [r4, r3]
004276e8  00 00 8f e0                                      add r0, pc, r0
004276ec  a3 fc ff eb                                      bl #0x426980
004276f0  c4 32 9f e5                                      ldr r3, [pc, #0x2c4]
004276f4  c4 02 9f e5                                      ldr r0, [pc, #0x2c4]
004276f8  03 10 94 e7                                      ldr r1, [r4, r3]
004276fc  00 00 8f e0                                      add r0, pc, r0
00427700  9e fc ff eb                                      bl #0x426980
00427704  b8 32 9f e5                                      ldr r3, [pc, #0x2b8]
00427708  b8 02 9f e5                                      ldr r0, [pc, #0x2b8]
0042770c  03 10 94 e7                                      ldr r1, [r4, r3]
00427710  00 00 8f e0                                      add r0, pc, r0
00427714  99 fc ff eb                                      bl #0x426980
00427718  ac 32 9f e5                                      ldr r3, [pc, #0x2ac]
0042771c  ac 02 9f e5                                      ldr r0, [pc, #0x2ac]
00427720  03 10 94 e7                                      ldr r1, [r4, r3]
00427724  00 00 8f e0                                      add r0, pc, r0
00427728  94 fc ff eb                                      bl #0x426980
0042772c  a0 32 9f e5                                      ldr r3, [pc, #0x2a0]
00427730  a0 02 9f e5                                      ldr r0, [pc, #0x2a0]
00427734  03 10 94 e7                                      ldr r1, [r4, r3]
00427738  00 00 8f e0                                      add r0, pc, r0
0042773c  8f fc ff eb                                      bl #0x426980
00427740  94 32 9f e5                                      ldr r3, [pc, #0x294]
00427744  94 02 9f e5                                      ldr r0, [pc, #0x294]
00427748  03 10 94 e7                                      ldr r1, [r4, r3]
0042774c  00 00 8f e0                                      add r0, pc, r0
00427750  8a fc ff eb                                      bl #0x426980
00427754  88 32 9f e5                                      ldr r3, [pc, #0x288]
00427758  88 02 9f e5                                      ldr r0, [pc, #0x288]
0042775c  03 10 94 e7                                      ldr r1, [r4, r3]
00427760  00 00 8f e0                                      add r0, pc, r0
00427764  85 fc ff eb                                      bl #0x426980
00427768  7c 32 9f e5                                      ldr r3, [pc, #0x27c]
0042776c  7c 02 9f e5                                      ldr r0, [pc, #0x27c]
00427770  03 10 94 e7                                      ldr r1, [r4, r3]
00427774  00 00 8f e0                                      add r0, pc, r0
00427778  80 fc ff eb                                      bl #0x426980
0042777c  70 32 9f e5                                      ldr r3, [pc, #0x270]
00427780  70 02 9f e5                                      ldr r0, [pc, #0x270]
00427784  03 10 94 e7                                      ldr r1, [r4, r3]
00427788  00 00 8f e0                                      add r0, pc, r0
0042778c  7b fc ff eb                                      bl #0x426980
00427790  64 32 9f e5                                      ldr r3, [pc, #0x264]
00427794  64 02 9f e5                                      ldr r0, [pc, #0x264]
00427798  03 10 94 e7                                      ldr r1, [r4, r3]
0042779c  00 00 8f e0                                      add r0, pc, r0
004277a0  76 fc ff eb                                      bl #0x426980
004277a4  58 32 9f e5                                      ldr r3, [pc, #0x258]
004277a8  58 02 9f e5                                      ldr r0, [pc, #0x258]
004277ac  03 10 94 e7                                      ldr r1, [r4, r3]
004277b0  00 00 8f e0                                      add r0, pc, r0
004277b4  71 fc ff eb                                      bl #0x426980
004277b8  4c 32 9f e5                                      ldr r3, [pc, #0x24c]
004277bc  4c 02 9f e5                                      ldr r0, [pc, #0x24c]
004277c0  03 10 94 e7                                      ldr r1, [r4, r3]
004277c4  00 00 8f e0                                      add r0, pc, r0
004277c8  6c fc ff eb                                      bl #0x426980
004277cc  40 32 9f e5                                      ldr r3, [pc, #0x240]
004277d0  40 02 9f e5                                      ldr r0, [pc, #0x240]
004277d4  03 10 94 e7                                      ldr r1, [r4, r3]
004277d8  00 00 8f e0                                      add r0, pc, r0
004277dc  67 fc ff eb                                      bl #0x426980
004277e0  34 32 9f e5                                      ldr r3, [pc, #0x234]
004277e4  34 02 9f e5                                      ldr r0, [pc, #0x234]
004277e8  03 10 94 e7                                      ldr r1, [r4, r3]
004277ec  00 00 8f e0                                      add r0, pc, r0
004277f0  62 fc ff eb                                      bl #0x426980
004277f4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004277f8  00 30 97 e5                                      ldr r3, [r7]
004277fc  05 00 a0 e1                                      mov r0, r5
00427800  03 00 52 e1                                      cmp r2, r3
00427804  01 00 00 1a                                      bne #0x427810
00427808  24 d0 8d e2                                      add sp, sp, #0x24
0042780c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00427810  be 9a fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00427814  80 d8 56 00 ac 40 00 00 1c 4a 00 00 84 08 00 00  .byte 0x80, 0xd8, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0x1c, 0x4a, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
00427824  64 1d 4a 00 64 37 00 00 ec 3e 00 00 84 c4 49 00  .byte 0x64, 0x1d, 0x4a, 0x00, 0x64, 0x37, 0x00, 0x00, 0xec, 0x3e, 0x00, 0x00, 0x84, 0xc4, 0x49, 0x00
00427834  44 35 00 00 68 c4 49 00 94 3e 00 00 44 c4 49 00  .byte 0x44, 0x35, 0x00, 0x00, 0x68, 0xc4, 0x49, 0x00, 0x94, 0x3e, 0x00, 0x00, 0x44, 0xc4, 0x49, 0x00
00427844  a0 11 00 00 00 1f 4a 00 20 40 00 00 fc 1e 4a 00  .byte 0xa0, 0x11, 0x00, 0x00, 0x00, 0x1f, 0x4a, 0x00, 0x20, 0x40, 0x00, 0x00, 0xfc, 0x1e, 0x4a, 0x00
00427854  c4 22 00 00 f8 1e 4a 00 48 3d 00 00 f4 1e 4a 00  .byte 0xc4, 0x22, 0x00, 0x00, 0xf8, 0x1e, 0x4a, 0x00, 0x48, 0x3d, 0x00, 0x00, 0xf4, 0x1e, 0x4a, 0x00
00427864  94 23 00 00 f0 1e 4a 00 90 47 00 00 3c a8 49 00  .byte 0x94, 0x23, 0x00, 0x00, 0xf0, 0x1e, 0x4a, 0x00, 0x90, 0x47, 0x00, 0x00, 0x3c, 0xa8, 0x49, 0x00
00427874  d8 22 00 00 d8 1e 4a 00 e8 28 00 00 e4 1b 4a 00  .byte 0xd8, 0x22, 0x00, 0x00, 0xd8, 0x1e, 0x4a, 0x00, 0xe8, 0x28, 0x00, 0x00, 0xe4, 0x1b, 0x4a, 0x00
00427884  30 2e 00 00 c0 1e 4a 00 30 3a 00 00 bc 1e 4a 00  .byte 0x30, 0x2e, 0x00, 0x00, 0xc0, 0x1e, 0x4a, 0x00, 0x30, 0x3a, 0x00, 0x00, 0xbc, 0x1e, 0x4a, 0x00
00427894  dc 07 00 00 b8 1e 4a 00 5c 0c 00 00 b4 1e 4a 00  .byte 0xdc, 0x07, 0x00, 0x00, 0xb8, 0x1e, 0x4a, 0x00, 0x5c, 0x0c, 0x00, 0x00, 0xb4, 0x1e, 0x4a, 0x00
004278a4  ac 08 00 00 b0 1e 4a 00 94 17 00 00 ac 1e 4a 00  .byte 0xac, 0x08, 0x00, 0x00, 0xb0, 0x1e, 0x4a, 0x00, 0x94, 0x17, 0x00, 0x00, 0xac, 0x1e, 0x4a, 0x00
004278b4  0c 34 00 00 a8 1e 4a 00 fc 44 00 00 a4 1e 4a 00  .byte 0x0c, 0x34, 0x00, 0x00, 0xa8, 0x1e, 0x4a, 0x00, 0xfc, 0x44, 0x00, 0x00, 0xa4, 0x1e, 0x4a, 0x00
004278c4  64 19 00 00 a0 1e 4a 00 00 3d 00 00 9c 1e 4a 00  .byte 0x64, 0x19, 0x00, 0x00, 0xa0, 0x1e, 0x4a, 0x00, 0x00, 0x3d, 0x00, 0x00, 0x9c, 0x1e, 0x4a, 0x00
004278d4  80 2e 00 00 98 1e 4a 00 c8 44 00 00 cc 19 4a 00  .byte 0x80, 0x2e, 0x00, 0x00, 0x98, 0x1e, 0x4a, 0x00, 0xc8, 0x44, 0x00, 0x00, 0xcc, 0x19, 0x4a, 0x00
004278e4  30 0c 00 00 80 1e 4a 00 b4 2e 00 00 7c 1e 4a 00  .byte 0x30, 0x0c, 0x00, 0x00, 0x80, 0x1e, 0x4a, 0x00, 0xb4, 0x2e, 0x00, 0x00, 0x7c, 0x1e, 0x4a, 0x00
004278f4  ec 1c 00 00 78 1e 4a 00 00 28 00 00 74 1e 4a 00  .byte 0xec, 0x1c, 0x00, 0x00, 0x78, 0x1e, 0x4a, 0x00, 0x00, 0x28, 0x00, 0x00, 0x74, 0x1e, 0x4a, 0x00
00427904  80 0f 00 00 70 1e 4a 00 84 25 00 00 6c 1e 4a 00  .byte 0x80, 0x0f, 0x00, 0x00, 0x70, 0x1e, 0x4a, 0x00, 0x84, 0x25, 0x00, 0x00, 0x6c, 0x1e, 0x4a, 0x00
00427914  fc 47 00 00 68 1e 4a 00 a0 35 00 00 64 1e 4a 00  .byte 0xfc, 0x47, 0x00, 0x00, 0x68, 0x1e, 0x4a, 0x00, 0xa0, 0x35, 0x00, 0x00, 0x64, 0x1e, 0x4a, 0x00
00427924  fc 3d 00 00 60 1e 4a 00 d4 3f 00 00 54 1e 4a 00  .byte 0xfc, 0x3d, 0x00, 0x00, 0x60, 0x1e, 0x4a, 0x00, 0xd4, 0x3f, 0x00, 0x00, 0x54, 0x1e, 0x4a, 0x00
00427934  18 20 00 00 50 1e 4a 00 7c 3e 00 00 4c 1e 4a 00  .byte 0x18, 0x20, 0x00, 0x00, 0x50, 0x1e, 0x4a, 0x00, 0x7c, 0x3e, 0x00, 0x00, 0x4c, 0x1e, 0x4a, 0x00
00427944  98 10 00 00 48 1e 4a 00 44 49 00 00 4c 1e 4a 00  .byte 0x98, 0x10, 0x00, 0x00, 0x48, 0x1e, 0x4a, 0x00, 0x44, 0x49, 0x00, 0x00, 0x4c, 0x1e, 0x4a, 0x00
00427954  a0 3a 00 00 48 1e 4a 00 f0 06 00 00 44 1e 4a 00  .byte 0xa0, 0x3a, 0x00, 0x00, 0x48, 0x1e, 0x4a, 0x00, 0xf0, 0x06, 0x00, 0x00, 0x44, 0x1e, 0x4a, 0x00
00427964  00 35 00 00 40 1e 4a 00 34 20 00 00 44 1e 4a 00  .byte 0x00, 0x35, 0x00, 0x00, 0x40, 0x1e, 0x4a, 0x00, 0x34, 0x20, 0x00, 0x00, 0x44, 0x1e, 0x4a, 0x00
00427974  64 14 00 00 48 1e 4a 00 34 36 00 00 4c 1e 4a 00  .byte 0x64, 0x14, 0x00, 0x00, 0x48, 0x1e, 0x4a, 0x00, 0x34, 0x36, 0x00, 0x00, 0x4c, 0x1e, 0x4a, 0x00
00427984  b4 34 00 00 48 1e 4a 00 58 13 00 00 44 1e 4a 00  .byte 0xb4, 0x34, 0x00, 0x00, 0x48, 0x1e, 0x4a, 0x00, 0x58, 0x13, 0x00, 0x00, 0x44, 0x1e, 0x4a, 0x00
00427994  d0 24 00 00 40 1e 4a 00 bc 35 00 00 3c 1e 4a 00  .byte 0xd0, 0x24, 0x00, 0x00, 0x40, 0x1e, 0x4a, 0x00, 0xbc, 0x35, 0x00, 0x00, 0x3c, 0x1e, 0x4a, 0x00
004279a4  88 45 00 00 40 1e 4a 00 54 31 00 00 3c 1e 4a 00  .byte 0x88, 0x45, 0x00, 0x00, 0x40, 0x1e, 0x4a, 0x00, 0x54, 0x31, 0x00, 0x00, 0x3c, 0x1e, 0x4a, 0x00
004279b4  48 32 00 00 38 1e 4a 00 2c 1b 00 00 34 1e 4a 00  .byte 0x48, 0x32, 0x00, 0x00, 0x38, 0x1e, 0x4a, 0x00, 0x2c, 0x1b, 0x00, 0x00, 0x34, 0x1e, 0x4a, 0x00
004279c4  1c 2e 00 00 30 1e 4a 00 00 15 00 00 2c 1e 4a 00  .byte 0x1c, 0x2e, 0x00, 0x00, 0x30, 0x1e, 0x4a, 0x00, 0x00, 0x15, 0x00, 0x00, 0x2c, 0x1e, 0x4a, 0x00
004279d4  a8 41 00 00 28 1e 4a 00 a8 34 00 00 24 1e 4a 00  .byte 0xa8, 0x41, 0x00, 0x00, 0x28, 0x1e, 0x4a, 0x00, 0xa8, 0x34, 0x00, 0x00, 0x24, 0x1e, 0x4a, 0x00
004279e4  3c 49 00 00 00 cb 49 00 c4 1d 00 00 0c 1e 4a 00  .byte 0x3c, 0x49, 0x00, 0x00, 0x00, 0xcb, 0x49, 0x00, 0xc4, 0x1d, 0x00, 0x00, 0x0c, 0x1e, 0x4a, 0x00
004279f4  c8 1e 00 00 08 1e 4a 00 1c 23 00 00 04 1e 4a 00  .byte 0xc8, 0x1e, 0x00, 0x00, 0x08, 0x1e, 0x4a, 0x00, 0x1c, 0x23, 0x00, 0x00, 0x04, 0x1e, 0x4a, 0x00
00427a04  30 27 00 00 00 1e 4a 00 b4 11 00 00 fc 1d 4a 00  .byte 0x30, 0x27, 0x00, 0x00, 0x00, 0x1e, 0x4a, 0x00, 0xb4, 0x11, 0x00, 0x00, 0xfc, 0x1d, 0x4a, 0x00
00427a14  c4 1b 00 00 f8 1d 4a 00 d0 19 00 00 f4 1d 4a 00  .byte 0xc4, 0x1b, 0x00, 0x00, 0xf8, 0x1d, 0x4a, 0x00, 0xd0, 0x19, 0x00, 0x00, 0xf4, 0x1d, 0x4a, 0x00

; FUNCTION 0x00427a24, declared_size=228, range_size=228, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase11MyFSCommandEPKcS1_
; demangled: MenuBase::MyFSCommand(char const*, char const*)
; decoder-mode: arm
00427a24  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00427a28  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
00427a2c  c4 60 9f e5                                      ldr r6, [pc, #0xc4]
00427a30  28 d0 4d e2                                      sub sp, sp, #0x28
00427a34  04 40 8f e0                                      add r4, pc, r4
00427a38  06 30 94 e7                                      ldr r3, [r4, r6]
00427a3c  00 00 51 e3                                      cmp r1, #0
00427a40  00 90 a0 e1                                      mov sb, r0
00427a44  00 30 93 e5                                      ldr r3, [r3]
00427a48  04 10 8d e5                                      str r1, [sp, #4]
00427a4c  02 a0 a0 e1                                      mov sl, r2
00427a50  24 30 8d e5                                      str r3, [sp, #0x24]
00427a54  01 00 a0 03                                      moveq r0, #1
00427a58  1d 00 00 0a                                      beq #0x427ad4
00427a5c  98 30 9f e5                                      ldr r3, [pc, #0x98]
00427a60  0c 50 8d e2                                      add r5, sp, #0xc
00427a64  04 80 8d e2                                      add r8, sp, #4
00427a68  03 70 94 e7                                      ldr r7, [r4, r3]
00427a6c  07 00 a0 e1                                      mov r0, r7
00427a70  84 3f fc eb                                      bl #0x337888
00427a74  84 10 9f e5                                      ldr r1, [pc, #0x84]
00427a78  08 20 8d e2                                      add r2, sp, #8
00427a7c  05 00 a0 e1                                      mov r0, r5
00427a80  01 10 8f e0                                      add r1, pc, r1
00427a84  98 b1 fb eb                                      bl #0x3140ec
00427a88  05 10 a0 e1                                      mov r1, r5
00427a8c  07 00 a0 e1                                      mov r0, r7
00427a90  fc 3f fc eb                                      bl #0x337a88
00427a94  05 00 a0 e1                                      mov r0, r5
00427a98  ed c1 fb eb                                      bl #0x318254
00427a9c  08 00 a0 e1                                      mov r0, r8
00427aa0  ae f4 ff eb                                      bl #0x424d60
00427aa4  58 30 9f e5                                      ldr r3, [pc, #0x58]
00427aa8  03 30 94 e7                                      ldr r3, [r4, r3]
00427aac  00 00 53 e1                                      cmp r3, r0
00427ab0  00 00 a0 03                                      moveq r0, #0
00427ab4  06 00 00 0a                                      beq #0x427ad4
00427ab8  08 00 a0 e1                                      mov r0, r8
00427abc  5b fb ff eb                                      bl #0x426830
00427ac0  0a 10 a0 e1                                      mov r1, sl
00427ac4  00 30 90 e5                                      ldr r3, [r0]
00427ac8  09 20 a0 e1                                      mov r2, sb
00427acc  04 00 9d e5                                      ldr r0, [sp, #4]
00427ad0  33 ff 2f e1                                      blx r3
00427ad4  06 30 94 e7                                      ldr r3, [r4, r6]
00427ad8  24 20 9d e5                                      ldr r2, [sp, #0x24]
00427adc  00 30 93 e5                                      ldr r3, [r3]
00427ae0  03 00 52 e1                                      cmp r2, r3
00427ae4  01 00 00 1a                                      bne #0x427af0
00427ae8  28 d0 8d e2                                      add sp, sp, #0x28
00427aec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00427af0  06 9a fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00427af4  5c d0 56 00 ac 40 00 00 84 08 00 00 c0 15 4a 00  .byte 0x5c, 0xd0, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc0, 0x15, 0x4a, 0x00
00427b04  00 0f 00 00                                      .byte 0x00, 0x0f, 0x00, 0x00

; FUNCTION 0x00427b08, declared_size=128, range_size=128, mode=arm
; class-group: MenuBase
; alias: _ZN8MenuBase13FS_StopDialogEPKcS1_Pv
; demangled: MenuBase::FS_StopDialog(char const*, char const*, void*)
; decoder-mode: arm
00427b08  70 40 2d e9                                      push {r4, r5, r6, lr}
00427b0c  64 40 9f e5                                      ldr r4, [pc, #0x64]
00427b10  64 50 9f e5                                      ldr r5, [pc, #0x64]
00427b14  04 40 8f e0                                      add r4, pc, r4
00427b18  05 00 94 e7                                      ldr r0, [r4, r5]
00427b1c  14 20 90 e5                                      ldr r2, [r0, #0x14]
00427b20  04 30 90 e5                                      ldr r3, [r0, #4]
00427b24  03 00 52 e1                                      cmp r2, r3
00427b28  10 00 00 0a                                      beq #0x427b70
00427b2c  04 00 80 e2                                      add r0, r0, #4
00427b30  c2 70 fd eb                                      bl #0x383e40
00427b34  44 30 9f e5                                      ldr r3, [pc, #0x44]
00427b38  03 30 94 e7                                      ldr r3, [r4, r3]
00427b3c  00 00 93 e5                                      ldr r0, [r3]
00427b40  00 00 50 e3                                      cmp r0, #0
00427b44  00 00 00 0a                                      beq #0x427b4c
00427b48  2a e8 ff eb                                      bl #0x421bf8
00427b4c  05 30 94 e7                                      ldr r3, [r4, r5]
00427b50  04 20 93 e5                                      ldr r2, [r3, #4]
00427b54  14 30 93 e5                                      ldr r3, [r3, #0x14]
00427b58  02 00 53 e1                                      cmp r3, r2
00427b5c  03 00 00 0a                                      beq #0x427b70
00427b60  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00427b64  03 30 94 e7                                      ldr r3, [r4, r3]
00427b68  00 00 93 e5                                      ldr r0, [r3]
00427b6c  21 e8 ff eb                                      bl #0x421bf8
00427b70  01 00 a0 e3                                      mov r0, #1
00427b74  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00427b78  7c cf 56 00 74 1e 00 00 5c 1e 00 00 48 38 00 00  .byte 0x7c, 0xcf, 0x56, 0x00, 0x74, 0x1e, 0x00, 0x00, 0x5c, 0x1e, 0x00, 0x00, 0x48, 0x38, 0x00, 0x00
