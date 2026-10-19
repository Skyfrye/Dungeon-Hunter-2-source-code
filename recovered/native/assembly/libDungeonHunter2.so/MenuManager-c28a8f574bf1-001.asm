; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042ca8c, declared_size=32, range_size=32, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager11GetInstanceEv
; demangled: MenuManager::GetInstance()
; decoder-mode: arm
0042ca8c  10 30 9f e5                                      ldr r3, [pc, #0x10]
0042ca90  10 20 9f e5                                      ldr r2, [pc, #0x10]
0042ca94  03 30 8f e0                                      add r3, pc, r3
0042ca98  02 20 93 e7                                      ldr r2, [r3, r2]
0042ca9c  54 00 92 e5                                      ldr r0, [r2, #0x54]
0042caa0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0042caa4  fc 7f 56 00 f4 37 00 00                          .byte 0xfc, 0x7f, 0x56, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0042caac, declared_size=4, range_size=4, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager17SetCursorPositionEff
; demangled: MenuManager::SetCursorPosition(float, float)
; decoder-mode: arm
0042caac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0042cab0, declared_size=4, range_size=4, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager21ForceAllTextureToVRamEv
; demangled: MenuManager::ForceAllTextureToVRam()
; decoder-mode: arm
0042cab0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0042cab4, declared_size=132, range_size=132, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager13UnloadSWFFileEi
; demangled: MenuManager::UnloadSWFFile(int)
; decoder-mode: arm
0042cab4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0042cab8  22 60 81 e2                                      add r6, r1, #0x22
0042cabc  06 71 80 e0                                      add r7, r0, r6, lsl #2
0042cac0  04 30 97 e5                                      ldr r3, [r7, #4]
0042cac4  00 40 a0 e1                                      mov r4, r0
0042cac8  01 50 a0 e1                                      mov r5, r1
0042cacc  03 00 a0 e1                                      mov r0, r3
0042cad0  00 30 93 e5                                      ldr r3, [r3]
0042cad4  0f e0 a0 e1                                      mov lr, pc
0042cad8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0042cadc  04 30 97 e5                                      ldr r3, [r7, #4]
0042cae0  00 00 53 e3                                      cmp r3, #0
0042cae4  03 00 00 0a                                      beq #0x42caf8
0042cae8  03 00 a0 e1                                      mov r0, r3
0042caec  00 30 93 e5                                      ldr r3, [r3]
0042caf0  0f e0 a0 e1                                      mov lr, pc
0042caf4  04 f0 93 e5                                      ldr pc, [r3, #4]
0042caf8  00 30 a0 e3                                      mov r3, #0
0042cafc  06 61 84 e0                                      add r6, r4, r6, lsl #2
0042cb00  26 50 85 e2                                      add r5, r5, #0x26
0042cb04  04 30 86 e5                                      str r3, [r6, #4]
0042cb08  05 31 84 e0                                      add r3, r4, r5, lsl #2
0042cb0c  04 30 93 e5                                      ldr r3, [r3, #4]
0042cb10  00 00 53 e3                                      cmp r3, #0
0042cb14  03 00 00 0a                                      beq #0x42cb28
0042cb18  03 00 a0 e1                                      mov r0, r3
0042cb1c  00 30 93 e5                                      ldr r3, [r3]
0042cb20  0f e0 a0 e1                                      mov lr, pc
0042cb24  04 f0 93 e5                                      ldr pc, [r3, #4]
0042cb28  05 41 84 e0                                      add r4, r4, r5, lsl #2
0042cb2c  00 30 a0 e3                                      mov r3, #0
0042cb30  04 30 84 e5                                      str r3, [r4, #4]
0042cb34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0042cb38, declared_size=20, range_size=20, mode=arm
; class-group: MenuManager
; alias: _ZNK11MenuManager11GetNumMenusEv
; demangled: MenuManager::GetNumMenus() const
; decoder-mode: arm
0042cb38  64 30 90 e5                                      ldr r3, [r0, #0x64]
0042cb3c  68 00 90 e5                                      ldr r0, [r0, #0x68]
0042cb40  00 00 63 e0                                      rsb r0, r3, r0
0042cb44  40 01 a0 e1                                      asr r0, r0, #2
0042cb48  1e ff 2f e1                                      bx lr

; FUNCTION 0x0042cb4c, declared_size=52, range_size=52, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager11GetMenuByIDEi
; demangled: MenuManager::GetMenuByID(int)
; decoder-mode: arm
0042cb4c  70 40 2d e9                                      push {r4, r5, r6, lr}
0042cb50  01 40 a0 e1                                      mov r4, r1
0042cb54  00 50 a0 e1                                      mov r5, r0
0042cb58  f6 ff ff eb                                      bl #0x42cb38
0042cb5c  00 00 54 e1                                      cmp r4, r0
0042cb60  00 00 a0 a3                                      movge r0, #0
0042cb64  01 00 a0 b3                                      movlt r0, #1
0042cb68  00 00 54 e3                                      cmp r4, #0
0042cb6c  00 00 a0 b3                                      movlt r0, #0
0042cb70  00 00 50 e3                                      cmp r0, #0
0042cb74  64 30 95 15                                      ldrne r3, [r5, #0x64]
0042cb78  04 01 93 17                                      ldrne r0, [r3, r4, lsl #2]
0042cb7c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0042cb80, declared_size=12, range_size=12, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager7GetRootEv
; demangled: MenuManager::GetRoot()
; decoder-mode: arm
0042cb80  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0042cb84  3c 01 93 e5                                      ldr r0, [r3, #0x13c]
0042cb88  1e ff 2f e1                                      bx lr

; FUNCTION 0x0042cb8c, declared_size=12, range_size=12, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager10GetHUDRootEv
; demangled: MenuManager::GetHUDRoot()
; decoder-mode: arm
0042cb8c  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0042cb90  40 01 93 e5                                      ldr r0, [r3, #0x140]
0042cb94  1e ff 2f e1                                      bx lr

; FUNCTION 0x0042cb98, declared_size=12, range_size=12, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager13GetRootCameraEv
; demangled: MenuManager::GetRootCamera()
; decoder-mode: arm
0042cb98  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0042cb9c  4c 01 93 e5                                      ldr r0, [r3, #0x14c]
0042cba0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0042cba4, declared_size=12, range_size=12, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager16GetHUDRootCameraEv
; demangled: MenuManager::GetHUDRootCamera()
; decoder-mode: arm
0042cba4  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0042cba8  50 01 93 e5                                      ldr r0, [r3, #0x150]
0042cbac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0042cbb0, declared_size=12, range_size=12, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager14GetRootCamera2Ev
; demangled: MenuManager::GetRootCamera2()
; decoder-mode: arm
0042cbb0  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0042cbb4  4c 01 93 e5                                      ldr r0, [r3, #0x14c]
0042cbb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0042cbbc, declared_size=120, range_size=120, mode=arm
; class-group: MenuManager
; alias: _ZNK11MenuManager26GetRawCurrentEventPositionERiS0_
; demangled: MenuManager::GetRawCurrentEventPosition(int&, int&) const
; decoder-mode: arm
0042cbbc  70 40 2d e9                                      push {r4, r5, r6, lr}
0042cbc0  b4 30 90 e5                                      ldr r3, [r0, #0xb4]
0042cbc4  00 40 a0 e1                                      mov r4, r0
0042cbc8  01 50 a0 e1                                      mov r5, r1
0042cbcc  00 00 53 e3                                      cmp r3, #0
0042cbd0  02 60 a0 e1                                      mov r6, r2
0042cbd4  0f 00 00 0a                                      beq #0x42cc18
0042cbd8  03 00 a0 e1                                      mov r0, r3
0042cbdc  00 30 93 e5                                      ldr r3, [r3]
0042cbe0  0f e0 a0 e1                                      mov lr, pc
0042cbe4  08 f0 93 e5                                      ldr pc, [r3, #8]
0042cbe8  04 00 50 e3                                      cmp r0, #4
0042cbec  0a 00 00 0a                                      beq #0x42cc1c
0042cbf0  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
0042cbf4  03 00 a0 e1                                      mov r0, r3
0042cbf8  00 30 93 e5                                      ldr r3, [r3]
0042cbfc  0f e0 a0 e1                                      mov lr, pc
0042cc00  08 f0 93 e5                                      ldr pc, [r3, #8]
0042cc04  05 00 50 e3                                      cmp r0, #5
0042cc08  00 30 a0 13                                      movne r3, #0
0042cc0c  00 30 85 15                                      strne r3, [r5]
0042cc10  00 30 86 15                                      strne r3, [r6]
0042cc14  00 00 00 0a                                      beq #0x42cc1c
0042cc18  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042cc1c  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
0042cc20  f8 20 d3 e1                                      ldrsh r2, [r3, #8]
0042cc24  00 20 85 e5                                      str r2, [r5]
0042cc28  fa 30 d3 e1                                      ldrsh r3, [r3, #0xa]
0042cc2c  00 30 86 e5                                      str r3, [r6]
0042cc30  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0042cc34, declared_size=12, range_size=12, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager12consumeEventEv
; demangled: MenuManager::consumeEvent()
; decoder-mode: arm
0042cc34  01 30 a0 e3                                      mov r3, #1
0042cc38  ac 30 80 e5                                      str r3, [r0, #0xac]
0042cc3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0042cc40, declared_size=8, range_size=8, mode=arm
; class-group: MenuManager
; alias: _ZThn4_N11MenuManager14CanHandleEventERN8RenderFX5EventE
; demangled: non-virtual thunk to MenuManager::CanHandleEvent(RenderFX::Event&)
; decoder-mode: arm
0042cc40  04 00 40 e2                                      sub r0, r0, #4
0042cc44  ff ff ff ea                                      b #0x42cc48

; FUNCTION 0x0042cc48, declared_size=8, range_size=8, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager14CanHandleEventERN8RenderFX5EventE
; demangled: MenuManager::CanHandleEvent(RenderFX::Event&)
; decoder-mode: arm
0042cc48  01 00 a0 e3                                      mov r0, #1
0042cc4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0042cf68, declared_size=240, range_size=240, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager11mySendEventEPcN8RenderFX9EventTypeE
; demangled: MenuManager::mySendEvent(char*, RenderFX::EventType)
; decoder-mode: arm
0042cf68  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0042cf6c  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
0042cf70  dc 70 9f e5                                      ldr r7, [pc, #0xdc]
0042cf74  13 de 4d e2                                      sub sp, sp, #0x130
0042cf78  04 40 8f e0                                      add r4, pc, r4
0042cf7c  07 30 94 e7                                      ldr r3, [r4, r7]
0042cf80  00 50 a0 e1                                      mov r5, r0
0042cf84  01 60 a0 e1                                      mov r6, r1
0042cf88  00 30 93 e5                                      ldr r3, [r3]
0042cf8c  02 90 a0 e1                                      mov sb, r2
0042cf90  00 80 a0 e3                                      mov r8, #0
0042cf94  2c 31 8d e5                                      str r3, [sp, #0x12c]
0042cf98  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
0042cf9c  08 31 83 e0                                      add r3, r3, r8, lsl #2
0042cfa0  34 a1 93 e5                                      ldr sl, [r3, #0x134]
0042cfa4  00 00 5a e3                                      cmp sl, #0
0042cfa8  04 00 00 0a                                      beq #0x42cfc0
0042cfac  0a 00 a0 e1                                      mov r0, sl
0042cfb0  06 10 a0 e1                                      mov r1, r6
0042cfb4  69 f0 0d eb                                      bl #0x7a9160
0042cfb8  00 00 50 e3                                      cmp r0, #0
0042cfbc  0a 00 00 1a                                      bne #0x42cfec
0042cfc0  01 80 88 e2                                      add r8, r8, #1
0042cfc4  04 00 58 e3                                      cmp r8, #4
0042cfc8  f2 ff ff 1a                                      bne #0x42cf98
0042cfcc  00 00 a0 e3                                      mov r0, #0
0042cfd0  07 30 94 e7                                      ldr r3, [r4, r7]
0042cfd4  2c 21 9d e5                                      ldr r2, [sp, #0x12c]
0042cfd8  00 30 93 e5                                      ldr r3, [r3]
0042cfdc  03 00 52 e1                                      cmp r2, r3
0042cfe0  19 00 00 1a                                      bne #0x42d04c
0042cfe4  13 de 8d e2                                      add sp, sp, #0x130
0042cfe8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0042cfec  00 30 a0 e3                                      mov r3, #0
0042cff0  00 20 a0 e3                                      mov r2, #0
0042cff4  04 00 8d e5                                      str r0, [sp, #4]
0042cff8  1c 20 8d e5                                      str r2, [sp, #0x1c]
0042cffc  18 30 8d e5                                      str r3, [sp, #0x18]
0042d000  0c 90 8d e5                                      str sb, [sp, #0xc]
0042d004  14 30 8d e5                                      str r3, [sp, #0x14]
0042d008  10 30 8d e5                                      str r3, [sp, #0x10]
0042d00c  44 20 90 e5                                      ldr r2, [r0, #0x44]
0042d010  04 10 8d e2                                      add r1, sp, #4
0042d014  0a 00 a0 e1                                      mov r0, sl
0042d018  d0 30 d2 e1                                      ldrsb r3, [r2]
0042d01c  01 00 73 e3                                      cmn r3, #1
0042d020  0c 20 92 05                                      ldreq r2, [r2, #0xc]
0042d024  00 30 a0 e3                                      mov r3, #0
0042d028  01 20 82 12                                      addne r2, r2, #1
0042d02c  08 20 8d e5                                      str r2, [sp, #8]
0042d030  24 30 8d e5                                      str r3, [sp, #0x24]
0042d034  29 30 cd e5                                      strb r3, [sp, #0x29]
0042d038  20 30 8d e5                                      str r3, [sp, #0x20]
0042d03c  28 30 cd e5                                      strb r3, [sp, #0x28]
0042d040  bb fb 0d eb                                      bl #0x7abf34
0042d044  01 00 a0 e3                                      mov r0, #1
0042d048  e0 ff ff ea                                      b #0x42cfd0
0042d04c  af 84 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0042d050  18 7b 56 00 ac 40 00 00                          .byte 0x18, 0x7b, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0042d058, declared_size=8, range_size=8, mode=arm
; class-group: MenuManager
; alias: _ZThn4_N11MenuManager7OnEventERN8RenderFX5EventE
; demangled: non-virtual thunk to MenuManager::OnEvent(RenderFX::Event&)
; decoder-mode: arm
0042d058  04 00 40 e2                                      sub r0, r0, #4
0042d05c  ff ff ff ea                                      b #0x42d060

; FUNCTION 0x0042d060, declared_size=140, range_size=140, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager7OnEventERN8RenderFX5EventE
; demangled: MenuManager::OnEvent(RenderFX::Event&)
; decoder-mode: arm
0042d060  70 40 2d e9                                      push {r4, r5, r6, lr}
0042d064  08 30 91 e5                                      ldr r3, [r1, #8]
0042d068  70 50 9f e5                                      ldr r5, [pc, #0x70]
0042d06c  01 40 a0 e1                                      mov r4, r1
0042d070  06 00 53 e3                                      cmp r3, #6
0042d074  00 60 a0 e1                                      mov r6, r0
0042d078  05 50 8f e0                                      add r5, pc, r5
0042d07c  0c 00 00 0a                                      beq #0x42d0b4
0042d080  25 b8 ff eb                                      bl #0x41b11c
0042d084  04 10 a0 e1                                      mov r1, r4
0042d088  00 30 90 e5                                      ldr r3, [r0]
0042d08c  0f e0 a0 e1                                      mov lr, pc
0042d090  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0042d094  f4 30 96 e5                                      ldr r3, [r6, #0xf4]
0042d098  04 10 a0 e1                                      mov r1, r4
0042d09c  40 31 93 e5                                      ldr r3, [r3, #0x140]
0042d0a0  03 00 a0 e1                                      mov r0, r3
0042d0a4  00 30 93 e5                                      ldr r3, [r3]
0042d0a8  0f e0 a0 e1                                      mov lr, pc
0042d0ac  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0042d0b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042d0b4  04 00 91 e5                                      ldr r0, [r1, #4]
0042d0b8  24 10 9f e5                                      ldr r1, [pc, #0x24]
0042d0bc  01 10 8f e0                                      add r1, pc, r1
0042d0c0  c3 86 fb eb                                      bl #0x30ebd4
0042d0c4  00 00 50 e3                                      cmp r0, #0
0042d0c8  ec ff ff 0a                                      beq #0x42d080
0042d0cc  14 30 9f e5                                      ldr r3, [pc, #0x14]
0042d0d0  09 20 a0 e3                                      mov r2, #9
0042d0d4  03 30 95 e7                                      ldr r3, [r5, r3]
0042d0d8  00 20 83 e5                                      str r2, [r3]
0042d0dc  e7 ff ff ea                                      b #0x42d080
; mapping-symbol data/literal pool
0042d0e0  18 7a 56 00 94 ce 49 00 50 38 00 00              .byte 0x18, 0x7a, 0x56, 0x00, 0x94, 0xce, 0x49, 0x00, 0x50, 0x38, 0x00, 0x00

; FUNCTION 0x0042d0ec, declared_size=100, range_size=100, mode=arm
; class-group: MenuManager
; alias: _ZNK11MenuManager19DBG_Draw2DDeadZonesEv
; demangled: MenuManager::DBG_Draw2DDeadZones() const
; decoder-mode: arm
0042d0ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0042d0f0  00 50 a0 e1                                      mov r5, r0
0042d0f4  8f fe ff eb                                      bl #0x42cb38
0042d0f8  00 60 50 e2                                      subs r6, r0, #0
0042d0fc  12 00 00 da                                      ble #0x42d14c
0042d100  00 40 a0 e3                                      mov r4, #0
0042d104  02 00 00 ea                                      b #0x42d114
0042d108  01 40 84 e2                                      add r4, r4, #1
0042d10c  04 00 56 e1                                      cmp r6, r4
0042d110  0d 00 00 0a                                      beq #0x42d14c
0042d114  64 30 95 e5                                      ldr r3, [r5, #0x64]
0042d118  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0042d11c  b4 c8 ff eb                                      bl #0x41f3f4
0042d120  00 00 50 e3                                      cmp r0, #0
0042d124  f7 ff ff 0a                                      beq #0x42d108
0042d128  64 30 95 e5                                      ldr r3, [r5, #0x64]
0042d12c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0042d130  01 40 84 e2                                      add r4, r4, #1
0042d134  03 00 a0 e1                                      mov r0, r3
0042d138  00 30 93 e5                                      ldr r3, [r3]
0042d13c  0f e0 a0 e1                                      mov lr, pc
0042d140  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0042d144  04 00 56 e1                                      cmp r6, r4
0042d148  f1 ff ff 1a                                      bne #0x42d114
0042d14c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0042d150, declared_size=76, range_size=76, mode=arm
; class-group: MenuManager
; alias: _ZNK11MenuManager14HasVisibleMenuEv
; demangled: MenuManager::HasVisibleMenu() const
; decoder-mode: arm
0042d150  70 40 2d e9                                      push {r4, r5, r6, lr}
0042d154  00 50 a0 e1                                      mov r5, r0
0042d158  76 fe ff eb                                      bl #0x42cb38
0042d15c  00 60 50 e2                                      subs r6, r0, #0
0042d160  0b 00 00 da                                      ble #0x42d194
0042d164  00 40 a0 e3                                      mov r4, #0
0042d168  01 00 00 ea                                      b #0x42d174
0042d16c  04 00 56 e1                                      cmp r6, r4
0042d170  07 00 00 0a                                      beq #0x42d194
0042d174  64 30 95 e5                                      ldr r3, [r5, #0x64]
0042d178  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0042d17c  9c c8 ff eb                                      bl #0x41f3f4
0042d180  00 00 50 e3                                      cmp r0, #0
0042d184  01 40 84 e2                                      add r4, r4, #1
0042d188  f7 ff ff 0a                                      beq #0x42d16c
0042d18c  01 00 a0 e3                                      mov r0, #1
0042d190  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042d194  00 00 a0 e3                                      mov r0, #0
0042d198  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0042d19c, declared_size=84, range_size=84, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager12GetMenuBelowEPKc
; demangled: MenuManager::GetMenuBelow(char const*)
; decoder-mode: arm
0042d19c  70 40 2d e9                                      push {r4, r5, r6, lr}
0042d1a0  64 40 90 e5                                      ldr r4, [r0, #0x64]
0042d1a4  68 50 90 e5                                      ldr r5, [r0, #0x68]
0042d1a8  01 60 a0 e1                                      mov r6, r1
0042d1ac  05 30 64 e0                                      rsb r3, r4, r5
0042d1b0  43 31 a0 e1                                      asr r3, r3, #2
0042d1b4  01 00 53 e3                                      cmp r3, #1
0042d1b8  02 00 00 8a                                      bhi #0x42d1c8
0042d1bc  00 00 a0 e3                                      mov r0, #0
0042d1c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042d1c4  04 40 84 e2                                      add r4, r4, #4
0042d1c8  04 00 55 e1                                      cmp r5, r4
0042d1cc  fa ff ff 0a                                      beq #0x42d1bc
0042d1d0  04 10 94 e5                                      ldr r1, [r4, #4]
0042d1d4  06 00 a0 e1                                      mov r0, r6
0042d1d8  08 10 81 e2                                      add r1, r1, #8
0042d1dc  4e 84 fb eb                                      bl #0x30e31c
0042d1e0  00 00 50 e3                                      cmp r0, #0
0042d1e4  f6 ff ff 1a                                      bne #0x42d1c4
0042d1e8  00 00 94 e5                                      ldr r0, [r4]
0042d1ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0042d1f0, declared_size=68, range_size=68, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager13GetMenuByNameEPKc
; demangled: MenuManager::GetMenuByName(char const*)
; decoder-mode: arm
0042d1f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0042d1f4  01 70 a0 e1                                      mov r7, r1
0042d1f8  68 60 90 e5                                      ldr r6, [r0, #0x68]
0042d1fc  64 40 90 e5                                      ldr r4, [r0, #0x64]
0042d200  06 00 00 ea                                      b #0x42d220
0042d204  00 50 94 e5                                      ldr r5, [r4]
0042d208  07 00 a0 e1                                      mov r0, r7
0042d20c  04 40 84 e2                                      add r4, r4, #4
0042d210  08 10 85 e2                                      add r1, r5, #8
0042d214  40 84 fb eb                                      bl #0x30e31c
0042d218  00 00 50 e3                                      cmp r0, #0
0042d21c  02 00 00 0a                                      beq #0x42d22c
0042d220  06 00 54 e1                                      cmp r4, r6
0042d224  f6 ff ff 1a                                      bne #0x42d204
0042d228  00 50 a0 e3                                      mov r5, #0
0042d22c  05 00 a0 e1                                      mov r0, r5
0042d230  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0042d234, declared_size=92, range_size=92, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager7HideAllEv
; demangled: MenuManager::HideAll()
; decoder-mode: arm
0042d234  70 40 2d e9                                      push {r4, r5, r6, lr}
0042d238  00 50 a0 e1                                      mov r5, r0
0042d23c  3d fe ff eb                                      bl #0x42cb38
0042d240  00 60 50 e2                                      subs r6, r0, #0
0042d244  10 00 00 da                                      ble #0x42d28c
0042d248  00 40 a0 e3                                      mov r4, #0
0042d24c  02 00 00 ea                                      b #0x42d25c
0042d250  01 40 84 e2                                      add r4, r4, #1
0042d254  04 00 56 e1                                      cmp r6, r4
0042d258  0b 00 00 0a                                      beq #0x42d28c
0042d25c  64 30 95 e5                                      ldr r3, [r5, #0x64]
0042d260  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0042d264  62 c8 ff eb                                      bl #0x41f3f4
0042d268  00 00 50 e3                                      cmp r0, #0
0042d26c  f7 ff ff 0a                                      beq #0x42d250
0042d270  64 30 95 e5                                      ldr r3, [r5, #0x64]
0042d274  00 10 a0 e3                                      mov r1, #0
0042d278  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0042d27c  01 40 84 e2                                      add r4, r4, #1
0042d280  4d d4 ff eb                                      bl #0x4223bc
0042d284  04 00 56 e1                                      cmp r6, r4
0042d288  f3 ff ff 1a                                      bne #0x42d25c
0042d28c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0042d290, declared_size=124, range_size=124, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager11LoadSWFFileEPKci
; demangled: MenuManager::LoadSWFFile(char const*, int)
; decoder-mode: arm
0042d290  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0042d294  00 60 a0 e1                                      mov r6, r0
0042d298  01 80 a0 e1                                      mov r8, r1
0042d29c  49 0f a0 e3                                      mov r0, #0x124
0042d2a0  08 10 a0 e3                                      mov r1, #8
0042d2a4  02 70 a0 e1                                      mov r7, r2
0042d2a8  b0 8c fb eb                                      bl #0x310570
0042d2ac  22 40 87 e2                                      add r4, r7, #0x22
0042d2b0  04 41 86 e0                                      add r4, r6, r4, lsl #2
0042d2b4  00 50 a0 e1                                      mov r5, r0
0042d2b8  09 ed 0d eb                                      bl #0x7a86e4
0042d2bc  04 50 84 e5                                      str r5, [r4, #4]
0042d2c0  00 30 95 e5                                      ldr r3, [r5]
0042d2c4  00 20 a0 e3                                      mov r2, #0
0042d2c8  05 00 a0 e1                                      mov r0, r5
0042d2cc  08 10 a0 e1                                      mov r1, r8
0042d2d0  0f e0 a0 e1                                      mov lr, pc
0042d2d4  08 f0 93 e5                                      ldr pc, [r3, #8]
0042d2d8  04 00 94 e5                                      ldr r0, [r4, #4]
0042d2dc  01 10 a0 e3                                      mov r1, #1
0042d2e0  73 ea 0d eb                                      bl #0x7a7cb4
0042d2e4  08 10 a0 e3                                      mov r1, #8
0042d2e8  34 00 a0 e3                                      mov r0, #0x34
0042d2ec  9f 8c fb eb                                      bl #0x310570
0042d2f0  07 61 86 e0                                      add r6, r6, r7, lsl #2
0042d2f4  00 50 a0 e1                                      mov r5, r0
0042d2f8  04 10 94 e5                                      ldr r1, [r4, #4]
0042d2fc  73 fe ff eb                                      bl #0x42ccd0
0042d300  9c 50 86 e5                                      str r5, [r6, #0x9c]
0042d304  04 00 94 e5                                      ldr r0, [r4, #4]
0042d308  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0042d30c, declared_size=432, range_size=432, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager19SwitchMenusToIngameEv
; demangled: MenuManager::SwitchMenusToIngame()
; decoder-mode: arm
0042d30c  70 40 2d e9                                      push {r4, r5, r6, lr}
0042d310  02 10 a0 e3                                      mov r1, #2
0042d314  60 51 9f e5                                      ldr r5, [pc, #0x160]
0042d318  00 40 a0 e1                                      mov r4, r0
0042d31c  e4 fd ff eb                                      bl #0x42cab4
0042d320  58 31 9f e5                                      ldr r3, [pc, #0x158]
0042d324  05 50 8f e0                                      add r5, pc, r5
0042d328  56 23 00 e3                                      movw r2, #0x356
0042d32c  03 30 95 e7                                      ldr r3, [r5, r3]
0042d330  00 30 93 e5                                      ldr r3, [r3]
0042d334  02 00 53 e1                                      cmp r3, r2
0042d338  2e 00 00 0a                                      beq #0x42d3f8
0042d33c  0f 0d 53 e3                                      cmp r3, #0x3c0
0042d340  21 00 00 0a                                      beq #0x42d3cc
0042d344  32 0e 53 e3                                      cmp r3, #0x320
0042d348  0a 00 00 0a                                      beq #0x42d378
0042d34c  30 11 9f e5                                      ldr r1, [pc, #0x130]
0042d350  01 20 a0 e3                                      mov r2, #1
0042d354  04 00 a0 e1                                      mov r0, r4
0042d358  01 10 8f e0                                      add r1, pc, r1
0042d35c  cb ff ff eb                                      bl #0x42d290
0042d360  20 11 9f e5                                      ldr r1, [pc, #0x120]
0042d364  04 00 a0 e1                                      mov r0, r4
0042d368  03 20 a0 e3                                      mov r2, #3
0042d36c  01 10 8f e0                                      add r1, pc, r1
0042d370  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042d374  c5 ff ff ea                                      b #0x42d290
0042d378  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
0042d37c  03 30 95 e7                                      ldr r3, [r5, r3]
0042d380  00 30 d3 e5                                      ldrb r3, [r3]
0042d384  00 00 53 e3                                      cmp r3, #0
0042d388  25 00 00 1a                                      bne #0x42d424
0042d38c  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
0042d390  03 30 95 e7                                      ldr r3, [r5, r3]
0042d394  00 30 d3 e5                                      ldrb r3, [r3]
0042d398  00 00 53 e3                                      cmp r3, #0
0042d39c  2b 00 00 0a                                      beq #0x42d450
0042d3a0  ec 10 9f e5                                      ldr r1, [pc, #0xec]
0042d3a4  01 20 a0 e3                                      mov r2, #1
0042d3a8  04 00 a0 e1                                      mov r0, r4
0042d3ac  01 10 8f e0                                      add r1, pc, r1
0042d3b0  b6 ff ff eb                                      bl #0x42d290
0042d3b4  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
0042d3b8  04 00 a0 e1                                      mov r0, r4
0042d3bc  03 20 a0 e3                                      mov r2, #3
0042d3c0  01 10 8f e0                                      add r1, pc, r1
0042d3c4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042d3c8  b0 ff ff ea                                      b #0x42d290
0042d3cc  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
0042d3d0  01 20 a0 e3                                      mov r2, #1
0042d3d4  04 00 a0 e1                                      mov r0, r4
0042d3d8  01 10 8f e0                                      add r1, pc, r1
0042d3dc  ab ff ff eb                                      bl #0x42d290
0042d3e0  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
0042d3e4  04 00 a0 e1                                      mov r0, r4
0042d3e8  03 20 a0 e3                                      mov r2, #3
0042d3ec  01 10 8f e0                                      add r1, pc, r1
0042d3f0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042d3f4  a5 ff ff ea                                      b #0x42d290
0042d3f8  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
0042d3fc  01 20 a0 e3                                      mov r2, #1
0042d400  04 00 a0 e1                                      mov r0, r4
0042d404  01 10 8f e0                                      add r1, pc, r1
0042d408  a0 ff ff eb                                      bl #0x42d290
0042d40c  94 10 9f e5                                      ldr r1, [pc, #0x94]
0042d410  04 00 a0 e1                                      mov r0, r4
0042d414  03 20 a0 e3                                      mov r2, #3
0042d418  01 10 8f e0                                      add r1, pc, r1
0042d41c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042d420  9a ff ff ea                                      b #0x42d290
0042d424  80 10 9f e5                                      ldr r1, [pc, #0x80]
0042d428  01 20 a0 e3                                      mov r2, #1
0042d42c  04 00 a0 e1                                      mov r0, r4
0042d430  01 10 8f e0                                      add r1, pc, r1
0042d434  95 ff ff eb                                      bl #0x42d290
0042d438  70 10 9f e5                                      ldr r1, [pc, #0x70]
0042d43c  04 00 a0 e1                                      mov r0, r4
0042d440  03 20 a0 e3                                      mov r2, #3
0042d444  01 10 8f e0                                      add r1, pc, r1
0042d448  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042d44c  8f ff ff ea                                      b #0x42d290
0042d450  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0042d454  01 20 a0 e3                                      mov r2, #1
0042d458  04 00 a0 e1                                      mov r0, r4
0042d45c  01 10 8f e0                                      add r1, pc, r1
0042d460  8a ff ff eb                                      bl #0x42d290
0042d464  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0042d468  04 00 a0 e1                                      mov r0, r4
0042d46c  03 20 a0 e3                                      mov r2, #3
0042d470  01 10 8f e0                                      add r1, pc, r1
0042d474  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042d478  84 ff ff ea                                      b #0x42d290
; mapping-symbol data/literal pool
0042d47c  6c 77 56 00 c4 25 00 00 90 cc 49 00 9c cc 49 00  .byte 0x6c, 0x77, 0x56, 0x00, 0xc4, 0x25, 0x00, 0x00, 0x90, 0xcc, 0x49, 0x00, 0x9c, 0xcc, 0x49, 0x00
0042d48c  68 27 00 00 e0 16 00 00 bc cb 49 00 c8 cb 49 00  .byte 0x68, 0x27, 0x00, 0x00, 0xe0, 0x16, 0x00, 0x00, 0xbc, 0xcb, 0x49, 0x00, 0xc8, 0xcb, 0x49, 0x00
0042d49c  10 cc 49 00 1c cc 49 00 a4 cb 49 00 b0 cb 49 00  .byte 0x10, 0xcc, 0x49, 0x00, 0x1c, 0xcc, 0x49, 0x00, 0xa4, 0xcb, 0x49, 0x00, 0xb0, 0xcb, 0x49, 0x00
0042d4ac  38 cb 49 00 44 cb 49 00 0c cb 49 00 18 cb 49 00  .byte 0x38, 0xcb, 0x49, 0x00, 0x44, 0xcb, 0x49, 0x00, 0x0c, 0xcb, 0x49, 0x00, 0x18, 0xcb, 0x49, 0x00

; FUNCTION 0x0042d4bc, declared_size=224, range_size=224, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager10UnloadMenuEi
; demangled: MenuManager::UnloadMenu(int)
; decoder-mode: arm
0042d4bc  01 00 51 e3                                      cmp r1, #1
0042d4c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0042d4c4  01 70 a0 e1                                      mov r7, r1
0042d4c8  00 60 a0 e1                                      mov r6, r0
0042d4cc  0a 00 00 0a                                      beq #0x42d4fc
0042d4d0  03 00 51 e3                                      cmp r1, #3
0042d4d4  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0042d4d8  00 50 a0 83                                      movhi r5, #0
0042d4dc  09 00 00 9a                                      bls #0x42d508
0042d4e0  6a 9a ff eb                                      bl #0x413e90
0042d4e4  05 10 a0 e1                                      mov r1, r5
0042d4e8  d4 98 ff eb                                      bl #0x413840
0042d4ec  f4 00 96 e5                                      ldr r0, [r6, #0xf4]
0042d4f0  07 10 a0 e1                                      mov r1, r7
0042d4f4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0042d4f8  8f 29 00 ea                                      b #0x437b3c
0042d4fc  28 9a 00 eb                                      bl #0x453da4
0042d500  8b 97 00 eb                                      bl #0x453334
0042d504  f4 30 96 e5                                      ldr r3, [r6, #0xf4]
0042d508  07 31 83 e0                                      add r3, r3, r7, lsl #2
0042d50c  34 51 93 e5                                      ldr r5, [r3, #0x134]
0042d510  00 00 55 e3                                      cmp r5, #0
0042d514  f1 ff ff 0a                                      beq #0x42d4e0
0042d518  64 40 96 e5                                      ldr r4, [r6, #0x64]
0042d51c  68 10 96 e5                                      ldr r1, [r6, #0x68]
0042d520  00 80 a0 e3                                      mov r8, #0
0042d524  01 00 54 e1                                      cmp r4, r1
0042d528  ec ff ff 0a                                      beq #0x42d4e0
0042d52c  00 30 94 e5                                      ldr r3, [r4]
0042d530  04 20 93 e5                                      ldr r2, [r3, #4]
0042d534  02 00 55 e1                                      cmp r5, r2
0042d538  04 40 84 12                                      addne r4, r4, #4
0042d53c  f8 ff ff 1a                                      bne #0x42d524
0042d540  04 80 83 e5                                      str r8, [r3, #4]
0042d544  00 30 94 e5                                      ldr r3, [r4]
0042d548  7d 20 d3 e5                                      ldrb r2, [r3, #0x7d]
0042d54c  03 00 a0 e1                                      mov r0, r3
0042d550  00 00 52 e3                                      cmp r2, #0
0042d554  02 00 00 0a                                      beq #0x42d564
0042d558  00 30 93 e5                                      ldr r3, [r3]
0042d55c  0f e0 a0 e1                                      mov lr, pc
0042d560  04 f0 93 e5                                      ldr pc, [r3, #4]
0042d564  68 30 96 e5                                      ldr r3, [r6, #0x68]
0042d568  04 10 84 e2                                      add r1, r4, #4
0042d56c  03 00 51 e1                                      cmp r1, r3
0042d570  02 00 00 0a                                      beq #0x42d580
0042d574  01 20 53 e0                                      subs r2, r3, r1
0042d578  03 10 a0 01                                      moveq r1, r3
0042d57c  02 00 00 1a                                      bne #0x42d58c
0042d580  04 10 41 e2                                      sub r1, r1, #4
0042d584  68 10 86 e5                                      str r1, [r6, #0x68]
0042d588  e5 ff ff ea                                      b #0x42d524
0042d58c  04 00 a0 e1                                      mov r0, r4
0042d590  68 82 fb eb                                      bl #0x30df38
0042d594  68 10 96 e5                                      ldr r1, [r6, #0x68]
0042d598  f8 ff ff ea                                      b #0x42d580

; FUNCTION 0x0042d59c, declared_size=400, range_size=400, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager21SwitchMenusToMainMenuEv
; demangled: MenuManager::SwitchMenusToMainMenu()
; decoder-mode: arm
0042d59c  70 40 2d e9                                      push {r4, r5, r6, lr}
0042d5a0  03 10 a0 e3                                      mov r1, #3
0042d5a4  00 50 a0 e1                                      mov r5, r0
0042d5a8  48 41 9f e5                                      ldr r4, [pc, #0x148]
0042d5ac  40 fd ff eb                                      bl #0x42cab4
0042d5b0  05 00 a0 e1                                      mov r0, r5
0042d5b4  01 10 a0 e3                                      mov r1, #1
0042d5b8  3d fd ff eb                                      bl #0x42cab4
0042d5bc  38 31 9f e5                                      ldr r3, [pc, #0x138]
0042d5c0  04 40 8f e0                                      add r4, pc, r4
0042d5c4  56 23 00 e3                                      movw r2, #0x356
0042d5c8  03 30 94 e7                                      ldr r3, [r4, r3]
0042d5cc  00 30 93 e5                                      ldr r3, [r3]
0042d5d0  02 00 53 e1                                      cmp r3, r2
0042d5d4  29 00 00 0a                                      beq #0x42d680
0042d5d8  0f 0d 53 e3                                      cmp r3, #0x3c0
0042d5dc  21 00 00 0a                                      beq #0x42d668
0042d5e0  32 0e 53 e3                                      cmp r3, #0x320
0042d5e4  0f 00 00 0a                                      beq #0x42d628
0042d5e8  10 31 9f e5                                      ldr r3, [pc, #0x110]
0042d5ec  03 40 94 e7                                      ldr r4, [r4, r3]
0042d5f0  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0042d5f4  c6 ff 00 eb                                      bl #0x46d514
0042d5f8  05 00 50 e3                                      cmp r0, #5
0042d5fc  37 00 00 0a                                      beq #0x42d6e0
0042d600  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0042d604  c2 ff 00 eb                                      bl #0x46d514
0042d608  04 00 50 e3                                      cmp r0, #4
0042d60c  2d 00 00 0a                                      beq #0x42d6c8
0042d610  ec 10 9f e5                                      ldr r1, [pc, #0xec]
0042d614  05 00 a0 e1                                      mov r0, r5
0042d618  02 20 a0 e3                                      mov r2, #2
0042d61c  01 10 8f e0                                      add r1, pc, r1
0042d620  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042d624  19 ff ff ea                                      b #0x42d290
0042d628  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
0042d62c  03 30 94 e7                                      ldr r3, [r4, r3]
0042d630  00 30 d3 e5                                      ldrb r3, [r3]
0042d634  00 00 53 e3                                      cmp r3, #0
0042d638  16 00 00 1a                                      bne #0x42d698
0042d63c  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
0042d640  03 30 94 e7                                      ldr r3, [r4, r3]
0042d644  00 30 d3 e5                                      ldrb r3, [r3]
0042d648  00 00 53 e3                                      cmp r3, #0
0042d64c  17 00 00 0a                                      beq #0x42d6b0
0042d650  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
0042d654  05 00 a0 e1                                      mov r0, r5
0042d658  02 20 a0 e3                                      mov r2, #2
0042d65c  01 10 8f e0                                      add r1, pc, r1
0042d660  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042d664  09 ff ff ea                                      b #0x42d290
0042d668  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
0042d66c  05 00 a0 e1                                      mov r0, r5
0042d670  02 20 a0 e3                                      mov r2, #2
0042d674  01 10 8f e0                                      add r1, pc, r1
0042d678  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042d67c  03 ff ff ea                                      b #0x42d290
0042d680  90 10 9f e5                                      ldr r1, [pc, #0x90]
0042d684  05 00 a0 e1                                      mov r0, r5
0042d688  02 20 a0 e3                                      mov r2, #2
0042d68c  01 10 8f e0                                      add r1, pc, r1
0042d690  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042d694  fd fe ff ea                                      b #0x42d290
0042d698  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0042d69c  05 00 a0 e1                                      mov r0, r5
0042d6a0  02 20 a0 e3                                      mov r2, #2
0042d6a4  01 10 8f e0                                      add r1, pc, r1
0042d6a8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042d6ac  f7 fe ff ea                                      b #0x42d290
0042d6b0  68 10 9f e5                                      ldr r1, [pc, #0x68]
0042d6b4  05 00 a0 e1                                      mov r0, r5
0042d6b8  02 20 a0 e3                                      mov r2, #2
0042d6bc  01 10 8f e0                                      add r1, pc, r1
0042d6c0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042d6c4  f1 fe ff ea                                      b #0x42d290
0042d6c8  54 10 9f e5                                      ldr r1, [pc, #0x54]
0042d6cc  05 00 a0 e1                                      mov r0, r5
0042d6d0  02 20 a0 e3                                      mov r2, #2
0042d6d4  01 10 8f e0                                      add r1, pc, r1
0042d6d8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042d6dc  eb fe ff ea                                      b #0x42d290
0042d6e0  40 10 9f e5                                      ldr r1, [pc, #0x40]
0042d6e4  05 00 a0 e1                                      mov r0, r5
0042d6e8  02 20 a0 e3                                      mov r2, #2
0042d6ec  01 10 8f e0                                      add r1, pc, r1
0042d6f0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042d6f4  e5 fe ff ea                                      b #0x42d290
; mapping-symbol data/literal pool
0042d6f8  d0 74 56 00 c4 25 00 00 f4 37 00 00 64 ca 49 00  .byte 0xd0, 0x74, 0x56, 0x00, 0xc4, 0x25, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x64, 0xca, 0x49, 0x00
0042d708  68 27 00 00 e0 16 00 00 e4 c9 49 00 0c ca 49 00  .byte 0x68, 0x27, 0x00, 0x00, 0xe0, 0x16, 0x00, 0x00, 0xe4, 0xc9, 0x49, 0x00, 0x0c, 0xca, 0x49, 0x00
0042d718  d4 c9 49 00 7c c9 49 00 64 c9 49 00 e4 c9 49 00  .byte 0xd4, 0xc9, 0x49, 0x00, 0x7c, 0xc9, 0x49, 0x00, 0x64, 0xc9, 0x49, 0x00, 0xe4, 0xc9, 0x49, 0x00
0042d728  ac c9 49 00                                      .byte 0xac, 0xc9, 0x49, 0x00

; FUNCTION 0x0042d72c, declared_size=8, range_size=8, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager10ResetFontsEv
; demangled: MenuManager::ResetFonts()
; decoder-mode: arm
0042d72c  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
0042d730  c0 28 00 ea                                      b #0x437a38

; FUNCTION 0x0042d73c, declared_size=152, range_size=152, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager5ResetEv
; demangled: MenuManager::Reset()
; decoder-mode: arm
0042d73c  70 40 2d e9                                      push {r4, r5, r6, lr}
0042d740  00 50 a0 e1                                      mov r5, r0
0042d744  00 40 a0 e3                                      mov r4, #0
0042d748  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
0042d74c  04 31 83 e0                                      add r3, r3, r4, lsl #2
0042d750  34 01 93 e5                                      ldr r0, [r3, #0x134]
0042d754  01 40 84 e2                                      add r4, r4, #1
0042d758  00 00 50 e3                                      cmp r0, #0
0042d75c  00 00 00 0a                                      beq #0x42d764
0042d760  ee f8 0d eb                                      bl #0x7abb20
0042d764  04 00 54 e3                                      cmp r4, #4
0042d768  f6 ff ff 1a                                      bne #0x42d748
0042d76c  05 00 a0 e1                                      mov r0, r5
0042d770  f0 fc ff eb                                      bl #0x42cb38
0042d774  00 60 50 e2                                      subs r6, r0, #0
0042d778  12 00 00 da                                      ble #0x42d7c8
0042d77c  00 40 a0 e3                                      mov r4, #0
0042d780  02 00 00 ea                                      b #0x42d790
0042d784  01 40 84 e2                                      add r4, r4, #1
0042d788  04 00 56 e1                                      cmp r6, r4
0042d78c  0d 00 00 0a                                      beq #0x42d7c8
0042d790  64 30 95 e5                                      ldr r3, [r5, #0x64]
0042d794  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0042d798  15 c7 ff eb                                      bl #0x41f3f4
0042d79c  00 00 50 e3                                      cmp r0, #0
0042d7a0  f7 ff ff 0a                                      beq #0x42d784
0042d7a4  64 30 95 e5                                      ldr r3, [r5, #0x64]
0042d7a8  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0042d7ac  01 40 84 e2                                      add r4, r4, #1
0042d7b0  03 00 a0 e1                                      mov r0, r3
0042d7b4  00 30 93 e5                                      ldr r3, [r3]
0042d7b8  0f e0 a0 e1                                      mov lr, pc
0042d7bc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0042d7c0  04 00 56 e1                                      cmp r6, r4
0042d7c4  f1 ff ff 1a                                      bne #0x42d790
0042d7c8  01 30 a0 e3                                      mov r3, #1
0042d7cc  88 30 c5 e5                                      strb r3, [r5, #0x88]
0042d7d0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0042dbb4, declared_size=360, range_size=360, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManagerD1Ev
; demangled: MenuManager::~MenuManager()
; decoder-mode: arm
0042dbb4  54 31 9f e5                                      ldr r3, [pc, #0x154]
0042dbb8  54 21 9f e5                                      ldr r2, [pc, #0x154]
0042dbbc  54 11 9f e5                                      ldr r1, [pc, #0x154]
0042dbc0  03 30 8f e0                                      add r3, pc, r3
0042dbc4  70 40 2d e9                                      push {r4, r5, r6, lr}
0042dbc8  02 20 93 e7                                      ldr r2, [r3, r2]
0042dbcc  01 50 93 e7                                      ldr r5, [r3, r1]
0042dbd0  00 40 a0 e1                                      mov r4, r0
0042dbd4  28 10 82 e2                                      add r1, r2, #0x28
0042dbd8  08 20 82 e2                                      add r2, r2, #8
0042dbdc  00 20 80 e5                                      str r2, [r0]
0042dbe0  04 10 80 e5                                      str r1, [r0, #4]
0042dbe4  14 00 95 e5                                      ldr r0, [r5, #0x14]
0042dbe8  00 00 50 e3                                      cmp r0, #0
0042dbec  0a 00 00 0a                                      beq #0x42dc1c
0042dbf0  05 10 a0 e3                                      mov r1, #5
0042dbf4  04 20 a0 e1                                      mov r2, r4
0042dbf8  47 29 fc eb                                      bl #0x33811c
0042dbfc  04 10 a0 e3                                      mov r1, #4
0042dc00  04 20 a0 e1                                      mov r2, r4
0042dc04  14 00 95 e5                                      ldr r0, [r5, #0x14]
0042dc08  43 29 fc eb                                      bl #0x33811c
0042dc0c  14 00 95 e5                                      ldr r0, [r5, #0x14]
0042dc10  07 10 a0 e3                                      mov r1, #7
0042dc14  04 20 a0 e1                                      mov r2, r4
0042dc18  3f 29 fc eb                                      bl #0x33811c
0042dc1c  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
0042dc20  00 00 53 e3                                      cmp r3, #0
0042dc24  03 00 00 0a                                      beq #0x42dc38
0042dc28  03 00 a0 e1                                      mov r0, r3
0042dc2c  00 30 93 e5                                      ldr r3, [r3]
0042dc30  0f e0 a0 e1                                      mov lr, pc
0042dc34  04 f0 93 e5                                      ldr pc, [r3, #4]
0042dc38  64 50 94 e5                                      ldr r5, [r4, #0x64]
0042dc3c  68 60 94 e5                                      ldr r6, [r4, #0x68]
0042dc40  06 00 55 e1                                      cmp r5, r6
0042dc44  0e 00 00 0a                                      beq #0x42dc84
0042dc48  00 30 95 e5                                      ldr r3, [r5]
0042dc4c  04 50 85 e2                                      add r5, r5, #4
0042dc50  7d 20 d3 e5                                      ldrb r2, [r3, #0x7d]
0042dc54  03 00 a0 e1                                      mov r0, r3
0042dc58  00 00 52 e3                                      cmp r2, #0
0042dc5c  02 00 00 0a                                      beq #0x42dc6c
0042dc60  00 30 93 e5                                      ldr r3, [r3]
0042dc64  0f e0 a0 e1                                      mov lr, pc
0042dc68  04 f0 93 e5                                      ldr pc, [r3, #4]
0042dc6c  06 00 55 e1                                      cmp r5, r6
0042dc70  f4 ff ff 1a                                      bne #0x42dc48
0042dc74  64 30 94 e5                                      ldr r3, [r4, #0x64]
0042dc78  68 20 94 e5                                      ldr r2, [r4, #0x68]
0042dc7c  02 00 53 e1                                      cmp r3, r2
0042dc80  68 30 84 15                                      strne r3, [r4, #0x68]
0042dc84  c8 ee 0d eb                                      bl #0x7a97ac
0042dc88  88 c5 fe eb                                      bl #0x3df2b0
0042dc8c  cc 00 84 e2                                      add r0, r4, #0xcc
0042dc90  83 ff ff eb                                      bl #0x42daa4
0042dc94  80 30 94 e5                                      ldr r3, [r4, #0x80]
0042dc98  00 00 53 e3                                      cmp r3, #0
0042dc9c  08 00 00 0a                                      beq #0x42dcc4
0042dca0  70 50 84 e2                                      add r5, r4, #0x70
0042dca4  05 00 a0 e1                                      mov r0, r5
0042dca8  74 10 94 e5                                      ldr r1, [r4, #0x74]
0042dcac  6b ff ff eb                                      bl #0x42da60
0042dcb0  00 30 a0 e3                                      mov r3, #0
0042dcb4  7c 50 84 e5                                      str r5, [r4, #0x7c]
0042dcb8  80 30 84 e5                                      str r3, [r4, #0x80]
0042dcbc  78 50 84 e5                                      str r5, [r4, #0x78]
0042dcc0  74 30 84 e5                                      str r3, [r4, #0x74]
0042dcc4  64 00 94 e5                                      ldr r0, [r4, #0x64]
0042dcc8  64 30 84 e2                                      add r3, r4, #0x64
0042dccc  00 00 50 e3                                      cmp r0, #0
0042dcd0  05 00 00 0a                                      beq #0x42dcec
0042dcd4  08 10 93 e5                                      ldr r1, [r3, #8]
0042dcd8  01 10 60 e0                                      rsb r1, r0, r1
0042dcdc  03 10 c1 e3                                      bic r1, r1, #3
0042dce0  80 00 51 e3                                      cmp r1, #0x80
0042dce4  04 00 00 8a                                      bhi #0x42dcfc
0042dce8  84 6c 0b eb                                      bl #0x708f00
0042dcec  20 00 84 e2                                      add r0, r4, #0x20
0042dcf0  41 b3 ff eb                                      bl #0x41a9fc
0042dcf4  04 00 a0 e1                                      mov r0, r4
0042dcf8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042dcfc  cf 89 fb eb                                      bl #0x310440
0042dd00  20 00 84 e2                                      add r0, r4, #0x20
0042dd04  3c b3 ff eb                                      bl #0x41a9fc
0042dd08  04 00 a0 e1                                      mov r0, r4
0042dd0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042dd10  d0 6e 56 00 fc 39 00 00 f4 37 00 00              .byte 0xd0, 0x6e, 0x56, 0x00, 0xfc, 0x39, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0042dd1c, declared_size=28, range_size=28, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManagerD0Ev
; demangled: MenuManager::~MenuManager()
; decoder-mode: arm
0042dd1c  10 40 2d e9                                      push {r4, lr}
0042dd20  00 40 a0 e1                                      mov r4, r0
0042dd24  a2 ff ff eb                                      bl #0x42dbb4
0042dd28  04 00 a0 e1                                      mov r0, r4
0042dd2c  c3 89 fb eb                                      bl #0x310440
0042dd30  04 00 a0 e1                                      mov r0, r4
0042dd34  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0042dd38, declared_size=360, range_size=360, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManagerD2Ev
; demangled: MenuManager::~MenuManager()
; decoder-mode: arm
0042dd38  54 31 9f e5                                      ldr r3, [pc, #0x154]
0042dd3c  54 21 9f e5                                      ldr r2, [pc, #0x154]
0042dd40  54 11 9f e5                                      ldr r1, [pc, #0x154]
0042dd44  03 30 8f e0                                      add r3, pc, r3
0042dd48  70 40 2d e9                                      push {r4, r5, r6, lr}
0042dd4c  02 20 93 e7                                      ldr r2, [r3, r2]
0042dd50  01 50 93 e7                                      ldr r5, [r3, r1]
0042dd54  00 40 a0 e1                                      mov r4, r0
0042dd58  28 10 82 e2                                      add r1, r2, #0x28
0042dd5c  08 20 82 e2                                      add r2, r2, #8
0042dd60  00 20 80 e5                                      str r2, [r0]
0042dd64  04 10 80 e5                                      str r1, [r0, #4]
0042dd68  14 00 95 e5                                      ldr r0, [r5, #0x14]
0042dd6c  00 00 50 e3                                      cmp r0, #0
0042dd70  0a 00 00 0a                                      beq #0x42dda0
0042dd74  05 10 a0 e3                                      mov r1, #5
0042dd78  04 20 a0 e1                                      mov r2, r4
0042dd7c  e6 28 fc eb                                      bl #0x33811c
0042dd80  04 10 a0 e3                                      mov r1, #4
0042dd84  04 20 a0 e1                                      mov r2, r4
0042dd88  14 00 95 e5                                      ldr r0, [r5, #0x14]
0042dd8c  e2 28 fc eb                                      bl #0x33811c
0042dd90  14 00 95 e5                                      ldr r0, [r5, #0x14]
0042dd94  07 10 a0 e3                                      mov r1, #7
0042dd98  04 20 a0 e1                                      mov r2, r4
0042dd9c  de 28 fc eb                                      bl #0x33811c
0042dda0  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
0042dda4  00 00 53 e3                                      cmp r3, #0
0042dda8  03 00 00 0a                                      beq #0x42ddbc
0042ddac  03 00 a0 e1                                      mov r0, r3
0042ddb0  00 30 93 e5                                      ldr r3, [r3]
0042ddb4  0f e0 a0 e1                                      mov lr, pc
0042ddb8  04 f0 93 e5                                      ldr pc, [r3, #4]
0042ddbc  64 50 94 e5                                      ldr r5, [r4, #0x64]
0042ddc0  68 60 94 e5                                      ldr r6, [r4, #0x68]
0042ddc4  06 00 55 e1                                      cmp r5, r6
0042ddc8  0e 00 00 0a                                      beq #0x42de08
0042ddcc  00 30 95 e5                                      ldr r3, [r5]
0042ddd0  04 50 85 e2                                      add r5, r5, #4
0042ddd4  7d 20 d3 e5                                      ldrb r2, [r3, #0x7d]
0042ddd8  03 00 a0 e1                                      mov r0, r3
0042dddc  00 00 52 e3                                      cmp r2, #0
0042dde0  02 00 00 0a                                      beq #0x42ddf0
0042dde4  00 30 93 e5                                      ldr r3, [r3]
0042dde8  0f e0 a0 e1                                      mov lr, pc
0042ddec  04 f0 93 e5                                      ldr pc, [r3, #4]
0042ddf0  06 00 55 e1                                      cmp r5, r6
0042ddf4  f4 ff ff 1a                                      bne #0x42ddcc
0042ddf8  64 30 94 e5                                      ldr r3, [r4, #0x64]
0042ddfc  68 20 94 e5                                      ldr r2, [r4, #0x68]
0042de00  02 00 53 e1                                      cmp r3, r2
0042de04  68 30 84 15                                      strne r3, [r4, #0x68]
0042de08  67 ee 0d eb                                      bl #0x7a97ac
0042de0c  27 c5 fe eb                                      bl #0x3df2b0
0042de10  cc 00 84 e2                                      add r0, r4, #0xcc
0042de14  22 ff ff eb                                      bl #0x42daa4
0042de18  80 30 94 e5                                      ldr r3, [r4, #0x80]
0042de1c  00 00 53 e3                                      cmp r3, #0
0042de20  08 00 00 0a                                      beq #0x42de48
0042de24  70 50 84 e2                                      add r5, r4, #0x70
0042de28  05 00 a0 e1                                      mov r0, r5
0042de2c  74 10 94 e5                                      ldr r1, [r4, #0x74]
0042de30  0a ff ff eb                                      bl #0x42da60
0042de34  00 30 a0 e3                                      mov r3, #0
0042de38  7c 50 84 e5                                      str r5, [r4, #0x7c]
0042de3c  80 30 84 e5                                      str r3, [r4, #0x80]
0042de40  78 50 84 e5                                      str r5, [r4, #0x78]
0042de44  74 30 84 e5                                      str r3, [r4, #0x74]
0042de48  64 00 94 e5                                      ldr r0, [r4, #0x64]
0042de4c  64 30 84 e2                                      add r3, r4, #0x64
0042de50  00 00 50 e3                                      cmp r0, #0
0042de54  05 00 00 0a                                      beq #0x42de70
0042de58  08 10 93 e5                                      ldr r1, [r3, #8]
0042de5c  01 10 60 e0                                      rsb r1, r0, r1
0042de60  03 10 c1 e3                                      bic r1, r1, #3
0042de64  80 00 51 e3                                      cmp r1, #0x80
0042de68  04 00 00 8a                                      bhi #0x42de80
0042de6c  23 6c 0b eb                                      bl #0x708f00
0042de70  20 00 84 e2                                      add r0, r4, #0x20
0042de74  e0 b2 ff eb                                      bl #0x41a9fc
0042de78  04 00 a0 e1                                      mov r0, r4
0042de7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042de80  6e 89 fb eb                                      bl #0x310440
0042de84  20 00 84 e2                                      add r0, r4, #0x20
0042de88  db b2 ff eb                                      bl #0x41a9fc
0042de8c  04 00 a0 e1                                      mov r0, r4
0042de90  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042de94  4c 6d 56 00 fc 39 00 00 f4 37 00 00              .byte 0x4c, 0x6d, 0x56, 0x00, 0xfc, 0x39, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0042dfd8, declared_size=96, range_size=96, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager17RegisterDummyMenuEP6MenuFXP8MenuBase
; demangled: MenuManager::RegisterDummyMenu(MenuFX*, MenuBase*)
; decoder-mode: arm
0042dfd8  10 40 2d e9                                      push {r4, lr}
0042dfdc  68 30 90 e5                                      ldr r3, [r0, #0x68]
0042dfe0  6c c0 90 e5                                      ldr ip, [r0, #0x6c]
0042dfe4  08 d0 4d e2                                      sub sp, sp, #8
0042dfe8  01 40 a0 e1                                      mov r4, r1
0042dfec  0c 00 53 e1                                      cmp r3, ip
0042dff0  04 20 8d e5                                      str r2, [sp, #4]
0042dff4  0a 00 00 0a                                      beq #0x42e024
0042dff8  00 20 83 e5                                      str r2, [r3]
0042dffc  68 30 90 e5                                      ldr r3, [r0, #0x68]
0042e000  04 30 83 e2                                      add r3, r3, #4
0042e004  68 30 80 e5                                      str r3, [r0, #0x68]
0042e008  04 30 9d e5                                      ldr r3, [sp, #4]
0042e00c  01 20 a0 e3                                      mov r2, #1
0042e010  04 40 83 e5                                      str r4, [r3, #4]
0042e014  04 30 9d e5                                      ldr r3, [sp, #4]
0042e018  7c 20 c3 e5                                      strb r2, [r3, #0x7c]
0042e01c  08 d0 8d e2                                      add sp, sp, #8
0042e020  10 80 bd e8                                      pop {r4, pc}
0042e024  64 00 80 e2                                      add r0, r0, #0x64
0042e028  03 10 a0 e1                                      mov r1, r3
0042e02c  04 20 8d e2                                      add r2, sp, #4
0042e030  b6 ff ff eb                                      bl #0x42df10
0042e034  f3 ff ff ea                                      b #0x42e008

; FUNCTION 0x0042e098, declared_size=120, range_size=120, mode=arm
; class-group: MenuManager
; alias: _ZNK11MenuManager11GetMenuNameEi
; demangled: MenuManager::GetMenuName(int) const
; decoder-mode: arm
0042e098  70 40 2d e9                                      push {r4, r5, r6, lr}
0042e09c  00 40 a0 e1                                      mov r4, r0
0042e0a0  08 d0 4d e2                                      sub sp, sp, #8
0042e0a4  01 00 a0 e1                                      mov r0, r1
0042e0a8  02 50 a0 e1                                      mov r5, r2
0042e0ac  01 60 a0 e1                                      mov r6, r1
0042e0b0  a0 fa ff eb                                      bl #0x42cb38
0042e0b4  00 00 55 e1                                      cmp r5, r0
0042e0b8  00 00 a0 a3                                      movge r0, #0
0042e0bc  01 00 a0 b3                                      movlt r0, #1
0042e0c0  00 00 55 e3                                      cmp r5, #0
0042e0c4  00 00 a0 b3                                      movlt r0, #0
0042e0c8  00 00 50 e3                                      cmp r0, #0
0042e0cc  08 00 00 0a                                      beq #0x42e0f4
0042e0d0  64 30 96 e5                                      ldr r3, [r6, #0x64]
0042e0d4  04 00 a0 e1                                      mov r0, r4
0042e0d8  04 20 8d e2                                      add r2, sp, #4
0042e0dc  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
0042e0e0  08 10 81 e2                                      add r1, r1, #8
0042e0e4  00 98 fb eb                                      bl #0x3140ec
0042e0e8  04 00 a0 e1                                      mov r0, r4
0042e0ec  08 d0 8d e2                                      add sp, sp, #8
0042e0f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042e0f4  10 10 9f e5                                      ldr r1, [pc, #0x10]
0042e0f8  04 00 a0 e1                                      mov r0, r4
0042e0fc  0d 20 a0 e1                                      mov r2, sp
0042e100  01 10 8f e0                                      add r1, pc, r1
0042e104  f8 97 fb eb                                      bl #0x3140ec
0042e108  f6 ff ff ea                                      b #0x42e0e8
; mapping-symbol data/literal pool
0042e10c  60 83 49 00                                      .byte 0x60, 0x83, 0x49, 0x00

; FUNCTION 0x0042e110, declared_size=248, range_size=248, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager18UnRegisterListenerEP8MenuBase
; demangled: MenuManager::UnRegisterListener(MenuBase*)
; decoder-mode: arm
0042e110  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0042e114  dc 50 9f e5                                      ldr r5, [pc, #0xdc]
0042e118  dc 70 9f e5                                      ldr r7, [pc, #0xdc]
0042e11c  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0042e120  05 50 8f e0                                      add r5, pc, r5
0042e124  07 30 95 e7                                      ldr r3, [r5, r7]
0042e128  02 a0 95 e7                                      ldr sl, [r5, r2]
0042e12c  24 d0 4d e2                                      sub sp, sp, #0x24
0042e130  00 30 93 e5                                      ldr r3, [r3]
0042e134  00 80 a0 e1                                      mov r8, r0
0042e138  0a 00 a0 e1                                      mov r0, sl
0042e13c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0042e140  01 40 a0 e1                                      mov r4, r1
0042e144  cf 25 fc eb                                      bl #0x337888
0042e148  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
0042e14c  04 60 8d e2                                      add r6, sp, #4
0042e150  0d 20 a0 e1                                      mov r2, sp
0042e154  01 10 8f e0                                      add r1, pc, r1
0042e158  06 00 a0 e1                                      mov r0, r6
0042e15c  e2 97 fb eb                                      bl #0x3140ec
0042e160  06 10 a0 e1                                      mov r1, r6
0042e164  0a 00 a0 e1                                      mov r0, sl
0042e168  46 26 fc eb                                      bl #0x337a88
0042e16c  06 00 a0 e1                                      mov r0, r6
0042e170  37 a8 fb eb                                      bl #0x318254
0042e174  74 30 98 e5                                      ldr r3, [r8, #0x74]
0042e178  70 80 88 e2                                      add r8, r8, #0x70
0042e17c  00 00 53 e3                                      cmp r3, #0
0042e180  19 00 00 0a                                      beq #0x42e1ec
0042e184  08 10 a0 e1                                      mov r1, r8
0042e188  01 00 00 ea                                      b #0x42e194
0042e18c  03 10 a0 e1                                      mov r1, r3
0042e190  02 30 a0 e1                                      mov r3, r2
0042e194  10 20 93 e5                                      ldr r2, [r3, #0x10]
0042e198  02 00 54 e1                                      cmp r4, r2
0042e19c  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
0042e1a0  08 20 93 95                                      ldrls r2, [r3, #8]
0042e1a4  01 30 a0 81                                      movhi r3, r1
0042e1a8  00 00 52 e3                                      cmp r2, #0
0042e1ac  f6 ff ff 1a                                      bne #0x42e18c
0042e1b0  03 00 58 e1                                      cmp r8, r3
0042e1b4  05 00 00 0a                                      beq #0x42e1d0
0042e1b8  10 20 93 e5                                      ldr r2, [r3, #0x10]
0042e1bc  02 00 54 e1                                      cmp r4, r2
0042e1c0  09 00 00 3a                                      blo #0x42e1ec
0042e1c4  03 00 58 e1                                      cmp r8, r3
0042e1c8  00 20 a0 13                                      movne r2, #0
0042e1cc  14 20 c3 15                                      strbne r2, [r3, #0x14]
0042e1d0  07 30 95 e7                                      ldr r3, [r5, r7]
0042e1d4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0042e1d8  00 30 93 e5                                      ldr r3, [r3]
0042e1dc  03 00 52 e1                                      cmp r2, r3
0042e1e0  03 00 00 1a                                      bne #0x42e1f4
0042e1e4  24 d0 8d e2                                      add sp, sp, #0x24
0042e1e8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0042e1ec  08 30 a0 e1                                      mov r3, r8
0042e1f0  f3 ff ff ea                                      b #0x42e1c4
0042e1f4  45 80 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0042e1f8  70 69 56 00 ac 40 00 00 84 08 00 00 84 bf 49 00  .byte 0x70, 0x69, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x84, 0xbf, 0x49, 0x00

; FUNCTION 0x0042e208, declared_size=168, range_size=168, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager7PopMenuEP8MenuBase
; demangled: MenuManager::PopMenu(MenuBase*)
; decoder-mode: arm
0042e208  70 40 2d e9                                      push {r4, r5, r6, lr}
0042e20c  94 40 9f e5                                      ldr r4, [pc, #0x94]
0042e210  00 60 51 e2                                      subs r6, r1, #0
0042e214  00 50 a0 e1                                      mov r5, r0
0042e218  04 40 8f e0                                      add r4, pc, r4
0042e21c  0a 00 00 0a                                      beq #0x42e24c
0042e220  04 30 96 e5                                      ldr r3, [r6, #4]
0042e224  00 00 53 e3                                      cmp r3, #0
0042e228  03 40 a0 01                                      moveq r4, r3
0042e22c  07 00 00 0a                                      beq #0x42e250
0042e230  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0042e234  03 00 a0 e1                                      mov r0, r3
0042e238  00 30 93 e5                                      ldr r3, [r3]
0042e23c  0f e0 a0 e1                                      mov lr, pc
0042e240  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0042e244  00 00 50 e3                                      cmp r0, #0
0042e248  05 00 00 1a                                      bne #0x42e264
0042e24c  04 40 96 e5                                      ldr r4, [r6, #4]
0042e250  05 00 a0 e1                                      mov r0, r5
0042e254  4c fa ff eb                                      bl #0x42cb8c
0042e258  00 00 54 e1                                      cmp r4, r0
0042e25c  0d 00 00 0a                                      beq #0x42e298
0042e260  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042e264  40 30 9f e5                                      ldr r3, [pc, #0x40]
0042e268  03 40 94 e7                                      ldr r4, [r4, r3]
0042e26c  04 00 a0 e1                                      mov r0, r4
0042e270  32 eb fb eb                                      bl #0x328f40
0042e274  20 00 94 e5                                      ldr r0, [r4, #0x20]
0042e278  ba 38 fc eb                                      bl #0x33c568
0042e27c  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
0042e280  00 10 a0 e3                                      mov r1, #0
0042e284  03 00 a0 e1                                      mov r0, r3
0042e288  00 30 93 e5                                      ldr r3, [r3]
0042e28c  0f e0 a0 e1                                      mov lr, pc
0042e290  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0042e294  ec ff ff ea                                      b #0x42e24c
0042e298  05 00 a0 e1                                      mov r0, r5
0042e29c  06 10 a0 e1                                      mov r1, r6
0042e2a0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042e2a4  99 ff ff ea                                      b #0x42e110
; mapping-symbol data/literal pool
0042e2a8  78 68 56 00 f4 37 00 00                          .byte 0x78, 0x68, 0x56, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0042e2b0, declared_size=36, range_size=36, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager7PopMenuEPKc
; demangled: MenuManager::PopMenu(char const*)
; decoder-mode: arm
0042e2b0  10 40 2d e9                                      push {r4, lr}
0042e2b4  00 40 a0 e1                                      mov r4, r0
0042e2b8  cc fb ff eb                                      bl #0x42d1f0
0042e2bc  00 10 50 e2                                      subs r1, r0, #0
0042e2c0  02 00 00 0a                                      beq #0x42e2d0
0042e2c4  04 00 a0 e1                                      mov r0, r4
0042e2c8  10 40 bd e8                                      pop {r4, lr}
0042e2cc  cd ff ff ea                                      b #0x42e208
0042e2d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0042e2d4, declared_size=1152, range_size=1152, mode=arm
; class-group: MenuManager
; alias: _ZNK11MenuManager8DBG_DrawEv
; demangled: MenuManager::DBG_Draw() const
; decoder-mode: arm
0042e2d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0042e2d8  58 84 9f e5                                      ldr r8, [pc, #0x458]
0042e2dc  58 24 9f e5                                      ldr r2, [pc, #0x458]
0042e2e0  58 54 9f e5                                      ldr r5, [pc, #0x458]
0042e2e4  08 80 8f e0                                      add r8, pc, r8
0042e2e8  02 30 98 e7                                      ldr r3, [r8, r2]
0042e2ec  05 70 98 e7                                      ldr r7, [r8, r5]
0042e2f0  bc d0 4d e2                                      sub sp, sp, #0xbc
0042e2f4  00 30 93 e5                                      ldr r3, [r3]
0042e2f8  00 60 a0 e1                                      mov r6, r0
0042e2fc  07 00 a0 e1                                      mov r0, r7
0042e300  b4 30 8d e5                                      str r3, [sp, #0xb4]
0042e304  08 20 8d e5                                      str r2, [sp, #8]
0042e308  5e 25 fc eb                                      bl #0x337888
0042e30c  30 14 9f e5                                      ldr r1, [pc, #0x430]
0042e310  9c 40 8d e2                                      add r4, sp, #0x9c
0042e314  80 20 8d e2                                      add r2, sp, #0x80
0042e318  01 10 8f e0                                      add r1, pc, r1
0042e31c  04 00 a0 e1                                      mov r0, r4
0042e320  71 97 fb eb                                      bl #0x3140ec
0042e324  07 00 a0 e1                                      mov r0, r7
0042e328  04 10 a0 e1                                      mov r1, r4
0042e32c  d5 25 fc eb                                      bl #0x337a88
0042e330  00 70 a0 e1                                      mov r7, r0
0042e334  04 00 a0 e1                                      mov r0, r4
0042e338  c5 a7 fb eb                                      bl #0x318254
0042e33c  00 00 57 e3                                      cmp r7, #0
0042e340  75 00 00 1a                                      bne #0x42e51c
0042e344  05 50 98 e7                                      ldr r5, [r8, r5]
0042e348  84 40 8d e2                                      add r4, sp, #0x84
0042e34c  05 00 a0 e1                                      mov r0, r5
0042e350  4c 25 fc eb                                      bl #0x337888
0042e354  ec 13 9f e5                                      ldr r1, [pc, #0x3ec]
0042e358  7c 20 8d e2                                      add r2, sp, #0x7c
0042e35c  04 00 a0 e1                                      mov r0, r4
0042e360  01 10 8f e0                                      add r1, pc, r1
0042e364  60 97 fb eb                                      bl #0x3140ec
0042e368  05 00 a0 e1                                      mov r0, r5
0042e36c  04 10 a0 e1                                      mov r1, r4
0042e370  c4 25 fc eb                                      bl #0x337a88
0042e374  00 50 a0 e1                                      mov r5, r0
0042e378  04 00 a0 e1                                      mov r0, r4
0042e37c  b4 a7 fb eb                                      bl #0x318254
0042e380  00 00 55 e3                                      cmp r5, #0
0042e384  5c 00 00 0a                                      beq #0x42e4fc
0042e388  bc 33 9f e5                                      ldr r3, [pc, #0x3bc]
0042e38c  03 30 98 e7                                      ldr r3, [r8, r3]
0042e390  10 30 93 e5                                      ldr r3, [r3, #0x10]
0042e394  10 70 93 e5                                      ldr r7, [r3, #0x10]
0042e398  ff 3f 0f e3                                      movw r3, #0xffff
0042e39c  dc 40 97 e5                                      ldr r4, [r7, #0xdc]
0042e3a0  be 22 d4 e1                                      ldrh r2, [r4, #0x2e]
0042e3a4  03 00 52 e1                                      cmp r2, r3
0042e3a8  dc 00 00 0a                                      beq #0x42e720
0042e3ac  78 30 8d e2                                      add r3, sp, #0x78
0042e3b0  03 00 a0 e1                                      mov r0, r3
0042e3b4  14 30 8d e5                                      str r3, [sp, #0x14]
0042e3b8  04 10 a0 e1                                      mov r1, r4
0042e3bc  01 30 a0 e3                                      mov r3, #1
0042e3c0  47 bb 06 eb                                      bl #0x5dd0e4
0042e3c4  78 00 9d e5                                      ldr r0, [sp, #0x78]
0042e3c8  00 00 50 e3                                      cmp r0, #0
0042e3cc  ff 20 a0 03                                      moveq r2, #0xff
0042e3d0  01 00 00 0a                                      beq #0x42e3dc
0042e3d4  56 5e 06 eb                                      bl #0x5c5d34
0042e3d8  00 20 a0 e1                                      mov r2, r0
0042e3dc  14 10 9d e5                                      ldr r1, [sp, #0x14]
0042e3e0  00 30 a0 e3                                      mov r3, #0
0042e3e4  07 00 a0 e1                                      mov r0, r7
0042e3e8  de fb 05 eb                                      bl #0x5ad368
0042e3ec  06 00 a0 e1                                      mov r0, r6
0042e3f0  d0 f9 ff eb                                      bl #0x42cb38
0042e3f4  00 a0 50 e2                                      subs sl, r0, #0
0042e3f8  3d 00 00 da                                      ble #0x42e4f4
0042e3fc  4c 33 9f e5                                      ldr r3, [pc, #0x34c]
0042e400  34 20 8d e2                                      add r2, sp, #0x34
0042e404  28 20 8d e5                                      str r2, [sp, #0x28]
0042e408  03 30 8f e0                                      add r3, pc, r3
0042e40c  20 30 8d e5                                      str r3, [sp, #0x20]
0042e410  64 20 8d e2                                      add r2, sp, #0x64
0042e414  6c 30 8d e2                                      add r3, sp, #0x6c
0042e418  00 50 a0 e3                                      mov r5, #0
0042e41c  18 30 8d e5                                      str r3, [sp, #0x18]
0042e420  1c 20 8d e5                                      str r2, [sp, #0x1c]
0042e424  2c 80 8d e5                                      str r8, [sp, #0x2c]
0042e428  02 00 00 ea                                      b #0x42e438
0042e42c  01 50 85 e2                                      add r5, r5, #1
0042e430  05 00 5a e1                                      cmp sl, r5
0042e434  2d 00 00 0a                                      beq #0x42e4f0
0042e438  64 30 96 e5                                      ldr r3, [r6, #0x64]
0042e43c  05 81 a0 e1                                      lsl r8, r5, #2
0042e440  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0042e444  ea c3 ff eb                                      bl #0x41f3f4
0042e448  00 00 50 e3                                      cmp r0, #0
0042e44c  f6 ff ff 0a                                      beq #0x42e42c
0042e450  64 30 96 e5                                      ldr r3, [r6, #0x64]
0042e454  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0042e458  fb ce ff eb                                      bl #0x42204c
0042e45c  00 10 50 e2                                      subs r1, r0, #0
0042e460  f1 ff ff 0a                                      beq #0x42e42c
0042e464  64 30 96 e5                                      ldr r3, [r6, #0x64]
0042e468  20 20 9d e5                                      ldr r2, [sp, #0x20]
0042e46c  00 40 a0 e3                                      mov r4, #0
0042e470  08 00 93 e7                                      ldr r0, [r3, r8]
0042e474  04 30 a0 e3                                      mov r3, #4
0042e478  04 80 90 e5                                      ldr r8, [r0, #4]
0042e47c  08 00 a0 e1                                      mov r0, r8
0042e480  e0 e9 0d eb                                      bl #0x7a8c08
0042e484  44 40 8d e5                                      str r4, [sp, #0x44]
0042e488  48 40 8d e5                                      str r4, [sp, #0x48]
0042e48c  4c 40 8d e5                                      str r4, [sp, #0x4c]
0042e490  50 40 cd e5                                      strb r4, [sp, #0x50]
0042e494  04 90 90 e5                                      ldr sb, [r0, #4]
0042e498  00 b0 a0 e1                                      mov fp, r0
0042e49c  04 00 59 e1                                      cmp sb, r4
0042e4a0  20 00 00 aa                                      bge #0x42e528
0042e4a4  44 30 8d e2                                      add r3, sp, #0x44
0042e4a8  24 30 8d e5                                      str r3, [sp, #0x24]
0042e4ac  00 00 59 e3                                      cmp sb, #0
0042e4b0  06 00 00 aa                                      bge #0x42e4d0
0042e4b4  09 31 a0 e1                                      lsl r3, sb, #2
0042e4b8  00 10 a0 e3                                      mov r1, #0
0042e4bc  44 20 9d e5                                      ldr r2, [sp, #0x44]
0042e4c0  01 90 99 e2                                      adds sb, sb, #1
0042e4c4  03 10 82 e7                                      str r1, [r2, r3]
0042e4c8  04 30 83 e2                                      add r3, r3, #4
0042e4cc  fa ff ff 1a                                      bne #0x42e4bc
0042e4d0  00 30 a0 e3                                      mov r3, #0
0042e4d4  24 00 9d e5                                      ldr r0, [sp, #0x24]
0042e4d8  03 10 a0 e1                                      mov r1, r3
0042e4dc  48 30 8d e5                                      str r3, [sp, #0x48]
0042e4e0  4b 96 ff eb                                      bl #0x413e14
0042e4e4  01 50 85 e2                                      add r5, r5, #1
0042e4e8  05 00 5a e1                                      cmp sl, r5
0042e4ec  d1 ff ff 1a                                      bne #0x42e438
0042e4f0  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
0042e4f4  14 00 9d e5                                      ldr r0, [sp, #0x14]
0042e4f8  ba 89 fb eb                                      bl #0x310be8
0042e4fc  08 20 9d e5                                      ldr r2, [sp, #8]
0042e500  02 30 98 e7                                      ldr r3, [r8, r2]
0042e504  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
0042e508  00 30 93 e5                                      ldr r3, [r3]
0042e50c  03 00 52 e1                                      cmp r2, r3
0042e510  87 00 00 1a                                      bne #0x42e734
0042e514  bc d0 8d e2                                      add sp, sp, #0xbc
0042e518  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0042e51c  06 00 a0 e1                                      mov r0, r6
0042e520  f1 fa ff eb                                      bl #0x42d0ec
0042e524  86 ff ff ea                                      b #0x42e344
0042e528  dd ff ff 0a                                      beq #0x42e4a4
0042e52c  dc ff ff da                                      ble #0x42e4a4
0042e530  44 30 8d e2                                      add r3, sp, #0x44
0042e534  03 00 a0 e1                                      mov r0, r3
0042e538  c9 10 89 e0                                      add r1, sb, sb, asr #1
0042e53c  24 30 8d e5                                      str r3, [sp, #0x24]
0042e540  33 96 ff eb                                      bl #0x413e14
0042e544  04 20 a0 e1                                      mov r2, r4
0042e548  44 30 9d e5                                      ldr r3, [sp, #0x44]
0042e54c  04 21 83 e7                                      str r2, [r3, r4, lsl #2]
0042e550  01 40 84 e2                                      add r4, r4, #1
0042e554  09 00 54 e1                                      cmp r4, sb
0042e558  fa ff ff 1a                                      bne #0x42e548
0042e55c  48 40 8d e5                                      str r4, [sp, #0x48]
0042e560  00 30 9b e5                                      ldr r3, [fp]
0042e564  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
0042e568  44 30 9d e5                                      ldr r3, [sp, #0x44]
0042e56c  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
0042e570  48 90 9d e5                                      ldr sb, [sp, #0x48]
0042e574  01 20 82 e2                                      add r2, r2, #1
0042e578  09 00 52 e1                                      cmp r2, sb
0042e57c  f7 ff ff ba                                      blt #0x42e560
0042e580  00 00 59 e3                                      cmp sb, #0
0042e584  c8 ff ff da                                      ble #0x42e4ac
0042e588  54 20 8d e2                                      add r2, sp, #0x54
0042e58c  5c 30 8d e2                                      add r3, sp, #0x5c
0042e590  00 40 a0 e3                                      mov r4, #0
0042e594  00 b0 e0 e3                                      mvn fp, #0
0042e598  0c 20 8d e5                                      str r2, [sp, #0xc]
0042e59c  10 30 8d e5                                      str r3, [sp, #0x10]
0042e5a0  08 90 a0 e1                                      mov sb, r8
0042e5a4  03 00 00 ea                                      b #0x42e5b8
0042e5a8  48 30 9d e5                                      ldr r3, [sp, #0x48]
0042e5ac  01 40 84 e2                                      add r4, r4, #1
0042e5b0  03 00 54 e1                                      cmp r4, r3
0042e5b4  50 00 00 aa                                      bge #0x42e6fc
0042e5b8  44 30 9d e5                                      ldr r3, [sp, #0x44]
0042e5bc  20 10 a0 e3                                      mov r1, #0x20
0042e5c0  04 81 93 e7                                      ldr r8, [r3, r4, lsl #2]
0042e5c4  00 30 98 e5                                      ldr r3, [r8]
0042e5c8  08 00 a0 e1                                      mov r0, r8
0042e5cc  0f e0 a0 e1                                      mov lr, pc
0042e5d0  08 f0 93 e5                                      ldr pc, [r3, #8]
0042e5d4  00 00 50 e3                                      cmp r0, #0
0042e5d8  f2 ff ff 0a                                      beq #0x42e5a8
0042e5dc  9b 30 d8 e5                                      ldrb r3, [r8, #0x9b]
0042e5e0  00 00 53 e3                                      cmp r3, #0
0042e5e4  ef ff ff 0a                                      beq #0x42e5a8
0042e5e8  08 10 a0 e1                                      mov r1, r8
0042e5ec  09 00 a0 e1                                      mov r0, sb
0042e5f0  b8 e5 0d eb                                      bl #0x7a7cd8
0042e5f4  00 10 a0 e3                                      mov r1, #0
0042e5f8  63 7e fb eb                                      bl #0x30df8c
0042e5fc  00 00 50 e3                                      cmp r0, #0
0042e600  e8 ff ff 1a                                      bne #0x42e5a8
0042e604  08 10 a0 e1                                      mov r1, r8
0042e608  28 00 9d e5                                      ldr r0, [sp, #0x28]
0042e60c  1a a1 ff eb                                      bl #0x416a7c
0042e610  00 30 a0 e3                                      mov r3, #0
0042e614  32 20 a0 e3                                      mov r2, #0x32
0042e618  34 00 9d e5                                      ldr r0, [sp, #0x34]
0042e61c  76 30 cd e5                                      strb r3, [sp, #0x76]
0042e620  77 20 cd e5                                      strb r2, [sp, #0x77]
0042e624  74 b0 cd e5                                      strb fp, [sp, #0x74]
0042e628  75 b0 cd e5                                      strb fp, [sp, #0x75]
0042e62c  a6 7f fb eb                                      bl #0x30e4cc
0042e630  5c 00 8d e5                                      str r0, [sp, #0x5c]
0042e634  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0042e638  a3 7f fb eb                                      bl #0x30e4cc
0042e63c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0042e640  00 30 a0 e1                                      mov r3, r0
0042e644  38 00 9d e5                                      ldr r0, [sp, #0x38]
0042e648  6c 20 8d e5                                      str r2, [sp, #0x6c]
0042e64c  70 30 8d e5                                      str r3, [sp, #0x70]
0042e650  04 30 8d e5                                      str r3, [sp, #4]
0042e654  9c 7f fb eb                                      bl #0x30e4cc
0042e658  04 30 9d e5                                      ldr r3, [sp, #4]
0042e65c  00 80 a0 e1                                      mov r8, r0
0042e660  40 00 9d e5                                      ldr r0, [sp, #0x40]
0042e664  68 30 8d e5                                      str r3, [sp, #0x68]
0042e668  64 80 8d e5                                      str r8, [sp, #0x64]
0042e66c  96 7f fb eb                                      bl #0x30e4cc
0042e670  54 80 8d e5                                      str r8, [sp, #0x54]
0042e674  58 00 8d e5                                      str r0, [sp, #0x58]
0042e678  60 00 8d e5                                      str r0, [sp, #0x60]
0042e67c  18 10 9d e5                                      ldr r1, [sp, #0x18]
0042e680  07 00 a0 e1                                      mov r0, r7
0042e684  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0042e688  74 30 9d e5                                      ldr r3, [sp, #0x74]
0042e68c  00 c0 97 e5                                      ldr ip, [r7]
0042e690  0f e0 a0 e1                                      mov lr, pc
0042e694  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
0042e698  07 00 a0 e1                                      mov r0, r7
0042e69c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0042e6a0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0042e6a4  74 30 9d e5                                      ldr r3, [sp, #0x74]
0042e6a8  00 c0 97 e5                                      ldr ip, [r7]
0042e6ac  0f e0 a0 e1                                      mov lr, pc
0042e6b0  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
0042e6b4  07 00 a0 e1                                      mov r0, r7
0042e6b8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0042e6bc  10 20 9d e5                                      ldr r2, [sp, #0x10]
0042e6c0  74 30 9d e5                                      ldr r3, [sp, #0x74]
0042e6c4  00 c0 97 e5                                      ldr ip, [r7]
0042e6c8  0f e0 a0 e1                                      mov lr, pc
0042e6cc  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
0042e6d0  74 30 9d e5                                      ldr r3, [sp, #0x74]
0042e6d4  00 c0 97 e5                                      ldr ip, [r7]
0042e6d8  07 00 a0 e1                                      mov r0, r7
0042e6dc  10 10 9d e5                                      ldr r1, [sp, #0x10]
0042e6e0  18 20 9d e5                                      ldr r2, [sp, #0x18]
0042e6e4  0f e0 a0 e1                                      mov lr, pc
0042e6e8  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
0042e6ec  48 30 9d e5                                      ldr r3, [sp, #0x48]
0042e6f0  01 40 84 e2                                      add r4, r4, #1
0042e6f4  03 00 54 e1                                      cmp r4, r3
0042e6f8  ae ff ff ba                                      blt #0x42e5b8
0042e6fc  00 00 53 e3                                      cmp r3, #0
0042e700  03 90 a0 e1                                      mov sb, r3
0042e704  68 ff ff da                                      ble #0x42e4ac
0042e708  00 30 a0 e3                                      mov r3, #0
0042e70c  24 00 9d e5                                      ldr r0, [sp, #0x24]
0042e710  03 10 a0 e1                                      mov r1, r3
0042e714  48 30 8d e5                                      str r3, [sp, #0x48]
0042e718  bd 95 ff eb                                      bl #0x413e14
0042e71c  70 ff ff ea                                      b #0x42e4e4
0042e720  04 00 a0 e1                                      mov r0, r4
0042e724  01 10 a0 e3                                      mov r1, #1
0042e728  fe a8 06 eb                                      bl #0x5d8b28
0042e72c  00 20 a0 e1                                      mov r2, r0
0042e730  1d ff ff ea                                      b #0x42e3ac
0042e734  f5 7e fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0042e738  ac 67 56 00 ac 40 00 00 84 08 00 00 d8 bd 49 00  .byte 0xac, 0x67, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xd8, 0xbd, 0x49, 0x00
0042e748  a8 bd 49 00 f4 37 00 00 00 d4 49 00              .byte 0xa8, 0xbd, 0x49, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x00, 0xd4, 0x49, 0x00

; FUNCTION 0x0042e754, declared_size=8, range_size=8, mode=arm
; class-group: MenuManager
; alias: _ZThn4_N11MenuManager11OnFSCommandEPKcS1_
; demangled: non-virtual thunk to MenuManager::OnFSCommand(char const*, char const*)
; decoder-mode: arm
0042e754  04 00 40 e2                                      sub r0, r0, #4
0042e758  ff ff ff ea                                      b #0x42e75c

; FUNCTION 0x0042e75c, declared_size=188, range_size=188, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager11OnFSCommandEPKcS1_
; demangled: MenuManager::OnFSCommand(char const*, char const*)
; decoder-mode: arm
0042e75c  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0042e760  a0 c0 9f e5                                      ldr ip, [pc, #0xa0]
0042e764  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0042e768  03 30 8f e0                                      add r3, pc, r3
0042e76c  0c 50 93 e7                                      ldr r5, [r3, ip]
0042e770  94 c0 9f e5                                      ldr ip, [pc, #0x94]
0042e774  24 d0 4d e2                                      sub sp, sp, #0x24
0042e778  00 a0 a0 e1                                      mov sl, r0
0042e77c  0c 60 93 e7                                      ldr r6, [r3, ip]
0042e780  00 c0 95 e5                                      ldr ip, [r5]
0042e784  01 80 a0 e1                                      mov r8, r1
0042e788  06 00 a0 e1                                      mov r0, r6
0042e78c  1c c0 8d e5                                      str ip, [sp, #0x1c]
0042e790  02 70 a0 e1                                      mov r7, r2
0042e794  3b 24 fc eb                                      bl #0x337888
0042e798  70 10 9f e5                                      ldr r1, [pc, #0x70]
0042e79c  04 40 8d e2                                      add r4, sp, #4
0042e7a0  0d 20 a0 e1                                      mov r2, sp
0042e7a4  01 10 8f e0                                      add r1, pc, r1
0042e7a8  04 00 a0 e1                                      mov r0, r4
0042e7ac  4e 96 fb eb                                      bl #0x3140ec
0042e7b0  04 10 a0 e1                                      mov r1, r4
0042e7b4  06 00 a0 e1                                      mov r0, r6
0042e7b8  b2 24 fc eb                                      bl #0x337a88
0042e7bc  04 00 a0 e1                                      mov r0, r4
0042e7c0  a3 a6 fb eb                                      bl #0x318254
0042e7c4  48 10 9f e5                                      ldr r1, [pc, #0x48]
0042e7c8  0a 00 a0 e1                                      mov r0, sl
0042e7cc  01 10 8f e0                                      add r1, pc, r1
0042e7d0  86 fa ff eb                                      bl #0x42d1f0
0042e7d4  07 20 a0 e1                                      mov r2, r7
0042e7d8  00 30 90 e5                                      ldr r3, [r0]
0042e7dc  08 10 a0 e1                                      mov r1, r8
0042e7e0  0f e0 a0 e1                                      mov lr, pc
0042e7e4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0042e7e8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0042e7ec  00 30 95 e5                                      ldr r3, [r5]
0042e7f0  03 00 52 e1                                      cmp r2, r3
0042e7f4  01 00 00 1a                                      bne #0x42e800
0042e7f8  24 d0 8d e2                                      add sp, sp, #0x24
0042e7fc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0042e800  c2 7e fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0042e804  28 63 56 00 ac 40 00 00 84 08 00 00 34 b9 49 00  .byte 0x28, 0x63, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x34, 0xb9, 0x49, 0x00
0042e814  dc 2f 49 00                                      .byte 0xdc, 0x2f, 0x49, 0x00

; FUNCTION 0x0042e818, declared_size=492, range_size=492, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager4DrawEb
; demangled: MenuManager::Draw(bool)
; decoder-mode: arm
0042e818  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0042e81c  c8 41 9f e5                                      ldr r4, [pc, #0x1c8]
0042e820  c8 61 9f e5                                      ldr r6, [pc, #0x1c8]
0042e824  c8 21 9f e5                                      ldr r2, [pc, #0x1c8]
0042e828  04 40 8f e0                                      add r4, pc, r4
0042e82c  06 30 94 e7                                      ldr r3, [r4, r6]
0042e830  02 80 94 e7                                      ldr r8, [r4, r2]
0042e834  40 d0 4d e2                                      sub sp, sp, #0x40
0042e838  00 30 93 e5                                      ldr r3, [r3]
0042e83c  00 50 a0 e1                                      mov r5, r0
0042e840  08 00 a0 e1                                      mov r0, r8
0042e844  3c 30 8d e5                                      str r3, [sp, #0x3c]
0042e848  0e 24 fc eb                                      bl #0x337888
0042e84c  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
0042e850  24 70 8d e2                                      add r7, sp, #0x24
0042e854  08 20 8d e2                                      add r2, sp, #8
0042e858  01 10 8f e0                                      add r1, pc, r1
0042e85c  07 00 a0 e1                                      mov r0, r7
0042e860  21 96 fb eb                                      bl #0x3140ec
0042e864  08 00 a0 e1                                      mov r0, r8
0042e868  07 10 a0 e1                                      mov r1, r7
0042e86c  85 24 fc eb                                      bl #0x337a88
0042e870  00 00 50 e3                                      cmp r0, #0
0042e874  08 00 00 0a                                      beq #0x42e89c
0042e878  07 00 a0 e1                                      mov r0, r7
0042e87c  74 a6 fb eb                                      bl #0x318254
0042e880  06 30 94 e7                                      ldr r3, [r4, r6]
0042e884  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0042e888  00 30 93 e5                                      ldr r3, [r3]
0042e88c  03 00 52 e1                                      cmp r2, r3
0042e890  54 00 00 1a                                      bne #0x42e9e8
0042e894  40 d0 8d e2                                      add sp, sp, #0x40
0042e898  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0042e89c  08 00 a0 e1                                      mov r0, r8
0042e8a0  f8 23 fc eb                                      bl #0x337888
0042e8a4  50 11 9f e5                                      ldr r1, [pc, #0x150]
0042e8a8  0c a0 8d e2                                      add sl, sp, #0xc
0042e8ac  04 20 8d e2                                      add r2, sp, #4
0042e8b0  01 10 8f e0                                      add r1, pc, r1
0042e8b4  0a 00 a0 e1                                      mov r0, sl
0042e8b8  0b 96 fb eb                                      bl #0x3140ec
0042e8bc  0a 10 a0 e1                                      mov r1, sl
0042e8c0  08 00 a0 e1                                      mov r0, r8
0042e8c4  6f 24 fc eb                                      bl #0x337a88
0042e8c8  00 80 a0 e1                                      mov r8, r0
0042e8cc  0a 00 a0 e1                                      mov r0, sl
0042e8d0  5f a6 fb eb                                      bl #0x318254
0042e8d4  07 00 a0 e1                                      mov r0, r7
0042e8d8  5d a6 fb eb                                      bl #0x318254
0042e8dc  00 00 58 e3                                      cmp r8, #0
0042e8e0  e6 ff ff 1a                                      bne #0x42e880
0042e8e4  14 21 9f e5                                      ldr r2, [pc, #0x114]
0042e8e8  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
0042e8ec  03 70 a0 e3                                      mov r7, #3
0042e8f0  02 20 94 e7                                      ldr r2, [r4, r2]
0042e8f4  02 80 a0 e3                                      mov r8, #2
0042e8f8  10 20 92 e5                                      ldr r2, [r2, #0x10]
0042e8fc  10 90 92 e5                                      ldr sb, [r2, #0x10]
0042e900  7c 20 99 e5                                      ldr r2, [sb, #0x7c]
0042e904  08 20 85 e5                                      str r2, [r5, #8]
0042e908  80 20 99 e5                                      ldr r2, [sb, #0x80]
0042e90c  0c 20 85 e5                                      str r2, [r5, #0xc]
0042e910  78 20 99 e5                                      ldr r2, [sb, #0x78]
0042e914  10 20 85 e5                                      str r2, [r5, #0x10]
0042e918  07 21 83 e0                                      add r2, r3, r7, lsl #2
0042e91c  34 a1 92 e5                                      ldr sl, [r2, #0x134]
0042e920  00 00 5a e3                                      cmp sl, #0
0042e924  0c 00 00 0a                                      beq #0x42e95c
0042e928  03 00 57 e3                                      cmp r7, #3
0042e92c  15 00 00 0a                                      beq #0x42e988
0042e930  07 31 83 e0                                      add r3, r3, r7, lsl #2
0042e934  44 01 93 e5                                      ldr r0, [r3, #0x144]
0042e938  00 00 50 e3                                      cmp r0, #0
0042e93c  00 00 00 0a                                      beq #0x42e944
0042e940  0f f9 ff eb                                      bl #0x42cd84
0042e944  0a 00 a0 e1                                      mov r0, sl
0042e948  78 e5 0d eb                                      bl #0x7a7f30
0042e94c  00 00 50 e3                                      cmp r0, #0
0042e950  21 00 00 0a                                      beq #0x42e9dc
0042e954  0a 00 a0 e1                                      mov r0, sl
0042e958  4d ec 0d eb                                      bl #0x7a9a94
0042e95c  00 00 58 e3                                      cmp r8, #0
0042e960  16 00 00 ba                                      blt #0x42e9c0
0042e964  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
0042e968  01 70 47 e2                                      sub r7, r7, #1
0042e96c  07 21 83 e0                                      add r2, r3, r7, lsl #2
0042e970  34 a1 92 e5                                      ldr sl, [r2, #0x134]
0042e974  01 80 48 e2                                      sub r8, r8, #1
0042e978  00 00 5a e3                                      cmp sl, #0
0042e97c  f6 ff ff 0a                                      beq #0x42e95c
0042e980  03 00 57 e3                                      cmp r7, #3
0042e984  e9 ff ff 1a                                      bne #0x42e930
0042e988  3c 21 93 e5                                      ldr r2, [r3, #0x13c]
0042e98c  00 00 52 e3                                      cmp r2, #0
0042e990  02 00 00 0a                                      beq #0x42e9a0
0042e994  18 21 92 e5                                      ldr r2, [r2, #0x118]
0042e998  00 00 52 e3                                      cmp r2, #0
0042e99c  f1 ff ff 1a                                      bne #0x42e968
0042e9a0  0a c1 ff eb                                      bl #0x41edd0
0042e9a4  f0 ba ff eb                                      bl #0x41d56c
0042e9a8  db b1 ff eb                                      bl #0x41b11c
0042e9ac  24 a6 ff eb                                      bl #0x418244
0042e9b0  36 95 ff eb                                      bl #0x413e90
0042e9b4  29 96 ff eb                                      bl #0x414260
0042e9b8  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
0042e9bc  db ff ff ea                                      b #0x42e930
0042e9c0  7c 30 99 e5                                      ldr r3, [sb, #0x7c]
0042e9c4  14 30 85 e5                                      str r3, [r5, #0x14]
0042e9c8  80 30 99 e5                                      ldr r3, [sb, #0x80]
0042e9cc  18 30 85 e5                                      str r3, [r5, #0x18]
0042e9d0  78 30 99 e5                                      ldr r3, [sb, #0x78]
0042e9d4  1c 30 85 e5                                      str r3, [r5, #0x1c]
0042e9d8  a8 ff ff ea                                      b #0x42e880
0042e9dc  03 00 57 e3                                      cmp r7, #3
0042e9e0  dd ff ff 1a                                      bne #0x42e95c
0042e9e4  da ff ff ea                                      b #0x42e954
0042e9e8  48 7e fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0042e9ec  68 62 56 00 ac 40 00 00 84 08 00 00 f8 15 49 00  .byte 0x68, 0x62, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xf8, 0x15, 0x49, 0x00
0042e9fc  e0 15 49 00 f4 37 00 00                          .byte 0xe0, 0x15, 0x49, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0042ea04, declared_size=1168, range_size=1168, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager6UpdateEb
; demangled: MenuManager::Update(bool)
; decoder-mode: arm
0042ea04  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0042ea08  30 44 9f e5                                      ldr r4, [pc, #0x430]
0042ea0c  30 34 9f e5                                      ldr r3, [pc, #0x430]
0042ea10  30 94 9f e5                                      ldr sb, [pc, #0x430]
0042ea14  04 40 8f e0                                      add r4, pc, r4
0042ea18  03 20 94 e7                                      ldr r2, [r4, r3]
0042ea1c  09 30 94 e7                                      ldr r3, [r4, sb]
0042ea20  84 d0 4d e2                                      sub sp, sp, #0x84
0042ea24  00 20 d2 e5                                      ldrb r2, [r2]
0042ea28  00 30 93 e5                                      ldr r3, [r3]
0042ea2c  00 50 a0 e1                                      mov r5, r0
0042ea30  00 00 52 e3                                      cmp r2, #0
0042ea34  01 b0 a0 e1                                      mov fp, r1
0042ea38  7c 30 8d e5                                      str r3, [sp, #0x7c]
0042ea3c  7b 00 00 1a                                      bne #0x42ec30
0042ea40  04 04 9f e5                                      ldr r0, [pc, #0x404]
0042ea44  04 64 9f e5                                      ldr r6, [pc, #0x404]
0042ea48  00 00 8f e0                                      add r0, pc, r0
0042ea4c  18 93 fb eb                                      bl #0x3136b4
0042ea50  06 00 94 e7                                      ldr r0, [r4, r6]
0042ea54  ce c2 fb eb                                      bl #0x31f594
0042ea58  00 00 50 e3                                      cmp r0, #0
0042ea5c  09 00 00 0a                                      beq #0x42ea88
0042ea60  ec 73 9f e5                                      ldr r7, [pc, #0x3ec]
0042ea64  07 70 8f e0                                      add r7, pc, r7
0042ea68  07 00 a0 e1                                      mov r0, r7
0042ea6c  10 93 fb eb                                      bl #0x3136b4
0042ea70  a1 ee ff eb                                      bl #0x42a4fc
0042ea74  00 30 90 e5                                      ldr r3, [r0]
0042ea78  0f e0 a0 e1                                      mov lr, pc
0042ea7c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0042ea80  07 00 a0 e1                                      mov r0, r7
0042ea84  0b 93 fb eb                                      bl #0x3136b8
0042ea88  06 30 94 e7                                      ldr r3, [r4, r6]
0042ea8c  00 10 a0 e3                                      mov r1, #0
0042ea90  01 20 a0 e3                                      mov r2, #1
0042ea94  40 00 93 e5                                      ldr r0, [r3, #0x40]
0042ea98  76 fe fc eb                                      bl #0x36e478
0042ea9c  60 76 90 e5                                      ldr r7, [r0, #0x660]
0042eaa0  b0 03 9f e5                                      ldr r0, [pc, #0x3b0]
0042eaa4  00 00 8f e0                                      add r0, pc, r0
0042eaa8  01 93 fb eb                                      bl #0x3136b4
0042eaac  00 00 57 e3                                      cmp r7, #0
0042eab0  2d 00 00 0a                                      beq #0x42eb6c
0042eab4  a8 34 01 e3                                      movw r3, #0x14a8
0042eab8  d3 30 97 e1                                      ldrsb r3, [r7, r3]
0042eabc  0a 00 53 e3                                      cmp r3, #0xa
0042eac0  05 70 a0 83                                      movhi r7, #5
0042eac4  02 00 00 8a                                      bhi #0x42ead4
0042eac8  8c 23 9f e5                                      ldr r2, [pc, #0x38c]
0042eacc  02 20 8f e0                                      add r2, pc, r2
0042ead0  03 71 92 e7                                      ldr r7, [r2, r3, lsl #2]
0042ead4  08 31 95 e5                                      ldr r3, [r5, #0x108]
0042ead8  07 00 53 e1                                      cmp r3, r7
0042eadc  22 00 00 0a                                      beq #0x42eb6c
0042eae0  05 00 a0 e1                                      mov r0, r5
0042eae4  28 f8 ff eb                                      bl #0x42cb8c
0042eae8  00 00 50 e3                                      cmp r0, #0
0042eaec  1e 00 00 0a                                      beq #0x42eb6c
0042eaf0  08 71 85 e5                                      str r7, [r5, #0x108]
0042eaf4  05 00 a0 e1                                      mov r0, r5
0042eaf8  23 f8 ff eb                                      bl #0x42cb8c
0042eafc  00 a0 a0 e1                                      mov sl, r0
0042eb00  05 00 a0 e1                                      mov r0, r5
0042eb04  20 f8 ff eb                                      bl #0x42cb8c
0042eb08  67 e4 0d eb                                      bl #0x7a7cac
0042eb0c  90 15 0d eb                                      bl #0x774154
0042eb10  00 30 a0 e3                                      mov r3, #0
0042eb14  00 80 a0 e1                                      mov r8, r0
0042eb18  08 01 95 e5                                      ldr r0, [r5, #0x108]
0042eb1c  14 30 cd e5                                      strb r3, [sp, #0x14]
0042eb20  02 30 a0 e3                                      mov r3, #2
0042eb24  15 30 cd e5                                      strb r3, [sp, #0x15]
0042eb28  80 80 fb eb                                      bl #0x30ed30
0042eb2c  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
0042eb30  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0042eb34  24 23 9f e5                                      ldr r2, [pc, #0x324]
0042eb38  14 70 8d e2                                      add r7, sp, #0x14
0042eb3c  18 c0 8d e5                                      str ip, [sp, #0x18]
0042eb40  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0042eb44  0a 00 a0 e1                                      mov r0, sl
0042eb48  08 10 a0 e1                                      mov r1, r8
0042eb4c  08 c0 87 e5                                      str ip, [r7, #8]
0042eb50  02 20 8f e0                                      add r2, pc, r2
0042eb54  01 c0 a0 e3                                      mov ip, #1
0042eb58  07 30 a0 e1                                      mov r3, r7
0042eb5c  00 c0 8d e5                                      str ip, [sp]
0042eb60  a9 f4 0d eb                                      bl #0x7abe0c
0042eb64  07 00 a0 e1                                      mov r0, r7
0042eb68  6d a1 0d eb                                      bl #0x797124
0042eb6c  f0 02 9f e5                                      ldr r0, [pc, #0x2f0]
0042eb70  f0 82 9f e5                                      ldr r8, [pc, #0x2f0]
0042eb74  64 70 8d e2                                      add r7, sp, #0x64
0042eb78  00 00 8f e0                                      add r0, pc, r0
0042eb7c  cd 92 fb eb                                      bl #0x3136b8
0042eb80  00 00 a0 e3                                      mov r0, #0
0042eb84  2a e4 0d eb                                      bl #0x7a7c34
0042eb88  08 a0 94 e7                                      ldr sl, [r4, r8]
0042eb8c  0a 00 a0 e1                                      mov r0, sl
0042eb90  3c 23 fc eb                                      bl #0x337888
0042eb94  d0 12 9f e5                                      ldr r1, [pc, #0x2d0]
0042eb98  30 20 8d e2                                      add r2, sp, #0x30
0042eb9c  07 00 a0 e1                                      mov r0, r7
0042eba0  01 10 8f e0                                      add r1, pc, r1
0042eba4  50 95 fb eb                                      bl #0x3140ec
0042eba8  0a 00 a0 e1                                      mov r0, sl
0042ebac  07 10 a0 e1                                      mov r1, r7
0042ebb0  b4 23 fc eb                                      bl #0x337a88
0042ebb4  00 a0 a0 e1                                      mov sl, r0
0042ebb8  07 00 a0 e1                                      mov r0, r7
0042ebbc  a4 a5 fb eb                                      bl #0x318254
0042ebc0  00 00 5a e3                                      cmp sl, #0
0042ebc4  85 00 00 1a                                      bne #0x42ede0
0042ebc8  08 80 94 e7                                      ldr r8, [r4, r8]
0042ebcc  4c 70 8d e2                                      add r7, sp, #0x4c
0042ebd0  08 00 a0 e1                                      mov r0, r8
0042ebd4  2b 23 fc eb                                      bl #0x337888
0042ebd8  90 12 9f e5                                      ldr r1, [pc, #0x290]
0042ebdc  2c 20 8d e2                                      add r2, sp, #0x2c
0042ebe0  07 00 a0 e1                                      mov r0, r7
0042ebe4  01 10 8f e0                                      add r1, pc, r1
0042ebe8  3f 95 fb eb                                      bl #0x3140ec
0042ebec  08 00 a0 e1                                      mov r0, r8
0042ebf0  07 10 a0 e1                                      mov r1, r7
0042ebf4  a3 23 fc eb                                      bl #0x337a88
0042ebf8  00 00 50 e3                                      cmp r0, #0
0042ebfc  0d 00 00 0a                                      beq #0x42ec38
0042ec00  07 00 a0 e1                                      mov r0, r7
0042ec04  92 a5 fb eb                                      bl #0x318254
0042ec08  64 02 9f e5                                      ldr r0, [pc, #0x264]
0042ec0c  00 00 8f e0                                      add r0, pc, r0
0042ec10  a8 92 fb eb                                      bl #0x3136b8
0042ec14  09 30 94 e7                                      ldr r3, [r4, sb]
0042ec18  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
0042ec1c  00 30 93 e5                                      ldr r3, [r3]
0042ec20  03 00 52 e1                                      cmp r2, r3
0042ec24  84 00 00 1a                                      bne #0x42ee3c
0042ec28  84 d0 8d e2                                      add sp, sp, #0x84
0042ec2c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0042ec30  65 4c 00 eb                                      bl #0x441dcc
0042ec34  81 ff ff ea                                      b #0x42ea40
0042ec38  08 00 a0 e1                                      mov r0, r8
0042ec3c  11 23 fc eb                                      bl #0x337888
0042ec40  30 12 9f e5                                      ldr r1, [pc, #0x230]
0042ec44  34 a0 8d e2                                      add sl, sp, #0x34
0042ec48  28 20 8d e2                                      add r2, sp, #0x28
0042ec4c  01 10 8f e0                                      add r1, pc, r1
0042ec50  0a 00 a0 e1                                      mov r0, sl
0042ec54  24 95 fb eb                                      bl #0x3140ec
0042ec58  0a 10 a0 e1                                      mov r1, sl
0042ec5c  08 00 a0 e1                                      mov r0, r8
0042ec60  88 23 fc eb                                      bl #0x337a88
0042ec64  00 80 a0 e1                                      mov r8, r0
0042ec68  0a 00 a0 e1                                      mov r0, sl
0042ec6c  78 a5 fb eb                                      bl #0x318254
0042ec70  07 00 a0 e1                                      mov r0, r7
0042ec74  76 a5 fb eb                                      bl #0x318254
0042ec78  00 00 58 e3                                      cmp r8, #0
0042ec7c  e1 ff ff 1a                                      bne #0x42ec08
0042ec80  06 00 94 e7                                      ldr r0, [r4, r6]
0042ec84  78 c2 fb eb                                      bl #0x31f66c
0042ec88  88 30 d5 e5                                      ldrb r3, [r5, #0x88]
0042ec8c  00 a0 a0 e1                                      mov sl, r0
0042ec90  00 00 53 e3                                      cmp r3, #0
0042ec94  04 00 00 0a                                      beq #0x42ecac
0042ec98  80 30 95 e5                                      ldr r3, [r5, #0x80]
0042ec9c  00 00 53 e3                                      cmp r3, #0
0042eca0  51 00 00 1a                                      bne #0x42edec
0042eca4  00 30 a0 e3                                      mov r3, #0
0042eca8  88 30 c5 e5                                      strb r3, [r5, #0x88]
0042ecac  c8 81 9f e5                                      ldr r8, [pc, #0x1c8]
0042ecb0  00 00 5b e3                                      cmp fp, #0
0042ecb4  0b 70 a0 01                                      moveq r7, fp
0042ecb8  03 70 a0 13                                      movne r7, #3
0042ecbc  08 80 8f e0                                      add r8, pc, r8
0042ecc0  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
0042ecc4  07 31 83 e0                                      add r3, r3, r7, lsl #2
0042ecc8  34 b1 93 e5                                      ldr fp, [r3, #0x134]
0042eccc  00 00 5b e3                                      cmp fp, #0
0042ecd0  12 00 00 0a                                      beq #0x42ed20
0042ecd4  06 30 94 e7                                      ldr r3, [r4, r6]
0042ecd8  03 00 a0 e1                                      mov r0, r3
0042ecdc  0c 30 8d e5                                      str r3, [sp, #0xc]
0042ece0  2b c2 fb eb                                      bl #0x31f594
0042ece4  00 00 50 e3                                      cmp r0, #0
0042ece8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0042ecec  01 00 00 0a                                      beq #0x42ecf8
0042ecf0  03 00 57 e3                                      cmp r7, #3
0042ecf4  45 00 00 0a                                      beq #0x42ee10
0042ecf8  08 00 a0 e1                                      mov r0, r8
0042ecfc  6c 92 fb eb                                      bl #0x3136b4
0042ed00  0b 00 a0 e1                                      mov r0, fp
0042ed04  00 30 9b e5                                      ldr r3, [fp]
0042ed08  0a 10 a0 e1                                      mov r1, sl
0042ed0c  00 20 a0 e3                                      mov r2, #0
0042ed10  0f e0 a0 e1                                      mov lr, pc
0042ed14  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0042ed18  08 00 a0 e1                                      mov r0, r8
0042ed1c  65 92 fb eb                                      bl #0x3136b8
0042ed20  01 70 87 e2                                      add r7, r7, #1
0042ed24  04 00 57 e3                                      cmp r7, #4
0042ed28  e4 ff ff 1a                                      bne #0x42ecc0
0042ed2c  4c 01 9f e5                                      ldr r0, [pc, #0x14c]
0042ed30  00 00 8f e0                                      add r0, pc, r0
0042ed34  5e 92 fb eb                                      bl #0x3136b4
0042ed38  06 00 94 e7                                      ldr r0, [r4, r6]
0042ed3c  50 c2 fb eb                                      bl #0x31f684
0042ed40  00 00 50 e3                                      cmp r0, #0
0042ed44  37 00 00 1a                                      bne #0x42ee28
0042ed48  50 94 ff eb                                      bl #0x413e90
0042ed4c  d6 92 ff eb                                      bl #0x4138ac
0042ed50  2c 01 9f e5                                      ldr r0, [pc, #0x12c]
0042ed54  00 00 8f e0                                      add r0, pc, r0
0042ed58  56 92 fb eb                                      bl #0x3136b8
0042ed5c  24 01 9f e5                                      ldr r0, [pc, #0x124]
0042ed60  00 00 8f e0                                      add r0, pc, r0
0042ed64  52 92 fb eb                                      bl #0x3136b4
0042ed68  05 00 a0 e1                                      mov r0, r5
0042ed6c  71 f7 ff eb                                      bl #0x42cb38
0042ed70  00 70 50 e2                                      subs r7, r0, #0
0042ed74  12 00 00 da                                      ble #0x42edc4
0042ed78  00 60 a0 e3                                      mov r6, #0
0042ed7c  02 00 00 ea                                      b #0x42ed8c
0042ed80  01 60 86 e2                                      add r6, r6, #1
0042ed84  06 00 57 e1                                      cmp r7, r6
0042ed88  0d 00 00 0a                                      beq #0x42edc4
0042ed8c  64 30 95 e5                                      ldr r3, [r5, #0x64]
0042ed90  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
0042ed94  96 c1 ff eb                                      bl #0x41f3f4
0042ed98  00 00 50 e3                                      cmp r0, #0
0042ed9c  f7 ff ff 0a                                      beq #0x42ed80
0042eda0  64 30 95 e5                                      ldr r3, [r5, #0x64]
0042eda4  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0042eda8  01 60 86 e2                                      add r6, r6, #1
0042edac  03 00 a0 e1                                      mov r0, r3
0042edb0  00 30 93 e5                                      ldr r3, [r3]
0042edb4  0f e0 a0 e1                                      mov lr, pc
0042edb8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0042edbc  06 00 57 e1                                      cmp r7, r6
0042edc0  f1 ff ff 1a                                      bne #0x42ed8c
0042edc4  c0 00 9f e5                                      ldr r0, [pc, #0xc0]
0042edc8  00 00 8f e0                                      add r0, pc, r0
0042edcc  39 92 fb eb                                      bl #0x3136b8
0042edd0  b8 00 9f e5                                      ldr r0, [pc, #0xb8]
0042edd4  00 00 8f e0                                      add r0, pc, r0
0042edd8  36 92 fb eb                                      bl #0x3136b8
0042eddc  8c ff ff ea                                      b #0x42ec14
0042ede0  01 00 a0 e3                                      mov r0, #1
0042ede4  92 e3 0d eb                                      bl #0x7a7c34
0042ede8  76 ff ff ea                                      b #0x42ebc8
0042edec  70 70 85 e2                                      add r7, r5, #0x70
0042edf0  07 00 a0 e1                                      mov r0, r7
0042edf4  74 10 95 e5                                      ldr r1, [r5, #0x74]
0042edf8  18 fb ff eb                                      bl #0x42da60
0042edfc  7c 70 85 e5                                      str r7, [r5, #0x7c]
0042ee00  80 80 85 e5                                      str r8, [r5, #0x80]
0042ee04  78 70 85 e5                                      str r7, [r5, #0x78]
0042ee08  74 80 85 e5                                      str r8, [r5, #0x74]
0042ee0c  a4 ff ff ea                                      b #0x42eca4
0042ee10  03 00 a0 e1                                      mov r0, r3
0042ee14  de c1 fb eb                                      bl #0x31f594
0042ee18  98 31 d0 e5                                      ldrb r3, [r0, #0x198]
0042ee1c  00 00 53 e3                                      cmp r3, #0
0042ee20  c1 ff ff 0a                                      beq #0x42ed2c
0042ee24  b3 ff ff ea                                      b #0x42ecf8
0042ee28  e8 bf ff eb                                      bl #0x41edd0
0042ee2c  73 bf ff eb                                      bl #0x41ec00
0042ee30  b9 b0 ff eb                                      bl #0x41b11c
0042ee34  51 ae ff eb                                      bl #0x41a780
0042ee38  c2 ff ff ea                                      b #0x42ed48
0042ee3c  33 7d fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0042ee40  7c 60 56 00 c8 43 00 00 ac 40 00 00 e0 b6 49 00  .byte 0x7c, 0x60, 0x56, 0x00, 0xc8, 0x43, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0xb6, 0x49, 0x00
0042ee50  f4 37 00 00 dc b6 49 00 b4 b6 49 00 54 b4 49 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xdc, 0xb6, 0x49, 0x00, 0xb4, 0xb6, 0x49, 0x00, 0x54, 0xb4, 0x49, 0x00
0042ee60  28 b6 49 00 e0 b5 49 00 84 08 00 00 e8 b5 49 00  .byte 0x28, 0xb6, 0x49, 0x00, 0xe0, 0xb5, 0x49, 0x00, 0x84, 0x08, 0x00, 0x00, 0xe8, 0xb5, 0x49, 0x00
0042ee70  6c 12 49 00 1c b5 49 00 24 12 49 00 ec b4 49 00  .byte 0x6c, 0x12, 0x49, 0x00, 0x1c, 0xb5, 0x49, 0x00, 0x24, 0x12, 0x49, 0x00, 0xec, 0xb4, 0x49, 0x00
0042ee80  88 b4 49 00 64 b4 49 00 70 b4 49 00 08 b4 49 00  .byte 0x88, 0xb4, 0x49, 0x00, 0x64, 0xb4, 0x49, 0x00, 0x70, 0xb4, 0x49, 0x00, 0x08, 0xb4, 0x49, 0x00
0042ee90  54 b3 49 00                                      .byte 0x54, 0xb3, 0x49, 0x00

; FUNCTION 0x0042ee94, declared_size=292, range_size=292, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager12RegisterMenuEP8MenuBase
; demangled: MenuManager::RegisterMenu(MenuBase*)
; decoder-mode: arm
0042ee94  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0042ee98  08 51 9f e5                                      ldr r5, [pc, #0x108]
0042ee9c  08 61 9f e5                                      ldr r6, [pc, #0x108]
0042eea0  28 d0 4d e2                                      sub sp, sp, #0x28
0042eea4  05 50 8f e0                                      add r5, pc, r5
0042eea8  06 30 95 e7                                      ldr r3, [r5, r6]
0042eeac  04 10 8d e5                                      str r1, [sp, #4]
0042eeb0  00 70 a0 e1                                      mov r7, r0
0042eeb4  00 30 93 e5                                      ldr r3, [r3]
0042eeb8  00 80 a0 e3                                      mov r8, #0
0042eebc  24 30 8d e5                                      str r3, [sp, #0x24]
0042eec0  f4 30 97 e5                                      ldr r3, [r7, #0xf4]
0042eec4  08 31 83 e0                                      add r3, r3, r8, lsl #2
0042eec8  34 41 93 e5                                      ldr r4, [r3, #0x134]
0042eecc  00 00 54 e3                                      cmp r4, #0
0042eed0  16 00 00 0a                                      beq #0x42ef30
0042eed4  04 10 9d e5                                      ldr r1, [sp, #4]
0042eed8  04 00 a0 e1                                      mov r0, r4
0042eedc  08 10 81 e2                                      add r1, r1, #8
0042eee0  9e e8 0d eb                                      bl #0x7a9160
0042eee4  00 00 50 e3                                      cmp r0, #0
0042eee8  10 00 00 0a                                      beq #0x42ef30
0042eeec  68 10 97 e5                                      ldr r1, [r7, #0x68]
0042eef0  6c 30 97 e5                                      ldr r3, [r7, #0x6c]
0042eef4  03 00 51 e1                                      cmp r1, r3
0042eef8  25 00 00 0a                                      beq #0x42ef94
0042eefc  04 30 9d e5                                      ldr r3, [sp, #4]
0042ef00  00 30 81 e5                                      str r3, [r1]
0042ef04  68 30 97 e5                                      ldr r3, [r7, #0x68]
0042ef08  04 30 83 e2                                      add r3, r3, #4
0042ef0c  68 30 87 e5                                      str r3, [r7, #0x68]
0042ef10  00 20 a0 e3                                      mov r2, #0
0042ef14  04 00 a0 e1                                      mov r0, r4
0042ef18  04 10 9d e5                                      ldr r1, [sp, #4]
0042ef1c  0b fc 0d eb                                      bl #0x7adf50
0042ef20  04 30 9d e5                                      ldr r3, [sp, #4]
0042ef24  01 20 a0 e3                                      mov r2, #1
0042ef28  7c 20 c3 e5                                      strb r2, [r3, #0x7c]
0042ef2c  11 00 00 ea                                      b #0x42ef78
0042ef30  01 80 88 e2                                      add r8, r8, #1
0042ef34  04 00 58 e3                                      cmp r8, #4
0042ef38  e0 ff ff 1a                                      bne #0x42eec0
0042ef3c  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0042ef40  0c 40 8d e2                                      add r4, sp, #0xc
0042ef44  03 70 95 e7                                      ldr r7, [r5, r3]
0042ef48  07 00 a0 e1                                      mov r0, r7
0042ef4c  4d 22 fc eb                                      bl #0x337888
0042ef50  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0042ef54  08 20 8d e2                                      add r2, sp, #8
0042ef58  04 00 a0 e1                                      mov r0, r4
0042ef5c  01 10 8f e0                                      add r1, pc, r1
0042ef60  61 94 fb eb                                      bl #0x3140ec
0042ef64  07 00 a0 e1                                      mov r0, r7
0042ef68  04 10 a0 e1                                      mov r1, r4
0042ef6c  c5 22 fc eb                                      bl #0x337a88
0042ef70  04 00 a0 e1                                      mov r0, r4
0042ef74  b6 a4 fb eb                                      bl #0x318254
0042ef78  06 30 95 e7                                      ldr r3, [r5, r6]
0042ef7c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0042ef80  00 30 93 e5                                      ldr r3, [r3]
0042ef84  03 00 52 e1                                      cmp r2, r3
0042ef88  05 00 00 1a                                      bne #0x42efa4
0042ef8c  28 d0 8d e2                                      add sp, sp, #0x28
0042ef90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0042ef94  64 00 87 e2                                      add r0, r7, #0x64
0042ef98  04 20 8d e2                                      add r2, sp, #4
0042ef9c  db fb ff eb                                      bl #0x42df10
0042efa0  da ff ff ea                                      b #0x42ef10
0042efa4  d9 7c fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0042efa8  ec 5b 56 00 ac 40 00 00 84 08 00 00 7c b1 49 00  .byte 0xec, 0x5b, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x7c, 0xb1, 0x49, 0x00

; FUNCTION 0x0042efb8, declared_size=844, range_size=844, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager8PostLoadEv
; demangled: MenuManager::PostLoad()
; decoder-mode: arm
0042efb8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0042efbc  20 93 9f e5                                      ldr sb, [pc, #0x320]
0042efc0  20 23 9f e5                                      ldr r2, [pc, #0x320]
0042efc4  84 d0 4d e2                                      sub sp, sp, #0x84
0042efc8  09 90 8f e0                                      add sb, pc, sb
0042efcc  02 30 99 e7                                      ldr r3, [sb, r2]
0042efd0  20 20 8d e5                                      str r2, [sp, #0x20]
0042efd4  10 23 9f e5                                      ldr r2, [pc, #0x310]
0042efd8  00 30 93 e5                                      ldr r3, [r3]
0042efdc  04 00 8d e5                                      str r0, [sp, #4]
0042efe0  28 20 8d e5                                      str r2, [sp, #0x28]
0042efe4  7c 30 8d e5                                      str r3, [sp, #0x7c]
0042efe8  00 33 9f e5                                      ldr r3, [pc, #0x300]
0042efec  03 30 8f e0                                      add r3, pc, r3
0042eff0  24 30 8d e5                                      str r3, [sp, #0x24]
0042eff4  f8 32 9f e5                                      ldr r3, [pc, #0x2f8]
0042eff8  03 30 8f e0                                      add r3, pc, r3
0042effc  08 30 8d e5                                      str r3, [sp, #8]
0042f000  f0 32 9f e5                                      ldr r3, [pc, #0x2f0]
0042f004  03 30 8f e0                                      add r3, pc, r3
0042f008  14 30 8d e5                                      str r3, [sp, #0x14]
0042f00c  00 30 a0 e3                                      mov r3, #0
0042f010  18 30 8d e5                                      str r3, [sp, #0x18]
0042f014  04 20 9d e5                                      ldr r2, [sp, #4]
0042f018  f4 30 92 e5                                      ldr r3, [r2, #0xf4]
0042f01c  18 20 9d e5                                      ldr r2, [sp, #0x18]
0042f020  02 31 83 e0                                      add r3, r3, r2, lsl #2
0042f024  34 41 93 e5                                      ldr r4, [r3, #0x134]
0042f028  00 00 54 e3                                      cmp r4, #0
0042f02c  35 00 00 0a                                      beq #0x42f108
0042f030  04 00 a0 e1                                      mov r0, r4
0042f034  19 e3 0d eb                                      bl #0x7a7ca0
0042f038  00 50 a0 e3                                      mov r5, #0
0042f03c  00 10 a0 e1                                      mov r1, r0
0042f040  24 20 9d e5                                      ldr r2, [sp, #0x24]
0042f044  04 00 a0 e1                                      mov r0, r4
0042f048  05 30 a0 e1                                      mov r3, r5
0042f04c  ed e6 0d eb                                      bl #0x7a8c08
0042f050  34 50 8d e5                                      str r5, [sp, #0x34]
0042f054  38 50 8d e5                                      str r5, [sp, #0x38]
0042f058  3c 50 8d e5                                      str r5, [sp, #0x3c]
0042f05c  40 50 cd e5                                      strb r5, [sp, #0x40]
0042f060  04 60 90 e5                                      ldr r6, [r0, #4]
0042f064  00 70 a0 e1                                      mov r7, r0
0042f068  05 00 56 e1                                      cmp r6, r5
0042f06c  32 00 00 aa                                      bge #0x42f13c
0042f070  34 30 8d e2                                      add r3, sp, #0x34
0042f074  38 60 8d e5                                      str r6, [sp, #0x38]
0042f078  2c 30 8d e5                                      str r3, [sp, #0x2c]
0042f07c  04 00 a0 e1                                      mov r0, r4
0042f080  06 e3 0d eb                                      bl #0x7a7ca0
0042f084  28 30 9d e5                                      ldr r3, [sp, #0x28]
0042f088  00 10 a0 e1                                      mov r1, r0
0042f08c  04 00 a0 e1                                      mov r0, r4
0042f090  03 20 8f e0                                      add r2, pc, r3
0042f094  00 30 a0 e3                                      mov r3, #0
0042f098  da e6 0d eb                                      bl #0x7a8c08
0042f09c  04 30 90 e5                                      ldr r3, [r0, #4]
0042f0a0  00 60 a0 e1                                      mov r6, r0
0042f0a4  00 00 53 e3                                      cmp r3, #0
0042f0a8  0e 00 00 da                                      ble #0x42f0e8
0042f0ac  48 72 9f e5                                      ldr r7, [pc, #0x248]
0042f0b0  00 50 a0 e3                                      mov r5, #0
0042f0b4  00 30 96 e5                                      ldr r3, [r6]
0042f0b8  04 00 a0 e1                                      mov r0, r4
0042f0bc  05 81 93 e7                                      ldr r8, [r3, r5, lsl #2]
0042f0c0  f9 e2 0d eb                                      bl #0x7a7cac
0042f0c4  08 10 a0 e1                                      mov r1, r8
0042f0c8  00 30 a0 e1                                      mov r3, r0
0042f0cc  07 20 99 e7                                      ldr r2, [sb, r7]
0042f0d0  04 00 a0 e1                                      mov r0, r4
0042f0d4  69 e3 0d eb                                      bl #0x7a7e80
0042f0d8  04 30 96 e5                                      ldr r3, [r6, #4]
0042f0dc  01 50 85 e2                                      add r5, r5, #1
0042f0e0  03 00 55 e1                                      cmp r5, r3
0042f0e4  f2 ff ff ba                                      blt #0x42f0b4
0042f0e8  38 30 9d e5                                      ldr r3, [sp, #0x38]
0042f0ec  00 00 53 e3                                      cmp r3, #0
0042f0f0  71 00 00 da                                      ble #0x42f2bc
0042f0f4  00 30 a0 e3                                      mov r3, #0
0042f0f8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0042f0fc  03 10 a0 e1                                      mov r1, r3
0042f100  38 30 8d e5                                      str r3, [sp, #0x38]
0042f104  42 93 ff eb                                      bl #0x413e14
0042f108  18 20 9d e5                                      ldr r2, [sp, #0x18]
0042f10c  01 20 82 e2                                      add r2, r2, #1
0042f110  04 00 52 e3                                      cmp r2, #4
0042f114  18 20 8d e5                                      str r2, [sp, #0x18]
0042f118  bd ff ff 1a                                      bne #0x42f014
0042f11c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0042f120  02 30 99 e7                                      ldr r3, [sb, r2]
0042f124  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
0042f128  00 30 93 e5                                      ldr r3, [r3]
0042f12c  03 00 52 e1                                      cmp r2, r3
0042f130  6a 00 00 1a                                      bne #0x42f2e0
0042f134  84 d0 8d e2                                      add sp, sp, #0x84
0042f138  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0042f13c  cb ff ff 0a                                      beq #0x42f070
0042f140  ca ff ff da                                      ble #0x42f070
0042f144  34 30 8d e2                                      add r3, sp, #0x34
0042f148  03 00 a0 e1                                      mov r0, r3
0042f14c  c6 10 86 e0                                      add r1, r6, r6, asr #1
0042f150  2c 30 8d e5                                      str r3, [sp, #0x2c]
0042f154  2e 93 ff eb                                      bl #0x413e14
0042f158  05 20 a0 e1                                      mov r2, r5
0042f15c  34 30 9d e5                                      ldr r3, [sp, #0x34]
0042f160  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
0042f164  01 50 85 e2                                      add r5, r5, #1
0042f168  06 00 55 e1                                      cmp r5, r6
0042f16c  fa ff ff 1a                                      bne #0x42f15c
0042f170  38 50 8d e5                                      str r5, [sp, #0x38]
0042f174  00 30 97 e5                                      ldr r3, [r7]
0042f178  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
0042f17c  34 30 9d e5                                      ldr r3, [sp, #0x34]
0042f180  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
0042f184  38 30 9d e5                                      ldr r3, [sp, #0x38]
0042f188  01 20 82 e2                                      add r2, r2, #1
0042f18c  03 00 52 e1                                      cmp r2, r3
0042f190  f7 ff ff ba                                      blt #0x42f174
0042f194  00 00 53 e3                                      cmp r3, #0
0042f198  b7 ff ff da                                      ble #0x42f07c
0042f19c  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
0042f1a0  44 30 8d e2                                      add r3, sp, #0x44
0042f1a4  00 50 a0 e3                                      mov r5, #0
0042f1a8  0c 20 8d e5                                      str r2, [sp, #0xc]
0042f1ac  64 60 8d e2                                      add r6, sp, #0x64
0042f1b0  02 a0 99 e7                                      ldr sl, [sb, r2]
0042f1b4  48 b0 8d e2                                      add fp, sp, #0x48
0042f1b8  4c 80 8d e2                                      add r8, sp, #0x4c
0042f1bc  10 30 8d e5                                      str r3, [sp, #0x10]
0042f1c0  1c 40 8d e5                                      str r4, [sp, #0x1c]
0042f1c4  10 00 00 ea                                      b #0x42f20c
0042f1c8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0042f1cc  01 50 85 e2                                      add r5, r5, #1
0042f1d0  03 40 99 e7                                      ldr r4, [sb, r3]
0042f1d4  04 00 a0 e1                                      mov r0, r4
0042f1d8  aa 21 fc eb                                      bl #0x337888
0042f1dc  10 20 9d e5                                      ldr r2, [sp, #0x10]
0042f1e0  14 10 9d e5                                      ldr r1, [sp, #0x14]
0042f1e4  08 00 a0 e1                                      mov r0, r8
0042f1e8  bf 93 fb eb                                      bl #0x3140ec
0042f1ec  08 10 a0 e1                                      mov r1, r8
0042f1f0  04 00 a0 e1                                      mov r0, r4
0042f1f4  23 22 fc eb                                      bl #0x337a88
0042f1f8  08 00 a0 e1                                      mov r0, r8
0042f1fc  14 a4 fb eb                                      bl #0x318254
0042f200  38 30 9d e5                                      ldr r3, [sp, #0x38]
0042f204  03 00 55 e1                                      cmp r5, r3
0042f208  29 00 00 aa                                      bge #0x42f2b4
0042f20c  34 30 9d e5                                      ldr r3, [sp, #0x34]
0042f210  0a 00 a0 e1                                      mov r0, sl
0042f214  05 41 93 e7                                      ldr r4, [r3, r5, lsl #2]
0042f218  9a 21 fc eb                                      bl #0x337888
0042f21c  0b 20 a0 e1                                      mov r2, fp
0042f220  08 10 9d e5                                      ldr r1, [sp, #8]
0042f224  06 00 a0 e1                                      mov r0, r6
0042f228  af 93 fb eb                                      bl #0x3140ec
0042f22c  06 10 a0 e1                                      mov r1, r6
0042f230  0a 00 a0 e1                                      mov r0, sl
0042f234  13 22 fc eb                                      bl #0x337a88
0042f238  06 00 a0 e1                                      mov r0, r6
0042f23c  04 a4 fb eb                                      bl #0x318254
0042f240  44 10 94 e5                                      ldr r1, [r4, #0x44]
0042f244  04 00 9d e5                                      ldr r0, [sp, #4]
0042f248  d0 30 d1 e1                                      ldrsb r3, [r1]
0042f24c  01 00 73 e3                                      cmn r3, #1
0042f250  01 10 81 12                                      addne r1, r1, #1
0042f254  0c 10 91 05                                      ldreq r1, [r1, #0xc]
0042f258  e4 f7 ff eb                                      bl #0x42d1f0
0042f25c  00 00 50 e3                                      cmp r0, #0
0042f260  d8 ff ff 1a                                      bne #0x42f1c8
0042f264  44 70 94 e5                                      ldr r7, [r4, #0x44]
0042f268  08 10 a0 e3                                      mov r1, #8
0042f26c  c4 00 a0 e3                                      mov r0, #0xc4
0042f270  d0 30 d7 e1                                      ldrsb r3, [r7]
0042f274  01 50 85 e2                                      add r5, r5, #1
0042f278  01 00 73 e3                                      cmn r3, #1
0042f27c  01 70 87 12                                      addne r7, r7, #1
0042f280  0c 70 97 05                                      ldreq r7, [r7, #0xc]
0042f284  b9 84 fb eb                                      bl #0x310570
0042f288  07 10 a0 e1                                      mov r1, r7
0042f28c  00 40 a0 e1                                      mov r4, r0
0042f290  d1 dd ff eb                                      bl #0x4269dc
0042f294  01 20 a0 e3                                      mov r2, #1
0042f298  7d 20 c4 e5                                      strb r2, [r4, #0x7d]
0042f29c  fa f5 ff eb                                      bl #0x42ca8c
0042f2a0  04 10 a0 e1                                      mov r1, r4
0042f2a4  fa fe ff eb                                      bl #0x42ee94
0042f2a8  38 30 9d e5                                      ldr r3, [sp, #0x38]
0042f2ac  03 00 55 e1                                      cmp r5, r3
0042f2b0  d5 ff ff ba                                      blt #0x42f20c
0042f2b4  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
0042f2b8  6f ff ff ea                                      b #0x42f07c
0042f2bc  8c ff ff aa                                      bge #0x42f0f4
0042f2c0  03 21 a0 e1                                      lsl r2, r3, #2
0042f2c4  00 00 a0 e3                                      mov r0, #0
0042f2c8  34 10 9d e5                                      ldr r1, [sp, #0x34]
0042f2cc  01 30 93 e2                                      adds r3, r3, #1
0042f2d0  02 00 81 e7                                      str r0, [r1, r2]
0042f2d4  04 20 82 e2                                      add r2, r2, #4
0042f2d8  fa ff ff 1a                                      bne #0x42f2c8
0042f2dc  84 ff ff ea                                      b #0x42f0f4
0042f2e0  0a 7c fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0042f2e4  c8 5a 56 00 ac 40 00 00 68 b1 49 00 04 b2 49 00  .byte 0xc8, 0x5a, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0x68, 0xb1, 0x49, 0x00, 0x04, 0xb2, 0x49, 0x00
0042f2f4  e0 b0 49 00 d4 b0 49 00 20 37 00 00 84 08 00 00  .byte 0xe0, 0xb0, 0x49, 0x00, 0xd4, 0xb0, 0x49, 0x00, 0x20, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00

; FUNCTION 0x0042f304, declared_size=6096, range_size=6096, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager4InitEv
; demangled: MenuManager::Init()
; decoder-mode: arm
0042f304  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0042f308  4c 52 9f e5                                      ldr r5, [pc, #0x24c]
0042f30c  bc 60 90 e5                                      ldr r6, [r0, #0xbc]
0042f310  0c d0 4d e2                                      sub sp, sp, #0xc
0042f314  00 40 a0 e1                                      mov r4, r0
0042f318  05 50 8f e0                                      add r5, pc, r5
0042f31c  1a 00 56 e3                                      cmp r6, #0x1a
0042f320  06 f1 8f 90                                      addls pc, pc, r6, lsl #2
0042f324  4f 00 00 ea                                      b #0x42f468
0042f328  19 00 00 ea                                      b #0x42f394
0042f32c  55 00 00 ea                                      b #0x42f488
0042f330  17 00 00 ea                                      b #0x42f394
0042f334  16 00 00 ea                                      b #0x42f394
0042f338  59 00 00 ea                                      b #0x42f4a4
0042f33c  6b 00 00 ea                                      b #0x42f4f0
0042f340  48 00 00 ea                                      b #0x42f468
0042f344  81 00 00 ea                                      b #0x42f550
0042f348  46 00 00 ea                                      b #0x42f468
0042f34c  52 05 00 ea                                      b #0x43089c
0042f350  44 00 00 ea                                      b #0x42f468
0042f354  63 05 00 ea                                      b #0x4308e8
0042f358  42 00 00 ea                                      b #0x42f468
0042f35c  9e 05 00 ea                                      b #0x4309dc
0042f360  a0 05 00 ea                                      b #0x4309e8
0042f364  3f 00 00 ea                                      b #0x42f468
0042f368  3e 00 00 ea                                      b #0x42f468
0042f36c  a6 05 00 ea                                      b #0x430a0c
0042f370  41 00 00 ea                                      b #0x42f47c
0042f374  9e 05 00 ea                                      b #0x4309f4
0042f378  a0 05 00 ea                                      b #0x430a00
0042f37c  39 00 00 ea                                      b #0x42f468
0042f380  38 00 00 ea                                      b #0x42f468
0042f384  5c 05 00 ea                                      b #0x4308fc
0042f388  46 05 00 ea                                      b #0x4308a8
0042f38c  da 01 00 ea                                      b #0x42fafc
0042f390  5b 00 00 ea                                      b #0x42f504
0042f394  f4 20 90 e5                                      ldr r2, [r0, #0xf4]
0042f398  4c 70 86 e2                                      add r7, r6, #0x4c
0042f39c  00 30 a0 e3                                      mov r3, #0
0042f3a0  07 21 82 e0                                      add r2, r2, r7, lsl #2
0042f3a4  04 30 82 e5                                      str r3, [r2, #4]
0042f3a8  f4 20 90 e5                                      ldr r2, [r0, #0xf4]
0042f3ac  ac 01 9f e5                                      ldr r0, [pc, #0x1ac]
0042f3b0  50 10 86 e2                                      add r1, r6, #0x50
0042f3b4  01 21 82 e0                                      add r2, r2, r1, lsl #2
0042f3b8  00 a0 95 e7                                      ldr sl, [r5, r0]
0042f3bc  04 30 82 e5                                      str r3, [r2, #4]
0042f3c0  9c 81 9f e5                                      ldr r8, [pc, #0x19c]
0042f3c4  10 30 9a e5                                      ldr r3, [sl, #0x10]
0042f3c8  08 80 8f e0                                      add r8, pc, r8
0042f3cc  34 30 93 e5                                      ldr r3, [r3, #0x34]
0042f3d0  06 91 98 e7                                      ldr sb, [r8, r6, lsl #2]
0042f3d4  03 00 a0 e1                                      mov r0, r3
0042f3d8  09 10 a0 e1                                      mov r1, sb
0042f3dc  00 30 93 e5                                      ldr r3, [r3]
0042f3e0  0f e0 a0 e1                                      mov lr, pc
0042f3e4  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
0042f3e8  00 00 50 e3                                      cmp r0, #0
0042f3ec  28 05 00 0a                                      beq #0x430894
0042f3f0  70 31 9f e5                                      ldr r3, [pc, #0x170]
0042f3f4  56 23 00 e3                                      movw r2, #0x356
0042f3f8  03 30 95 e7                                      ldr r3, [r5, r3]
0042f3fc  00 30 93 e5                                      ldr r3, [r3]
0042f400  02 00 53 e1                                      cmp r3, r2
0042f404  8a 05 00 0a                                      beq #0x430a34
0042f408  0f 0d 53 e3                                      cmp r3, #0x3c0
0042f40c  09 00 00 0a                                      beq #0x42f438
0042f410  32 0e 53 e3                                      cmp r3, #0x320
0042f414  8c 05 00 0a                                      beq #0x430a4c
0042f418  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
0042f41c  3c f8 00 eb                                      bl #0x46d514
0042f420  05 00 50 e3                                      cmp r0, #5
0042f424  9e 05 00 0a                                      beq #0x430aa4
0042f428  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
0042f42c  38 f8 00 eb                                      bl #0x46d514
0042f430  04 00 50 e3                                      cmp r0, #4
0042f434  a0 05 00 0a                                      beq #0x430abc
0042f438  09 10 a0 e1                                      mov r1, sb
0042f43c  f4 00 94 e5                                      ldr r0, [r4, #0xf4]
0042f440  06 20 a0 e1                                      mov r2, r6
0042f444  47 22 00 eb                                      bl #0x437d68
0042f448  03 00 56 e3                                      cmp r6, #3
0042f44c  72 05 00 0a                                      beq #0x430a1c
0042f450  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
0042f454  84 10 a0 e3                                      mov r1, #0x84
0042f458  07 71 83 e0                                      add r7, r3, r7, lsl #2
0042f45c  04 00 97 e5                                      ldr r0, [r7, #4]
0042f460  0c e2 0d eb                                      bl #0x7a7c98
0042f464  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
0042f468  01 60 86 e2                                      add r6, r6, #1
0042f46c  bc 60 84 e5                                      str r6, [r4, #0xbc]
0042f470  00 00 a0 e3                                      mov r0, #0
0042f474  0c d0 8d e2                                      add sp, sp, #0xc
0042f478  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0042f47c  a7 10 00 eb                                      bl #0x433720
0042f480  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
0042f484  f7 ff ff ea                                      b #0x42f468
0042f488  f4 20 90 e5                                      ldr r2, [r0, #0xf4]
0042f48c  00 30 a0 e3                                      mov r3, #0
0042f490  38 31 82 e5                                      str r3, [r2, #0x138]
0042f494  f4 20 90 e5                                      ldr r2, [r0, #0xf4]
0042f498  48 31 82 e5                                      str r3, [r2, #0x148]
0042f49c  bc 60 90 e5                                      ldr r6, [r0, #0xbc]
0042f4a0  f0 ff ff ea                                      b #0x42f468
0042f4a4  49 be ff eb                                      bl #0x41edd0
0042f4a8  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
0042f4ac  40 31 93 e5                                      ldr r3, [r3, #0x140]
0042f4b0  7c 35 80 e5                                      str r3, [r0, #0x57c]
0042f4b4  f1 b8 ff eb                                      bl #0x41d880
0042f4b8  17 af ff eb                                      bl #0x41b11c
0042f4bc  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
0042f4c0  40 31 93 e5                                      ldr r3, [r3, #0x140]
0042f4c4  58 36 80 e5                                      str r3, [r0, #0x658]
0042f4c8  9f a9 ff eb                                      bl #0x419b4c
0042f4cc  6f 92 ff eb                                      bl #0x413e90
0042f4d0  00 50 a0 e1                                      mov r5, r0
0042f4d4  04 00 a0 e1                                      mov r0, r4
0042f4d8  ab f5 ff eb                                      bl #0x42cb8c
0042f4dc  00 10 a0 e1                                      mov r1, r0
0042f4e0  05 00 a0 e1                                      mov r0, r5
0042f4e4  3b 97 ff eb                                      bl #0x4151d8
0042f4e8  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
0042f4ec  dd ff ff ea                                      b #0x42f468
0042f4f0  74 00 9f e5                                      ldr r0, [pc, #0x74]
0042f4f4  00 00 8f e0                                      add r0, pc, r0
0042f4f8  9d c7 fe eb                                      bl #0x3e1374
0042f4fc  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
0042f500  d8 ff ff ea                                      b #0x42f468
0042f504  54 30 9f e5                                      ldr r3, [pc, #0x54]
0042f508  00 20 a0 e1                                      mov r2, r0
0042f50c  05 10 a0 e3                                      mov r1, #5
0042f510  03 50 95 e7                                      ldr r5, [r5, r3]
0042f514  0a 30 a0 e3                                      mov r3, #0xa
0042f518  14 00 95 e5                                      ldr r0, [r5, #0x14]
0042f51c  1f 26 fc eb                                      bl #0x338da0
0042f520  04 10 a0 e3                                      mov r1, #4
0042f524  04 20 a0 e1                                      mov r2, r4
0042f528  0a 30 a0 e3                                      mov r3, #0xa
0042f52c  14 00 95 e5                                      ldr r0, [r5, #0x14]
0042f530  1a 26 fc eb                                      bl #0x338da0
0042f534  14 00 95 e5                                      ldr r0, [r5, #0x14]
0042f538  04 20 a0 e1                                      mov r2, r4
0042f53c  07 10 a0 e3                                      mov r1, #7
0042f540  0a 30 a0 e3                                      mov r3, #0xa
0042f544  15 26 fc eb                                      bl #0x338da0
0042f548  01 00 a0 e3                                      mov r0, #1
0042f54c  c8 ff ff ea                                      b #0x42f474
0042f550  81 f3 ff eb                                      bl #0x42c35c
0042f554  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
0042f558  c2 ff ff ea                                      b #0x42f468
; mapping-symbol data/literal pool
0042f55c  78 57 56 00 f4 37 00 00 94 76 52 00 c4 25 00 00  .byte 0x78, 0x57, 0x56, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x94, 0x76, 0x52, 0x00, 0xc4, 0x25, 0x00, 0x00
0042f56c  84 68 49 00 38 28 00 00 20 a7 49 00 50 49 00 00  .byte 0x84, 0x68, 0x49, 0x00, 0x38, 0x28, 0x00, 0x00, 0x20, 0xa7, 0x49, 0x00, 0x50, 0x49, 0x00, 0x00
0042f57c  24 a7 49 00 18 3f 00 00 28 a7 49 00 20 1c 00 00  .byte 0x24, 0xa7, 0x49, 0x00, 0x18, 0x3f, 0x00, 0x00, 0x28, 0xa7, 0x49, 0x00, 0x20, 0x1c, 0x00, 0x00
0042f58c  2c a7 49 00 2c 37 00 00 30 a7 49 00 20 0d 00 00  .byte 0x2c, 0xa7, 0x49, 0x00, 0x2c, 0x37, 0x00, 0x00, 0x30, 0xa7, 0x49, 0x00, 0x20, 0x0d, 0x00, 0x00
0042f59c  34 a7 49 00 ec 3b 00 00 40 a7 49 00 c4 18 00 00  .byte 0x34, 0xa7, 0x49, 0x00, 0xec, 0x3b, 0x00, 0x00, 0x40, 0xa7, 0x49, 0x00, 0xc4, 0x18, 0x00, 0x00
0042f5ac  44 a7 49 00 8c 13 00 00 48 a7 49 00 b4 16 00 00  .byte 0x44, 0xa7, 0x49, 0x00, 0x8c, 0x13, 0x00, 0x00, 0x48, 0xa7, 0x49, 0x00, 0xb4, 0x16, 0x00, 0x00
0042f5bc  54 a7 49 00 f0 1f 00 00 58 a7 49 00 84 07 00 00  .byte 0x54, 0xa7, 0x49, 0x00, 0xf0, 0x1f, 0x00, 0x00, 0x58, 0xa7, 0x49, 0x00, 0x84, 0x07, 0x00, 0x00
0042f5cc  64 a7 49 00 80 44 00 00 68 a7 49 00 2c 3b 00 00  .byte 0x64, 0xa7, 0x49, 0x00, 0x80, 0x44, 0x00, 0x00, 0x68, 0xa7, 0x49, 0x00, 0x2c, 0x3b, 0x00, 0x00
0042f5dc  74 a7 49 00 48 49 00 00 80 a7 49 00 a0 17 00 00  .byte 0x74, 0xa7, 0x49, 0x00, 0x48, 0x49, 0x00, 0x00, 0x80, 0xa7, 0x49, 0x00, 0xa0, 0x17, 0x00, 0x00
0042f5ec  84 a7 49 00 44 06 00 00 90 a7 49 00 1c 29 00 00  .byte 0x84, 0xa7, 0x49, 0x00, 0x44, 0x06, 0x00, 0x00, 0x90, 0xa7, 0x49, 0x00, 0x1c, 0x29, 0x00, 0x00
0042f5fc  9c a7 49 00 b8 0c 00 00 a8 a7 49 00 fc 29 00 00  .byte 0x9c, 0xa7, 0x49, 0x00, 0xb8, 0x0c, 0x00, 0x00, 0xa8, 0xa7, 0x49, 0x00, 0xfc, 0x29, 0x00, 0x00
0042f60c  ac a7 49 00 d8 0d 00 00 a8 a7 49 00 f8 2d 00 00  .byte 0xac, 0xa7, 0x49, 0x00, 0xd8, 0x0d, 0x00, 0x00, 0xa8, 0xa7, 0x49, 0x00, 0xf8, 0x2d, 0x00, 0x00
0042f61c  b4 a7 49 00 e8 22 00 00 b8 a7 49 00 14 46 00 00  .byte 0xb4, 0xa7, 0x49, 0x00, 0xe8, 0x22, 0x00, 0x00, 0xb8, 0xa7, 0x49, 0x00, 0x14, 0x46, 0x00, 0x00
0042f62c  bc a7 49 00 74 29 00 00 c8 a7 49 00 f4 33 00 00  .byte 0xbc, 0xa7, 0x49, 0x00, 0x74, 0x29, 0x00, 0x00, 0xc8, 0xa7, 0x49, 0x00, 0xf4, 0x33, 0x00, 0x00
0042f63c  dc a7 49 00 68 41 00 00 e0 a7 49 00 68 3a 00 00  .byte 0xdc, 0xa7, 0x49, 0x00, 0x68, 0x41, 0x00, 0x00, 0xe0, 0xa7, 0x49, 0x00, 0x68, 0x3a, 0x00, 0x00
0042f64c  e4 a7 49 00 d4 48 00 00 e8 a7 49 00 94 22 00 00  .byte 0xe4, 0xa7, 0x49, 0x00, 0xd4, 0x48, 0x00, 0x00, 0xe8, 0xa7, 0x49, 0x00, 0x94, 0x22, 0x00, 0x00
0042f65c  f4 a7 49 00 d4 15 00 00 f8 a7 49 00 d8 2f 00 00  .byte 0xf4, 0xa7, 0x49, 0x00, 0xd4, 0x15, 0x00, 0x00, 0xf8, 0xa7, 0x49, 0x00, 0xd8, 0x2f, 0x00, 0x00
0042f66c  fc a7 49 00 f8 30 00 00 00 a8 49 00 64 2d 00 00  .byte 0xfc, 0xa7, 0x49, 0x00, 0xf8, 0x30, 0x00, 0x00, 0x00, 0xa8, 0x49, 0x00, 0x64, 0x2d, 0x00, 0x00
0042f67c  04 a8 49 00 84 35 00 00 10 a8 49 00 10 41 00 00  .byte 0x04, 0xa8, 0x49, 0x00, 0x84, 0x35, 0x00, 0x00, 0x10, 0xa8, 0x49, 0x00, 0x10, 0x41, 0x00, 0x00
0042f68c  14 a8 49 00 bc 0b 00 00 20 a8 49 00 e4 0f 00 00  .byte 0x14, 0xa8, 0x49, 0x00, 0xbc, 0x0b, 0x00, 0x00, 0x20, 0xa8, 0x49, 0x00, 0xe4, 0x0f, 0x00, 0x00
0042f69c  24 a8 49 00 8c 2f 00 00 28 a8 49 00 f0 3d 00 00  .byte 0x24, 0xa8, 0x49, 0x00, 0x8c, 0x2f, 0x00, 0x00, 0x28, 0xa8, 0x49, 0x00, 0xf0, 0x3d, 0x00, 0x00
0042f6ac  2c a8 49 00 5c 15 00 00 38 a8 49 00 ec 49 00 00  .byte 0x2c, 0xa8, 0x49, 0x00, 0x5c, 0x15, 0x00, 0x00, 0x38, 0xa8, 0x49, 0x00, 0xec, 0x49, 0x00, 0x00
0042f6bc  3c a8 49 00 e0 1c 00 00 40 a8 49 00 ec 38 00 00  .byte 0x3c, 0xa8, 0x49, 0x00, 0xe0, 0x1c, 0x00, 0x00, 0x40, 0xa8, 0x49, 0x00, 0xec, 0x38, 0x00, 0x00
0042f6cc  4c a8 49 00 00 37 00 00 60 a8 49 00 a8 18 00 00  .byte 0x4c, 0xa8, 0x49, 0x00, 0x00, 0x37, 0x00, 0x00, 0x60, 0xa8, 0x49, 0x00, 0xa8, 0x18, 0x00, 0x00
0042f6dc  74 a8 49 00 78 1a 00 00 80 a8 49 00 84 20 00 00  .byte 0x74, 0xa8, 0x49, 0x00, 0x78, 0x1a, 0x00, 0x00, 0x80, 0xa8, 0x49, 0x00, 0x84, 0x20, 0x00, 0x00
0042f6ec  8c a8 49 00 b4 13 00 00 98 a8 49 00 d0 0a 00 00  .byte 0x8c, 0xa8, 0x49, 0x00, 0xb4, 0x13, 0x00, 0x00, 0x98, 0xa8, 0x49, 0x00, 0xd0, 0x0a, 0x00, 0x00
0042f6fc  a4 a8 49 00 04 0e 00 00 a8 a8 49 00 68 0d 00 00  .byte 0xa4, 0xa8, 0x49, 0x00, 0x04, 0x0e, 0x00, 0x00, 0xa8, 0xa8, 0x49, 0x00, 0x68, 0x0d, 0x00, 0x00
0042f70c  ac a8 49 00 9c 4a 00 00 b0 a8 49 00 80 45 00 00  .byte 0xac, 0xa8, 0x49, 0x00, 0x9c, 0x4a, 0x00, 0x00, 0xb0, 0xa8, 0x49, 0x00, 0x80, 0x45, 0x00, 0x00
0042f71c  bc a8 49 00 ec 22 00 00 c0 a8 49 00 cc 0f 00 00  .byte 0xbc, 0xa8, 0x49, 0x00, 0xec, 0x22, 0x00, 0x00, 0xc0, 0xa8, 0x49, 0x00, 0xcc, 0x0f, 0x00, 0x00
0042f72c  c4 a8 49 00 c0 06 00 00 d0 a8 49 00 e8 35 00 00  .byte 0xc4, 0xa8, 0x49, 0x00, 0xc0, 0x06, 0x00, 0x00, 0xd0, 0xa8, 0x49, 0x00, 0xe8, 0x35, 0x00, 0x00
0042f73c  dc a8 49 00 f4 39 00 00 e0 a8 49 00 e0 17 00 00  .byte 0xdc, 0xa8, 0x49, 0x00, 0xf4, 0x39, 0x00, 0x00, 0xe0, 0xa8, 0x49, 0x00, 0xe0, 0x17, 0x00, 0x00
0042f74c  ec a8 49 00 7c 44 00 00 f0 a8 49 00 b4 2a 00 00  .byte 0xec, 0xa8, 0x49, 0x00, 0x7c, 0x44, 0x00, 0x00, 0xf0, 0xa8, 0x49, 0x00, 0xb4, 0x2a, 0x00, 0x00
0042f75c  ec a8 49 00 58 3a 00 00 f0 a8 49 00 34 19 00 00  .byte 0xec, 0xa8, 0x49, 0x00, 0x58, 0x3a, 0x00, 0x00, 0xf0, 0xa8, 0x49, 0x00, 0x34, 0x19, 0x00, 0x00
0042f76c  fc a8 49 00 78 41 00 00 00 a9 49 00 e4 44 00 00  .byte 0xfc, 0xa8, 0x49, 0x00, 0x78, 0x41, 0x00, 0x00, 0x00, 0xa9, 0x49, 0x00, 0xe4, 0x44, 0x00, 0x00
0042f77c  04 a9 49 00 ec 4a 00 00 08 a9 49 00 74 34 00 00  .byte 0x04, 0xa9, 0x49, 0x00, 0xec, 0x4a, 0x00, 0x00, 0x08, 0xa9, 0x49, 0x00, 0x74, 0x34, 0x00, 0x00
0042f78c  0c a9 49 00 ac 0a 00 00 10 a9 49 00 8c 42 00 00  .byte 0x0c, 0xa9, 0x49, 0x00, 0xac, 0x0a, 0x00, 0x00, 0x10, 0xa9, 0x49, 0x00, 0x8c, 0x42, 0x00, 0x00
0042f79c  1c a9 49 00 84 4a 00 00 18 a9 49 00 dc 1f 00 00  .byte 0x1c, 0xa9, 0x49, 0x00, 0x84, 0x4a, 0x00, 0x00, 0x18, 0xa9, 0x49, 0x00, 0xdc, 0x1f, 0x00, 0x00
0042f7ac  24 a9 49 00 a4 05 00 00 28 a9 49 00 14 10 00 00  .byte 0x24, 0xa9, 0x49, 0x00, 0xa4, 0x05, 0x00, 0x00, 0x28, 0xa9, 0x49, 0x00, 0x14, 0x10, 0x00, 0x00
0042f7bc  24 a9 49 00 e0 34 00 00 20 a9 49 00 70 3b 00 00  .byte 0x24, 0xa9, 0x49, 0x00, 0xe0, 0x34, 0x00, 0x00, 0x20, 0xa9, 0x49, 0x00, 0x70, 0x3b, 0x00, 0x00
0042f7cc  1c a9 49 00 2c 14 00 00 20 a9 49 00 38 17 00 00  .byte 0x1c, 0xa9, 0x49, 0x00, 0x2c, 0x14, 0x00, 0x00, 0x20, 0xa9, 0x49, 0x00, 0x38, 0x17, 0x00, 0x00
0042f7dc  24 a9 49 00 28 0b 00 00 28 a9 49 00 6c 44 00 00  .byte 0x24, 0xa9, 0x49, 0x00, 0x28, 0x0b, 0x00, 0x00, 0x28, 0xa9, 0x49, 0x00, 0x6c, 0x44, 0x00, 0x00
0042f7ec  2c a9 49 00 40 3f 00 00 30 a9 49 00 08 24 00 00  .byte 0x2c, 0xa9, 0x49, 0x00, 0x40, 0x3f, 0x00, 0x00, 0x30, 0xa9, 0x49, 0x00, 0x08, 0x24, 0x00, 0x00
0042f7fc  44 a9 49 00 30 2c 00 00 48 a9 49 00 8c 25 00 00  .byte 0x44, 0xa9, 0x49, 0x00, 0x30, 0x2c, 0x00, 0x00, 0x48, 0xa9, 0x49, 0x00, 0x8c, 0x25, 0x00, 0x00
0042f80c  44 a9 49 00 38 13 00 00 40 a9 49 00 c0 0b 00 00  .byte 0x44, 0xa9, 0x49, 0x00, 0x38, 0x13, 0x00, 0x00, 0x40, 0xa9, 0x49, 0x00, 0xc0, 0x0b, 0x00, 0x00
0042f81c  3c a9 49 00 90 3e 00 00 40 a9 49 00 a8 2e 00 00  .byte 0x3c, 0xa9, 0x49, 0x00, 0x90, 0x3e, 0x00, 0x00, 0x40, 0xa9, 0x49, 0x00, 0xa8, 0x2e, 0x00, 0x00
0042f82c  44 a9 49 00 10 0c 00 00 40 a9 49 00 f8 21 00 00  .byte 0x44, 0xa9, 0x49, 0x00, 0x10, 0x0c, 0x00, 0x00, 0x40, 0xa9, 0x49, 0x00, 0xf8, 0x21, 0x00, 0x00
0042f83c  44 a9 49 00 5c 21 00 00 40 a9 49 00 64 3b 00 00  .byte 0x44, 0xa9, 0x49, 0x00, 0x5c, 0x21, 0x00, 0x00, 0x40, 0xa9, 0x49, 0x00, 0x64, 0x3b, 0x00, 0x00
0042f84c  44 a9 49 00 fc 42 00 00 48 a9 49 00 8c 12 00 00  .byte 0x44, 0xa9, 0x49, 0x00, 0xfc, 0x42, 0x00, 0x00, 0x48, 0xa9, 0x49, 0x00, 0x8c, 0x12, 0x00, 0x00
0042f85c  4c a9 49 00 7c 22 00 00 50 a9 49 00 a8 21 00 00  .byte 0x4c, 0xa9, 0x49, 0x00, 0x7c, 0x22, 0x00, 0x00, 0x50, 0xa9, 0x49, 0x00, 0xa8, 0x21, 0x00, 0x00
0042f86c  54 a9 49 00 2c 2a 00 00 60 a9 49 00 6c 4a 00 00  .byte 0x54, 0xa9, 0x49, 0x00, 0x2c, 0x2a, 0x00, 0x00, 0x60, 0xa9, 0x49, 0x00, 0x6c, 0x4a, 0x00, 0x00
0042f87c  64 a9 49 00 fc 20 00 00 68 a9 49 00 88 09 00 00  .byte 0x64, 0xa9, 0x49, 0x00, 0xfc, 0x20, 0x00, 0x00, 0x68, 0xa9, 0x49, 0x00, 0x88, 0x09, 0x00, 0x00
0042f88c  74 a9 49 00 60 11 00 00 78 a9 49 00 cc 41 00 00  .byte 0x74, 0xa9, 0x49, 0x00, 0x60, 0x11, 0x00, 0x00, 0x78, 0xa9, 0x49, 0x00, 0xcc, 0x41, 0x00, 0x00
0042f89c  7c a9 49 00 9c 06 00 00 78 a9 49 00 ac 19 00 00  .byte 0x7c, 0xa9, 0x49, 0x00, 0x9c, 0x06, 0x00, 0x00, 0x78, 0xa9, 0x49, 0x00, 0xac, 0x19, 0x00, 0x00
0042f8ac  7c a9 49 00 fc 33 00 00 78 a9 49 00 48 0e 00 00  .byte 0x7c, 0xa9, 0x49, 0x00, 0xfc, 0x33, 0x00, 0x00, 0x78, 0xa9, 0x49, 0x00, 0x48, 0x0e, 0x00, 0x00
0042f8bc  74 a9 49 00 1c 48 00 00 78 a9 49 00 40 3b 00 00  .byte 0x74, 0xa9, 0x49, 0x00, 0x1c, 0x48, 0x00, 0x00, 0x78, 0xa9, 0x49, 0x00, 0x40, 0x3b, 0x00, 0x00
0042f8cc  7c a9 49 00 f8 3b 00 00 90 a9 49 00 20 3a 00 00  .byte 0x7c, 0xa9, 0x49, 0x00, 0xf8, 0x3b, 0x00, 0x00, 0x90, 0xa9, 0x49, 0x00, 0x20, 0x3a, 0x00, 0x00
0042f8dc  94 a9 49 00 cc 29 00 00 98 a9 49 00 60 22 00 00  .byte 0x94, 0xa9, 0x49, 0x00, 0xcc, 0x29, 0x00, 0x00, 0x98, 0xa9, 0x49, 0x00, 0x60, 0x22, 0x00, 0x00
0042f8ec  94 a9 49 00 70 31 00 00 a0 a9 49 00 9c 0e 00 00  .byte 0x94, 0xa9, 0x49, 0x00, 0x70, 0x31, 0x00, 0x00, 0xa0, 0xa9, 0x49, 0x00, 0x9c, 0x0e, 0x00, 0x00
0042f8fc  a4 a9 49 00 58 30 00 00 a0 a9 49 00 ac 34 00 00  .byte 0xa4, 0xa9, 0x49, 0x00, 0x58, 0x30, 0x00, 0x00, 0xa0, 0xa9, 0x49, 0x00, 0xac, 0x34, 0x00, 0x00
0042f90c  9c a9 49 00 bc 22 00 00 a0 a9 49 00 48 19 00 00  .byte 0x9c, 0xa9, 0x49, 0x00, 0xbc, 0x22, 0x00, 0x00, 0xa0, 0xa9, 0x49, 0x00, 0x48, 0x19, 0x00, 0x00
0042f91c  a4 a9 49 00 bc 0d 00 00 a8 a9 49 00 98 2b 00 00  .byte 0xa4, 0xa9, 0x49, 0x00, 0xbc, 0x0d, 0x00, 0x00, 0xa8, 0xa9, 0x49, 0x00, 0x98, 0x2b, 0x00, 0x00
0042f92c  ac a9 49 00 54 43 00 00 b0 a9 49 00 b8 43 00 00  .byte 0xac, 0xa9, 0x49, 0x00, 0x54, 0x43, 0x00, 0x00, 0xb0, 0xa9, 0x49, 0x00, 0xb8, 0x43, 0x00, 0x00
0042f93c  ac a9 49 00 b8 3b 00 00 a8 a9 49 00 d0 06 00 00  .byte 0xac, 0xa9, 0x49, 0x00, 0xb8, 0x3b, 0x00, 0x00, 0xa8, 0xa9, 0x49, 0x00, 0xd0, 0x06, 0x00, 0x00
0042f94c  a4 a9 49 00 b0 32 00 00 a8 a9 49 00 44 10 00 00  .byte 0xa4, 0xa9, 0x49, 0x00, 0xb0, 0x32, 0x00, 0x00, 0xa8, 0xa9, 0x49, 0x00, 0x44, 0x10, 0x00, 0x00
0042f95c  ac a9 49 00 94 39 00 00 b0 a9 49 00 4c 0e 00 00  .byte 0xac, 0xa9, 0x49, 0x00, 0x94, 0x39, 0x00, 0x00, 0xb0, 0xa9, 0x49, 0x00, 0x4c, 0x0e, 0x00, 0x00
0042f96c  b4 a9 49 00 14 17 00 00 b8 a9 49 00 10 20 00 00  .byte 0xb4, 0xa9, 0x49, 0x00, 0x14, 0x17, 0x00, 0x00, 0xb8, 0xa9, 0x49, 0x00, 0x10, 0x20, 0x00, 0x00
0042f97c  bc a9 49 00 94 3a 00 00 c0 a9 49 00 b0 3d 00 00  .byte 0xbc, 0xa9, 0x49, 0x00, 0x94, 0x3a, 0x00, 0x00, 0xc0, 0xa9, 0x49, 0x00, 0xb0, 0x3d, 0x00, 0x00
0042f98c  cc a9 49 00 a8 0f 00 00 d0 a9 49 00 b0 1a 00 00  .byte 0xcc, 0xa9, 0x49, 0x00, 0xa8, 0x0f, 0x00, 0x00, 0xd0, 0xa9, 0x49, 0x00, 0xb0, 0x1a, 0x00, 0x00
0042f99c  dc a9 49 00 c8 1a 00 00 e0 a9 49 00 70 2b 00 00  .byte 0xdc, 0xa9, 0x49, 0x00, 0xc8, 0x1a, 0x00, 0x00, 0xe0, 0xa9, 0x49, 0x00, 0x70, 0x2b, 0x00, 0x00
0042f9ac  f4 a9 49 00 48 4a 00 00 f0 a9 49 00 7c 17 00 00  .byte 0xf4, 0xa9, 0x49, 0x00, 0x48, 0x4a, 0x00, 0x00, 0xf0, 0xa9, 0x49, 0x00, 0x7c, 0x17, 0x00, 0x00
0042f9bc  f4 a9 49 00 8c 08 00 00 f8 a9 49 00 28 21 00 00  .byte 0xf4, 0xa9, 0x49, 0x00, 0x8c, 0x08, 0x00, 0x00, 0xf8, 0xa9, 0x49, 0x00, 0x28, 0x21, 0x00, 0x00
0042f9cc  fc a9 49 00 7c 4a 00 00 00 aa 49 00 08 35 00 00  .byte 0xfc, 0xa9, 0x49, 0x00, 0x7c, 0x4a, 0x00, 0x00, 0x00, 0xaa, 0x49, 0x00, 0x08, 0x35, 0x00, 0x00
0042f9dc  04 aa 49 00 a0 40 00 00 10 aa 49 00 4c 25 00 00  .byte 0x04, 0xaa, 0x49, 0x00, 0xa0, 0x40, 0x00, 0x00, 0x10, 0xaa, 0x49, 0x00, 0x4c, 0x25, 0x00, 0x00
0042f9ec  1c aa 49 00 c8 07 00 00 20 aa 49 00 fc 08 00 00  .byte 0x1c, 0xaa, 0x49, 0x00, 0xc8, 0x07, 0x00, 0x00, 0x20, 0xaa, 0x49, 0x00, 0xfc, 0x08, 0x00, 0x00
0042f9fc  24 aa 49 00 c8 06 00 00 28 aa 49 00 a4 0c 00 00  .byte 0x24, 0xaa, 0x49, 0x00, 0xc8, 0x06, 0x00, 0x00, 0x28, 0xaa, 0x49, 0x00, 0xa4, 0x0c, 0x00, 0x00
0042fa0c  24 aa 49 00 1c 46 00 00 28 aa 49 00 20 2f 00 00  .byte 0x24, 0xaa, 0x49, 0x00, 0x1c, 0x46, 0x00, 0x00, 0x28, 0xaa, 0x49, 0x00, 0x20, 0x2f, 0x00, 0x00
0042fa1c  2c aa 49 00 24 16 00 00 30 aa 49 00 08 30 00 00  .byte 0x2c, 0xaa, 0x49, 0x00, 0x24, 0x16, 0x00, 0x00, 0x30, 0xaa, 0x49, 0x00, 0x08, 0x30, 0x00, 0x00
0042fa2c  34 aa 49 00 d4 4b 00 00 38 aa 49 00 cc 1e 00 00  .byte 0x34, 0xaa, 0x49, 0x00, 0xd4, 0x4b, 0x00, 0x00, 0x38, 0xaa, 0x49, 0x00, 0xcc, 0x1e, 0x00, 0x00
0042fa3c  34 aa 49 00 9c 27 00 00 38 aa 49 00 e4 1a 00 00  .byte 0x34, 0xaa, 0x49, 0x00, 0x9c, 0x27, 0x00, 0x00, 0x38, 0xaa, 0x49, 0x00, 0xe4, 0x1a, 0x00, 0x00
0042fa4c  3c aa 49 00 4c 48 00 00 40 aa 49 00 78 22 00 00  .byte 0x3c, 0xaa, 0x49, 0x00, 0x4c, 0x48, 0x00, 0x00, 0x40, 0xaa, 0x49, 0x00, 0x78, 0x22, 0x00, 0x00
0042fa5c  4c aa 49 00 d8 41 00 00 58 aa 49 00 3c 0f 00 00  .byte 0x4c, 0xaa, 0x49, 0x00, 0xd8, 0x41, 0x00, 0x00, 0x58, 0xaa, 0x49, 0x00, 0x3c, 0x0f, 0x00, 0x00
0042fa6c  5c aa 49 00 b4 18 00 00 60 aa 49 00 ec 15 00 00  .byte 0x5c, 0xaa, 0x49, 0x00, 0xb4, 0x18, 0x00, 0x00, 0x60, 0xaa, 0x49, 0x00, 0xec, 0x15, 0x00, 0x00
0042fa7c  64 aa 49 00 9c 16 00 00 60 aa 49 00 fc 4b 00 00  .byte 0x64, 0xaa, 0x49, 0x00, 0x9c, 0x16, 0x00, 0x00, 0x60, 0xaa, 0x49, 0x00, 0xfc, 0x4b, 0x00, 0x00
0042fa8c  64 aa 49 00 18 4c 00 00 60 aa 49 00 18 0e 00 00  .byte 0x64, 0xaa, 0x49, 0x00, 0x18, 0x4c, 0x00, 0x00, 0x60, 0xaa, 0x49, 0x00, 0x18, 0x0e, 0x00, 0x00
0042fa9c  64 aa 49 00 8c 4a 00 00 68 aa 49 00 5c 23 00 00  .byte 0x64, 0xaa, 0x49, 0x00, 0x8c, 0x4a, 0x00, 0x00, 0x68, 0xaa, 0x49, 0x00, 0x5c, 0x23, 0x00, 0x00
0042faac  74 aa 49 00 48 35 00 00 78 aa 49 00 c0 27 00 00  .byte 0x74, 0xaa, 0x49, 0x00, 0x48, 0x35, 0x00, 0x00, 0x78, 0xaa, 0x49, 0x00, 0xc0, 0x27, 0x00, 0x00
0042fabc  7c aa 49 00 14 1b 00 00 80 aa 49 00 74 39 00 00  .byte 0x7c, 0xaa, 0x49, 0x00, 0x14, 0x1b, 0x00, 0x00, 0x80, 0xaa, 0x49, 0x00, 0x74, 0x39, 0x00, 0x00
0042facc  8c aa 49 00 c0 42 00 00 90 aa 49 00 a0 aa 49 00  .byte 0x8c, 0xaa, 0x49, 0x00, 0xc0, 0x42, 0x00, 0x00, 0x90, 0xaa, 0x49, 0x00, 0xa0, 0xaa, 0x49, 0x00
0042fadc  18 22 00 00 58 48 57 00 a4 24 00 00 bc 98 49 00  .byte 0x18, 0x22, 0x00, 0x00, 0x58, 0x48, 0x57, 0x00, 0xa4, 0x24, 0x00, 0x00, 0xbc, 0x98, 0x49, 0x00
0042faec  10 3d 00 00 50 1a 00 00 68 27 00 00 e0 16 00 00  .byte 0x10, 0x3d, 0x00, 0x00, 0x50, 0x1a, 0x00, 0x00, 0x68, 0x27, 0x00, 0x00, 0xe0, 0x16, 0x00, 0x00
; decoder-mode: arm
0042fafc  94 35 1f e5                                      ldr r3, [pc, #-0x594]
0042fb00  94 05 1f e5                                      ldr r0, [pc, #-0x594]
0042fb04  03 10 95 e7                                      ldr r1, [r5, r3]
0042fb08  00 00 8f e0                                      add r0, pc, r0
0042fb0c  12 fd 0c eb                                      bl #0x76ef5c
0042fb10  a0 35 1f e5                                      ldr r3, [pc, #-0x5a0]
0042fb14  a0 05 1f e5                                      ldr r0, [pc, #-0x5a0]
0042fb18  03 10 95 e7                                      ldr r1, [r5, r3]
0042fb1c  00 00 8f e0                                      add r0, pc, r0
0042fb20  0d fd 0c eb                                      bl #0x76ef5c
0042fb24  ac 35 1f e5                                      ldr r3, [pc, #-0x5ac]
0042fb28  ac 05 1f e5                                      ldr r0, [pc, #-0x5ac]
0042fb2c  03 10 95 e7                                      ldr r1, [r5, r3]
0042fb30  00 00 8f e0                                      add r0, pc, r0
0042fb34  08 fd 0c eb                                      bl #0x76ef5c
0042fb38  b8 35 1f e5                                      ldr r3, [pc, #-0x5b8]
0042fb3c  b8 05 1f e5                                      ldr r0, [pc, #-0x5b8]
0042fb40  03 10 95 e7                                      ldr r1, [r5, r3]
0042fb44  00 00 8f e0                                      add r0, pc, r0
0042fb48  03 fd 0c eb                                      bl #0x76ef5c
0042fb4c  c4 35 1f e5                                      ldr r3, [pc, #-0x5c4]
0042fb50  c4 05 1f e5                                      ldr r0, [pc, #-0x5c4]
0042fb54  03 10 95 e7                                      ldr r1, [r5, r3]
0042fb58  00 00 8f e0                                      add r0, pc, r0
0042fb5c  fe fc 0c eb                                      bl #0x76ef5c
0042fb60  d0 35 1f e5                                      ldr r3, [pc, #-0x5d0]
0042fb64  d0 05 1f e5                                      ldr r0, [pc, #-0x5d0]
0042fb68  03 10 95 e7                                      ldr r1, [r5, r3]
0042fb6c  00 00 8f e0                                      add r0, pc, r0
0042fb70  f9 fc 0c eb                                      bl #0x76ef5c
0042fb74  dc 35 1f e5                                      ldr r3, [pc, #-0x5dc]
0042fb78  dc 05 1f e5                                      ldr r0, [pc, #-0x5dc]
0042fb7c  03 10 95 e7                                      ldr r1, [r5, r3]
0042fb80  00 00 8f e0                                      add r0, pc, r0
0042fb84  f4 fc 0c eb                                      bl #0x76ef5c
0042fb88  e8 35 1f e5                                      ldr r3, [pc, #-0x5e8]
0042fb8c  e8 05 1f e5                                      ldr r0, [pc, #-0x5e8]
0042fb90  03 10 95 e7                                      ldr r1, [r5, r3]
0042fb94  00 00 8f e0                                      add r0, pc, r0
0042fb98  ef fc 0c eb                                      bl #0x76ef5c
0042fb9c  f4 35 1f e5                                      ldr r3, [pc, #-0x5f4]
0042fba0  f4 05 1f e5                                      ldr r0, [pc, #-0x5f4]
0042fba4  03 10 95 e7                                      ldr r1, [r5, r3]
0042fba8  00 00 8f e0                                      add r0, pc, r0
0042fbac  ea fc 0c eb                                      bl #0x76ef5c
0042fbb0  00 36 1f e5                                      ldr r3, [pc, #-0x600]
0042fbb4  00 06 1f e5                                      ldr r0, [pc, #-0x600]
0042fbb8  03 10 95 e7                                      ldr r1, [r5, r3]
0042fbbc  00 00 8f e0                                      add r0, pc, r0
0042fbc0  e5 fc 0c eb                                      bl #0x76ef5c
0042fbc4  0c 36 1f e5                                      ldr r3, [pc, #-0x60c]
0042fbc8  0c 06 1f e5                                      ldr r0, [pc, #-0x60c]
0042fbcc  03 10 95 e7                                      ldr r1, [r5, r3]
0042fbd0  00 00 8f e0                                      add r0, pc, r0
0042fbd4  e0 fc 0c eb                                      bl #0x76ef5c
0042fbd8  18 36 1f e5                                      ldr r3, [pc, #-0x618]
0042fbdc  18 06 1f e5                                      ldr r0, [pc, #-0x618]
0042fbe0  03 10 95 e7                                      ldr r1, [r5, r3]
0042fbe4  00 00 8f e0                                      add r0, pc, r0
0042fbe8  db fc 0c eb                                      bl #0x76ef5c
0042fbec  24 36 1f e5                                      ldr r3, [pc, #-0x624]
0042fbf0  24 06 1f e5                                      ldr r0, [pc, #-0x624]
0042fbf4  03 10 95 e7                                      ldr r1, [r5, r3]
0042fbf8  00 00 8f e0                                      add r0, pc, r0
0042fbfc  d6 fc 0c eb                                      bl #0x76ef5c
0042fc00  30 36 1f e5                                      ldr r3, [pc, #-0x630]
0042fc04  30 06 1f e5                                      ldr r0, [pc, #-0x630]
0042fc08  03 10 95 e7                                      ldr r1, [r5, r3]
0042fc0c  00 00 8f e0                                      add r0, pc, r0
0042fc10  d1 fc 0c eb                                      bl #0x76ef5c
0042fc14  3c 36 1f e5                                      ldr r3, [pc, #-0x63c]
0042fc18  3c 06 1f e5                                      ldr r0, [pc, #-0x63c]
0042fc1c  03 10 95 e7                                      ldr r1, [r5, r3]
0042fc20  00 00 8f e0                                      add r0, pc, r0
0042fc24  cc fc 0c eb                                      bl #0x76ef5c
0042fc28  48 36 1f e5                                      ldr r3, [pc, #-0x648]
0042fc2c  48 06 1f e5                                      ldr r0, [pc, #-0x648]
0042fc30  03 10 95 e7                                      ldr r1, [r5, r3]
0042fc34  00 00 8f e0                                      add r0, pc, r0
0042fc38  c7 fc 0c eb                                      bl #0x76ef5c
0042fc3c  54 36 1f e5                                      ldr r3, [pc, #-0x654]
0042fc40  54 06 1f e5                                      ldr r0, [pc, #-0x654]
0042fc44  03 10 95 e7                                      ldr r1, [r5, r3]
0042fc48  00 00 8f e0                                      add r0, pc, r0
0042fc4c  c2 fc 0c eb                                      bl #0x76ef5c
0042fc50  60 36 1f e5                                      ldr r3, [pc, #-0x660]
0042fc54  60 06 1f e5                                      ldr r0, [pc, #-0x660]
0042fc58  03 10 95 e7                                      ldr r1, [r5, r3]
0042fc5c  00 00 8f e0                                      add r0, pc, r0
0042fc60  bd fc 0c eb                                      bl #0x76ef5c
0042fc64  6c 36 1f e5                                      ldr r3, [pc, #-0x66c]
0042fc68  6c 06 1f e5                                      ldr r0, [pc, #-0x66c]
0042fc6c  03 10 95 e7                                      ldr r1, [r5, r3]
0042fc70  00 00 8f e0                                      add r0, pc, r0
0042fc74  b8 fc 0c eb                                      bl #0x76ef5c
0042fc78  78 36 1f e5                                      ldr r3, [pc, #-0x678]
0042fc7c  78 06 1f e5                                      ldr r0, [pc, #-0x678]
0042fc80  03 10 95 e7                                      ldr r1, [r5, r3]
0042fc84  00 00 8f e0                                      add r0, pc, r0
0042fc88  b3 fc 0c eb                                      bl #0x76ef5c
0042fc8c  84 36 1f e5                                      ldr r3, [pc, #-0x684]
0042fc90  84 06 1f e5                                      ldr r0, [pc, #-0x684]
0042fc94  03 10 95 e7                                      ldr r1, [r5, r3]
0042fc98  00 00 8f e0                                      add r0, pc, r0
0042fc9c  ae fc 0c eb                                      bl #0x76ef5c
0042fca0  90 36 1f e5                                      ldr r3, [pc, #-0x690]
0042fca4  90 06 1f e5                                      ldr r0, [pc, #-0x690]
0042fca8  03 10 95 e7                                      ldr r1, [r5, r3]
0042fcac  00 00 8f e0                                      add r0, pc, r0
0042fcb0  a9 fc 0c eb                                      bl #0x76ef5c
0042fcb4  9c 36 1f e5                                      ldr r3, [pc, #-0x69c]
0042fcb8  9c 06 1f e5                                      ldr r0, [pc, #-0x69c]
0042fcbc  03 10 95 e7                                      ldr r1, [r5, r3]
0042fcc0  00 00 8f e0                                      add r0, pc, r0
0042fcc4  a4 fc 0c eb                                      bl #0x76ef5c
0042fcc8  a8 36 1f e5                                      ldr r3, [pc, #-0x6a8]
0042fccc  a8 06 1f e5                                      ldr r0, [pc, #-0x6a8]
0042fcd0  03 10 95 e7                                      ldr r1, [r5, r3]
0042fcd4  00 00 8f e0                                      add r0, pc, r0
0042fcd8  9f fc 0c eb                                      bl #0x76ef5c
0042fcdc  b4 36 1f e5                                      ldr r3, [pc, #-0x6b4]
0042fce0  b4 06 1f e5                                      ldr r0, [pc, #-0x6b4]
0042fce4  03 10 95 e7                                      ldr r1, [r5, r3]
0042fce8  00 00 8f e0                                      add r0, pc, r0
0042fcec  9a fc 0c eb                                      bl #0x76ef5c
0042fcf0  c0 36 1f e5                                      ldr r3, [pc, #-0x6c0]
0042fcf4  c0 06 1f e5                                      ldr r0, [pc, #-0x6c0]
0042fcf8  03 10 95 e7                                      ldr r1, [r5, r3]
0042fcfc  00 00 8f e0                                      add r0, pc, r0
0042fd00  95 fc 0c eb                                      bl #0x76ef5c
0042fd04  cc 36 1f e5                                      ldr r3, [pc, #-0x6cc]
0042fd08  cc 06 1f e5                                      ldr r0, [pc, #-0x6cc]
0042fd0c  03 10 95 e7                                      ldr r1, [r5, r3]
0042fd10  00 00 8f e0                                      add r0, pc, r0
0042fd14  90 fc 0c eb                                      bl #0x76ef5c
0042fd18  d8 36 1f e5                                      ldr r3, [pc, #-0x6d8]
0042fd1c  d8 06 1f e5                                      ldr r0, [pc, #-0x6d8]
0042fd20  03 10 95 e7                                      ldr r1, [r5, r3]
0042fd24  00 00 8f e0                                      add r0, pc, r0
0042fd28  8b fc 0c eb                                      bl #0x76ef5c
0042fd2c  e4 36 1f e5                                      ldr r3, [pc, #-0x6e4]
0042fd30  e4 06 1f e5                                      ldr r0, [pc, #-0x6e4]
0042fd34  03 10 95 e7                                      ldr r1, [r5, r3]
0042fd38  00 00 8f e0                                      add r0, pc, r0
0042fd3c  86 fc 0c eb                                      bl #0x76ef5c
0042fd40  f0 36 1f e5                                      ldr r3, [pc, #-0x6f0]
0042fd44  f0 06 1f e5                                      ldr r0, [pc, #-0x6f0]
0042fd48  03 10 95 e7                                      ldr r1, [r5, r3]
0042fd4c  00 00 8f e0                                      add r0, pc, r0
0042fd50  81 fc 0c eb                                      bl #0x76ef5c
0042fd54  fc 36 1f e5                                      ldr r3, [pc, #-0x6fc]
0042fd58  fc 06 1f e5                                      ldr r0, [pc, #-0x6fc]
0042fd5c  03 10 95 e7                                      ldr r1, [r5, r3]
0042fd60  00 00 8f e0                                      add r0, pc, r0
0042fd64  7c fc 0c eb                                      bl #0x76ef5c
0042fd68  08 37 1f e5                                      ldr r3, [pc, #-0x708]
0042fd6c  08 07 1f e5                                      ldr r0, [pc, #-0x708]
0042fd70  03 10 95 e7                                      ldr r1, [r5, r3]
0042fd74  00 00 8f e0                                      add r0, pc, r0
0042fd78  77 fc 0c eb                                      bl #0x76ef5c
0042fd7c  14 37 1f e5                                      ldr r3, [pc, #-0x714]
0042fd80  14 07 1f e5                                      ldr r0, [pc, #-0x714]
0042fd84  03 10 95 e7                                      ldr r1, [r5, r3]
0042fd88  00 00 8f e0                                      add r0, pc, r0
0042fd8c  72 fc 0c eb                                      bl #0x76ef5c
0042fd90  20 37 1f e5                                      ldr r3, [pc, #-0x720]
0042fd94  20 07 1f e5                                      ldr r0, [pc, #-0x720]
0042fd98  03 10 95 e7                                      ldr r1, [r5, r3]
0042fd9c  00 00 8f e0                                      add r0, pc, r0
0042fda0  6d fc 0c eb                                      bl #0x76ef5c
0042fda4  2c 37 1f e5                                      ldr r3, [pc, #-0x72c]
0042fda8  2c 07 1f e5                                      ldr r0, [pc, #-0x72c]
0042fdac  03 10 95 e7                                      ldr r1, [r5, r3]
0042fdb0  00 00 8f e0                                      add r0, pc, r0
0042fdb4  68 fc 0c eb                                      bl #0x76ef5c
0042fdb8  38 37 1f e5                                      ldr r3, [pc, #-0x738]
0042fdbc  38 07 1f e5                                      ldr r0, [pc, #-0x738]
0042fdc0  03 10 95 e7                                      ldr r1, [r5, r3]
0042fdc4  00 00 8f e0                                      add r0, pc, r0
0042fdc8  63 fc 0c eb                                      bl #0x76ef5c
0042fdcc  44 37 1f e5                                      ldr r3, [pc, #-0x744]
0042fdd0  44 07 1f e5                                      ldr r0, [pc, #-0x744]
0042fdd4  03 10 95 e7                                      ldr r1, [r5, r3]
0042fdd8  00 00 8f e0                                      add r0, pc, r0
0042fddc  5e fc 0c eb                                      bl #0x76ef5c
0042fde0  50 37 1f e5                                      ldr r3, [pc, #-0x750]
0042fde4  50 07 1f e5                                      ldr r0, [pc, #-0x750]
0042fde8  03 10 95 e7                                      ldr r1, [r5, r3]
0042fdec  00 00 8f e0                                      add r0, pc, r0
0042fdf0  59 fc 0c eb                                      bl #0x76ef5c
0042fdf4  5c 37 1f e5                                      ldr r3, [pc, #-0x75c]
0042fdf8  5c 07 1f e5                                      ldr r0, [pc, #-0x75c]
0042fdfc  03 10 95 e7                                      ldr r1, [r5, r3]
0042fe00  00 00 8f e0                                      add r0, pc, r0
0042fe04  54 fc 0c eb                                      bl #0x76ef5c
0042fe08  68 37 1f e5                                      ldr r3, [pc, #-0x768]
0042fe0c  68 07 1f e5                                      ldr r0, [pc, #-0x768]
0042fe10  03 10 95 e7                                      ldr r1, [r5, r3]
0042fe14  00 00 8f e0                                      add r0, pc, r0
0042fe18  4f fc 0c eb                                      bl #0x76ef5c
0042fe1c  74 37 1f e5                                      ldr r3, [pc, #-0x774]
0042fe20  74 07 1f e5                                      ldr r0, [pc, #-0x774]
0042fe24  03 10 95 e7                                      ldr r1, [r5, r3]
0042fe28  00 00 8f e0                                      add r0, pc, r0
0042fe2c  4a fc 0c eb                                      bl #0x76ef5c
0042fe30  80 37 1f e5                                      ldr r3, [pc, #-0x780]
0042fe34  80 07 1f e5                                      ldr r0, [pc, #-0x780]
0042fe38  03 10 95 e7                                      ldr r1, [r5, r3]
0042fe3c  00 00 8f e0                                      add r0, pc, r0
0042fe40  45 fc 0c eb                                      bl #0x76ef5c
0042fe44  8c 37 1f e5                                      ldr r3, [pc, #-0x78c]
0042fe48  8c 07 1f e5                                      ldr r0, [pc, #-0x78c]
0042fe4c  03 10 95 e7                                      ldr r1, [r5, r3]
0042fe50  00 00 8f e0                                      add r0, pc, r0
0042fe54  40 fc 0c eb                                      bl #0x76ef5c
0042fe58  98 37 1f e5                                      ldr r3, [pc, #-0x798]
0042fe5c  98 07 1f e5                                      ldr r0, [pc, #-0x798]
0042fe60  03 10 95 e7                                      ldr r1, [r5, r3]
0042fe64  00 00 8f e0                                      add r0, pc, r0
0042fe68  3b fc 0c eb                                      bl #0x76ef5c
0042fe6c  a4 37 1f e5                                      ldr r3, [pc, #-0x7a4]
0042fe70  a4 07 1f e5                                      ldr r0, [pc, #-0x7a4]
0042fe74  03 10 95 e7                                      ldr r1, [r5, r3]
0042fe78  00 00 8f e0                                      add r0, pc, r0
0042fe7c  36 fc 0c eb                                      bl #0x76ef5c
0042fe80  b0 37 1f e5                                      ldr r3, [pc, #-0x7b0]
0042fe84  b0 07 1f e5                                      ldr r0, [pc, #-0x7b0]
0042fe88  03 10 95 e7                                      ldr r1, [r5, r3]
0042fe8c  00 00 8f e0                                      add r0, pc, r0
0042fe90  31 fc 0c eb                                      bl #0x76ef5c
0042fe94  bc 37 1f e5                                      ldr r3, [pc, #-0x7bc]
0042fe98  bc 07 1f e5                                      ldr r0, [pc, #-0x7bc]
0042fe9c  03 10 95 e7                                      ldr r1, [r5, r3]
0042fea0  00 00 8f e0                                      add r0, pc, r0
0042fea4  2c fc 0c eb                                      bl #0x76ef5c
0042fea8  c8 37 1f e5                                      ldr r3, [pc, #-0x7c8]
0042feac  c8 07 1f e5                                      ldr r0, [pc, #-0x7c8]
0042feb0  03 10 95 e7                                      ldr r1, [r5, r3]
0042feb4  00 00 8f e0                                      add r0, pc, r0
0042feb8  27 fc 0c eb                                      bl #0x76ef5c
0042febc  d4 37 1f e5                                      ldr r3, [pc, #-0x7d4]
0042fec0  d4 07 1f e5                                      ldr r0, [pc, #-0x7d4]
0042fec4  03 10 95 e7                                      ldr r1, [r5, r3]
0042fec8  00 00 8f e0                                      add r0, pc, r0
0042fecc  22 fc 0c eb                                      bl #0x76ef5c
0042fed0  e0 37 1f e5                                      ldr r3, [pc, #-0x7e0]
0042fed4  e0 07 1f e5                                      ldr r0, [pc, #-0x7e0]
0042fed8  03 10 95 e7                                      ldr r1, [r5, r3]
0042fedc  00 00 8f e0                                      add r0, pc, r0
0042fee0  1d fc 0c eb                                      bl #0x76ef5c
0042fee4  ec 37 1f e5                                      ldr r3, [pc, #-0x7ec]
0042fee8  ec 07 1f e5                                      ldr r0, [pc, #-0x7ec]
0042feec  03 10 95 e7                                      ldr r1, [r5, r3]
0042fef0  00 00 8f e0                                      add r0, pc, r0
0042fef4  18 fc 0c eb                                      bl #0x76ef5c
0042fef8  f8 37 1f e5                                      ldr r3, [pc, #-0x7f8]
0042fefc  f8 07 1f e5                                      ldr r0, [pc, #-0x7f8]
0042ff00  03 10 95 e7                                      ldr r1, [r5, r3]
0042ff04  00 00 8f e0                                      add r0, pc, r0
0042ff08  13 fc 0c eb                                      bl #0x76ef5c
0042ff0c  04 38 1f e5                                      ldr r3, [pc, #-0x804]
0042ff10  04 08 1f e5                                      ldr r0, [pc, #-0x804]
0042ff14  03 10 95 e7                                      ldr r1, [r5, r3]
0042ff18  00 00 8f e0                                      add r0, pc, r0
0042ff1c  0e fc 0c eb                                      bl #0x76ef5c
0042ff20  10 38 1f e5                                      ldr r3, [pc, #-0x810]
0042ff24  10 08 1f e5                                      ldr r0, [pc, #-0x810]
0042ff28  03 10 95 e7                                      ldr r1, [r5, r3]
0042ff2c  00 00 8f e0                                      add r0, pc, r0
0042ff30  09 fc 0c eb                                      bl #0x76ef5c
0042ff34  1c 38 1f e5                                      ldr r3, [pc, #-0x81c]
0042ff38  1c 08 1f e5                                      ldr r0, [pc, #-0x81c]
0042ff3c  03 10 95 e7                                      ldr r1, [r5, r3]
0042ff40  00 00 8f e0                                      add r0, pc, r0
0042ff44  04 fc 0c eb                                      bl #0x76ef5c
0042ff48  28 38 1f e5                                      ldr r3, [pc, #-0x828]
0042ff4c  28 08 1f e5                                      ldr r0, [pc, #-0x828]
0042ff50  03 10 95 e7                                      ldr r1, [r5, r3]
0042ff54  00 00 8f e0                                      add r0, pc, r0
0042ff58  ff fb 0c eb                                      bl #0x76ef5c
0042ff5c  34 38 1f e5                                      ldr r3, [pc, #-0x834]
0042ff60  34 08 1f e5                                      ldr r0, [pc, #-0x834]
0042ff64  03 10 95 e7                                      ldr r1, [r5, r3]
0042ff68  00 00 8f e0                                      add r0, pc, r0
0042ff6c  fa fb 0c eb                                      bl #0x76ef5c
0042ff70  40 38 1f e5                                      ldr r3, [pc, #-0x840]
0042ff74  40 08 1f e5                                      ldr r0, [pc, #-0x840]
0042ff78  03 10 95 e7                                      ldr r1, [r5, r3]
0042ff7c  00 00 8f e0                                      add r0, pc, r0
0042ff80  f5 fb 0c eb                                      bl #0x76ef5c
0042ff84  4c 38 1f e5                                      ldr r3, [pc, #-0x84c]
0042ff88  4c 08 1f e5                                      ldr r0, [pc, #-0x84c]
0042ff8c  03 10 95 e7                                      ldr r1, [r5, r3]
0042ff90  00 00 8f e0                                      add r0, pc, r0
0042ff94  f0 fb 0c eb                                      bl #0x76ef5c
0042ff98  58 38 1f e5                                      ldr r3, [pc, #-0x858]
0042ff9c  58 08 1f e5                                      ldr r0, [pc, #-0x858]
0042ffa0  03 10 95 e7                                      ldr r1, [r5, r3]
0042ffa4  00 00 8f e0                                      add r0, pc, r0
0042ffa8  eb fb 0c eb                                      bl #0x76ef5c
0042ffac  64 38 1f e5                                      ldr r3, [pc, #-0x864]
0042ffb0  64 08 1f e5                                      ldr r0, [pc, #-0x864]
0042ffb4  03 10 95 e7                                      ldr r1, [r5, r3]
0042ffb8  00 00 8f e0                                      add r0, pc, r0
0042ffbc  e6 fb 0c eb                                      bl #0x76ef5c
0042ffc0  70 38 1f e5                                      ldr r3, [pc, #-0x870]
0042ffc4  70 08 1f e5                                      ldr r0, [pc, #-0x870]
0042ffc8  03 10 95 e7                                      ldr r1, [r5, r3]
0042ffcc  00 00 8f e0                                      add r0, pc, r0
0042ffd0  e1 fb 0c eb                                      bl #0x76ef5c
0042ffd4  7c 38 1f e5                                      ldr r3, [pc, #-0x87c]
0042ffd8  7c 08 1f e5                                      ldr r0, [pc, #-0x87c]
0042ffdc  03 10 95 e7                                      ldr r1, [r5, r3]
0042ffe0  00 00 8f e0                                      add r0, pc, r0
0042ffe4  dc fb 0c eb                                      bl #0x76ef5c
0042ffe8  88 38 1f e5                                      ldr r3, [pc, #-0x888]
0042ffec  88 08 1f e5                                      ldr r0, [pc, #-0x888]
0042fff0  03 10 95 e7                                      ldr r1, [r5, r3]
0042fff4  00 00 8f e0                                      add r0, pc, r0
0042fff8  d7 fb 0c eb                                      bl #0x76ef5c
0042fffc  94 38 1f e5                                      ldr r3, [pc, #-0x894]
00430000  94 08 1f e5                                      ldr r0, [pc, #-0x894]
00430004  03 10 95 e7                                      ldr r1, [r5, r3]
00430008  00 00 8f e0                                      add r0, pc, r0
0043000c  d2 fb 0c eb                                      bl #0x76ef5c
00430010  a0 38 1f e5                                      ldr r3, [pc, #-0x8a0]
00430014  a0 08 1f e5                                      ldr r0, [pc, #-0x8a0]
00430018  03 10 95 e7                                      ldr r1, [r5, r3]
0043001c  00 00 8f e0                                      add r0, pc, r0
00430020  cd fb 0c eb                                      bl #0x76ef5c
00430024  ac 38 1f e5                                      ldr r3, [pc, #-0x8ac]
00430028  ac 08 1f e5                                      ldr r0, [pc, #-0x8ac]
0043002c  03 10 95 e7                                      ldr r1, [r5, r3]
00430030  00 00 8f e0                                      add r0, pc, r0
00430034  c8 fb 0c eb                                      bl #0x76ef5c
00430038  b8 38 1f e5                                      ldr r3, [pc, #-0x8b8]
0043003c  b8 08 1f e5                                      ldr r0, [pc, #-0x8b8]
00430040  03 10 95 e7                                      ldr r1, [r5, r3]
00430044  00 00 8f e0                                      add r0, pc, r0
00430048  c3 fb 0c eb                                      bl #0x76ef5c
0043004c  c4 38 1f e5                                      ldr r3, [pc, #-0x8c4]
00430050  c4 08 1f e5                                      ldr r0, [pc, #-0x8c4]
00430054  03 10 95 e7                                      ldr r1, [r5, r3]
00430058  00 00 8f e0                                      add r0, pc, r0
0043005c  be fb 0c eb                                      bl #0x76ef5c
00430060  d0 38 1f e5                                      ldr r3, [pc, #-0x8d0]
00430064  d0 08 1f e5                                      ldr r0, [pc, #-0x8d0]
00430068  03 10 95 e7                                      ldr r1, [r5, r3]
0043006c  00 00 8f e0                                      add r0, pc, r0
00430070  b9 fb 0c eb                                      bl #0x76ef5c
00430074  dc 38 1f e5                                      ldr r3, [pc, #-0x8dc]
00430078  dc 08 1f e5                                      ldr r0, [pc, #-0x8dc]
0043007c  03 10 95 e7                                      ldr r1, [r5, r3]
00430080  00 00 8f e0                                      add r0, pc, r0
00430084  b4 fb 0c eb                                      bl #0x76ef5c
00430088  e8 38 1f e5                                      ldr r3, [pc, #-0x8e8]
0043008c  e8 08 1f e5                                      ldr r0, [pc, #-0x8e8]
00430090  03 10 95 e7                                      ldr r1, [r5, r3]
00430094  00 00 8f e0                                      add r0, pc, r0
00430098  af fb 0c eb                                      bl #0x76ef5c
0043009c  f4 38 1f e5                                      ldr r3, [pc, #-0x8f4]
004300a0  f4 08 1f e5                                      ldr r0, [pc, #-0x8f4]
004300a4  03 10 95 e7                                      ldr r1, [r5, r3]
004300a8  00 00 8f e0                                      add r0, pc, r0
004300ac  aa fb 0c eb                                      bl #0x76ef5c
004300b0  00 39 1f e5                                      ldr r3, [pc, #-0x900]
004300b4  00 09 1f e5                                      ldr r0, [pc, #-0x900]
004300b8  03 10 95 e7                                      ldr r1, [r5, r3]
004300bc  00 00 8f e0                                      add r0, pc, r0
004300c0  a5 fb 0c eb                                      bl #0x76ef5c
004300c4  0c 39 1f e5                                      ldr r3, [pc, #-0x90c]
004300c8  0c 09 1f e5                                      ldr r0, [pc, #-0x90c]
004300cc  03 10 95 e7                                      ldr r1, [r5, r3]
004300d0  00 00 8f e0                                      add r0, pc, r0
004300d4  a0 fb 0c eb                                      bl #0x76ef5c
004300d8  18 39 1f e5                                      ldr r3, [pc, #-0x918]
004300dc  18 09 1f e5                                      ldr r0, [pc, #-0x918]
004300e0  03 10 95 e7                                      ldr r1, [r5, r3]
004300e4  00 00 8f e0                                      add r0, pc, r0
004300e8  9b fb 0c eb                                      bl #0x76ef5c
004300ec  24 39 1f e5                                      ldr r3, [pc, #-0x924]
004300f0  24 09 1f e5                                      ldr r0, [pc, #-0x924]
004300f4  03 10 95 e7                                      ldr r1, [r5, r3]
004300f8  00 00 8f e0                                      add r0, pc, r0
004300fc  96 fb 0c eb                                      bl #0x76ef5c
00430100  30 39 1f e5                                      ldr r3, [pc, #-0x930]
00430104  30 09 1f e5                                      ldr r0, [pc, #-0x930]
00430108  03 10 95 e7                                      ldr r1, [r5, r3]
0043010c  00 00 8f e0                                      add r0, pc, r0
00430110  91 fb 0c eb                                      bl #0x76ef5c
00430114  3c 39 1f e5                                      ldr r3, [pc, #-0x93c]
00430118  3c 09 1f e5                                      ldr r0, [pc, #-0x93c]
0043011c  03 10 95 e7                                      ldr r1, [r5, r3]
00430120  00 00 8f e0                                      add r0, pc, r0
00430124  8c fb 0c eb                                      bl #0x76ef5c
00430128  48 39 1f e5                                      ldr r3, [pc, #-0x948]
0043012c  48 09 1f e5                                      ldr r0, [pc, #-0x948]
00430130  03 10 95 e7                                      ldr r1, [r5, r3]
00430134  00 00 8f e0                                      add r0, pc, r0
00430138  87 fb 0c eb                                      bl #0x76ef5c
0043013c  54 39 1f e5                                      ldr r3, [pc, #-0x954]
00430140  54 09 1f e5                                      ldr r0, [pc, #-0x954]
00430144  03 10 95 e7                                      ldr r1, [r5, r3]
00430148  00 00 8f e0                                      add r0, pc, r0
0043014c  82 fb 0c eb                                      bl #0x76ef5c
00430150  60 39 1f e5                                      ldr r3, [pc, #-0x960]
00430154  60 09 1f e5                                      ldr r0, [pc, #-0x960]
00430158  03 10 95 e7                                      ldr r1, [r5, r3]
0043015c  00 00 8f e0                                      add r0, pc, r0
00430160  7d fb 0c eb                                      bl #0x76ef5c
00430164  6c 39 1f e5                                      ldr r3, [pc, #-0x96c]
00430168  6c 09 1f e5                                      ldr r0, [pc, #-0x96c]
0043016c  03 10 95 e7                                      ldr r1, [r5, r3]
00430170  00 00 8f e0                                      add r0, pc, r0
00430174  78 fb 0c eb                                      bl #0x76ef5c
00430178  78 39 1f e5                                      ldr r3, [pc, #-0x978]
0043017c  78 09 1f e5                                      ldr r0, [pc, #-0x978]
00430180  03 10 95 e7                                      ldr r1, [r5, r3]
00430184  00 00 8f e0                                      add r0, pc, r0
00430188  73 fb 0c eb                                      bl #0x76ef5c
0043018c  84 39 1f e5                                      ldr r3, [pc, #-0x984]
00430190  84 09 1f e5                                      ldr r0, [pc, #-0x984]
00430194  03 10 95 e7                                      ldr r1, [r5, r3]
00430198  00 00 8f e0                                      add r0, pc, r0
0043019c  6e fb 0c eb                                      bl #0x76ef5c
004301a0  90 39 1f e5                                      ldr r3, [pc, #-0x990]
004301a4  90 09 1f e5                                      ldr r0, [pc, #-0x990]
004301a8  03 10 95 e7                                      ldr r1, [r5, r3]
004301ac  00 00 8f e0                                      add r0, pc, r0
004301b0  69 fb 0c eb                                      bl #0x76ef5c
004301b4  9c 39 1f e5                                      ldr r3, [pc, #-0x99c]
004301b8  9c 09 1f e5                                      ldr r0, [pc, #-0x99c]
004301bc  03 10 95 e7                                      ldr r1, [r5, r3]
004301c0  00 00 8f e0                                      add r0, pc, r0
004301c4  64 fb 0c eb                                      bl #0x76ef5c
004301c8  a8 39 1f e5                                      ldr r3, [pc, #-0x9a8]
004301cc  a8 09 1f e5                                      ldr r0, [pc, #-0x9a8]
004301d0  03 10 95 e7                                      ldr r1, [r5, r3]
004301d4  00 00 8f e0                                      add r0, pc, r0
004301d8  5f fb 0c eb                                      bl #0x76ef5c
004301dc  b4 39 1f e5                                      ldr r3, [pc, #-0x9b4]
004301e0  b4 09 1f e5                                      ldr r0, [pc, #-0x9b4]
004301e4  03 10 95 e7                                      ldr r1, [r5, r3]
004301e8  00 00 8f e0                                      add r0, pc, r0
004301ec  5a fb 0c eb                                      bl #0x76ef5c
004301f0  c0 39 1f e5                                      ldr r3, [pc, #-0x9c0]
004301f4  c0 09 1f e5                                      ldr r0, [pc, #-0x9c0]
004301f8  03 10 95 e7                                      ldr r1, [r5, r3]
004301fc  00 00 8f e0                                      add r0, pc, r0
00430200  55 fb 0c eb                                      bl #0x76ef5c
00430204  cc 39 1f e5                                      ldr r3, [pc, #-0x9cc]
00430208  cc 09 1f e5                                      ldr r0, [pc, #-0x9cc]
0043020c  03 10 95 e7                                      ldr r1, [r5, r3]
00430210  00 00 8f e0                                      add r0, pc, r0
00430214  50 fb 0c eb                                      bl #0x76ef5c
00430218  d8 39 1f e5                                      ldr r3, [pc, #-0x9d8]
0043021c  d8 09 1f e5                                      ldr r0, [pc, #-0x9d8]
00430220  03 10 95 e7                                      ldr r1, [r5, r3]
00430224  00 00 8f e0                                      add r0, pc, r0
00430228  4b fb 0c eb                                      bl #0x76ef5c
0043022c  e4 39 1f e5                                      ldr r3, [pc, #-0x9e4]
00430230  e4 09 1f e5                                      ldr r0, [pc, #-0x9e4]
00430234  03 10 95 e7                                      ldr r1, [r5, r3]
00430238  00 00 8f e0                                      add r0, pc, r0
0043023c  46 fb 0c eb                                      bl #0x76ef5c
00430240  f0 39 1f e5                                      ldr r3, [pc, #-0x9f0]
00430244  f0 09 1f e5                                      ldr r0, [pc, #-0x9f0]
00430248  03 10 95 e7                                      ldr r1, [r5, r3]
0043024c  00 00 8f e0                                      add r0, pc, r0
00430250  41 fb 0c eb                                      bl #0x76ef5c
00430254  fc 39 1f e5                                      ldr r3, [pc, #-0x9fc]
00430258  fc 09 1f e5                                      ldr r0, [pc, #-0x9fc]
0043025c  03 10 95 e7                                      ldr r1, [r5, r3]
00430260  00 00 8f e0                                      add r0, pc, r0
00430264  3c fb 0c eb                                      bl #0x76ef5c
00430268  08 3a 1f e5                                      ldr r3, [pc, #-0xa08]
0043026c  08 0a 1f e5                                      ldr r0, [pc, #-0xa08]
00430270  03 10 95 e7                                      ldr r1, [r5, r3]
00430274  00 00 8f e0                                      add r0, pc, r0
00430278  37 fb 0c eb                                      bl #0x76ef5c
0043027c  14 3a 1f e5                                      ldr r3, [pc, #-0xa14]
00430280  14 0a 1f e5                                      ldr r0, [pc, #-0xa14]
00430284  03 10 95 e7                                      ldr r1, [r5, r3]
00430288  00 00 8f e0                                      add r0, pc, r0
0043028c  32 fb 0c eb                                      bl #0x76ef5c
00430290  20 3a 1f e5                                      ldr r3, [pc, #-0xa20]
00430294  20 0a 1f e5                                      ldr r0, [pc, #-0xa20]
00430298  03 10 95 e7                                      ldr r1, [r5, r3]
0043029c  00 00 8f e0                                      add r0, pc, r0
004302a0  2d fb 0c eb                                      bl #0x76ef5c
004302a4  2c 3a 1f e5                                      ldr r3, [pc, #-0xa2c]
004302a8  2c 0a 1f e5                                      ldr r0, [pc, #-0xa2c]
004302ac  03 10 95 e7                                      ldr r1, [r5, r3]
004302b0  00 00 8f e0                                      add r0, pc, r0
004302b4  28 fb 0c eb                                      bl #0x76ef5c
004302b8  38 3a 1f e5                                      ldr r3, [pc, #-0xa38]
004302bc  38 0a 1f e5                                      ldr r0, [pc, #-0xa38]
004302c0  03 10 95 e7                                      ldr r1, [r5, r3]
004302c4  00 00 8f e0                                      add r0, pc, r0
004302c8  23 fb 0c eb                                      bl #0x76ef5c
004302cc  44 3a 1f e5                                      ldr r3, [pc, #-0xa44]
004302d0  44 0a 1f e5                                      ldr r0, [pc, #-0xa44]
004302d4  03 10 95 e7                                      ldr r1, [r5, r3]
004302d8  00 00 8f e0                                      add r0, pc, r0
004302dc  1e fb 0c eb                                      bl #0x76ef5c
004302e0  50 3a 1f e5                                      ldr r3, [pc, #-0xa50]
004302e4  50 0a 1f e5                                      ldr r0, [pc, #-0xa50]
004302e8  03 10 95 e7                                      ldr r1, [r5, r3]
004302ec  00 00 8f e0                                      add r0, pc, r0
004302f0  19 fb 0c eb                                      bl #0x76ef5c
004302f4  5c 3a 1f e5                                      ldr r3, [pc, #-0xa5c]
004302f8  5c 0a 1f e5                                      ldr r0, [pc, #-0xa5c]
004302fc  03 10 95 e7                                      ldr r1, [r5, r3]
00430300  00 00 8f e0                                      add r0, pc, r0
00430304  14 fb 0c eb                                      bl #0x76ef5c
00430308  68 3a 1f e5                                      ldr r3, [pc, #-0xa68]
0043030c  68 0a 1f e5                                      ldr r0, [pc, #-0xa68]
00430310  03 10 95 e7                                      ldr r1, [r5, r3]
00430314  00 00 8f e0                                      add r0, pc, r0
00430318  0f fb 0c eb                                      bl #0x76ef5c
0043031c  74 3a 1f e5                                      ldr r3, [pc, #-0xa74]
00430320  74 0a 1f e5                                      ldr r0, [pc, #-0xa74]
00430324  03 10 95 e7                                      ldr r1, [r5, r3]
00430328  00 00 8f e0                                      add r0, pc, r0
0043032c  0a fb 0c eb                                      bl #0x76ef5c
00430330  80 3a 1f e5                                      ldr r3, [pc, #-0xa80]
00430334  80 0a 1f e5                                      ldr r0, [pc, #-0xa80]
00430338  03 10 95 e7                                      ldr r1, [r5, r3]
0043033c  00 00 8f e0                                      add r0, pc, r0
00430340  05 fb 0c eb                                      bl #0x76ef5c
00430344  8c 3a 1f e5                                      ldr r3, [pc, #-0xa8c]
00430348  8c 0a 1f e5                                      ldr r0, [pc, #-0xa8c]
0043034c  03 10 95 e7                                      ldr r1, [r5, r3]
00430350  00 00 8f e0                                      add r0, pc, r0
00430354  00 fb 0c eb                                      bl #0x76ef5c
00430358  98 3a 1f e5                                      ldr r3, [pc, #-0xa98]
0043035c  98 0a 1f e5                                      ldr r0, [pc, #-0xa98]
00430360  03 10 95 e7                                      ldr r1, [r5, r3]
00430364  00 00 8f e0                                      add r0, pc, r0
00430368  fb fa 0c eb                                      bl #0x76ef5c
0043036c  a4 3a 1f e5                                      ldr r3, [pc, #-0xaa4]
00430370  a4 0a 1f e5                                      ldr r0, [pc, #-0xaa4]
00430374  03 10 95 e7                                      ldr r1, [r5, r3]
00430378  00 00 8f e0                                      add r0, pc, r0
0043037c  f6 fa 0c eb                                      bl #0x76ef5c
00430380  b0 3a 1f e5                                      ldr r3, [pc, #-0xab0]
00430384  b0 0a 1f e5                                      ldr r0, [pc, #-0xab0]
00430388  03 10 95 e7                                      ldr r1, [r5, r3]
0043038c  00 00 8f e0                                      add r0, pc, r0
00430390  f1 fa 0c eb                                      bl #0x76ef5c
00430394  bc 3a 1f e5                                      ldr r3, [pc, #-0xabc]
00430398  bc 0a 1f e5                                      ldr r0, [pc, #-0xabc]
0043039c  03 10 95 e7                                      ldr r1, [r5, r3]
004303a0  00 00 8f e0                                      add r0, pc, r0
004303a4  ec fa 0c eb                                      bl #0x76ef5c
004303a8  c8 3a 1f e5                                      ldr r3, [pc, #-0xac8]
004303ac  c8 0a 1f e5                                      ldr r0, [pc, #-0xac8]
004303b0  03 10 95 e7                                      ldr r1, [r5, r3]
004303b4  00 00 8f e0                                      add r0, pc, r0
004303b8  e7 fa 0c eb                                      bl #0x76ef5c
004303bc  d4 3a 1f e5                                      ldr r3, [pc, #-0xad4]
004303c0  d4 0a 1f e5                                      ldr r0, [pc, #-0xad4]
004303c4  03 10 95 e7                                      ldr r1, [r5, r3]
004303c8  00 00 8f e0                                      add r0, pc, r0
004303cc  e2 fa 0c eb                                      bl #0x76ef5c
004303d0  e0 3a 1f e5                                      ldr r3, [pc, #-0xae0]
004303d4  e0 0a 1f e5                                      ldr r0, [pc, #-0xae0]
004303d8  03 10 95 e7                                      ldr r1, [r5, r3]
004303dc  00 00 8f e0                                      add r0, pc, r0
004303e0  dd fa 0c eb                                      bl #0x76ef5c
004303e4  ec 3a 1f e5                                      ldr r3, [pc, #-0xaec]
004303e8  ec 0a 1f e5                                      ldr r0, [pc, #-0xaec]
004303ec  03 10 95 e7                                      ldr r1, [r5, r3]
004303f0  00 00 8f e0                                      add r0, pc, r0
004303f4  d8 fa 0c eb                                      bl #0x76ef5c
004303f8  f8 3a 1f e5                                      ldr r3, [pc, #-0xaf8]
004303fc  f8 0a 1f e5                                      ldr r0, [pc, #-0xaf8]
00430400  03 10 95 e7                                      ldr r1, [r5, r3]
00430404  00 00 8f e0                                      add r0, pc, r0
00430408  d3 fa 0c eb                                      bl #0x76ef5c
0043040c  04 3b 1f e5                                      ldr r3, [pc, #-0xb04]
00430410  04 0b 1f e5                                      ldr r0, [pc, #-0xb04]
00430414  03 10 95 e7                                      ldr r1, [r5, r3]
00430418  00 00 8f e0                                      add r0, pc, r0
0043041c  ce fa 0c eb                                      bl #0x76ef5c
00430420  10 3b 1f e5                                      ldr r3, [pc, #-0xb10]
00430424  10 0b 1f e5                                      ldr r0, [pc, #-0xb10]
00430428  03 10 95 e7                                      ldr r1, [r5, r3]
0043042c  00 00 8f e0                                      add r0, pc, r0
00430430  c9 fa 0c eb                                      bl #0x76ef5c
00430434  1c 3b 1f e5                                      ldr r3, [pc, #-0xb1c]
00430438  1c 0b 1f e5                                      ldr r0, [pc, #-0xb1c]
0043043c  03 10 95 e7                                      ldr r1, [r5, r3]
00430440  00 00 8f e0                                      add r0, pc, r0
00430444  c4 fa 0c eb                                      bl #0x76ef5c
00430448  28 3b 1f e5                                      ldr r3, [pc, #-0xb28]
0043044c  28 0b 1f e5                                      ldr r0, [pc, #-0xb28]
00430450  03 10 95 e7                                      ldr r1, [r5, r3]
00430454  00 00 8f e0                                      add r0, pc, r0
00430458  bf fa 0c eb                                      bl #0x76ef5c
0043045c  34 3b 1f e5                                      ldr r3, [pc, #-0xb34]
00430460  34 0b 1f e5                                      ldr r0, [pc, #-0xb34]
00430464  03 10 95 e7                                      ldr r1, [r5, r3]
00430468  00 00 8f e0                                      add r0, pc, r0
0043046c  ba fa 0c eb                                      bl #0x76ef5c
00430470  40 3b 1f e5                                      ldr r3, [pc, #-0xb40]
00430474  40 0b 1f e5                                      ldr r0, [pc, #-0xb40]
00430478  03 10 95 e7                                      ldr r1, [r5, r3]
0043047c  00 00 8f e0                                      add r0, pc, r0
00430480  b5 fa 0c eb                                      bl #0x76ef5c
00430484  4c 3b 1f e5                                      ldr r3, [pc, #-0xb4c]
00430488  4c 0b 1f e5                                      ldr r0, [pc, #-0xb4c]
0043048c  03 10 95 e7                                      ldr r1, [r5, r3]
00430490  00 00 8f e0                                      add r0, pc, r0
00430494  b0 fa 0c eb                                      bl #0x76ef5c
00430498  58 3b 1f e5                                      ldr r3, [pc, #-0xb58]
0043049c  58 0b 1f e5                                      ldr r0, [pc, #-0xb58]
004304a0  03 10 95 e7                                      ldr r1, [r5, r3]
004304a4  00 00 8f e0                                      add r0, pc, r0
004304a8  ab fa 0c eb                                      bl #0x76ef5c
004304ac  64 3b 1f e5                                      ldr r3, [pc, #-0xb64]
004304b0  64 0b 1f e5                                      ldr r0, [pc, #-0xb64]
004304b4  03 10 95 e7                                      ldr r1, [r5, r3]
004304b8  00 00 8f e0                                      add r0, pc, r0
004304bc  a6 fa 0c eb                                      bl #0x76ef5c
004304c0  70 3b 1f e5                                      ldr r3, [pc, #-0xb70]
004304c4  70 0b 1f e5                                      ldr r0, [pc, #-0xb70]
004304c8  03 10 95 e7                                      ldr r1, [r5, r3]
004304cc  00 00 8f e0                                      add r0, pc, r0
004304d0  a1 fa 0c eb                                      bl #0x76ef5c
004304d4  7c 3b 1f e5                                      ldr r3, [pc, #-0xb7c]
004304d8  7c 0b 1f e5                                      ldr r0, [pc, #-0xb7c]
004304dc  03 10 95 e7                                      ldr r1, [r5, r3]
004304e0  00 00 8f e0                                      add r0, pc, r0
004304e4  9c fa 0c eb                                      bl #0x76ef5c
004304e8  88 3b 1f e5                                      ldr r3, [pc, #-0xb88]
004304ec  88 0b 1f e5                                      ldr r0, [pc, #-0xb88]
004304f0  03 10 95 e7                                      ldr r1, [r5, r3]
004304f4  00 00 8f e0                                      add r0, pc, r0
004304f8  97 fa 0c eb                                      bl #0x76ef5c
004304fc  94 3b 1f e5                                      ldr r3, [pc, #-0xb94]
00430500  94 0b 1f e5                                      ldr r0, [pc, #-0xb94]
00430504  03 10 95 e7                                      ldr r1, [r5, r3]
00430508  00 00 8f e0                                      add r0, pc, r0
0043050c  92 fa 0c eb                                      bl #0x76ef5c
00430510  a0 3b 1f e5                                      ldr r3, [pc, #-0xba0]
00430514  a0 0b 1f e5                                      ldr r0, [pc, #-0xba0]
00430518  03 10 95 e7                                      ldr r1, [r5, r3]
0043051c  00 00 8f e0                                      add r0, pc, r0
00430520  8d fa 0c eb                                      bl #0x76ef5c
00430524  ac 3b 1f e5                                      ldr r3, [pc, #-0xbac]
00430528  ac 0b 1f e5                                      ldr r0, [pc, #-0xbac]
0043052c  03 10 95 e7                                      ldr r1, [r5, r3]
00430530  00 00 8f e0                                      add r0, pc, r0
00430534  88 fa 0c eb                                      bl #0x76ef5c
00430538  b8 3b 1f e5                                      ldr r3, [pc, #-0xbb8]
0043053c  b8 0b 1f e5                                      ldr r0, [pc, #-0xbb8]
00430540  03 10 95 e7                                      ldr r1, [r5, r3]
00430544  00 00 8f e0                                      add r0, pc, r0
00430548  83 fa 0c eb                                      bl #0x76ef5c
0043054c  c4 3b 1f e5                                      ldr r3, [pc, #-0xbc4]
00430550  c4 0b 1f e5                                      ldr r0, [pc, #-0xbc4]
00430554  03 10 95 e7                                      ldr r1, [r5, r3]
00430558  00 00 8f e0                                      add r0, pc, r0
0043055c  7e fa 0c eb                                      bl #0x76ef5c
00430560  d0 3b 1f e5                                      ldr r3, [pc, #-0xbd0]
00430564  d0 0b 1f e5                                      ldr r0, [pc, #-0xbd0]
00430568  03 10 95 e7                                      ldr r1, [r5, r3]
0043056c  00 00 8f e0                                      add r0, pc, r0
00430570  79 fa 0c eb                                      bl #0x76ef5c
00430574  dc 3b 1f e5                                      ldr r3, [pc, #-0xbdc]
00430578  dc 0b 1f e5                                      ldr r0, [pc, #-0xbdc]
0043057c  03 10 95 e7                                      ldr r1, [r5, r3]
00430580  00 00 8f e0                                      add r0, pc, r0
00430584  74 fa 0c eb                                      bl #0x76ef5c
00430588  e8 3b 1f e5                                      ldr r3, [pc, #-0xbe8]
0043058c  e8 0b 1f e5                                      ldr r0, [pc, #-0xbe8]
00430590  03 10 95 e7                                      ldr r1, [r5, r3]
00430594  00 00 8f e0                                      add r0, pc, r0
00430598  6f fa 0c eb                                      bl #0x76ef5c
0043059c  f4 3b 1f e5                                      ldr r3, [pc, #-0xbf4]
004305a0  f4 0b 1f e5                                      ldr r0, [pc, #-0xbf4]
004305a4  03 10 95 e7                                      ldr r1, [r5, r3]
004305a8  00 00 8f e0                                      add r0, pc, r0
004305ac  6a fa 0c eb                                      bl #0x76ef5c
004305b0  00 3c 1f e5                                      ldr r3, [pc, #-0xc00]
004305b4  00 0c 1f e5                                      ldr r0, [pc, #-0xc00]
004305b8  03 10 95 e7                                      ldr r1, [r5, r3]
004305bc  00 00 8f e0                                      add r0, pc, r0
004305c0  65 fa 0c eb                                      bl #0x76ef5c
004305c4  0c 3c 1f e5                                      ldr r3, [pc, #-0xc0c]
004305c8  0c 0c 1f e5                                      ldr r0, [pc, #-0xc0c]
004305cc  03 10 95 e7                                      ldr r1, [r5, r3]
004305d0  00 00 8f e0                                      add r0, pc, r0
004305d4  60 fa 0c eb                                      bl #0x76ef5c
004305d8  18 3c 1f e5                                      ldr r3, [pc, #-0xc18]
004305dc  18 0c 1f e5                                      ldr r0, [pc, #-0xc18]
004305e0  03 10 95 e7                                      ldr r1, [r5, r3]
004305e4  00 00 8f e0                                      add r0, pc, r0
004305e8  5b fa 0c eb                                      bl #0x76ef5c
004305ec  24 3c 1f e5                                      ldr r3, [pc, #-0xc24]
004305f0  24 0c 1f e5                                      ldr r0, [pc, #-0xc24]
004305f4  03 10 95 e7                                      ldr r1, [r5, r3]
004305f8  00 00 8f e0                                      add r0, pc, r0
004305fc  56 fa 0c eb                                      bl #0x76ef5c
00430600  30 3c 1f e5                                      ldr r3, [pc, #-0xc30]
00430604  30 0c 1f e5                                      ldr r0, [pc, #-0xc30]
00430608  03 10 95 e7                                      ldr r1, [r5, r3]
0043060c  00 00 8f e0                                      add r0, pc, r0
00430610  51 fa 0c eb                                      bl #0x76ef5c
00430614  3c 3c 1f e5                                      ldr r3, [pc, #-0xc3c]
00430618  3c 0c 1f e5                                      ldr r0, [pc, #-0xc3c]
0043061c  03 10 95 e7                                      ldr r1, [r5, r3]
00430620  00 00 8f e0                                      add r0, pc, r0
00430624  4c fa 0c eb                                      bl #0x76ef5c
00430628  48 3c 1f e5                                      ldr r3, [pc, #-0xc48]
0043062c  48 0c 1f e5                                      ldr r0, [pc, #-0xc48]
00430630  03 10 95 e7                                      ldr r1, [r5, r3]
00430634  00 00 8f e0                                      add r0, pc, r0
00430638  47 fa 0c eb                                      bl #0x76ef5c
0043063c  54 3c 1f e5                                      ldr r3, [pc, #-0xc54]
00430640  54 0c 1f e5                                      ldr r0, [pc, #-0xc54]
00430644  03 10 95 e7                                      ldr r1, [r5, r3]
00430648  00 00 8f e0                                      add r0, pc, r0
0043064c  42 fa 0c eb                                      bl #0x76ef5c
00430650  60 3c 1f e5                                      ldr r3, [pc, #-0xc60]
00430654  60 0c 1f e5                                      ldr r0, [pc, #-0xc60]
00430658  03 10 95 e7                                      ldr r1, [r5, r3]
0043065c  00 00 8f e0                                      add r0, pc, r0
00430660  3d fa 0c eb                                      bl #0x76ef5c
00430664  6c 3c 1f e5                                      ldr r3, [pc, #-0xc6c]
00430668  6c 0c 1f e5                                      ldr r0, [pc, #-0xc6c]
0043066c  03 10 95 e7                                      ldr r1, [r5, r3]
00430670  00 00 8f e0                                      add r0, pc, r0
00430674  38 fa 0c eb                                      bl #0x76ef5c
00430678  78 3c 1f e5                                      ldr r3, [pc, #-0xc78]
0043067c  78 0c 1f e5                                      ldr r0, [pc, #-0xc78]
00430680  03 10 95 e7                                      ldr r1, [r5, r3]
00430684  00 00 8f e0                                      add r0, pc, r0
00430688  33 fa 0c eb                                      bl #0x76ef5c
0043068c  84 3c 1f e5                                      ldr r3, [pc, #-0xc84]
00430690  84 0c 1f e5                                      ldr r0, [pc, #-0xc84]
00430694  03 10 95 e7                                      ldr r1, [r5, r3]
00430698  00 00 8f e0                                      add r0, pc, r0
0043069c  2e fa 0c eb                                      bl #0x76ef5c
004306a0  90 3c 1f e5                                      ldr r3, [pc, #-0xc90]
004306a4  90 0c 1f e5                                      ldr r0, [pc, #-0xc90]
004306a8  03 10 95 e7                                      ldr r1, [r5, r3]
004306ac  00 00 8f e0                                      add r0, pc, r0
004306b0  29 fa 0c eb                                      bl #0x76ef5c
004306b4  9c 3c 1f e5                                      ldr r3, [pc, #-0xc9c]
004306b8  9c 0c 1f e5                                      ldr r0, [pc, #-0xc9c]
004306bc  03 10 95 e7                                      ldr r1, [r5, r3]
004306c0  00 00 8f e0                                      add r0, pc, r0
004306c4  24 fa 0c eb                                      bl #0x76ef5c
004306c8  a8 3c 1f e5                                      ldr r3, [pc, #-0xca8]
004306cc  a8 0c 1f e5                                      ldr r0, [pc, #-0xca8]
004306d0  03 10 95 e7                                      ldr r1, [r5, r3]
004306d4  00 00 8f e0                                      add r0, pc, r0
004306d8  1f fa 0c eb                                      bl #0x76ef5c
004306dc  b4 3c 1f e5                                      ldr r3, [pc, #-0xcb4]
004306e0  b4 0c 1f e5                                      ldr r0, [pc, #-0xcb4]
004306e4  03 10 95 e7                                      ldr r1, [r5, r3]
004306e8  00 00 8f e0                                      add r0, pc, r0
004306ec  1a fa 0c eb                                      bl #0x76ef5c
004306f0  c0 3c 1f e5                                      ldr r3, [pc, #-0xcc0]
004306f4  c0 0c 1f e5                                      ldr r0, [pc, #-0xcc0]
004306f8  03 10 95 e7                                      ldr r1, [r5, r3]
004306fc  00 00 8f e0                                      add r0, pc, r0
00430700  15 fa 0c eb                                      bl #0x76ef5c
00430704  cc 3c 1f e5                                      ldr r3, [pc, #-0xccc]
00430708  cc 0c 1f e5                                      ldr r0, [pc, #-0xccc]
0043070c  03 10 95 e7                                      ldr r1, [r5, r3]
00430710  00 00 8f e0                                      add r0, pc, r0
00430714  10 fa 0c eb                                      bl #0x76ef5c
00430718  d8 3c 1f e5                                      ldr r3, [pc, #-0xcd8]
0043071c  d8 0c 1f e5                                      ldr r0, [pc, #-0xcd8]
00430720  03 10 95 e7                                      ldr r1, [r5, r3]
00430724  00 00 8f e0                                      add r0, pc, r0
00430728  0b fa 0c eb                                      bl #0x76ef5c
0043072c  e4 3c 1f e5                                      ldr r3, [pc, #-0xce4]
00430730  e4 0c 1f e5                                      ldr r0, [pc, #-0xce4]
00430734  03 10 95 e7                                      ldr r1, [r5, r3]
00430738  00 00 8f e0                                      add r0, pc, r0
0043073c  06 fa 0c eb                                      bl #0x76ef5c
00430740  f0 3c 1f e5                                      ldr r3, [pc, #-0xcf0]
00430744  f0 0c 1f e5                                      ldr r0, [pc, #-0xcf0]
00430748  03 10 95 e7                                      ldr r1, [r5, r3]
0043074c  00 00 8f e0                                      add r0, pc, r0
00430750  01 fa 0c eb                                      bl #0x76ef5c
00430754  fc 3c 1f e5                                      ldr r3, [pc, #-0xcfc]
00430758  fc 0c 1f e5                                      ldr r0, [pc, #-0xcfc]
0043075c  03 10 95 e7                                      ldr r1, [r5, r3]
00430760  00 00 8f e0                                      add r0, pc, r0
00430764  fc f9 0c eb                                      bl #0x76ef5c
00430768  08 3d 1f e5                                      ldr r3, [pc, #-0xd08]
0043076c  08 0d 1f e5                                      ldr r0, [pc, #-0xd08]
00430770  03 10 95 e7                                      ldr r1, [r5, r3]
00430774  00 00 8f e0                                      add r0, pc, r0
00430778  f7 f9 0c eb                                      bl #0x76ef5c
0043077c  14 3d 1f e5                                      ldr r3, [pc, #-0xd14]
00430780  14 0d 1f e5                                      ldr r0, [pc, #-0xd14]
00430784  03 10 95 e7                                      ldr r1, [r5, r3]
00430788  00 00 8f e0                                      add r0, pc, r0
0043078c  f2 f9 0c eb                                      bl #0x76ef5c
00430790  20 3d 1f e5                                      ldr r3, [pc, #-0xd20]
00430794  20 0d 1f e5                                      ldr r0, [pc, #-0xd20]
00430798  03 10 95 e7                                      ldr r1, [r5, r3]
0043079c  00 00 8f e0                                      add r0, pc, r0
004307a0  ed f9 0c eb                                      bl #0x76ef5c
004307a4  2c 3d 1f e5                                      ldr r3, [pc, #-0xd2c]
004307a8  2c 0d 1f e5                                      ldr r0, [pc, #-0xd2c]
004307ac  03 10 95 e7                                      ldr r1, [r5, r3]
004307b0  00 00 8f e0                                      add r0, pc, r0
004307b4  e8 f9 0c eb                                      bl #0x76ef5c
004307b8  38 3d 1f e5                                      ldr r3, [pc, #-0xd38]
004307bc  38 0d 1f e5                                      ldr r0, [pc, #-0xd38]
004307c0  03 10 95 e7                                      ldr r1, [r5, r3]
004307c4  00 00 8f e0                                      add r0, pc, r0
004307c8  e3 f9 0c eb                                      bl #0x76ef5c
004307cc  44 3d 1f e5                                      ldr r3, [pc, #-0xd44]
004307d0  44 0d 1f e5                                      ldr r0, [pc, #-0xd44]
004307d4  03 10 95 e7                                      ldr r1, [r5, r3]
004307d8  00 00 8f e0                                      add r0, pc, r0
004307dc  de f9 0c eb                                      bl #0x76ef5c
004307e0  50 3d 1f e5                                      ldr r3, [pc, #-0xd50]
004307e4  50 0d 1f e5                                      ldr r0, [pc, #-0xd50]
004307e8  03 10 95 e7                                      ldr r1, [r5, r3]
004307ec  00 00 8f e0                                      add r0, pc, r0
004307f0  d9 f9 0c eb                                      bl #0x76ef5c
004307f4  5c 3d 1f e5                                      ldr r3, [pc, #-0xd5c]
004307f8  5c 0d 1f e5                                      ldr r0, [pc, #-0xd5c]
004307fc  03 10 95 e7                                      ldr r1, [r5, r3]
00430800  00 00 8f e0                                      add r0, pc, r0
00430804  d4 f9 0c eb                                      bl #0x76ef5c
00430808  68 3d 1f e5                                      ldr r3, [pc, #-0xd68]
0043080c  68 0d 1f e5                                      ldr r0, [pc, #-0xd68]
00430810  03 10 95 e7                                      ldr r1, [r5, r3]
00430814  00 00 8f e0                                      add r0, pc, r0
00430818  cf f9 0c eb                                      bl #0x76ef5c
0043081c  74 3d 1f e5                                      ldr r3, [pc, #-0xd74]
00430820  74 0d 1f e5                                      ldr r0, [pc, #-0xd74]
00430824  03 10 95 e7                                      ldr r1, [r5, r3]
00430828  00 00 8f e0                                      add r0, pc, r0
0043082c  ca f9 0c eb                                      bl #0x76ef5c
00430830  80 3d 1f e5                                      ldr r3, [pc, #-0xd80]
00430834  80 0d 1f e5                                      ldr r0, [pc, #-0xd80]
00430838  03 10 95 e7                                      ldr r1, [r5, r3]
0043083c  00 00 8f e0                                      add r0, pc, r0
00430840  c5 f9 0c eb                                      bl #0x76ef5c
00430844  8c 3d 1f e5                                      ldr r3, [pc, #-0xd8c]
00430848  8c 0d 1f e5                                      ldr r0, [pc, #-0xd8c]
0043084c  03 10 95 e7                                      ldr r1, [r5, r3]
00430850  00 00 8f e0                                      add r0, pc, r0
00430854  c0 f9 0c eb                                      bl #0x76ef5c
00430858  98 3d 1f e5                                      ldr r3, [pc, #-0xd98]
0043085c  98 0d 1f e5                                      ldr r0, [pc, #-0xd98]
00430860  03 10 95 e7                                      ldr r1, [r5, r3]
00430864  00 00 8f e0                                      add r0, pc, r0
00430868  bb f9 0c eb                                      bl #0x76ef5c
0043086c  a4 3d 1f e5                                      ldr r3, [pc, #-0xda4]
00430870  a4 0d 1f e5                                      ldr r0, [pc, #-0xda4]
00430874  03 10 95 e7                                      ldr r1, [r5, r3]
00430878  00 00 8f e0                                      add r0, pc, r0
0043087c  b6 f9 0c eb                                      bl #0x76ef5c
00430880  b0 0d 1f e5                                      ldr r0, [pc, #-0xdb0]
00430884  b0 3d 1f e5                                      ldr r3, [pc, #-0xdb0]
00430888  00 00 8f e0                                      add r0, pc, r0
0043088c  03 10 95 e7                                      ldr r1, [r5, r3]
00430890  b1 f9 0c eb                                      bl #0x76ef5c
00430894  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
00430898  f2 fa ff ea                                      b #0x42f468
0043089c  9b e4 ff eb                                      bl #0x429b10
004308a0  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
004308a4  ef fa ff ea                                      b #0x42f468
004308a8  64 50 90 e5                                      ldr r5, [r0, #0x64]
004308ac  68 70 90 e5                                      ldr r7, [r0, #0x68]
004308b0  07 00 55 e1                                      cmp r5, r7
004308b4  eb fa ff 0a                                      beq #0x42f468
004308b8  00 00 95 e5                                      ldr r0, [r5]
004308bc  00 10 a0 e3                                      mov r1, #0
004308c0  3c cd ff eb                                      bl #0x423db8
004308c4  04 30 95 e4                                      ldr r3, [r5], #4
004308c8  03 00 a0 e1                                      mov r0, r3
004308cc  00 30 93 e5                                      ldr r3, [r3]
004308d0  0f e0 a0 e1                                      mov lr, pc
004308d4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
004308d8  07 00 55 e1                                      cmp r5, r7
004308dc  f5 ff ff 1a                                      bne #0x4308b8
004308e0  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
004308e4  df fa ff ea                                      b #0x42f468
004308e8  70 89 00 eb                                      bl #0x452eb0
004308ec  2c 8d 00 eb                                      bl #0x453da4
004308f0  00 17 00 eb                                      bl #0x4364f8
004308f4  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
004308f8  da fa ff ea                                      b #0x42f468
004308fc  ad f9 ff eb                                      bl #0x42efb8
00430900  6a ba fe eb                                      bl #0x3df2b0
00430904  04 00 a0 e1                                      mov r0, r4
00430908  9f f0 ff eb                                      bl #0x42cb8c
0043090c  00 00 50 e3                                      cmp r0, #0
00430910  03 00 00 0a                                      beq #0x430924
00430914  04 00 a0 e1                                      mov r0, r4
00430918  9b f0 ff eb                                      bl #0x42cb8c
0043091c  04 10 84 e2                                      add r1, r4, #4
00430920  d1 dc 0d eb                                      bl #0x7a7c6c
00430924  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00430928  50 ae 1f e5                                      ldr sl, [pc, #-0xe50]
0043092c  50 2e 1f e5                                      ldr r2, [pc, #-0xe50]
00430930  3c 61 93 e5                                      ldr r6, [r3, #0x13c]
00430934  54 9e 1f e5                                      ldr sb, [pc, #-0xe54]
00430938  54 3e 1f e5                                      ldr r3, [pc, #-0xe54]
0043093c  54 be 1f e5                                      ldr fp, [pc, #-0xe54]
00430940  0a a0 8f e0                                      add sl, pc, sl
00430944  0c 00 8d e8                                      stm sp, {r2, r3}
00430948  dc a0 8a e2                                      add sl, sl, #0xdc
0043094c  09 90 8f e0                                      add sb, pc, sb
00430950  00 70 a0 e3                                      mov r7, #0
00430954  01 70 87 e2                                      add r7, r7, #1
00430958  09 10 a0 e1                                      mov r1, sb
0043095c  07 20 a0 e1                                      mov r2, r7
00430960  0a 00 a0 e1                                      mov r0, sl
00430964  5e 78 fb eb                                      bl #0x30eae4
00430968  06 00 a0 e1                                      mov r0, r6
0043096c  5f dd 0d eb                                      bl #0x7a7ef0
00430970  0a 10 a0 e1                                      mov r1, sl
00430974  00 20 a0 e1                                      mov r2, r0
00430978  06 00 a0 e1                                      mov r0, r6
0043097c  40 e0 0d eb                                      bl #0x7a8a84
00430980  00 80 50 e2                                      subs r8, r0, #0
00430984  06 20 a0 e1                                      mov r2, r6
00430988  08 10 a0 e1                                      mov r1, r8
0043098c  0e 00 00 0a                                      beq #0x4309cc
00430990  0b 30 95 e7                                      ldr r3, [r5, fp]
00430994  00 00 93 e5                                      ldr r0, [r3]
00430998  2b 9a ff eb                                      bl #0x41724c
0043099c  00 20 9d e5                                      ldr r2, [sp]
004309a0  08 10 a0 e1                                      mov r1, r8
004309a4  02 30 95 e7                                      ldr r3, [r5, r2]
004309a8  06 20 a0 e1                                      mov r2, r6
004309ac  00 00 93 e5                                      ldr r0, [r3]
004309b0  25 9a ff eb                                      bl #0x41724c
004309b4  04 20 9d e5                                      ldr r2, [sp, #4]
004309b8  08 10 a0 e1                                      mov r1, r8
004309bc  02 30 95 e7                                      ldr r3, [r5, r2]
004309c0  06 20 a0 e1                                      mov r2, r6
004309c4  00 00 93 e5                                      ldr r0, [r3]
004309c8  1f 9a ff eb                                      bl #0x41724c
004309cc  06 00 57 e3                                      cmp r7, #6
004309d0  df ff ff 1a                                      bne #0x430954
004309d4  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
004309d8  a2 fa ff ea                                      b #0x42f468
004309dc  95 e9 ff eb                                      bl #0x42b038
004309e0  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
004309e4  9f fa ff ea                                      b #0x42f468
004309e8  a4 13 00 eb                                      bl #0x435880
004309ec  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
004309f0  9c fa ff ea                                      b #0x42f468
004309f4  bf e8 ff eb                                      bl #0x42acf8
004309f8  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
004309fc  99 fa ff ea                                      b #0x42f468
00430a00  7b e8 ff eb                                      bl #0x42abf4
00430a04  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
00430a08  96 fa ff ea                                      b #0x42f468
00430a0c  13 e7 ff eb                                      bl #0x42a660
00430a10  b9 e6 ff eb                                      bl #0x42a4fc
00430a14  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
00430a18  92 fa ff ea                                      b #0x42f468
00430a1c  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00430a20  04 10 a0 e3                                      mov r1, #4
00430a24  40 01 93 e5                                      ldr r0, [r3, #0x140]
00430a28  9a dc 0d eb                                      bl #0x7a7c98
00430a2c  bc 60 94 e5                                      ldr r6, [r4, #0xbc]
00430a30  8c fa ff ea                                      b #0x42f468
00430a34  06 81 88 e0                                      add r8, r8, r6, lsl #2
00430a38  40 10 98 e5                                      ldr r1, [r8, #0x40]
00430a3c  f4 00 94 e5                                      ldr r0, [r4, #0xf4]
00430a40  06 20 a0 e1                                      mov r2, r6
00430a44  c7 1c 00 eb                                      bl #0x437d68
00430a48  7e fa ff ea                                      b #0x42f448
00430a4c  60 3f 1f e5                                      ldr r3, [pc, #-0xf60]
00430a50  03 30 95 e7                                      ldr r3, [r5, r3]
00430a54  00 30 d3 e5                                      ldrb r3, [r3]
00430a58  00 00 53 e3                                      cmp r3, #0
00430a5c  0a 00 00 1a                                      bne #0x430a8c
00430a60  70 3f 1f e5                                      ldr r3, [pc, #-0xf70]
00430a64  06 81 88 e0                                      add r8, r8, r6, lsl #2
00430a68  f4 00 94 e5                                      ldr r0, [r4, #0xf4]
00430a6c  03 30 95 e7                                      ldr r3, [r5, r3]
00430a70  06 20 a0 e1                                      mov r2, r6
00430a74  00 30 d3 e5                                      ldrb r3, [r3]
00430a78  00 00 53 e3                                      cmp r3, #0
00430a7c  20 10 98 15                                      ldrne r1, [r8, #0x20]
00430a80  30 10 98 05                                      ldreq r1, [r8, #0x30]
00430a84  b7 1c 00 eb                                      bl #0x437d68
00430a88  6e fa ff ea                                      b #0x42f448
00430a8c  06 81 88 e0                                      add r8, r8, r6, lsl #2
00430a90  10 10 98 e5                                      ldr r1, [r8, #0x10]
00430a94  f4 00 94 e5                                      ldr r0, [r4, #0xf4]
00430a98  06 20 a0 e1                                      mov r2, r6
00430a9c  b1 1c 00 eb                                      bl #0x437d68
00430aa0  68 fa ff ea                                      b #0x42f448
00430aa4  06 81 88 e0                                      add r8, r8, r6, lsl #2
00430aa8  50 10 98 e5                                      ldr r1, [r8, #0x50]
00430aac  f4 00 94 e5                                      ldr r0, [r4, #0xf4]
00430ab0  06 20 a0 e1                                      mov r2, r6
00430ab4  ab 1c 00 eb                                      bl #0x437d68
00430ab8  62 fa ff ea                                      b #0x42f448
00430abc  06 81 88 e0                                      add r8, r8, r6, lsl #2
00430ac0  60 10 98 e5                                      ldr r1, [r8, #0x60]
00430ac4  f4 00 94 e5                                      ldr r0, [r4, #0xf4]
00430ac8  06 20 a0 e1                                      mov r2, r6
00430acc  a5 1c 00 eb                                      bl #0x437d68
00430ad0  5c fa ff ea                                      b #0x42f448

; FUNCTION 0x00430ad4, declared_size=2388, range_size=2388, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager7onEventEPK6IEventPK12EventManager
; demangled: MenuManager::onEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
00430ad4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00430ad8  88 48 9f e5                                      ldr r4, [pc, #0x888]
00430adc  88 68 9f e5                                      ldr r6, [pc, #0x888]
00430ae0  00 50 a0 e1                                      mov r5, r0
00430ae4  04 40 8f e0                                      add r4, pc, r4
00430ae8  06 30 94 e7                                      ldr r3, [r4, r6]
00430aec  7c 08 9f e5                                      ldr r0, [pc, #0x87c]
00430af0  7c 98 9f e5                                      ldr sb, [pc, #0x87c]
00430af4  00 30 93 e5                                      ldr r3, [r3]
00430af8  c4 d0 4d e2                                      sub sp, sp, #0xc4
00430afc  00 00 8f e0                                      add r0, pc, r0
00430b00  bc 30 8d e5                                      str r3, [sp, #0xbc]
00430b04  01 70 a0 e1                                      mov r7, r1
00430b08  e9 8a fb eb                                      bl #0x3136b4
00430b0c  09 a0 94 e7                                      ldr sl, [r4, sb]
00430b10  a4 80 8d e2                                      add r8, sp, #0xa4
00430b14  0a 00 a0 e1                                      mov r0, sl
00430b18  5a 1b fc eb                                      bl #0x337888
00430b1c  54 18 9f e5                                      ldr r1, [pc, #0x854]
00430b20  70 20 8d e2                                      add r2, sp, #0x70
00430b24  08 00 a0 e1                                      mov r0, r8
00430b28  01 10 8f e0                                      add r1, pc, r1
00430b2c  6e 8d fb eb                                      bl #0x3140ec
00430b30  0a 00 a0 e1                                      mov r0, sl
00430b34  08 10 a0 e1                                      mov r1, r8
00430b38  d2 1b fc eb                                      bl #0x337a88
00430b3c  00 00 50 e3                                      cmp r0, #0
00430b40  0d 00 00 0a                                      beq #0x430b7c
00430b44  08 00 a0 e1                                      mov r0, r8
00430b48  c1 9d fb eb                                      bl #0x318254
00430b4c  00 50 a0 e3                                      mov r5, #0
00430b50  24 08 9f e5                                      ldr r0, [pc, #0x824]
00430b54  00 00 8f e0                                      add r0, pc, r0
00430b58  d6 8a fb eb                                      bl #0x3136b8
00430b5c  06 30 94 e7                                      ldr r3, [r4, r6]
00430b60  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
00430b64  05 00 a0 e1                                      mov r0, r5
00430b68  00 30 93 e5                                      ldr r3, [r3]
00430b6c  03 00 52 e1                                      cmp r2, r3
00430b70  f9 01 00 1a                                      bne #0x43135c
00430b74  c4 d0 8d e2                                      add sp, sp, #0xc4
00430b78  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00430b7c  0a 00 a0 e1                                      mov r0, sl
00430b80  40 1b fc eb                                      bl #0x337888
00430b84  f4 17 9f e5                                      ldr r1, [pc, #0x7f4]
00430b88  8c b0 8d e2                                      add fp, sp, #0x8c
00430b8c  6c 20 8d e2                                      add r2, sp, #0x6c
00430b90  01 10 8f e0                                      add r1, pc, r1
00430b94  0b 00 a0 e1                                      mov r0, fp
00430b98  53 8d fb eb                                      bl #0x3140ec
00430b9c  0b 10 a0 e1                                      mov r1, fp
00430ba0  0a 00 a0 e1                                      mov r0, sl
00430ba4  b7 1b fc eb                                      bl #0x337a88
00430ba8  00 a0 a0 e1                                      mov sl, r0
00430bac  0b 00 a0 e1                                      mov r0, fp
00430bb0  a7 9d fb eb                                      bl #0x318254
00430bb4  08 00 a0 e1                                      mov r0, r8
00430bb8  a5 9d fb eb                                      bl #0x318254
00430bbc  00 00 5a e3                                      cmp sl, #0
00430bc0  e6 01 00 1a                                      bne #0x431360
00430bc4  00 00 57 e3                                      cmp r7, #0
00430bc8  ac a0 85 e5                                      str sl, [r5, #0xac]
00430bcc  b4 70 85 e5                                      str r7, [r5, #0xb4]
00430bd0  e2 01 00 0a                                      beq #0x431360
00430bd4  00 30 a0 e3                                      mov r3, #0
00430bd8  64 10 8d e2                                      add r1, sp, #0x64
00430bdc  60 20 8d e2                                      add r2, sp, #0x60
00430be0  05 00 a0 e1                                      mov r0, r5
00430be4  44 30 8d e5                                      str r3, [sp, #0x44]
00430be8  40 30 8d e5                                      str r3, [sp, #0x40]
00430bec  3c 30 8d e5                                      str r3, [sp, #0x3c]
00430bf0  48 a0 8d e5                                      str sl, [sp, #0x48]
00430bf4  64 a0 8d e5                                      str sl, [sp, #0x64]
00430bf8  60 a0 8d e5                                      str sl, [sp, #0x60]
00430bfc  ee ef ff eb                                      bl #0x42cbbc
00430c00  64 00 9d e5                                      ldr r0, [sp, #0x64]
00430c04  56 77 fb eb                                      bl #0x30e964
00430c08  3c 00 8d e5                                      str r0, [sp, #0x3c]
00430c0c  60 00 9d e5                                      ldr r0, [sp, #0x60]
00430c10  53 77 fb eb                                      bl #0x30e964
00430c14  40 00 8d e5                                      str r0, [sp, #0x40]
00430c18  00 30 97 e5                                      ldr r3, [r7]
00430c1c  07 00 a0 e1                                      mov r0, r7
00430c20  0f e0 a0 e1                                      mov lr, pc
00430c24  08 f0 93 e5                                      ldr pc, [r3, #8]
00430c28  04 00 50 e3                                      cmp r0, #4
00430c2c  08 00 00 1a                                      bne #0x430c54
00430c30  0c 80 97 e5                                      ldr r8, [r7, #0xc]
00430c34  10 30 d7 e5                                      ldrb r3, [r7, #0x10]
00430c38  03 00 58 e3                                      cmp r8, #3
00430c3c  48 30 8d e5                                      str r3, [sp, #0x48]
00430c40  46 00 00 9a                                      bls #0x430d60
00430c44  00 30 a0 e3                                      mov r3, #0
00430c48  b4 30 85 e5                                      str r3, [r5, #0xb4]
00430c4c  01 50 a0 e3                                      mov r5, #1
00430c50  be ff ff ea                                      b #0x430b50
00430c54  00 30 97 e5                                      ldr r3, [r7]
00430c58  07 00 a0 e1                                      mov r0, r7
00430c5c  0f e0 a0 e1                                      mov lr, pc
00430c60  08 f0 93 e5                                      ldr pc, [r3, #8]
00430c64  05 00 50 e3                                      cmp r0, #5
00430c68  37 00 00 0a                                      beq #0x430d4c
00430c6c  00 30 97 e5                                      ldr r3, [r7]
00430c70  07 00 a0 e1                                      mov r0, r7
00430c74  0f e0 a0 e1                                      mov lr, pc
00430c78  08 f0 93 e5                                      ldr pc, [r3, #8]
00430c7c  07 00 50 e3                                      cmp r0, #7
00430c80  4b 00 00 0a                                      beq #0x430db4
00430c84  00 80 a0 e3                                      mov r8, #0
00430c88  00 70 a0 e3                                      mov r7, #0
00430c8c  3c 90 8d e2                                      add sb, sp, #0x3c
00430c90  ec a6 9f e5                                      ldr sl, [pc, #0x6ec]
00430c94  0e 00 00 ea                                      b #0x430cd4
00430c98  0a 00 94 e7                                      ldr r0, [r4, sl]
00430c9c  78 ba fb eb                                      bl #0x31f684
00430ca0  00 00 50 e3                                      cmp r0, #0
00430ca4  07 00 00 1a                                      bne #0x430cc8
00430ca8  02 00 57 e3                                      cmp r7, #2
00430cac  00 30 a0 13                                      movne r3, #0
00430cb0  01 30 a0 03                                      moveq r3, #1
00430cb4  00 00 58 e3                                      cmp r8, #0
00430cb8  00 20 a0 d3                                      movle r2, #0
00430cbc  01 20 03 c2                                      andgt r2, r3, #1
00430cc0  00 00 52 e3                                      cmp r2, #0
00430cc4  2e 00 00 0a                                      beq #0x430d84
00430cc8  01 70 87 e2                                      add r7, r7, #1
00430ccc  04 00 57 e3                                      cmp r7, #4
00430cd0  18 00 00 0a                                      beq #0x430d38
00430cd4  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
00430cd8  07 21 83 e0                                      add r2, r3, r7, lsl #2
00430cdc  34 b1 92 e5                                      ldr fp, [r2, #0x134]
00430ce0  00 00 5b e3                                      cmp fp, #0
00430ce4  f7 ff ff 0a                                      beq #0x430cc8
00430ce8  03 00 57 e3                                      cmp r7, #3
00430cec  e9 ff ff 1a                                      bne #0x430c98
00430cf0  3c 31 93 e5                                      ldr r3, [r3, #0x13c]
00430cf4  00 00 53 e3                                      cmp r3, #0
00430cf8  02 00 00 0a                                      beq #0x430d08
00430cfc  18 31 93 e5                                      ldr r3, [r3, #0x118]
00430d00  00 00 53 e3                                      cmp r3, #0
00430d04  0b 00 00 1a                                      bne #0x430d38
00430d08  0a 30 94 e7                                      ldr r3, [r4, sl]
00430d0c  03 00 a0 e1                                      mov r0, r3
00430d10  08 30 8d e5                                      str r3, [sp, #8]
00430d14  1e ba fb eb                                      bl #0x31f594
00430d18  00 00 50 e3                                      cmp r0, #0
00430d1c  08 30 9d e5                                      ldr r3, [sp, #8]
00430d20  04 00 00 0a                                      beq #0x430d38
00430d24  03 00 a0 e1                                      mov r0, r3
00430d28  19 ba fb eb                                      bl #0x31f594
00430d2c  98 31 d0 e5                                      ldrb r3, [r0, #0x198]
00430d30  00 00 53 e3                                      cmp r3, #0
00430d34  0f 00 00 1a                                      bne #0x430d78
00430d38  ac 30 95 e5                                      ldr r3, [r5, #0xac]
00430d3c  00 20 a0 e3                                      mov r2, #0
00430d40  b4 20 85 e5                                      str r2, [r5, #0xb4]
00430d44  03 50 a0 e1                                      mov r5, r3
00430d48  80 ff ff ea                                      b #0x430b50
00430d4c  01 30 a0 e3                                      mov r3, #1
00430d50  48 30 8d e5                                      str r3, [sp, #0x48]
00430d54  0c 80 97 e5                                      ldr r8, [r7, #0xc]
00430d58  03 00 58 e3                                      cmp r8, #3
00430d5c  b8 ff ff 8a                                      bhi #0x430c44
00430d60  00 00 58 e3                                      cmp r8, #0
00430d64  c7 ff ff 0a                                      beq #0x430c88
00430d68  10 31 d5 e5                                      ldrb r3, [r5, #0x110]
00430d6c  00 00 53 e3                                      cmp r3, #0
00430d70  c4 ff ff 0a                                      beq #0x430c88
00430d74  b2 ff ff ea                                      b #0x430c44
00430d78  02 00 57 e3                                      cmp r7, #2
00430d7c  00 30 a0 13                                      movne r3, #0
00430d80  01 30 a0 03                                      moveq r3, #1
00430d84  00 00 53 e3                                      cmp r3, #0
00430d88  4f 01 00 1a                                      bne #0x4312cc
00430d8c  00 30 9b e5                                      ldr r3, [fp]
00430d90  0b 00 a0 e1                                      mov r0, fp
00430d94  09 10 a0 e1                                      mov r1, sb
00430d98  08 20 a0 e1                                      mov r2, r8
00430d9c  0f e0 a0 e1                                      mov lr, pc
00430da0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00430da4  ac 30 95 e5                                      ldr r3, [r5, #0xac]
00430da8  01 00 53 e3                                      cmp r3, #1
00430dac  c5 ff ff 1a                                      bne #0x430cc8
00430db0  e1 ff ff ea                                      b #0x430d3c
00430db4  cc 15 9f e5                                      ldr r1, [pc, #0x5cc]
00430db8  18 b0 8d e2                                      add fp, sp, #0x18
00430dbc  0b 00 a0 e1                                      mov r0, fp
00430dc0  01 10 8f e0                                      add r1, pc, r1
00430dc4  02 80 a0 e3                                      mov r8, #2
00430dc8  18 a0 cd e5                                      strb sl, [sp, #0x18]
00430dcc  19 a0 cd e5                                      strb sl, [sp, #0x19]
00430dd0  5e 99 0d eb                                      bl #0x797350
00430dd4  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00430dd8  24 a0 cd e5                                      strb sl, [sp, #0x24]
00430ddc  25 80 cd e5                                      strb r8, [sp, #0x25]
00430de0  d2 77 fb eb                                      bl #0x30ed30
00430de4  10 30 97 e5                                      ldr r3, [r7, #0x10]
00430de8  f8 02 cd e1                                      strd r0, r1, [sp, #0x28]
00430dec  03 00 a0 e1                                      mov r0, r3
00430df0  30 a0 cd e5                                      strb sl, [sp, #0x30]
00430df4  31 80 cd e5                                      strb r8, [sp, #0x31]
00430df8  cc 77 fb eb                                      bl #0x30ed30
00430dfc  f8 05 cd e1                                      strd r0, r1, [sp, #0x58]
00430e00  58 20 9d e5                                      ldr r2, [sp, #0x58]
00430e04  08 30 97 e5                                      ldr r3, [r7, #8]
00430e08  34 20 8d e5                                      str r2, [sp, #0x34]
00430e0c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00430e10  20 20 8b e5                                      str r2, [fp, #0x20]
00430e14  2c 00 53 e3                                      cmp r3, #0x2c
00430e18  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00430e1c  fb 00 00 ea                                      b #0x431210
00430e20  f5 00 00 ea                                      b #0x4311fc
00430e24  ef 00 00 ea                                      b #0x4311e8
00430e28  e9 00 00 ea                                      b #0x4311d4
00430e2c  e3 00 00 ea                                      b #0x4311c0
00430e30  dd 00 00 ea                                      b #0x4311ac
00430e34  d7 00 00 ea                                      b #0x431198
00430e38  d1 00 00 ea                                      b #0x431184
00430e3c  cb 00 00 ea                                      b #0x431170
00430e40  c5 00 00 ea                                      b #0x43115c
00430e44  bf 00 00 ea                                      b #0x431148
00430e48  b9 00 00 ea                                      b #0x431134
00430e4c  b3 00 00 ea                                      b #0x431120
00430e50  ad 00 00 ea                                      b #0x43110c
00430e54  a7 00 00 ea                                      b #0x4310f8
00430e58  a1 00 00 ea                                      b #0x4310e4
00430e5c  9b 00 00 ea                                      b #0x4310d0
00430e60  ea 00 00 ea                                      b #0x431210
00430e64  e9 00 00 ea                                      b #0x431210
00430e68  e8 00 00 ea                                      b #0x431210
00430e6c  92 00 00 ea                                      b #0x4310bc
00430e70  e6 00 00 ea                                      b #0x431210
00430e74  e5 00 00 ea                                      b #0x431210
00430e78  8a 00 00 ea                                      b #0x4310a8
00430e7c  e3 00 00 ea                                      b #0x431210
00430e80  e2 00 00 ea                                      b #0x431210
00430e84  e1 00 00 ea                                      b #0x431210
00430e88  e0 00 00 ea                                      b #0x431210
00430e8c  df 00 00 ea                                      b #0x431210
00430e90  de 00 00 ea                                      b #0x431210
00430e94  dd 00 00 ea                                      b #0x431210
00430e98  dc 00 00 ea                                      b #0x431210
00430e9c  db 00 00 ea                                      b #0x431210
00430ea0  da 00 00 ea                                      b #0x431210
00430ea4  d9 00 00 ea                                      b #0x431210
00430ea8  d8 00 00 ea                                      b #0x431210
00430eac  d7 00 00 ea                                      b #0x431210
00430eb0  d6 00 00 ea                                      b #0x431210
00430eb4  76 00 00 ea                                      b #0x431094
00430eb8  70 00 00 ea                                      b #0x431080
00430ebc  6a 00 00 ea                                      b #0x43106c
00430ec0  64 00 00 ea                                      b #0x431058
00430ec4  5e 00 00 ea                                      b #0x431044
00430ec8  58 00 00 ea                                      b #0x431030
00430ecc  52 00 00 ea                                      b #0x43101c
00430ed0  ff ff ff ea                                      b #0x430ed4
00430ed4  b0 14 9f e5                                      ldr r1, [pc, #0x4b0]
00430ed8  0b 00 a0 e1                                      mov r0, fp
00430edc  01 10 8f e0                                      add r1, pc, r1
00430ee0  1a 99 0d eb                                      bl #0x797350
00430ee4  09 a0 94 e7                                      ldr sl, [r4, sb]
00430ee8  74 80 8d e2                                      add r8, sp, #0x74
00430eec  9c 74 9f e5                                      ldr r7, [pc, #0x49c]
00430ef0  0a 00 a0 e1                                      mov r0, sl
00430ef4  63 1a fc eb                                      bl #0x337888
00430ef8  94 14 9f e5                                      ldr r1, [pc, #0x494]
00430efc  68 20 8d e2                                      add r2, sp, #0x68
00430f00  08 00 a0 e1                                      mov r0, r8
00430f04  01 10 8f e0                                      add r1, pc, r1
00430f08  77 8c fb eb                                      bl #0x3140ec
00430f0c  08 10 a0 e1                                      mov r1, r8
00430f10  0a 00 a0 e1                                      mov r0, sl
00430f14  db 1a fc eb                                      bl #0x337a88
00430f18  08 00 a0 e1                                      mov r0, r8
00430f1c  cc 9c fb eb                                      bl #0x318254
00430f20  70 04 9f e5                                      ldr r0, [pc, #0x470]
00430f24  07 70 8f e0                                      add r7, pc, r7
00430f28  00 00 8f e0                                      add r0, pc, r0
00430f2c  e0 89 fb eb                                      bl #0x3136b4
00430f30  1c 81 97 e5                                      ldr r8, [r7, #0x11c]
00430f34  01 80 18 e2                                      ands r8, r8, #1
00430f38  ec 00 00 0a                                      beq #0x4312f0
00430f3c  58 14 9f e5                                      ldr r1, [pc, #0x458]
00430f40  58 24 9f e5                                      ldr r2, [pc, #0x458]
00430f44  58 34 9f e5                                      ldr r3, [pc, #0x458]
00430f48  58 74 9f e5                                      ldr r7, [pc, #0x458]
00430f4c  01 10 8f e0                                      add r1, pc, r1
00430f50  02 20 8f e0                                      add r2, pc, r2
00430f54  03 30 8f e0                                      add r3, pc, r3
00430f58  07 70 8f e0                                      add r7, pc, r7
00430f5c  1c 10 81 e2                                      add r1, r1, #0x1c
00430f60  1c 20 82 e2                                      add r2, r2, #0x1c
00430f64  1c 30 83 e2                                      add r3, r3, #0x1c
00430f68  1c 70 87 e2                                      add r7, r7, #0x1c
00430f6c  0c 10 8d e5                                      str r1, [sp, #0xc]
00430f70  10 20 8d e5                                      str r2, [sp, #0x10]
00430f74  14 30 8d e5                                      str r3, [sp, #0x14]
00430f78  00 80 a0 e3                                      mov r8, #0
00430f7c  04 a0 a0 e1                                      mov sl, r4
00430f80  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
00430f84  08 31 83 e0                                      add r3, r3, r8, lsl #2
00430f88  34 41 93 e5                                      ldr r4, [r3, #0x134]
00430f8c  00 00 54 e3                                      cmp r4, #0
00430f90  12 00 00 0a                                      beq #0x430fe0
00430f94  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
00430f98  00 00 53 e3                                      cmp r3, #0
00430f9c  b1 00 00 0a                                      beq #0x431268
00430fa0  28 30 97 e5                                      ldr r3, [r7, #0x28]
00430fa4  04 90 d3 e5                                      ldrb sb, [r3, #4]
00430fa8  00 00 59 e3                                      cmp sb, #0
00430fac  a5 00 00 0a                                      beq #0x431248
00430fb0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00430fb4  30 00 a0 e3                                      mov r0, #0x30
00430fb8  90 38 20 e0                                      mla r0, r0, r8, r3
00430fbc  63 db ff eb                                      bl #0x427d50
00430fc0  e4 23 9f e5                                      ldr r2, [pc, #0x3e4]
00430fc4  00 10 a0 e1                                      mov r1, r0
00430fc8  03 c0 a0 e3                                      mov ip, #3
00430fcc  04 00 a0 e1                                      mov r0, r4
00430fd0  02 20 8f e0                                      add r2, pc, r2
00430fd4  0b 30 a0 e1                                      mov r3, fp
00430fd8  00 c0 8d e5                                      str ip, [sp]
00430fdc  8a eb 0d eb                                      bl #0x7abe0c
00430fe0  01 80 88 e2                                      add r8, r8, #1
00430fe4  04 00 58 e3                                      cmp r8, #4
00430fe8  30 70 87 e2                                      add r7, r7, #0x30
00430fec  e3 ff ff 1a                                      bne #0x430f80
00430ff0  b8 03 9f e5                                      ldr r0, [pc, #0x3b8]
00430ff4  0a 40 a0 e1                                      mov r4, sl
00430ff8  00 00 8f e0                                      add r0, pc, r0
00430ffc  ad 89 fb eb                                      bl #0x3136b8
00431000  18 00 8b e2                                      add r0, fp, #0x18
00431004  46 98 0d eb                                      bl #0x797124
00431008  0c 00 8b e2                                      add r0, fp, #0xc
0043100c  44 98 0d eb                                      bl #0x797124
00431010  0b 00 a0 e1                                      mov r0, fp
00431014  42 98 0d eb                                      bl #0x797124
00431018  19 ff ff ea                                      b #0x430c84
0043101c  90 13 9f e5                                      ldr r1, [pc, #0x390]
00431020  0b 00 a0 e1                                      mov r0, fp
00431024  01 10 8f e0                                      add r1, pc, r1
00431028  c8 98 0d eb                                      bl #0x797350
0043102c  ac ff ff ea                                      b #0x430ee4
00431030  80 13 9f e5                                      ldr r1, [pc, #0x380]
00431034  0b 00 a0 e1                                      mov r0, fp
00431038  01 10 8f e0                                      add r1, pc, r1
0043103c  c3 98 0d eb                                      bl #0x797350
00431040  a7 ff ff ea                                      b #0x430ee4
00431044  70 13 9f e5                                      ldr r1, [pc, #0x370]
00431048  0b 00 a0 e1                                      mov r0, fp
0043104c  01 10 8f e0                                      add r1, pc, r1
00431050  be 98 0d eb                                      bl #0x797350
00431054  a2 ff ff ea                                      b #0x430ee4
00431058  60 13 9f e5                                      ldr r1, [pc, #0x360]
0043105c  0b 00 a0 e1                                      mov r0, fp
00431060  01 10 8f e0                                      add r1, pc, r1
00431064  b9 98 0d eb                                      bl #0x797350
00431068  9d ff ff ea                                      b #0x430ee4
0043106c  50 13 9f e5                                      ldr r1, [pc, #0x350]
00431070  0b 00 a0 e1                                      mov r0, fp
00431074  01 10 8f e0                                      add r1, pc, r1
00431078  b4 98 0d eb                                      bl #0x797350
0043107c  98 ff ff ea                                      b #0x430ee4
00431080  40 13 9f e5                                      ldr r1, [pc, #0x340]
00431084  0b 00 a0 e1                                      mov r0, fp
00431088  01 10 8f e0                                      add r1, pc, r1
0043108c  af 98 0d eb                                      bl #0x797350
00431090  93 ff ff ea                                      b #0x430ee4
00431094  30 13 9f e5                                      ldr r1, [pc, #0x330]
00431098  0b 00 a0 e1                                      mov r0, fp
0043109c  01 10 8f e0                                      add r1, pc, r1
004310a0  aa 98 0d eb                                      bl #0x797350
004310a4  8e ff ff ea                                      b #0x430ee4
004310a8  20 13 9f e5                                      ldr r1, [pc, #0x320]
004310ac  0b 00 a0 e1                                      mov r0, fp
004310b0  01 10 8f e0                                      add r1, pc, r1
004310b4  a5 98 0d eb                                      bl #0x797350
004310b8  89 ff ff ea                                      b #0x430ee4
004310bc  10 13 9f e5                                      ldr r1, [pc, #0x310]
004310c0  0b 00 a0 e1                                      mov r0, fp
004310c4  01 10 8f e0                                      add r1, pc, r1
004310c8  a0 98 0d eb                                      bl #0x797350
004310cc  84 ff ff ea                                      b #0x430ee4
004310d0  00 13 9f e5                                      ldr r1, [pc, #0x300]
004310d4  0b 00 a0 e1                                      mov r0, fp
004310d8  01 10 8f e0                                      add r1, pc, r1
004310dc  9b 98 0d eb                                      bl #0x797350
004310e0  7f ff ff ea                                      b #0x430ee4
004310e4  f0 12 9f e5                                      ldr r1, [pc, #0x2f0]
004310e8  0b 00 a0 e1                                      mov r0, fp
004310ec  01 10 8f e0                                      add r1, pc, r1
004310f0  96 98 0d eb                                      bl #0x797350
004310f4  7a ff ff ea                                      b #0x430ee4
004310f8  e0 12 9f e5                                      ldr r1, [pc, #0x2e0]
004310fc  0b 00 a0 e1                                      mov r0, fp
00431100  01 10 8f e0                                      add r1, pc, r1
00431104  91 98 0d eb                                      bl #0x797350
00431108  75 ff ff ea                                      b #0x430ee4
0043110c  d0 12 9f e5                                      ldr r1, [pc, #0x2d0]
00431110  0b 00 a0 e1                                      mov r0, fp
00431114  01 10 8f e0                                      add r1, pc, r1
00431118  8c 98 0d eb                                      bl #0x797350
0043111c  70 ff ff ea                                      b #0x430ee4
00431120  c0 12 9f e5                                      ldr r1, [pc, #0x2c0]
00431124  0b 00 a0 e1                                      mov r0, fp
00431128  01 10 8f e0                                      add r1, pc, r1
0043112c  87 98 0d eb                                      bl #0x797350
00431130  6b ff ff ea                                      b #0x430ee4
00431134  b0 12 9f e5                                      ldr r1, [pc, #0x2b0]
00431138  0b 00 a0 e1                                      mov r0, fp
0043113c  01 10 8f e0                                      add r1, pc, r1
00431140  82 98 0d eb                                      bl #0x797350
00431144  66 ff ff ea                                      b #0x430ee4
00431148  a0 12 9f e5                                      ldr r1, [pc, #0x2a0]
0043114c  0b 00 a0 e1                                      mov r0, fp
00431150  01 10 8f e0                                      add r1, pc, r1
00431154  7d 98 0d eb                                      bl #0x797350
00431158  61 ff ff ea                                      b #0x430ee4
0043115c  90 12 9f e5                                      ldr r1, [pc, #0x290]
00431160  0b 00 a0 e1                                      mov r0, fp
00431164  01 10 8f e0                                      add r1, pc, r1
00431168  78 98 0d eb                                      bl #0x797350
0043116c  5c ff ff ea                                      b #0x430ee4
00431170  80 12 9f e5                                      ldr r1, [pc, #0x280]
00431174  0b 00 a0 e1                                      mov r0, fp
00431178  01 10 8f e0                                      add r1, pc, r1
0043117c  73 98 0d eb                                      bl #0x797350
00431180  57 ff ff ea                                      b #0x430ee4
00431184  70 12 9f e5                                      ldr r1, [pc, #0x270]
00431188  0b 00 a0 e1                                      mov r0, fp
0043118c  01 10 8f e0                                      add r1, pc, r1
00431190  6e 98 0d eb                                      bl #0x797350
00431194  52 ff ff ea                                      b #0x430ee4
00431198  60 12 9f e5                                      ldr r1, [pc, #0x260]
0043119c  0b 00 a0 e1                                      mov r0, fp
004311a0  01 10 8f e0                                      add r1, pc, r1
004311a4  69 98 0d eb                                      bl #0x797350
004311a8  4d ff ff ea                                      b #0x430ee4
004311ac  50 12 9f e5                                      ldr r1, [pc, #0x250]
004311b0  0b 00 a0 e1                                      mov r0, fp
004311b4  01 10 8f e0                                      add r1, pc, r1
004311b8  64 98 0d eb                                      bl #0x797350
004311bc  48 ff ff ea                                      b #0x430ee4
004311c0  40 12 9f e5                                      ldr r1, [pc, #0x240]
004311c4  0b 00 a0 e1                                      mov r0, fp
004311c8  01 10 8f e0                                      add r1, pc, r1
004311cc  5f 98 0d eb                                      bl #0x797350
004311d0  43 ff ff ea                                      b #0x430ee4
004311d4  30 12 9f e5                                      ldr r1, [pc, #0x230]
004311d8  0b 00 a0 e1                                      mov r0, fp
004311dc  01 10 8f e0                                      add r1, pc, r1
004311e0  5a 98 0d eb                                      bl #0x797350
004311e4  3e ff ff ea                                      b #0x430ee4
004311e8  20 12 9f e5                                      ldr r1, [pc, #0x220]
004311ec  0b 00 a0 e1                                      mov r0, fp
004311f0  01 10 8f e0                                      add r1, pc, r1
004311f4  55 98 0d eb                                      bl #0x797350
004311f8  39 ff ff ea                                      b #0x430ee4
004311fc  10 12 9f e5                                      ldr r1, [pc, #0x210]
00431200  0b 00 a0 e1                                      mov r0, fp
00431204  01 10 8f e0                                      add r1, pc, r1
00431208  50 98 0d eb                                      bl #0x797350
0043120c  34 ff ff ea                                      b #0x430ee4
00431210  00 12 9f e5                                      ldr r1, [pc, #0x200]
00431214  4c 70 8d e2                                      add r7, sp, #0x4c
00431218  00 30 a0 e3                                      mov r3, #0
0043121c  07 00 a0 e1                                      mov r0, r7
00431220  01 10 8f e0                                      add r1, pc, r1
00431224  4d 30 cd e5                                      strb r3, [sp, #0x4d]
00431228  4c 30 cd e5                                      strb r3, [sp, #0x4c]
0043122c  47 98 0d eb                                      bl #0x797350
00431230  0b 00 a0 e1                                      mov r0, fp
00431234  07 10 a0 e1                                      mov r1, r7
00431238  3f 99 0d eb                                      bl #0x79773c
0043123c  07 00 a0 e1                                      mov r0, r7
00431240  b7 97 0d eb                                      bl #0x797124
00431244  26 ff ff ea                                      b #0x430ee4
00431248  30 00 a0 e3                                      mov r0, #0x30
0043124c  90 08 00 e0                                      mul r0, r0, r8
00431250  14 30 9d e5                                      ldr r3, [sp, #0x14]
00431254  28 00 80 e2                                      add r0, r0, #0x28
00431258  09 10 a0 e1                                      mov r1, sb
0043125c  00 00 83 e0                                      add r0, r3, r0
00431260  07 bb ff eb                                      bl #0x41fe84
00431264  2c 90 87 e5                                      str sb, [r7, #0x2c]
00431268  30 c0 a0 e3                                      mov ip, #0x30
0043126c  9c 08 0c e0                                      mul ip, ip, r8
00431270  10 30 9d e5                                      ldr r3, [sp, #0x10]
00431274  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
00431278  04 20 a0 e1                                      mov r2, r4
0043127c  0c 00 83 e0                                      add r0, r3, ip
00431280  01 10 8f e0                                      add r1, pc, r1
00431284  00 30 a0 e3                                      mov r3, #0
00431288  08 c0 8d e5                                      str ip, [sp, #8]
0043128c  83 da ff eb                                      bl #0x427ca0
00431290  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
00431294  08 c0 9d e5                                      ldr ip, [sp, #8]
00431298  00 00 53 e3                                      cmp r3, #0
0043129c  4f ff ff 0a                                      beq #0x430fe0
004312a0  28 30 97 e5                                      ldr r3, [r7, #0x28]
004312a4  04 90 d3 e5                                      ldrb sb, [r3, #4]
004312a8  00 00 59 e3                                      cmp sb, #0
004312ac  3f ff ff 1a                                      bne #0x430fb0
004312b0  10 30 9d e5                                      ldr r3, [sp, #0x10]
004312b4  28 00 8c e2                                      add r0, ip, #0x28
004312b8  09 10 a0 e1                                      mov r1, sb
004312bc  00 00 83 e0                                      add r0, r3, r0
004312c0  ef ba ff eb                                      bl #0x41fe84
004312c4  2c 90 87 e5                                      str sb, [r7, #0x2c]
004312c8  44 ff ff ea                                      b #0x430fe0
004312cc  30 31 0f eb                                      bl #0x7fd794
004312d0  05 30 d0 e5                                      ldrb r3, [r0, #5]
004312d4  00 00 53 e3                                      cmp r3, #0
004312d8  1a 00 00 1a                                      bne #0x431348
004312dc  0a 30 94 e7                                      ldr r3, [r4, sl]
004312e0  ab 30 d3 e5                                      ldrb r3, [r3, #0xab]
004312e4  00 00 53 e3                                      cmp r3, #0
004312e8  a7 fe ff 1a                                      bne #0x430d8c
004312ec  75 fe ff ea                                      b #0x430cc8
004312f0  47 af 87 e2                                      add sl, r7, #0x11c
004312f4  0a 00 a0 e1                                      mov r0, sl
004312f8  1b 75 fb eb                                      bl #0x30e76c
004312fc  00 00 50 e3                                      cmp r0, #0
00431300  0d ff ff 0a                                      beq #0x430f3c
00431304  1c 00 87 e2                                      add r0, r7, #0x1c
00431308  f7 a6 ff eb                                      bl #0x41aeec
0043130c  4c 00 87 e2                                      add r0, r7, #0x4c
00431310  f5 a6 ff eb                                      bl #0x41aeec
00431314  7c 00 87 e2                                      add r0, r7, #0x7c
00431318  f3 a6 ff eb                                      bl #0x41aeec
0043131c  ac 00 87 e2                                      add r0, r7, #0xac
00431320  f1 a6 ff eb                                      bl #0x41aeec
00431324  0a 00 a0 e1                                      mov r0, sl
00431328  c3 75 fb eb                                      bl #0x30ea3c
0043132c  ec 30 9f e5                                      ldr r3, [pc, #0xec]
00431330  ec 10 9f e5                                      ldr r1, [pc, #0xec]
00431334  08 00 a0 e1                                      mov r0, r8
00431338  03 20 94 e7                                      ldr r2, [r4, r3]
0043133c  01 10 8f e0                                      add r1, pc, r1
00431340  ef 73 fb eb                                      bl #0x30e304
00431344  fc fe ff ea                                      b #0x430f3c
00431348  d2 be fb eb                                      bl #0x320e98
0043134c  28 30 d0 e5                                      ldrb r3, [r0, #0x28]
00431350  00 00 53 e3                                      cmp r3, #0
00431354  5b fe ff 1a                                      bne #0x430cc8
00431358  8b fe ff ea                                      b #0x430d8c
0043135c  eb 73 fb eb                                      bl #0x30e310
00431360  00 50 a0 e3                                      mov r5, #0
00431364  f9 fd ff ea                                      b #0x430b50
; mapping-symbol data/literal pool
00431368  ac 3f 56 00 ac 40 00 00 44 a8 49 00 84 08 00 00  .byte 0xac, 0x3f, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0xa8, 0x49, 0x00, 0x84, 0x08, 0x00, 0x00
00431378  28 f3 48 00 ec a7 49 00 e0 f2 48 00 f4 37 00 00  .byte 0x28, 0xf3, 0x48, 0x00, 0xec, 0xa7, 0x49, 0x00, 0xe0, 0xf2, 0x48, 0x00, 0xf4, 0x37, 0x00, 0x00
00431388  48 aa 49 00 94 a5 49 00 74 42 57 00 d4 91 49 00  .byte 0x48, 0xaa, 0x49, 0x00, 0x94, 0xa5, 0x49, 0x00, 0x74, 0x42, 0x57, 0x00, 0xd4, 0x91, 0x49, 0x00
00431398  78 a5 49 00 4c 42 57 00 48 42 57 00 44 42 57 00  .byte 0x78, 0xa5, 0x49, 0x00, 0x4c, 0x42, 0x57, 0x00, 0x48, 0x42, 0x57, 0x00, 0x44, 0x42, 0x57, 0x00
004313a8  40 42 57 00 00 a5 49 00 a8 a4 49 00 3c a4 49 00  .byte 0x40, 0x42, 0x57, 0x00, 0x00, 0xa5, 0x49, 0x00, 0xa8, 0xa4, 0x49, 0x00, 0x3c, 0xa4, 0x49, 0x00
004313b8  18 a4 49 00 f4 a3 49 00 d0 a3 49 00 ac a3 49 00  .byte 0x18, 0xa4, 0x49, 0x00, 0xf4, 0xa3, 0x49, 0x00, 0xd0, 0xa3, 0x49, 0x00, 0xac, 0xa3, 0x49, 0x00
004313c8  88 a3 49 00 64 a3 49 00 e0 a3 49 00 bc a3 49 00  .byte 0x88, 0xa3, 0x49, 0x00, 0x64, 0xa3, 0x49, 0x00, 0xe0, 0xa3, 0x49, 0x00, 0xbc, 0xa3, 0x49, 0x00
004313d8  18 a3 49 00 f4 a2 49 00 d0 a2 49 00 ac a2 49 00  .byte 0x18, 0xa3, 0x49, 0x00, 0xf4, 0xa2, 0x49, 0x00, 0xd0, 0xa2, 0x49, 0x00, 0xac, 0xa2, 0x49, 0x00
004313e8  88 a2 49 00 6c a2 49 00 50 a2 49 00 34 a2 49 00  .byte 0x88, 0xa2, 0x49, 0x00, 0x6c, 0xa2, 0x49, 0x00, 0x50, 0xa2, 0x49, 0x00, 0x34, 0xa2, 0x49, 0x00
004313f8  18 a2 49 00 fc a1 49 00 e0 a1 49 00 c4 a1 49 00  .byte 0x18, 0xa2, 0x49, 0x00, 0xfc, 0xa1, 0x49, 0x00, 0xe0, 0xa1, 0x49, 0x00, 0xc4, 0xa1, 0x49, 0x00
00431408  a8 a1 49 00 8c a1 49 00 70 a1 49 00 54 a1 49 00  .byte 0xa8, 0xa1, 0x49, 0x00, 0x8c, 0xa1, 0x49, 0x00, 0x70, 0xa1, 0x49, 0x00, 0x54, 0xa1, 0x49, 0x00
00431418  e8 a5 49 00 80 1f 49 00 90 18 00 00 38 c8 ff ff  .byte 0xe8, 0xa5, 0x49, 0x00, 0x80, 0x1f, 0x49, 0x00, 0x90, 0x18, 0x00, 0x00, 0x38, 0xc8, 0xff, 0xff

; FUNCTION 0x00431750, declared_size=152, range_size=152, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager16RegisterListenerEP8MenuBase
; demangled: MenuManager::RegisterListener(MenuBase*)
; decoder-mode: arm
00431750  10 40 2d e9                                      push {r4, lr}
00431754  74 20 90 e5                                      ldr r2, [r0, #0x74]
00431758  01 30 a0 e1                                      mov r3, r1
0043175c  10 d0 4d e2                                      sub sp, sp, #0x10
00431760  00 00 52 e3                                      cmp r2, #0
00431764  70 10 80 e2                                      add r1, r0, #0x70
00431768  15 00 00 0a                                      beq #0x4317c4
0043176c  01 40 a0 e1                                      mov r4, r1
00431770  00 00 00 ea                                      b #0x431778
00431774  0c 20 a0 e1                                      mov r2, ip
00431778  10 c0 92 e5                                      ldr ip, [r2, #0x10]
0043177c  0c 00 53 e1                                      cmp r3, ip
00431780  0c c0 92 85                                      ldrhi ip, [r2, #0xc]
00431784  08 c0 92 95                                      ldrls ip, [r2, #8]
00431788  04 20 a0 81                                      movhi r2, r4
0043178c  02 40 a0 e1                                      mov r4, r2
00431790  00 00 5c e3                                      cmp ip, #0
00431794  f6 ff ff 1a                                      bne #0x431774
00431798  02 00 51 e1                                      cmp r1, r2
0043179c  0a 00 00 0a                                      beq #0x4317cc
004317a0  10 00 92 e5                                      ldr r0, [r2, #0x10]
004317a4  00 00 53 e1                                      cmp r3, r0
004317a8  05 00 00 3a                                      blo #0x4317c4
004317ac  02 00 51 e1                                      cmp r1, r2
004317b0  01 30 a0 13                                      movne r3, #1
004317b4  14 30 c2 15                                      strbne r3, [r2, #0x14]
004317b8  03 00 00 0a                                      beq #0x4317cc
004317bc  10 d0 8d e2                                      add sp, sp, #0x10
004317c0  10 80 bd e8                                      pop {r4, pc}
004317c4  01 20 a0 e1                                      mov r2, r1
004317c8  f7 ff ff ea                                      b #0x4317ac
004317cc  08 30 8d e5                                      str r3, [sp, #8]
004317d0  0d 00 a0 e1                                      mov r0, sp
004317d4  01 30 a0 e3                                      mov r3, #1
004317d8  08 20 8d e2                                      add r2, sp, #8
004317dc  0c 30 cd e5                                      strb r3, [sp, #0xc]
004317e0  7a ff ff eb                                      bl #0x4315d0
004317e4  f4 ff ff ea                                      b #0x4317bc

; FUNCTION 0x004317e8, declared_size=316, range_size=316, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager8PushMenuEP8MenuBase
; demangled: MenuManager::PushMenu(MenuBase*)
; decoder-mode: arm
004317e8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004317ec  1c 41 9f e5                                      ldr r4, [pc, #0x11c]
004317f0  1c 51 9f e5                                      ldr r5, [pc, #0x11c]
004317f4  24 d0 4d e2                                      sub sp, sp, #0x24
004317f8  04 40 8f e0                                      add r4, pc, r4
004317fc  05 30 94 e7                                      ldr r3, [r4, r5]
00431800  00 60 51 e2                                      subs r6, r1, #0
00431804  00 70 a0 e1                                      mov r7, r0
00431808  00 30 93 e5                                      ldr r3, [r3]
0043180c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00431810  0a 00 00 0a                                      beq #0x431840
00431814  00 30 96 e5                                      ldr r3, [r6]
00431818  06 00 a0 e1                                      mov r0, r6
0043181c  0f e0 a0 e1                                      mov lr, pc
00431820  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00431824  00 00 50 e3                                      cmp r0, #0
00431828  0b 00 00 1a                                      bne #0x43185c
0043182c  07 00 a0 e1                                      mov r0, r7
00431830  04 80 96 e5                                      ldr r8, [r6, #4]
00431834  d4 ec ff eb                                      bl #0x42cb8c
00431838  00 00 58 e1                                      cmp r8, r0
0043183c  2e 00 00 0a                                      beq #0x4318fc
00431840  05 30 94 e7                                      ldr r3, [r4, r5]
00431844  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00431848  00 30 93 e5                                      ldr r3, [r3]
0043184c  03 00 52 e1                                      cmp r2, r3
00431850  2d 00 00 1a                                      bne #0x43190c
00431854  24 d0 8d e2                                      add sp, sp, #0x24
00431858  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0043185c  f4 30 97 e5                                      ldr r3, [r7, #0xf4]
00431860  06 10 a0 e1                                      mov r1, r6
00431864  03 00 a0 e1                                      mov r0, r3
00431868  00 30 93 e5                                      ldr r3, [r3]
0043186c  0f e0 a0 e1                                      mov lr, pc
00431870  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00431874  00 00 50 e3                                      cmp r0, #0
00431878  eb ff ff 1a                                      bne #0x43182c
0043187c  94 30 9f e5                                      ldr r3, [pc, #0x94]
00431880  04 80 8d e2                                      add r8, sp, #4
00431884  03 a0 94 e7                                      ldr sl, [r4, r3]
00431888  0a 00 a0 e1                                      mov r0, sl
0043188c  ab dd fb eb                                      bl #0x328f40
00431890  20 00 9a e5                                      ldr r0, [sl, #0x20]
00431894  33 2b fc eb                                      bl #0x33c568
00431898  f4 30 97 e5                                      ldr r3, [r7, #0xf4]
0043189c  06 10 a0 e1                                      mov r1, r6
004318a0  03 00 a0 e1                                      mov r0, r3
004318a4  00 30 93 e5                                      ldr r3, [r3]
004318a8  0f e0 a0 e1                                      mov lr, pc
004318ac  34 f0 93 e5                                      ldr pc, [r3, #0x34]
004318b0  64 30 9f e5                                      ldr r3, [pc, #0x64]
004318b4  03 a0 94 e7                                      ldr sl, [r4, r3]
004318b8  0a 00 a0 e1                                      mov r0, sl
004318bc  f1 17 fc eb                                      bl #0x337888
004318c0  58 10 9f e5                                      ldr r1, [pc, #0x58]
004318c4  0d 20 a0 e1                                      mov r2, sp
004318c8  08 00 a0 e1                                      mov r0, r8
004318cc  01 10 8f e0                                      add r1, pc, r1
004318d0  05 8a fb eb                                      bl #0x3140ec
004318d4  08 10 a0 e1                                      mov r1, r8
004318d8  0a 00 a0 e1                                      mov r0, sl
004318dc  69 18 fc eb                                      bl #0x337a88
004318e0  08 00 a0 e1                                      mov r0, r8
004318e4  5a 9a fb eb                                      bl #0x318254
004318e8  07 00 a0 e1                                      mov r0, r7
004318ec  04 80 96 e5                                      ldr r8, [r6, #4]
004318f0  a5 ec ff eb                                      bl #0x42cb8c
004318f4  00 00 58 e1                                      cmp r8, r0
004318f8  d0 ff ff 1a                                      bne #0x431840
004318fc  07 00 a0 e1                                      mov r0, r7
00431900  06 10 a0 e1                                      mov r1, r6
00431904  91 ff ff eb                                      bl #0x431750
00431908  cc ff ff ea                                      b #0x431840
0043190c  7f 72 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00431910  98 32 56 00 ac 40 00 00 f4 37 00 00 84 08 00 00  .byte 0x98, 0x32, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
00431920  0c 88 49 00                                      .byte 0x0c, 0x88, 0x49, 0x00

; FUNCTION 0x00431924, declared_size=36, range_size=36, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager8PushMenuEPKc
; demangled: MenuManager::PushMenu(char const*)
; decoder-mode: arm
00431924  10 40 2d e9                                      push {r4, lr}
00431928  00 40 a0 e1                                      mov r4, r0
0043192c  2f ee ff eb                                      bl #0x42d1f0
00431930  00 10 50 e2                                      subs r1, r0, #0
00431934  02 00 00 0a                                      beq #0x431944
00431938  04 00 a0 e1                                      mov r0, r4
0043193c  10 40 bd e8                                      pop {r4, lr}
00431940  a8 ff ff ea                                      b #0x4317e8
00431944  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004319cc, declared_size=620, range_size=620, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManagerC2Ev
; demangled: MenuManager::MenuManager()
; decoder-mode: arm
004319cc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004319d0  38 62 9f e5                                      ldr r6, [pc, #0x238]
004319d4  38 22 9f e5                                      ldr r2, [pc, #0x238]
004319d8  38 32 9f e5                                      ldr r3, [pc, #0x238]
004319dc  06 60 8f e0                                      add r6, pc, r6
004319e0  02 90 96 e7                                      ldr sb, [r6, r2]
004319e4  03 30 96 e7                                      ldr r3, [r6, r3]
004319e8  80 d0 4d e2                                      sub sp, sp, #0x80
004319ec  00 20 99 e5                                      ldr r2, [sb]
004319f0  28 10 83 e2                                      add r1, r3, #0x28
004319f4  08 30 83 e2                                      add r3, r3, #8
004319f8  00 40 a0 e1                                      mov r4, r0
004319fc  04 10 80 e5                                      str r1, [r0, #4]
00431a00  00 30 80 e5                                      str r3, [r0]
00431a04  20 00 80 e2                                      add r0, r0, #0x20
00431a08  00 50 a0 e3                                      mov r5, #0
00431a0c  7c 20 8d e5                                      str r2, [sp, #0x7c]
00431a10  84 fe ff eb                                      bl #0x431428
00431a14  00 20 a0 e3                                      mov r2, #0
00431a18  04 30 a0 e1                                      mov r3, r4
00431a1c  58 20 84 e5                                      str r2, [r4, #0x58]
00431a20  54 20 84 e5                                      str r2, [r4, #0x54]
00431a24  50 20 84 e5                                      str r2, [r4, #0x50]
00431a28  01 70 a0 e3                                      mov r7, #1
00431a2c  5c 50 84 e5                                      str r5, [r4, #0x5c]
00431a30  60 50 84 e5                                      str r5, [r4, #0x60]
00431a34  64 50 84 e5                                      str r5, [r4, #0x64]
00431a38  68 50 84 e5                                      str r5, [r4, #0x68]
00431a3c  6c 50 84 e5                                      str r5, [r4, #0x6c]
00431a40  74 50 84 e5                                      str r5, [r4, #0x74]
00431a44  70 50 e3 e5                                      strb r5, [r3, #0x70]!
00431a48  7c 30 84 e5                                      str r3, [r4, #0x7c]
00431a4c  78 30 84 e5                                      str r3, [r4, #0x78]
00431a50  c4 70 c4 e5                                      strb r7, [r4, #0xc4]
00431a54  cc 00 84 e2                                      add r0, r4, #0xcc
00431a58  80 50 84 e5                                      str r5, [r4, #0x80]
00431a5c  88 50 c4 e5                                      strb r5, [r4, #0x88]
00431a60  ac 50 84 e5                                      str r5, [r4, #0xac]
00431a64  b0 50 84 e5                                      str r5, [r4, #0xb0]
00431a68  bc 50 84 e5                                      str r5, [r4, #0xbc]
00431a6c  c0 50 84 e5                                      str r5, [r4, #0xc0]
00431a70  cc 50 84 e5                                      str r5, [r4, #0xcc]
00431a74  d0 50 84 e5                                      str r5, [r4, #0xd0]
00431a78  d4 50 84 e5                                      str r5, [r4, #0xd4]
00431a7c  d8 50 84 e5                                      str r5, [r4, #0xd8]
00431a80  dc 50 84 e5                                      str r5, [r4, #0xdc]
00431a84  e0 50 84 e5                                      str r5, [r4, #0xe0]
00431a88  e4 50 84 e5                                      str r5, [r4, #0xe4]
00431a8c  e8 50 84 e5                                      str r5, [r4, #0xe8]
00431a90  ec 50 84 e5                                      str r5, [r4, #0xec]
00431a94  f0 50 84 e5                                      str r5, [r4, #0xf0]
00431a98  aa ff ff eb                                      bl #0x431948
00431a9c  00 30 e0 e3                                      mvn r3, #0
00431aa0  08 31 84 e5                                      str r3, [r4, #0x108]
00431aa4  70 31 9f e5                                      ldr r3, [pc, #0x170]
00431aa8  0c 51 84 e5                                      str r5, [r4, #0x10c]
00431aac  10 51 c4 e5                                      strb r5, [r4, #0x110]
00431ab0  03 00 96 e7                                      ldr r0, [r6, r3]
00431ab4  ad bd 0c eb                                      bl #0x761170
00431ab8  60 31 9f e5                                      ldr r3, [pc, #0x160]
00431abc  fe 25 a0 e3                                      mov r2, #0x3f800000
00431ac0  20 70 cd e5                                      strb r7, [sp, #0x20]
00431ac4  03 30 96 e7                                      ldr r3, [r6, r3]
00431ac8  24 20 8d e5                                      str r2, [sp, #0x24]
00431acc  04 50 8d e5                                      str r5, [sp, #4]
00431ad0  10 30 93 e5                                      ldr r3, [r3, #0x10]
00431ad4  08 50 8d e5                                      str r5, [sp, #8]
00431ad8  10 50 8d e5                                      str r5, [sp, #0x10]
00431adc  14 50 8d e5                                      str r5, [sp, #0x14]
00431ae0  0c 50 8d e5                                      str r5, [sp, #0xc]
00431ae4  18 50 8d e5                                      str r5, [sp, #0x18]
00431ae8  1c 50 8d e5                                      str r5, [sp, #0x1c]
00431aec  10 10 93 e5                                      ldr r1, [r3, #0x10]
00431af0  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
00431af4  04 00 8d e2                                      add r0, sp, #4
00431af8  04 10 8d e5                                      str r1, [sp, #4]
00431afc  03 20 96 e7                                      ldr r2, [r6, r3]
00431b00  02 3c a0 e3                                      mov r3, #0x200
00431b04  10 30 8d e5                                      str r3, [sp, #0x10]
00431b08  08 20 8d e5                                      str r2, [sp, #8]
00431b0c  14 30 8d e5                                      str r3, [sp, #0x14]
00431b10  20 50 cd e5                                      strb r5, [sp, #0x20]
00431b14  3e df 0d eb                                      bl #0x7a9814
00431b18  08 31 9f e5                                      ldr r3, [pc, #0x108]
00431b1c  64 a0 8d e2                                      add sl, sp, #0x64
00431b20  4c 80 8d e2                                      add r8, sp, #0x4c
00431b24  03 60 96 e7                                      ldr r6, [r6, r3]
00431b28  34 70 8d e2                                      add r7, sp, #0x34
00431b2c  06 00 a0 e1                                      mov r0, r6
00431b30  54 17 fc eb                                      bl #0x337888
00431b34  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
00431b38  30 20 8d e2                                      add r2, sp, #0x30
00431b3c  0a 00 a0 e1                                      mov r0, sl
00431b40  01 10 8f e0                                      add r1, pc, r1
00431b44  68 89 fb eb                                      bl #0x3140ec
00431b48  0a 10 a0 e1                                      mov r1, sl
00431b4c  05 20 a0 e1                                      mov r2, r5
00431b50  06 00 a0 e1                                      mov r0, r6
00431b54  a0 18 fc eb                                      bl #0x337ddc
00431b58  0a 00 a0 e1                                      mov r0, sl
00431b5c  bc 99 fb eb                                      bl #0x318254
00431b60  06 00 a0 e1                                      mov r0, r6
00431b64  47 17 fc eb                                      bl #0x337888
00431b68  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
00431b6c  2c 20 8d e2                                      add r2, sp, #0x2c
00431b70  08 00 a0 e1                                      mov r0, r8
00431b74  01 10 8f e0                                      add r1, pc, r1
00431b78  5b 89 fb eb                                      bl #0x3140ec
00431b7c  08 10 a0 e1                                      mov r1, r8
00431b80  05 20 a0 e1                                      mov r2, r5
00431b84  06 00 a0 e1                                      mov r0, r6
00431b88  93 18 fc eb                                      bl #0x337ddc
00431b8c  08 00 a0 e1                                      mov r0, r8
00431b90  af 99 fb eb                                      bl #0x318254
00431b94  06 00 a0 e1                                      mov r0, r6
00431b98  3a 17 fc eb                                      bl #0x337888
00431b9c  90 10 9f e5                                      ldr r1, [pc, #0x90]
00431ba0  28 20 8d e2                                      add r2, sp, #0x28
00431ba4  07 00 a0 e1                                      mov r0, r7
00431ba8  01 10 8f e0                                      add r1, pc, r1
00431bac  4e 89 fb eb                                      bl #0x3140ec
00431bb0  05 20 a0 e1                                      mov r2, r5
00431bb4  06 00 a0 e1                                      mov r0, r6
00431bb8  07 10 a0 e1                                      mov r1, r7
00431bbc  86 18 fc eb                                      bl #0x337ddc
00431bc0  07 00 a0 e1                                      mov r0, r7
00431bc4  a2 99 fb eb                                      bl #0x318254
00431bc8  08 10 a0 e3                                      mov r1, #8
00431bcc  59 0f a0 e3                                      mov r0, #0x164
00431bd0  66 7a fb eb                                      bl #0x310570
00431bd4  00 60 a0 e1                                      mov r6, r0
00431bd8  91 18 00 eb                                      bl #0x437e24
00431bdc  f4 60 84 e5                                      str r6, [r4, #0xf4]
00431be0  04 51 84 e5                                      str r5, [r4, #0x104]
00431be4  f8 50 84 e5                                      str r5, [r4, #0xf8]
00431be8  fc 50 84 e5                                      str r5, [r4, #0xfc]
00431bec  00 51 84 e5                                      str r5, [r4, #0x100]
00431bf0  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00431bf4  00 30 99 e5                                      ldr r3, [sb]
00431bf8  04 00 a0 e1                                      mov r0, r4
00431bfc  03 00 52 e1                                      cmp r2, r3
00431c00  01 00 00 1a                                      bne #0x431c0c
00431c04  80 d0 8d e2                                      add sp, sp, #0x80
00431c08  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00431c0c  bf 71 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00431c10  b4 30 56 00 ac 40 00 00 fc 39 00 00 8c 26 00 00  .byte 0xb4, 0x30, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0xfc, 0x39, 0x00, 0x00, 0x8c, 0x26, 0x00, 0x00
00431c20  f4 37 00 00 d0 3a 00 00 84 08 00 00 10 e3 48 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xd0, 0x3a, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x10, 0xe3, 0x48, 0x00
00431c30  fc e2 48 00 e8 e2 48 00                          .byte 0xfc, 0xe2, 0x48, 0x00, 0xe8, 0xe2, 0x48, 0x00

; FUNCTION 0x00431c38, declared_size=620, range_size=620, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManagerC1Ev
; demangled: MenuManager::MenuManager()
; decoder-mode: arm
00431c38  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00431c3c  38 62 9f e5                                      ldr r6, [pc, #0x238]
00431c40  38 22 9f e5                                      ldr r2, [pc, #0x238]
00431c44  38 32 9f e5                                      ldr r3, [pc, #0x238]
00431c48  06 60 8f e0                                      add r6, pc, r6
00431c4c  02 90 96 e7                                      ldr sb, [r6, r2]
00431c50  03 30 96 e7                                      ldr r3, [r6, r3]
00431c54  80 d0 4d e2                                      sub sp, sp, #0x80
00431c58  00 20 99 e5                                      ldr r2, [sb]
00431c5c  28 10 83 e2                                      add r1, r3, #0x28
00431c60  08 30 83 e2                                      add r3, r3, #8
00431c64  00 40 a0 e1                                      mov r4, r0
00431c68  04 10 80 e5                                      str r1, [r0, #4]
00431c6c  00 30 80 e5                                      str r3, [r0]
00431c70  20 00 80 e2                                      add r0, r0, #0x20
00431c74  00 50 a0 e3                                      mov r5, #0
00431c78  7c 20 8d e5                                      str r2, [sp, #0x7c]
00431c7c  e9 fd ff eb                                      bl #0x431428
00431c80  00 20 a0 e3                                      mov r2, #0
00431c84  04 30 a0 e1                                      mov r3, r4
00431c88  58 20 84 e5                                      str r2, [r4, #0x58]
00431c8c  54 20 84 e5                                      str r2, [r4, #0x54]
00431c90  50 20 84 e5                                      str r2, [r4, #0x50]
00431c94  01 70 a0 e3                                      mov r7, #1
00431c98  5c 50 84 e5                                      str r5, [r4, #0x5c]
00431c9c  60 50 84 e5                                      str r5, [r4, #0x60]
00431ca0  64 50 84 e5                                      str r5, [r4, #0x64]
00431ca4  68 50 84 e5                                      str r5, [r4, #0x68]
00431ca8  6c 50 84 e5                                      str r5, [r4, #0x6c]
00431cac  74 50 84 e5                                      str r5, [r4, #0x74]
00431cb0  70 50 e3 e5                                      strb r5, [r3, #0x70]!
00431cb4  7c 30 84 e5                                      str r3, [r4, #0x7c]
00431cb8  78 30 84 e5                                      str r3, [r4, #0x78]
00431cbc  c4 70 c4 e5                                      strb r7, [r4, #0xc4]
00431cc0  cc 00 84 e2                                      add r0, r4, #0xcc
00431cc4  80 50 84 e5                                      str r5, [r4, #0x80]
00431cc8  88 50 c4 e5                                      strb r5, [r4, #0x88]
00431ccc  ac 50 84 e5                                      str r5, [r4, #0xac]
00431cd0  b0 50 84 e5                                      str r5, [r4, #0xb0]
00431cd4  bc 50 84 e5                                      str r5, [r4, #0xbc]
00431cd8  c0 50 84 e5                                      str r5, [r4, #0xc0]
00431cdc  cc 50 84 e5                                      str r5, [r4, #0xcc]
00431ce0  d0 50 84 e5                                      str r5, [r4, #0xd0]
00431ce4  d4 50 84 e5                                      str r5, [r4, #0xd4]
00431ce8  d8 50 84 e5                                      str r5, [r4, #0xd8]
00431cec  dc 50 84 e5                                      str r5, [r4, #0xdc]
00431cf0  e0 50 84 e5                                      str r5, [r4, #0xe0]
00431cf4  e4 50 84 e5                                      str r5, [r4, #0xe4]
00431cf8  e8 50 84 e5                                      str r5, [r4, #0xe8]
00431cfc  ec 50 84 e5                                      str r5, [r4, #0xec]
00431d00  f0 50 84 e5                                      str r5, [r4, #0xf0]
00431d04  0f ff ff eb                                      bl #0x431948
00431d08  00 30 e0 e3                                      mvn r3, #0
00431d0c  08 31 84 e5                                      str r3, [r4, #0x108]
00431d10  70 31 9f e5                                      ldr r3, [pc, #0x170]
00431d14  0c 51 84 e5                                      str r5, [r4, #0x10c]
00431d18  10 51 c4 e5                                      strb r5, [r4, #0x110]
00431d1c  03 00 96 e7                                      ldr r0, [r6, r3]
00431d20  12 bd 0c eb                                      bl #0x761170
00431d24  60 31 9f e5                                      ldr r3, [pc, #0x160]
00431d28  fe 25 a0 e3                                      mov r2, #0x3f800000
00431d2c  20 70 cd e5                                      strb r7, [sp, #0x20]
00431d30  03 30 96 e7                                      ldr r3, [r6, r3]
00431d34  24 20 8d e5                                      str r2, [sp, #0x24]
00431d38  04 50 8d e5                                      str r5, [sp, #4]
00431d3c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00431d40  08 50 8d e5                                      str r5, [sp, #8]
00431d44  10 50 8d e5                                      str r5, [sp, #0x10]
00431d48  14 50 8d e5                                      str r5, [sp, #0x14]
00431d4c  0c 50 8d e5                                      str r5, [sp, #0xc]
00431d50  18 50 8d e5                                      str r5, [sp, #0x18]
00431d54  1c 50 8d e5                                      str r5, [sp, #0x1c]
00431d58  10 10 93 e5                                      ldr r1, [r3, #0x10]
00431d5c  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
00431d60  04 00 8d e2                                      add r0, sp, #4
00431d64  04 10 8d e5                                      str r1, [sp, #4]
00431d68  03 20 96 e7                                      ldr r2, [r6, r3]
00431d6c  02 3c a0 e3                                      mov r3, #0x200
00431d70  10 30 8d e5                                      str r3, [sp, #0x10]
00431d74  08 20 8d e5                                      str r2, [sp, #8]
00431d78  14 30 8d e5                                      str r3, [sp, #0x14]
00431d7c  20 50 cd e5                                      strb r5, [sp, #0x20]
00431d80  a3 de 0d eb                                      bl #0x7a9814
00431d84  08 31 9f e5                                      ldr r3, [pc, #0x108]
00431d88  64 a0 8d e2                                      add sl, sp, #0x64
00431d8c  4c 80 8d e2                                      add r8, sp, #0x4c
00431d90  03 60 96 e7                                      ldr r6, [r6, r3]
00431d94  34 70 8d e2                                      add r7, sp, #0x34
00431d98  06 00 a0 e1                                      mov r0, r6
00431d9c  b9 16 fc eb                                      bl #0x337888
00431da0  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
00431da4  30 20 8d e2                                      add r2, sp, #0x30
00431da8  0a 00 a0 e1                                      mov r0, sl
00431dac  01 10 8f e0                                      add r1, pc, r1
00431db0  cd 88 fb eb                                      bl #0x3140ec
00431db4  0a 10 a0 e1                                      mov r1, sl
00431db8  05 20 a0 e1                                      mov r2, r5
00431dbc  06 00 a0 e1                                      mov r0, r6
00431dc0  05 18 fc eb                                      bl #0x337ddc
00431dc4  0a 00 a0 e1                                      mov r0, sl
00431dc8  21 99 fb eb                                      bl #0x318254
00431dcc  06 00 a0 e1                                      mov r0, r6
00431dd0  ac 16 fc eb                                      bl #0x337888
00431dd4  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
00431dd8  2c 20 8d e2                                      add r2, sp, #0x2c
00431ddc  08 00 a0 e1                                      mov r0, r8
00431de0  01 10 8f e0                                      add r1, pc, r1
00431de4  c0 88 fb eb                                      bl #0x3140ec
00431de8  08 10 a0 e1                                      mov r1, r8
00431dec  05 20 a0 e1                                      mov r2, r5
00431df0  06 00 a0 e1                                      mov r0, r6
00431df4  f8 17 fc eb                                      bl #0x337ddc
00431df8  08 00 a0 e1                                      mov r0, r8
00431dfc  14 99 fb eb                                      bl #0x318254
00431e00  06 00 a0 e1                                      mov r0, r6
00431e04  9f 16 fc eb                                      bl #0x337888
00431e08  90 10 9f e5                                      ldr r1, [pc, #0x90]
00431e0c  28 20 8d e2                                      add r2, sp, #0x28
00431e10  07 00 a0 e1                                      mov r0, r7
00431e14  01 10 8f e0                                      add r1, pc, r1
00431e18  b3 88 fb eb                                      bl #0x3140ec
00431e1c  05 20 a0 e1                                      mov r2, r5
00431e20  06 00 a0 e1                                      mov r0, r6
00431e24  07 10 a0 e1                                      mov r1, r7
00431e28  eb 17 fc eb                                      bl #0x337ddc
00431e2c  07 00 a0 e1                                      mov r0, r7
00431e30  07 99 fb eb                                      bl #0x318254
00431e34  08 10 a0 e3                                      mov r1, #8
00431e38  59 0f a0 e3                                      mov r0, #0x164
00431e3c  cb 79 fb eb                                      bl #0x310570
00431e40  00 60 a0 e1                                      mov r6, r0
00431e44  f6 17 00 eb                                      bl #0x437e24
00431e48  f4 60 84 e5                                      str r6, [r4, #0xf4]
00431e4c  04 51 84 e5                                      str r5, [r4, #0x104]
00431e50  f8 50 84 e5                                      str r5, [r4, #0xf8]
00431e54  fc 50 84 e5                                      str r5, [r4, #0xfc]
00431e58  00 51 84 e5                                      str r5, [r4, #0x100]
00431e5c  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00431e60  00 30 99 e5                                      ldr r3, [sb]
00431e64  04 00 a0 e1                                      mov r0, r4
00431e68  03 00 52 e1                                      cmp r2, r3
00431e6c  01 00 00 1a                                      bne #0x431e78
00431e70  80 d0 8d e2                                      add sp, sp, #0x80
00431e74  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00431e78  24 71 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00431e7c  48 2e 56 00 ac 40 00 00 fc 39 00 00 8c 26 00 00  .byte 0x48, 0x2e, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0xfc, 0x39, 0x00, 0x00, 0x8c, 0x26, 0x00, 0x00
00431e8c  f4 37 00 00 d0 3a 00 00 84 08 00 00 a4 e0 48 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xd0, 0x3a, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xa4, 0xe0, 0x48, 0x00
00431e9c  90 e0 48 00 7c e0 48 00                          .byte 0x90, 0xe0, 0x48, 0x00, 0x7c, 0xe0, 0x48, 0x00

; FUNCTION 0x00431ea4, declared_size=1592, range_size=1592, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager8LoadMenuEi
; demangled: MenuManager::LoadMenu(int)
; decoder-mode: arm
00431ea4  08 36 9f e5                                      ldr r3, [pc, #0x608]
00431ea8  08 26 9f e5                                      ldr r2, [pc, #0x608]
00431eac  70 40 2d e9                                      push {r4, r5, r6, lr}
00431eb0  03 30 8f e0                                      add r3, pc, r3
00431eb4  02 20 93 e7                                      ldr r2, [r3, r2]
00431eb8  01 50 a0 e1                                      mov r5, r1
00431ebc  56 13 00 e3                                      movw r1, #0x356
00431ec0  00 20 92 e5                                      ldr r2, [r2]
00431ec4  00 40 a0 e1                                      mov r4, r0
00431ec8  01 00 52 e1                                      cmp r2, r1
00431ecc  4c 01 00 0a                                      beq #0x432404
00431ed0  0f 0d 52 e3                                      cmp r2, #0x3c0
00431ed4  43 01 00 0a                                      beq #0x4323e8
00431ed8  32 0e 52 e3                                      cmp r2, #0x320
00431edc  a3 00 00 0a                                      beq #0x432170
00431ee0  d4 35 9f e5                                      ldr r3, [pc, #0x5d4]
00431ee4  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
00431ee8  05 20 a0 e1                                      mov r2, r5
00431eec  03 30 8f e0                                      add r3, pc, r3
00431ef0  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
00431ef4  9b 17 00 eb                                      bl #0x437d68
00431ef8  03 00 55 e3                                      cmp r5, #3
00431efc  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00431f00  ad 00 00 8a                                      bhi #0x4321bc
00431f04  4c 60 85 e2                                      add r6, r5, #0x4c
00431f08  06 31 83 e0                                      add r3, r3, r6, lsl #2
00431f0c  04 00 93 e5                                      ldr r0, [r3, #4]
00431f10  84 10 a0 e3                                      mov r1, #0x84
00431f14  5f d7 0d eb                                      bl #0x7a7c98
00431f18  03 00 55 e3                                      cmp r5, #3
00431f1c  15 00 00 1a                                      bne #0x431f78
00431f20  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00431f24  04 10 a0 e3                                      mov r1, #4
00431f28  40 01 93 e5                                      ldr r0, [r3, #0x140]
00431f2c  59 d7 0d eb                                      bl #0x7a7c98
00431f30  a6 b3 ff eb                                      bl #0x41edd0
00431f34  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00431f38  40 31 93 e5                                      ldr r3, [r3, #0x140]
00431f3c  7c 35 80 e5                                      str r3, [r0, #0x57c]
00431f40  4e ae ff eb                                      bl #0x41d880
00431f44  74 a4 ff eb                                      bl #0x41b11c
00431f48  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00431f4c  40 31 93 e5                                      ldr r3, [r3, #0x140]
00431f50  58 36 80 e5                                      str r3, [r0, #0x658]
00431f54  fc 9e ff eb                                      bl #0x419b4c
00431f58  cc 87 ff eb                                      bl #0x413e90
00431f5c  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00431f60  40 11 93 e5                                      ldr r1, [r3, #0x140]
00431f64  9b 8c ff eb                                      bl #0x4151d8
00431f68  04 00 a0 e1                                      mov r0, r4
00431f6c  06 eb ff eb                                      bl #0x42cb8c
00431f70  04 10 84 e2                                      add r1, r4, #4
00431f74  3c d7 0d eb                                      bl #0x7a7c6c
00431f78  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00431f7c  06 61 83 e0                                      add r6, r3, r6, lsl #2
00431f80  04 30 96 e5                                      ldr r3, [r6, #4]
00431f84  03 00 a0 e1                                      mov r0, r3
00431f88  01 10 a0 e3                                      mov r1, #1
00431f8c  00 30 93 e5                                      ldr r3, [r3]
00431f90  00 20 a0 e3                                      mov r2, #0
00431f94  0f e0 a0 e1                                      mov lr, pc
00431f98  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00431f9c  af e1 ff eb                                      bl #0x42a660
00431fa0  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
00431fa4  00 50 a0 e1                                      mov r5, r0
00431fa8  00 00 53 e3                                      cmp r3, #0
00431fac  02 01 00 0a                                      beq #0x4323bc
00431fb0  48 00 90 e5                                      ldr r0, [r0, #0x48]
00431fb4  04 30 d0 e5                                      ldrb r3, [r0, #4]
00431fb8  00 00 53 e3                                      cmp r3, #0
00431fbc  f6 00 00 0a                                      beq #0x43239c
00431fc0  4d e1 ff eb                                      bl #0x42a4fc
00431fc4  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
00431fc8  00 50 a0 e1                                      mov r5, r0
00431fcc  00 00 53 e3                                      cmp r3, #0
00431fd0  ee 00 00 0a                                      beq #0x432390
00431fd4  48 00 90 e5                                      ldr r0, [r0, #0x48]
00431fd8  04 30 d0 e5                                      ldrb r3, [r0, #4]
00431fdc  00 00 53 e3                                      cmp r3, #0
00431fe0  e2 00 00 0a                                      beq #0x432370
00431fe4  dc e8 ff eb                                      bl #0x42c35c
00431fe8  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
00431fec  00 50 a0 e1                                      mov r5, r0
00431ff0  00 00 53 e3                                      cmp r3, #0
00431ff4  d6 00 00 0a                                      beq #0x432354
00431ff8  48 00 90 e5                                      ldr r0, [r0, #0x48]
00431ffc  04 30 d0 e5                                      ldrb r3, [r0, #4]
00432000  00 00 53 e3                                      cmp r3, #0
00432004  ca 00 00 0a                                      beq #0x432334
00432008  c4 05 00 eb                                      bl #0x433720
0043200c  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
00432010  00 50 a0 e1                                      mov r5, r0
00432014  00 00 53 e3                                      cmp r3, #0
00432018  be 00 00 0a                                      beq #0x432318
0043201c  48 00 90 e5                                      ldr r0, [r0, #0x48]
00432020  04 30 d0 e5                                      ldrb r3, [r0, #4]
00432024  00 00 53 e3                                      cmp r3, #0
00432028  b2 00 00 0a                                      beq #0x4322f8
0043202c  b7 de ff eb                                      bl #0x429b10
00432030  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
00432034  00 50 a0 e1                                      mov r5, r0
00432038  00 00 53 e3                                      cmp r3, #0
0043203c  94 00 00 0a                                      beq #0x432294
00432040  48 00 90 e5                                      ldr r0, [r0, #0x48]
00432044  04 30 d0 e5                                      ldrb r3, [r0, #4]
00432048  00 00 53 e3                                      cmp r3, #0
0043204c  88 00 00 0a                                      beq #0x432274
00432050  f8 e3 ff eb                                      bl #0x42b038
00432054  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
00432058  00 50 a0 e1                                      mov r5, r0
0043205c  00 00 53 e3                                      cmp r3, #0
00432060  7c 00 00 0a                                      beq #0x432258
00432064  48 00 90 e5                                      ldr r0, [r0, #0x48]
00432068  04 30 d0 e5                                      ldrb r3, [r0, #4]
0043206c  00 00 53 e3                                      cmp r3, #0
00432070  70 00 00 0a                                      beq #0x432238
00432074  01 0e 00 eb                                      bl #0x435880
00432078  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
0043207c  00 50 a0 e1                                      mov r5, r0
00432080  00 00 53 e3                                      cmp r3, #0
00432084  64 00 00 0a                                      beq #0x43221c
00432088  48 00 90 e5                                      ldr r0, [r0, #0x48]
0043208c  04 30 d0 e5                                      ldrb r3, [r0, #4]
00432090  00 00 53 e3                                      cmp r3, #0
00432094  58 00 00 0a                                      beq #0x4321fc
00432098  84 83 00 eb                                      bl #0x452eb0
0043209c  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
004320a0  00 50 a0 e1                                      mov r5, r0
004320a4  00 00 53 e3                                      cmp r3, #0
004320a8  50 00 00 0a                                      beq #0x4321f0
004320ac  48 00 90 e5                                      ldr r0, [r0, #0x48]
004320b0  04 30 d0 e5                                      ldrb r3, [r0, #4]
004320b4  00 00 53 e3                                      cmp r3, #0
004320b8  44 00 00 0a                                      beq #0x4321d0
004320bc  38 87 00 eb                                      bl #0x453da4
004320c0  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
004320c4  00 50 a0 e1                                      mov r5, r0
004320c8  00 00 53 e3                                      cmp r3, #0
004320cc  86 00 00 0a                                      beq #0x4322ec
004320d0  48 00 90 e5                                      ldr r0, [r0, #0x48]
004320d4  04 30 d0 e5                                      ldrb r3, [r0, #4]
004320d8  00 00 53 e3                                      cmp r3, #0
004320dc  7a 00 00 0a                                      beq #0x4322cc
004320e0  04 11 00 eb                                      bl #0x4364f8
004320e4  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
004320e8  00 50 a0 e1                                      mov r5, r0
004320ec  00 00 53 e3                                      cmp r3, #0
004320f0  72 00 00 0a                                      beq #0x4322c0
004320f4  48 00 90 e5                                      ldr r0, [r0, #0x48]
004320f8  04 30 d0 e5                                      ldrb r3, [r0, #4]
004320fc  00 00 53 e3                                      cmp r3, #0
00432100  66 00 00 0a                                      beq #0x4322a0
00432104  64 30 94 e5                                      ldr r3, [r4, #0x64]
00432108  68 50 94 e5                                      ldr r5, [r4, #0x68]
0043210c  04 00 a0 e1                                      mov r0, r4
00432110  05 50 63 e0                                      rsb r5, r3, r5
00432114  a7 f3 ff eb                                      bl #0x42efb8
00432118  64 30 94 e5                                      ldr r3, [r4, #0x64]
0043211c  68 20 94 e5                                      ldr r2, [r4, #0x68]
00432120  45 51 a0 e1                                      asr r5, r5, #2
00432124  02 20 63 e0                                      rsb r2, r3, r2
00432128  42 01 55 e1                                      cmp r5, r2, asr #2
0043212c  21 00 00 2a                                      bhs #0x4321b8
00432130  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00432134  00 10 a0 e3                                      mov r1, #0
00432138  1e c7 ff eb                                      bl #0x423db8
0043213c  64 30 94 e5                                      ldr r3, [r4, #0x64]
00432140  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
00432144  01 50 85 e2                                      add r5, r5, #1
00432148  03 00 a0 e1                                      mov r0, r3
0043214c  00 30 93 e5                                      ldr r3, [r3]
00432150  0f e0 a0 e1                                      mov lr, pc
00432154  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00432158  64 30 94 e5                                      ldr r3, [r4, #0x64]
0043215c  68 20 94 e5                                      ldr r2, [r4, #0x68]
00432160  02 20 63 e0                                      rsb r2, r3, r2
00432164  42 01 55 e1                                      cmp r5, r2, asr #2
00432168  f0 ff ff 3a                                      blo #0x432130
0043216c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00432170  48 23 9f e5                                      ldr r2, [pc, #0x348]
00432174  02 20 93 e7                                      ldr r2, [r3, r2]
00432178  00 20 d2 e5                                      ldrb r2, [r2]
0043217c  00 00 52 e3                                      cmp r2, #0
00432180  bb 00 00 1a                                      bne #0x432474
00432184  38 23 9f e5                                      ldr r2, [pc, #0x338]
00432188  02 30 93 e7                                      ldr r3, [r3, r2]
0043218c  00 30 d3 e5                                      ldrb r3, [r3]
00432190  00 00 53 e3                                      cmp r3, #0
00432194  be 00 00 0a                                      beq #0x432494
00432198  28 33 9f e5                                      ldr r3, [pc, #0x328]
0043219c  05 20 a0 e1                                      mov r2, r5
004321a0  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
004321a4  03 30 8f e0                                      add r3, pc, r3
004321a8  05 31 83 e0                                      add r3, r3, r5, lsl #2
004321ac  20 10 93 e5                                      ldr r1, [r3, #0x20]
004321b0  ec 16 00 eb                                      bl #0x437d68
004321b4  4f ff ff ea                                      b #0x431ef8
004321b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004321bc  00 00 a0 e3                                      mov r0, #0
004321c0  84 10 a0 e3                                      mov r1, #0x84
004321c4  b3 d6 0d eb                                      bl #0x7a7c98
004321c8  00 30 a0 e3                                      mov r3, #0
004321cc  6c ff ff ea                                      b #0x431f84
004321d0  00 10 90 e5                                      ldr r1, [r0]
004321d4  01 10 41 e2                                      sub r1, r1, #1
004321d8  00 00 51 e3                                      cmp r1, #0
004321dc  00 10 80 e5                                      str r1, [r0]
004321e0  95 00 00 0a                                      beq #0x43243c
004321e4  00 30 a0 e3                                      mov r3, #0
004321e8  4c 30 85 e5                                      str r3, [r5, #0x4c]
004321ec  48 30 85 e5                                      str r3, [r5, #0x48]
004321f0  2e 83 00 eb                                      bl #0x452eb0
004321f4  01 83 00 eb                                      bl #0x452e00
004321f8  af ff ff ea                                      b #0x4320bc
004321fc  00 10 90 e5                                      ldr r1, [r0]
00432200  01 10 41 e2                                      sub r1, r1, #1
00432204  00 00 51 e3                                      cmp r1, #0
00432208  00 10 80 e5                                      str r1, [r0]
0043220c  96 00 00 0a                                      beq #0x43246c
00432210  00 30 a0 e3                                      mov r3, #0
00432214  4c 30 85 e5                                      str r3, [r5, #0x4c]
00432218  48 30 85 e5                                      str r3, [r5, #0x48]
0043221c  1a ea ff eb                                      bl #0x42ca8c
00432220  00 50 a0 e1                                      mov r5, r0
00432224  95 0d 00 eb                                      bl #0x435880
00432228  00 10 a0 e1                                      mov r1, r0
0043222c  05 00 a0 e1                                      mov r0, r5
00432230  17 f3 ff eb                                      bl #0x42ee94
00432234  97 ff ff ea                                      b #0x432098
00432238  00 10 90 e5                                      ldr r1, [r0]
0043223c  01 10 41 e2                                      sub r1, r1, #1
00432240  00 00 51 e3                                      cmp r1, #0
00432244  00 10 80 e5                                      str r1, [r0]
00432248  85 00 00 0a                                      beq #0x432464
0043224c  00 30 a0 e3                                      mov r3, #0
00432250  4c 30 85 e5                                      str r3, [r5, #0x4c]
00432254  48 30 85 e5                                      str r3, [r5, #0x48]
00432258  0b ea ff eb                                      bl #0x42ca8c
0043225c  00 50 a0 e1                                      mov r5, r0
00432260  74 e3 ff eb                                      bl #0x42b038
00432264  00 10 a0 e1                                      mov r1, r0
00432268  05 00 a0 e1                                      mov r0, r5
0043226c  08 f3 ff eb                                      bl #0x42ee94
00432270  7f ff ff ea                                      b #0x432074
00432274  00 10 90 e5                                      ldr r1, [r0]
00432278  01 10 41 e2                                      sub r1, r1, #1
0043227c  00 00 51 e3                                      cmp r1, #0
00432280  00 10 80 e5                                      str r1, [r0]
00432284  74 00 00 0a                                      beq #0x43245c
00432288  00 30 a0 e3                                      mov r3, #0
0043228c  4c 30 85 e5                                      str r3, [r5, #0x4c]
00432290  48 30 85 e5                                      str r3, [r5, #0x48]
00432294  1d de ff eb                                      bl #0x429b10
00432298  88 da ff eb                                      bl #0x428cc0
0043229c  6b ff ff ea                                      b #0x432050
004322a0  00 10 90 e5                                      ldr r1, [r0]
004322a4  01 10 41 e2                                      sub r1, r1, #1
004322a8  00 00 51 e3                                      cmp r1, #0
004322ac  00 10 80 e5                                      str r1, [r0]
004322b0  67 00 00 0a                                      beq #0x432454
004322b4  00 30 a0 e3                                      mov r3, #0
004322b8  4c 30 85 e5                                      str r3, [r5, #0x4c]
004322bc  48 30 85 e5                                      str r3, [r5, #0x48]
004322c0  8c 10 00 eb                                      bl #0x4364f8
004322c4  88 0f 00 eb                                      bl #0x4360ec
004322c8  8d ff ff ea                                      b #0x432104
004322cc  00 10 90 e5                                      ldr r1, [r0]
004322d0  01 10 41 e2                                      sub r1, r1, #1
004322d4  00 00 51 e3                                      cmp r1, #0
004322d8  00 10 80 e5                                      str r1, [r0]
004322dc  58 00 00 0a                                      beq #0x432444
004322e0  00 30 a0 e3                                      mov r3, #0
004322e4  4c 30 85 e5                                      str r3, [r5, #0x4c]
004322e8  48 30 85 e5                                      str r3, [r5, #0x48]
004322ec  ac 86 00 eb                                      bl #0x453da4
004322f0  51 86 00 eb                                      bl #0x453c3c
004322f4  79 ff ff ea                                      b #0x4320e0
004322f8  00 10 90 e5                                      ldr r1, [r0]
004322fc  01 10 41 e2                                      sub r1, r1, #1
00432300  00 00 51 e3                                      cmp r1, #0
00432304  00 10 80 e5                                      str r1, [r0]
00432308  4f 00 00 0a                                      beq #0x43244c
0043230c  00 30 a0 e3                                      mov r3, #0
00432310  4c 30 85 e5                                      str r3, [r5, #0x4c]
00432314  48 30 85 e5                                      str r3, [r5, #0x48]
00432318  db e9 ff eb                                      bl #0x42ca8c
0043231c  00 50 a0 e1                                      mov r5, r0
00432320  fe 04 00 eb                                      bl #0x433720
00432324  00 10 a0 e1                                      mov r1, r0
00432328  05 00 a0 e1                                      mov r0, r5
0043232c  d8 f2 ff eb                                      bl #0x42ee94
00432330  3d ff ff ea                                      b #0x43202c
00432334  00 10 90 e5                                      ldr r1, [r0]
00432338  01 10 41 e2                                      sub r1, r1, #1
0043233c  00 00 51 e3                                      cmp r1, #0
00432340  00 10 80 e5                                      str r1, [r0]
00432344  3a 00 00 0a                                      beq #0x432434
00432348  00 30 a0 e3                                      mov r3, #0
0043234c  4c 30 85 e5                                      str r3, [r5, #0x4c]
00432350  48 30 85 e5                                      str r3, [r5, #0x48]
00432354  cc e9 ff eb                                      bl #0x42ca8c
00432358  00 50 a0 e1                                      mov r5, r0
0043235c  fe e7 ff eb                                      bl #0x42c35c
00432360  00 10 a0 e1                                      mov r1, r0
00432364  05 00 a0 e1                                      mov r0, r5
00432368  c9 f2 ff eb                                      bl #0x42ee94
0043236c  25 ff ff ea                                      b #0x432008
00432370  00 10 90 e5                                      ldr r1, [r0]
00432374  01 10 41 e2                                      sub r1, r1, #1
00432378  00 00 51 e3                                      cmp r1, #0
0043237c  00 10 80 e5                                      str r1, [r0]
00432380  29 00 00 0a                                      beq #0x43242c
00432384  00 30 a0 e3                                      mov r3, #0
00432388  4c 30 85 e5                                      str r3, [r5, #0x4c]
0043238c  48 30 85 e5                                      str r3, [r5, #0x48]
00432390  59 e0 ff eb                                      bl #0x42a4fc
00432394  ec de ff eb                                      bl #0x429f4c
00432398  11 ff ff ea                                      b #0x431fe4
0043239c  00 10 90 e5                                      ldr r1, [r0]
004323a0  01 10 41 e2                                      sub r1, r1, #1
004323a4  00 00 51 e3                                      cmp r1, #0
004323a8  00 10 80 e5                                      str r1, [r0]
004323ac  1c 00 00 0a                                      beq #0x432424
004323b0  00 30 a0 e3                                      mov r3, #0
004323b4  4c 30 85 e5                                      str r3, [r5, #0x4c]
004323b8  48 30 85 e5                                      str r3, [r5, #0x48]
004323bc  a7 e0 ff eb                                      bl #0x42a660
004323c0  1e df ff eb                                      bl #0x42a040
004323c4  a5 e0 ff eb                                      bl #0x42a660
004323c8  d6 ed ff eb                                      bl #0x42db28
004323cc  00 00 50 e3                                      cmp r0, #0
004323d0  fa fe ff 0a                                      beq #0x431fc0
004323d4  a1 e0 ff eb                                      bl #0x42a660
004323d8  d2 ed ff eb                                      bl #0x42db28
004323dc  00 30 a0 e3                                      mov r3, #0
004323e0  9b 30 c0 e5                                      strb r3, [r0, #0x9b]
004323e4  f5 fe ff ea                                      b #0x431fc0
004323e8  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
004323ec  05 20 a0 e1                                      mov r2, r5
004323f0  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
004323f4  03 30 8f e0                                      add r3, pc, r3
004323f8  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
004323fc  59 16 00 eb                                      bl #0x437d68
00432400  bc fe ff ea                                      b #0x431ef8
00432404  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00432408  05 20 a0 e1                                      mov r2, r5
0043240c  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
00432410  03 30 8f e0                                      add r3, pc, r3
00432414  05 31 83 e0                                      add r3, r3, r5, lsl #2
00432418  40 10 93 e5                                      ldr r1, [r3, #0x40]
0043241c  51 16 00 eb                                      bl #0x437d68
00432420  b4 fe ff ea                                      b #0x431ef8
00432424  c3 81 0c eb                                      bl #0x752b38
00432428  e0 ff ff ea                                      b #0x4323b0
0043242c  c1 81 0c eb                                      bl #0x752b38
00432430  d3 ff ff ea                                      b #0x432384
00432434  bf 81 0c eb                                      bl #0x752b38
00432438  c2 ff ff ea                                      b #0x432348
0043243c  bd 81 0c eb                                      bl #0x752b38
00432440  67 ff ff ea                                      b #0x4321e4
00432444  bb 81 0c eb                                      bl #0x752b38
00432448  a4 ff ff ea                                      b #0x4322e0
0043244c  b9 81 0c eb                                      bl #0x752b38
00432450  ad ff ff ea                                      b #0x43230c
00432454  b7 81 0c eb                                      bl #0x752b38
00432458  95 ff ff ea                                      b #0x4322b4
0043245c  b5 81 0c eb                                      bl #0x752b38
00432460  88 ff ff ea                                      b #0x432288
00432464  b3 81 0c eb                                      bl #0x752b38
00432468  77 ff ff ea                                      b #0x43224c
0043246c  b1 81 0c eb                                      bl #0x752b38
00432470  66 ff ff ea                                      b #0x432210
00432474  58 30 9f e5                                      ldr r3, [pc, #0x58]
00432478  05 20 a0 e1                                      mov r2, r5
0043247c  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
00432480  03 30 8f e0                                      add r3, pc, r3
00432484  05 31 83 e0                                      add r3, r3, r5, lsl #2
00432488  10 10 93 e5                                      ldr r1, [r3, #0x10]
0043248c  35 16 00 eb                                      bl #0x437d68
00432490  98 fe ff ea                                      b #0x431ef8
00432494  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00432498  05 20 a0 e1                                      mov r2, r5
0043249c  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
004324a0  03 30 8f e0                                      add r3, pc, r3
004324a4  05 31 83 e0                                      add r3, r3, r5, lsl #2
004324a8  30 10 93 e5                                      ldr r1, [r3, #0x30]
004324ac  2d 16 00 eb                                      bl #0x437d68
004324b0  90 fe ff ea                                      b #0x431ef8
; mapping-symbol data/literal pool
004324b4  e0 2b 56 00 c4 25 00 00 70 4b 52 00 68 27 00 00  .byte 0xe0, 0x2b, 0x56, 0x00, 0xc4, 0x25, 0x00, 0x00, 0x70, 0x4b, 0x52, 0x00, 0x68, 0x27, 0x00, 0x00
004324c4  e0 16 00 00 b8 48 52 00 68 46 52 00 4c 46 52 00  .byte 0xe0, 0x16, 0x00, 0x00, 0xb8, 0x48, 0x52, 0x00, 0x68, 0x46, 0x52, 0x00, 0x4c, 0x46, 0x52, 0x00
004324d4  dc 45 52 00 bc 45 52 00                          .byte 0xdc, 0x45, 0x52, 0x00, 0xbc, 0x45, 0x52, 0x00

; FUNCTION 0x004324dc, declared_size=1192, range_size=1192, mode=arm
; class-group: MenuManager
; alias: _ZN11MenuManager12LoadMainMenuEv
; demangled: MenuManager::LoadMainMenu()
; decoder-mode: arm
004324dc  6c 34 9f e5                                      ldr r3, [pc, #0x46c]
004324e0  6c 24 9f e5                                      ldr r2, [pc, #0x46c]
004324e4  70 40 2d e9                                      push {r4, r5, r6, lr}
004324e8  03 30 8f e0                                      add r3, pc, r3
004324ec  02 20 93 e7                                      ldr r2, [r3, r2]
004324f0  56 13 00 e3                                      movw r1, #0x356
004324f4  00 40 a0 e1                                      mov r4, r0
004324f8  00 20 92 e5                                      ldr r2, [r2]
004324fc  01 00 52 e1                                      cmp r2, r1
00432500  e8 00 00 0a                                      beq #0x4328a8
00432504  0f 0d 52 e3                                      cmp r2, #0x3c0
00432508  21 00 00 0a                                      beq #0x432594
0043250c  32 0e 52 e3                                      cmp r2, #0x320
00432510  0f 00 00 0a                                      beq #0x432554
00432514  3c 24 9f e5                                      ldr r2, [pc, #0x43c]
00432518  02 50 93 e7                                      ldr r5, [r3, r2]
0043251c  4c 00 95 e5                                      ldr r0, [r5, #0x4c]
00432520  fb eb 00 eb                                      bl #0x46d514
00432524  05 00 50 e3                                      cmp r0, #5
00432528  f6 00 00 0a                                      beq #0x432908
0043252c  4c 00 95 e5                                      ldr r0, [r5, #0x4c]
00432530  f7 eb 00 eb                                      bl #0x46d514
00432534  04 00 50 e3                                      cmp r0, #4
00432538  fe 00 00 0a                                      beq #0x432938
0043253c  18 14 9f e5                                      ldr r1, [pc, #0x418]
00432540  f4 00 94 e5                                      ldr r0, [r4, #0xf4]
00432544  02 20 a0 e3                                      mov r2, #2
00432548  01 10 8f e0                                      add r1, pc, r1
0043254c  05 16 00 eb                                      bl #0x437d68
00432550  14 00 00 ea                                      b #0x4325a8
00432554  04 24 9f e5                                      ldr r2, [pc, #0x404]
00432558  02 20 93 e7                                      ldr r2, [r3, r2]
0043255c  00 20 d2 e5                                      ldrb r2, [r2]
00432560  00 00 52 e3                                      cmp r2, #0
00432564  e1 00 00 1a                                      bne #0x4328f0
00432568  f4 23 9f e5                                      ldr r2, [pc, #0x3f4]
0043256c  02 30 93 e7                                      ldr r3, [r3, r2]
00432570  00 30 d3 e5                                      ldrb r3, [r3]
00432574  00 00 53 e3                                      cmp r3, #0
00432578  e8 00 00 0a                                      beq #0x432920
0043257c  e4 13 9f e5                                      ldr r1, [pc, #0x3e4]
00432580  02 20 a0 e3                                      mov r2, #2
00432584  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
00432588  01 10 8f e0                                      add r1, pc, r1
0043258c  f5 15 00 eb                                      bl #0x437d68
00432590  04 00 00 ea                                      b #0x4325a8
00432594  d0 13 9f e5                                      ldr r1, [pc, #0x3d0]
00432598  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
0043259c  02 20 a0 e3                                      mov r2, #2
004325a0  01 10 8f e0                                      add r1, pc, r1
004325a4  ef 15 00 eb                                      bl #0x437d68
004325a8  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
004325ac  84 10 a0 e3                                      mov r1, #0x84
004325b0  3c 01 93 e5                                      ldr r0, [r3, #0x13c]
004325b4  b7 d5 0d eb                                      bl #0x7a7c98
004325b8  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
004325bc  01 10 a0 e3                                      mov r1, #1
004325c0  00 20 a0 e3                                      mov r2, #0
004325c4  3c 31 93 e5                                      ldr r3, [r3, #0x13c]
004325c8  03 00 a0 e1                                      mov r0, r3
004325cc  00 30 93 e5                                      ldr r3, [r3]
004325d0  0f e0 a0 e1                                      mov lr, pc
004325d4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
004325d8  20 e0 ff eb                                      bl #0x42a660
004325dc  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
004325e0  00 50 a0 e1                                      mov r5, r0
004325e4  00 00 53 e3                                      cmp r3, #0
004325e8  a1 00 00 0a                                      beq #0x432874
004325ec  48 00 90 e5                                      ldr r0, [r0, #0x48]
004325f0  04 30 d0 e5                                      ldrb r3, [r0, #4]
004325f4  00 00 53 e3                                      cmp r3, #0
004325f8  95 00 00 0a                                      beq #0x432854
004325fc  17 e0 ff eb                                      bl #0x42a660
00432600  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
00432604  00 50 a0 e1                                      mov r5, r0
00432608  00 00 53 e3                                      cmp r3, #0
0043260c  03 00 00 0a                                      beq #0x432620
00432610  48 00 90 e5                                      ldr r0, [r0, #0x48]
00432614  04 20 d0 e5                                      ldrb r2, [r0, #4]
00432618  00 00 52 e3                                      cmp r2, #0
0043261c  97 00 00 0a                                      beq #0x432880
00432620  00 20 a0 e3                                      mov r2, #0
00432624  9b 20 c3 e5                                      strb r2, [r3, #0x9b]
00432628  4b e7 ff eb                                      bl #0x42c35c
0043262c  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
00432630  00 50 a0 e1                                      mov r5, r0
00432634  00 00 53 e3                                      cmp r3, #0
00432638  7e 00 00 0a                                      beq #0x432838
0043263c  48 00 90 e5                                      ldr r0, [r0, #0x48]
00432640  04 30 d0 e5                                      ldrb r3, [r0, #4]
00432644  00 00 53 e3                                      cmp r3, #0
00432648  72 00 00 0a                                      beq #0x432818
0043264c  2f dd ff eb                                      bl #0x429b10
00432650  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
00432654  00 50 a0 e1                                      mov r5, r0
00432658  00 00 53 e3                                      cmp r3, #0
0043265c  6a 00 00 0a                                      beq #0x43280c
00432660  48 00 90 e5                                      ldr r0, [r0, #0x48]
00432664  04 30 d0 e5                                      ldrb r3, [r0, #4]
00432668  00 00 53 e3                                      cmp r3, #0
0043266c  5e 00 00 0a                                      beq #0x4327ec
00432670  70 e2 ff eb                                      bl #0x42b038
00432674  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
00432678  00 50 a0 e1                                      mov r5, r0
0043267c  00 00 53 e3                                      cmp r3, #0
00432680  52 00 00 0a                                      beq #0x4327d0
00432684  48 00 90 e5                                      ldr r0, [r0, #0x48]
00432688  04 30 d0 e5                                      ldrb r3, [r0, #4]
0043268c  00 00 53 e3                                      cmp r3, #0
00432690  46 00 00 0a                                      beq #0x4327b0
00432694  79 0c 00 eb                                      bl #0x435880
00432698  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
0043269c  00 50 a0 e1                                      mov r5, r0
004326a0  00 00 53 e3                                      cmp r3, #0
004326a4  3a 00 00 0a                                      beq #0x432794
004326a8  48 00 90 e5                                      ldr r0, [r0, #0x48]
004326ac  04 30 d0 e5                                      ldrb r3, [r0, #4]
004326b0  00 00 53 e3                                      cmp r3, #0
004326b4  2e 00 00 0a                                      beq #0x432774
004326b8  8b e4 ff eb                                      bl #0x42b8ec
004326bc  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
004326c0  00 50 a0 e1                                      mov r5, r0
004326c4  00 00 53 e3                                      cmp r3, #0
004326c8  22 00 00 0a                                      beq #0x432758
004326cc  48 00 90 e5                                      ldr r0, [r0, #0x48]
004326d0  04 30 d0 e5                                      ldrb r3, [r0, #4]
004326d4  00 00 53 e3                                      cmp r3, #0
004326d8  16 00 00 0a                                      beq #0x432738
004326dc  68 50 94 e5                                      ldr r5, [r4, #0x68]
004326e0  64 30 94 e5                                      ldr r3, [r4, #0x64]
004326e4  04 00 a0 e1                                      mov r0, r4
004326e8  05 50 63 e0                                      rsb r5, r3, r5
004326ec  45 51 a0 e1                                      asr r5, r5, #2
004326f0  30 f2 ff eb                                      bl #0x42efb8
004326f4  09 00 00 ea                                      b #0x432720
004326f8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
004326fc  00 10 a0 e3                                      mov r1, #0
00432700  ac c5 ff eb                                      bl #0x423db8
00432704  64 30 94 e5                                      ldr r3, [r4, #0x64]
00432708  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
0043270c  01 50 85 e2                                      add r5, r5, #1
00432710  03 00 a0 e1                                      mov r0, r3
00432714  00 30 93 e5                                      ldr r3, [r3]
00432718  0f e0 a0 e1                                      mov lr, pc
0043271c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00432720  64 30 94 e5                                      ldr r3, [r4, #0x64]
00432724  68 20 94 e5                                      ldr r2, [r4, #0x68]
00432728  02 20 63 e0                                      rsb r2, r3, r2
0043272c  42 01 55 e1                                      cmp r5, r2, asr #2
00432730  f0 ff ff 3a                                      blo #0x4326f8
00432734  70 80 bd e8                                      pop {r4, r5, r6, pc}
00432738  00 10 90 e5                                      ldr r1, [r0]
0043273c  01 10 41 e2                                      sub r1, r1, #1
00432740  00 00 51 e3                                      cmp r1, #0
00432744  00 10 80 e5                                      str r1, [r0]
00432748  5e 00 00 0a                                      beq #0x4328c8
0043274c  00 30 a0 e3                                      mov r3, #0
00432750  4c 30 85 e5                                      str r3, [r5, #0x4c]
00432754  48 30 85 e5                                      str r3, [r5, #0x48]
00432758  cb e8 ff eb                                      bl #0x42ca8c
0043275c  00 50 a0 e1                                      mov r5, r0
00432760  61 e4 ff eb                                      bl #0x42b8ec
00432764  00 10 a0 e1                                      mov r1, r0
00432768  05 00 a0 e1                                      mov r0, r5
0043276c  c8 f1 ff eb                                      bl #0x42ee94
00432770  d9 ff ff ea                                      b #0x4326dc
00432774  00 10 90 e5                                      ldr r1, [r0]
00432778  01 10 41 e2                                      sub r1, r1, #1
0043277c  00 00 51 e3                                      cmp r1, #0
00432780  00 10 80 e5                                      str r1, [r0]
00432784  57 00 00 0a                                      beq #0x4328e8
00432788  00 30 a0 e3                                      mov r3, #0
0043278c  4c 30 85 e5                                      str r3, [r5, #0x4c]
00432790  48 30 85 e5                                      str r3, [r5, #0x48]
00432794  bc e8 ff eb                                      bl #0x42ca8c
00432798  00 50 a0 e1                                      mov r5, r0
0043279c  37 0c 00 eb                                      bl #0x435880
004327a0  00 10 a0 e1                                      mov r1, r0
004327a4  05 00 a0 e1                                      mov r0, r5
004327a8  b9 f1 ff eb                                      bl #0x42ee94
004327ac  c1 ff ff ea                                      b #0x4326b8
004327b0  00 10 90 e5                                      ldr r1, [r0]
004327b4  01 10 41 e2                                      sub r1, r1, #1
004327b8  00 00 51 e3                                      cmp r1, #0
004327bc  00 10 80 e5                                      str r1, [r0]
004327c0  46 00 00 0a                                      beq #0x4328e0
004327c4  00 30 a0 e3                                      mov r3, #0
004327c8  4c 30 85 e5                                      str r3, [r5, #0x4c]
004327cc  48 30 85 e5                                      str r3, [r5, #0x48]
004327d0  ad e8 ff eb                                      bl #0x42ca8c
004327d4  00 50 a0 e1                                      mov r5, r0
004327d8  16 e2 ff eb                                      bl #0x42b038
004327dc  00 10 a0 e1                                      mov r1, r0
004327e0  05 00 a0 e1                                      mov r0, r5
004327e4  aa f1 ff eb                                      bl #0x42ee94
004327e8  a9 ff ff ea                                      b #0x432694
004327ec  00 10 90 e5                                      ldr r1, [r0]
004327f0  01 10 41 e2                                      sub r1, r1, #1
004327f4  00 00 51 e3                                      cmp r1, #0
004327f8  00 10 80 e5                                      str r1, [r0]
004327fc  33 00 00 0a                                      beq #0x4328d0
00432800  00 30 a0 e3                                      mov r3, #0
00432804  4c 30 85 e5                                      str r3, [r5, #0x4c]
00432808  48 30 85 e5                                      str r3, [r5, #0x48]
0043280c  bf dc ff eb                                      bl #0x429b10
00432810  2a d9 ff eb                                      bl #0x428cc0
00432814  95 ff ff ea                                      b #0x432670
00432818  00 10 90 e5                                      ldr r1, [r0]
0043281c  01 10 41 e2                                      sub r1, r1, #1
00432820  00 00 51 e3                                      cmp r1, #0
00432824  00 10 80 e5                                      str r1, [r0]
00432828  2a 00 00 0a                                      beq #0x4328d8
0043282c  00 30 a0 e3                                      mov r3, #0
00432830  4c 30 85 e5                                      str r3, [r5, #0x4c]
00432834  48 30 85 e5                                      str r3, [r5, #0x48]
00432838  93 e8 ff eb                                      bl #0x42ca8c
0043283c  00 50 a0 e1                                      mov r5, r0
00432840  c5 e6 ff eb                                      bl #0x42c35c
00432844  00 10 a0 e1                                      mov r1, r0
00432848  05 00 a0 e1                                      mov r0, r5
0043284c  90 f1 ff eb                                      bl #0x42ee94
00432850  7d ff ff ea                                      b #0x43264c
00432854  00 10 90 e5                                      ldr r1, [r0]
00432858  01 10 41 e2                                      sub r1, r1, #1
0043285c  00 00 51 e3                                      cmp r1, #0
00432860  00 10 80 e5                                      str r1, [r0]
00432864  15 00 00 0a                                      beq #0x4328c0
00432868  00 30 a0 e3                                      mov r3, #0
0043286c  4c 30 85 e5                                      str r3, [r5, #0x4c]
00432870  48 30 85 e5                                      str r3, [r5, #0x48]
00432874  79 df ff eb                                      bl #0x42a660
00432878  f0 dd ff eb                                      bl #0x42a040
0043287c  5e ff ff ea                                      b #0x4325fc
00432880  00 10 90 e5                                      ldr r1, [r0]
00432884  01 10 41 e2                                      sub r1, r1, #1
00432888  00 00 51 e3                                      cmp r1, #0
0043288c  00 10 80 e5                                      str r1, [r0]
00432890  00 00 00 1a                                      bne #0x432898
00432894  a7 80 0c eb                                      bl #0x752b38
00432898  00 30 a0 e3                                      mov r3, #0
0043289c  4c 30 85 e5                                      str r3, [r5, #0x4c]
004328a0  48 30 85 e5                                      str r3, [r5, #0x48]
004328a4  5d ff ff ea                                      b #0x432620
004328a8  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
004328ac  02 20 a0 e3                                      mov r2, #2
004328b0  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
004328b4  01 10 8f e0                                      add r1, pc, r1
004328b8  2a 15 00 eb                                      bl #0x437d68
004328bc  39 ff ff ea                                      b #0x4325a8
004328c0  9c 80 0c eb                                      bl #0x752b38
004328c4  e7 ff ff ea                                      b #0x432868
004328c8  9a 80 0c eb                                      bl #0x752b38
004328cc  9e ff ff ea                                      b #0x43274c
004328d0  98 80 0c eb                                      bl #0x752b38
004328d4  c9 ff ff ea                                      b #0x432800
004328d8  96 80 0c eb                                      bl #0x752b38
004328dc  d2 ff ff ea                                      b #0x43282c
004328e0  94 80 0c eb                                      bl #0x752b38
004328e4  b6 ff ff ea                                      b #0x4327c4
004328e8  92 80 0c eb                                      bl #0x752b38
004328ec  a5 ff ff ea                                      b #0x432788
004328f0  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
004328f4  02 20 a0 e3                                      mov r2, #2
004328f8  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
004328fc  01 10 8f e0                                      add r1, pc, r1
00432900  18 15 00 eb                                      bl #0x437d68
00432904  27 ff ff ea                                      b #0x4325a8
00432908  68 10 9f e5                                      ldr r1, [pc, #0x68]
0043290c  f4 00 94 e5                                      ldr r0, [r4, #0xf4]
00432910  02 20 a0 e3                                      mov r2, #2
00432914  01 10 8f e0                                      add r1, pc, r1
00432918  12 15 00 eb                                      bl #0x437d68
0043291c  21 ff ff ea                                      b #0x4325a8
00432920  54 10 9f e5                                      ldr r1, [pc, #0x54]
00432924  02 20 a0 e3                                      mov r2, #2
00432928  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
0043292c  01 10 8f e0                                      add r1, pc, r1
00432930  0c 15 00 eb                                      bl #0x437d68
00432934  1b ff ff ea                                      b #0x4325a8
00432938  40 10 9f e5                                      ldr r1, [pc, #0x40]
0043293c  f4 00 94 e5                                      ldr r0, [r4, #0xf4]
00432940  02 20 a0 e3                                      mov r2, #2
00432944  01 10 8f e0                                      add r1, pc, r1
00432948  06 15 00 eb                                      bl #0x437d68
0043294c  15 ff ff ea                                      b #0x4325a8
; mapping-symbol data/literal pool
00432950  a8 25 56 00 c4 25 00 00 f4 37 00 00 38 7b 49 00  .byte 0xa8, 0x25, 0x56, 0x00, 0xc4, 0x25, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x38, 0x7b, 0x49, 0x00
00432960  68 27 00 00 e0 16 00 00 b8 7a 49 00 e0 7a 49 00  .byte 0x68, 0x27, 0x00, 0x00, 0xe0, 0x16, 0x00, 0x00, 0xb8, 0x7a, 0x49, 0x00, 0xe0, 0x7a, 0x49, 0x00
00432970  ac 77 49 00 24 77 49 00 84 77 49 00 f4 76 49 00  .byte 0xac, 0x77, 0x49, 0x00, 0x24, 0x77, 0x49, 0x00, 0x84, 0x77, 0x49, 0x00, 0xf4, 0x76, 0x49, 0x00
00432980  74 77 49 00                                      .byte 0x74, 0x77, 0x49, 0x00
