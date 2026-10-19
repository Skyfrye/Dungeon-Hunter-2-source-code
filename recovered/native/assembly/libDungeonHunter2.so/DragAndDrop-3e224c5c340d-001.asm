; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00411ebc, declared_size=36, range_size=36, mode=arm
; class-group: DragAndDrop
; alias: _ZN11DragAndDropC2Ev
; demangled: DragAndDrop::DragAndDrop()
; decoder-mode: arm
00411ebc  00 20 a0 e3                                      mov r2, #0
00411ec0  18 20 80 e5                                      str r2, [r0, #0x18]
00411ec4  00 20 80 e5                                      str r2, [r0]
00411ec8  04 20 80 e5                                      str r2, [r0, #4]
00411ecc  08 20 80 e5                                      str r2, [r0, #8]
00411ed0  0c 20 80 e5                                      str r2, [r0, #0xc]
00411ed4  10 20 80 e5                                      str r2, [r0, #0x10]
00411ed8  14 20 80 e5                                      str r2, [r0, #0x14]
00411edc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00411ee0, declared_size=36, range_size=36, mode=arm
; class-group: DragAndDrop
; alias: _ZN11DragAndDropC1Ev
; demangled: DragAndDrop::DragAndDrop()
; decoder-mode: arm
00411ee0  00 20 a0 e3                                      mov r2, #0
00411ee4  18 20 80 e5                                      str r2, [r0, #0x18]
00411ee8  00 20 80 e5                                      str r2, [r0]
00411eec  04 20 80 e5                                      str r2, [r0, #4]
00411ef0  08 20 80 e5                                      str r2, [r0, #8]
00411ef4  0c 20 80 e5                                      str r2, [r0, #0xc]
00411ef8  10 20 80 e5                                      str r2, [r0, #0x10]
00411efc  14 20 80 e5                                      str r2, [r0, #0x14]
00411f00  1e ff 2f e1                                      bx lr

; FUNCTION 0x00411f04, declared_size=16, range_size=16, mode=arm
; class-group: DragAndDrop
; alias: _ZNK11DragAndDrop19IsDraggingSomethingEv
; demangled: DragAndDrop::IsDraggingSomething() const
; decoder-mode: arm
00411f04  00 00 90 e5                                      ldr r0, [r0]
00411f08  00 00 50 e2                                      subs r0, r0, #0
00411f0c  01 00 a0 13                                      movne r0, #1
00411f10  1e ff 2f e1                                      bx lr

; FUNCTION 0x00411f34, declared_size=96, range_size=96, mode=arm
; class-group: DragAndDrop
; alias: _ZN11DragAndDrop11GetDragableEPKc
; demangled: DragAndDrop::GetDragable(char const*)
; decoder-mode: arm
00411f34  70 40 2d e9                                      push {r4, r5, r6, lr}
00411f38  30 00 90 e9                                      ldmib r0, {r4, r5}
00411f3c  01 60 a0 e1                                      mov r6, r1
00411f40  05 00 54 e1                                      cmp r4, r5
00411f44  03 00 00 1a                                      bne #0x411f58
00411f48  0e 00 00 ea                                      b #0x411f88
00411f4c  54 40 84 e2                                      add r4, r4, #0x54
00411f50  05 00 54 e1                                      cmp r4, r5
00411f54  0b 00 00 0a                                      beq #0x411f88
00411f58  08 30 94 e5                                      ldr r3, [r4, #8]
00411f5c  06 10 a0 e1                                      mov r1, r6
00411f60  44 30 93 e5                                      ldr r3, [r3, #0x44]
00411f64  d0 20 d3 e1                                      ldrsb r2, [r3]
00411f68  01 00 83 e2                                      add r0, r3, #1
00411f6c  01 00 72 e3                                      cmn r2, #1
00411f70  0c 00 93 05                                      ldreq r0, [r3, #0xc]
00411f74  e8 f0 fb eb                                      bl #0x30e31c
00411f78  00 00 50 e3                                      cmp r0, #0
00411f7c  f2 ff ff 1a                                      bne #0x411f4c
00411f80  04 00 a0 e1                                      mov r0, r4
00411f84  70 80 bd e8                                      pop {r4, r5, r6, pc}
00411f88  00 40 a0 e3                                      mov r4, #0
00411f8c  04 00 a0 e1                                      mov r0, r4
00411f90  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00411f94, declared_size=220, range_size=220, mode=arm
; class-group: DragAndDrop
; alias: _ZN11DragAndDrop9SendEventEiP6MenuFXPN7gameswf9characterE
; demangled: DragAndDrop::SendEvent(int, MenuFX*, gameswf::character*)
; decoder-mode: arm
00411f94  70 40 2d e9                                      push {r4, r5, r6, lr}
00411f98  01 50 a0 e1                                      mov r5, r1
00411f9c  02 40 a0 e1                                      mov r4, r2
00411fa0  03 00 50 e3                                      cmp r0, #3
00411fa4  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
00411fa8  0a 00 00 ea                                      b #0x411fd8
00411fac  1d 00 00 ea                                      b #0x412028
00411fb0  16 00 00 ea                                      b #0x412010
00411fb4  00 00 00 ea                                      b #0x411fbc
00411fb8  07 00 00 ea                                      b #0x411fdc
00411fbc  01 00 a0 e1                                      mov r0, r1
00411fc0  02 10 a0 e1                                      mov r1, r2
00411fc4  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
00411fc8  02 20 8f e0                                      add r2, pc, r2
00411fcc  03 14 00 eb                                      bl #0x416fe0
00411fd0  00 00 50 e3                                      cmp r0, #0
00411fd4  19 00 00 0a                                      beq #0x412040
00411fd8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00411fdc  01 00 a0 e1                                      mov r0, r1
00411fe0  02 10 a0 e1                                      mov r1, r2
00411fe4  70 20 9f e5                                      ldr r2, [pc, #0x70]
00411fe8  02 20 8f e0                                      add r2, pc, r2
00411fec  fb 13 00 eb                                      bl #0x416fe0
00411ff0  00 00 50 e3                                      cmp r0, #0
00411ff4  f7 ff ff 1a                                      bne #0x411fd8
00411ff8  60 20 9f e5                                      ldr r2, [pc, #0x60]
00411ffc  05 00 a0 e1                                      mov r0, r5
00412000  04 10 a0 e1                                      mov r1, r4
00412004  02 20 8f e0                                      add r2, pc, r2
00412008  70 40 bd e8                                      pop {r4, r5, r6, lr}
0041200c  f3 13 00 ea                                      b #0x416fe0
00412010  01 00 a0 e1                                      mov r0, r1
00412014  02 10 a0 e1                                      mov r1, r2
00412018  44 20 9f e5                                      ldr r2, [pc, #0x44]
0041201c  02 20 8f e0                                      add r2, pc, r2
00412020  70 40 bd e8                                      pop {r4, r5, r6, lr}
00412024  ed 13 00 ea                                      b #0x416fe0
00412028  01 00 a0 e1                                      mov r0, r1
0041202c  02 10 a0 e1                                      mov r1, r2
00412030  30 20 9f e5                                      ldr r2, [pc, #0x30]
00412034  02 20 8f e0                                      add r2, pc, r2
00412038  70 40 bd e8                                      pop {r4, r5, r6, lr}
0041203c  e7 13 00 ea                                      b #0x416fe0
00412040  24 20 9f e5                                      ldr r2, [pc, #0x24]
00412044  05 00 a0 e1                                      mov r0, r5
00412048  04 10 a0 e1                                      mov r1, r4
0041204c  02 20 8f e0                                      add r2, pc, r2
00412050  70 40 bd e8                                      pop {r4, r5, r6, lr}
00412054  e1 13 00 ea                                      b #0x416fe0
; mapping-symbol data/literal pool
00412058  80 5f 4b 00 90 5f 4b 00 5c 5f 4b 00 1c 5f 4b 00  .byte 0x80, 0x5f, 0x4b, 0x00, 0x90, 0x5f, 0x4b, 0x00, 0x5c, 0x5f, 0x4b, 0x00, 0x1c, 0x5f, 0x4b, 0x00
00412068  f4 5e 4b 00 14 5f 4b 00                          .byte 0xf4, 0x5e, 0x4b, 0x00, 0x14, 0x5f, 0x4b, 0x00

; FUNCTION 0x00412484, declared_size=32, range_size=32, mode=arm
; class-group: DragAndDrop
; alias: _ZN11DragAndDropD1Ev
; demangled: DragAndDrop::~DragAndDrop()
; decoder-mode: arm
00412484  10 40 2d e9                                      push {r4, lr}
00412488  00 40 a0 e1                                      mov r4, r0
0041248c  10 00 80 e2                                      add r0, r0, #0x10
00412490  e2 ff ff eb                                      bl #0x412420
00412494  04 00 84 e2                                      add r0, r4, #4
00412498  c2 ff ff eb                                      bl #0x4123a8
0041249c  04 00 a0 e1                                      mov r0, r4
004124a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004124a4, declared_size=32, range_size=32, mode=arm
; class-group: DragAndDrop
; alias: _ZN11DragAndDropD2Ev
; demangled: DragAndDrop::~DragAndDrop()
; decoder-mode: arm
004124a4  10 40 2d e9                                      push {r4, lr}
004124a8  00 40 a0 e1                                      mov r4, r0
004124ac  10 00 80 e2                                      add r0, r0, #0x10
004124b0  da ff ff eb                                      bl #0x412420
004124b4  04 00 84 e2                                      add r0, r4, #4
004124b8  ba ff ff eb                                      bl #0x4123a8
004124bc  04 00 a0 e1                                      mov r0, r4
004124c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00412aa8, declared_size=88, range_size=88, mode=arm
; class-group: DragAndDrop
; alias: _ZN11DragAndDrop14ResetPositionsEv
; demangled: DragAndDrop::ResetPositions()
; decoder-mode: arm
00412aa8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00412aac  50 00 90 e9                                      ldmib r0, {r4, r6}
00412ab0  5c d0 4d e2                                      sub sp, sp, #0x5c
00412ab4  00 70 a0 e1                                      mov r7, r0
00412ab8  06 00 54 e1                                      cmp r4, r6
00412abc  0b 00 00 0a                                      beq #0x412af0
00412ac0  04 50 8d e2                                      add r5, sp, #4
00412ac4  04 10 a0 e1                                      mov r1, r4
00412ac8  54 20 a0 e3                                      mov r2, #0x54
00412acc  05 00 a0 e1                                      mov r0, r5
00412ad0  64 ef fb eb                                      bl #0x30e868
00412ad4  05 00 a0 e1                                      mov r0, r5
00412ad8  a9 ff ff eb                                      bl #0x412984
00412adc  54 40 84 e2                                      add r4, r4, #0x54
00412ae0  05 00 a0 e1                                      mov r0, r5
00412ae4  db fc ff eb                                      bl #0x411e58
00412ae8  06 00 54 e1                                      cmp r4, r6
00412aec  f4 ff ff 1a                                      bne #0x412ac4
00412af0  00 30 a0 e3                                      mov r3, #0
00412af4  00 30 87 e5                                      str r3, [r7]
00412af8  5c d0 8d e2                                      add sp, sp, #0x5c
00412afc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x004130c8, declared_size=376, range_size=376, mode=arm
; class-group: DragAndDrop
; alias: _ZN11DragAndDrop7OnEventERN8RenderFX5EventE
; demangled: DragAndDrop::OnEvent(RenderFX::Event&)
; decoder-mode: arm
004130c8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004130cc  5c 81 9f e5                                      ldr r8, [pc, #0x15c]
004130d0  5c 91 9f e5                                      ldr sb, [pc, #0x15c]
004130d4  08 30 91 e5                                      ldr r3, [r1, #8]
004130d8  08 80 8f e0                                      add r8, pc, r8
004130dc  09 20 98 e7                                      ldr r2, [r8, sb]
004130e0  05 30 43 e2                                      sub r3, r3, #5
004130e4  20 d0 4d e2                                      sub sp, sp, #0x20
004130e8  00 20 92 e5                                      ldr r2, [r2]
004130ec  02 00 53 e3                                      cmp r3, #2
004130f0  01 60 a0 e1                                      mov r6, r1
004130f4  00 70 a0 e1                                      mov r7, r0
004130f8  1c 20 8d e5                                      str r2, [sp, #0x1c]
004130fc  07 00 00 9a                                      bls #0x413120
00413100  00 00 a0 e3                                      mov r0, #0
00413104  09 30 98 e7                                      ldr r3, [r8, sb]
00413108  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0041310c  00 30 93 e5                                      ldr r3, [r3]
00413110  03 00 52 e1                                      cmp r2, r3
00413114  44 00 00 1a                                      bne #0x41322c
00413118  20 d0 8d e2                                      add sp, sp, #0x20
0041311c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00413120  10 31 9f e5                                      ldr r3, [pc, #0x110]
00413124  04 40 8d e2                                      add r4, sp, #4
00413128  03 50 98 e7                                      ldr r5, [r8, r3]
0041312c  05 00 a0 e1                                      mov r0, r5
00413130  d4 91 fc eb                                      bl #0x337888
00413134  00 11 9f e5                                      ldr r1, [pc, #0x100]
00413138  0d 20 a0 e1                                      mov r2, sp
0041313c  04 00 a0 e1                                      mov r0, r4
00413140  01 10 8f e0                                      add r1, pc, r1
00413144  e8 03 fc eb                                      bl #0x3140ec
00413148  04 10 a0 e1                                      mov r1, r4
0041314c  05 00 a0 e1                                      mov r0, r5
00413150  4c 92 fc eb                                      bl #0x337a88
00413154  04 00 a0 e1                                      mov r0, r4
00413158  3d 14 fc eb                                      bl #0x318254
0041315c  10 04 97 e9                                      ldmib r7, {r4, sl}
00413160  00 30 a0 e3                                      mov r3, #0
00413164  00 50 97 e5                                      ldr r5, [r7]
00413168  0a 00 54 e1                                      cmp r4, sl
0041316c  00 30 87 e5                                      str r3, [r7]
00413170  0b 00 00 0a                                      beq #0x4131a4
00413174  04 00 a0 e1                                      mov r0, r4
00413178  06 10 a0 e1                                      mov r1, r6
0041317c  5f fe ff eb                                      bl #0x412b00
00413180  00 00 50 e3                                      cmp r0, #0
00413184  03 00 00 0a                                      beq #0x413198
00413188  08 30 96 e5                                      ldr r3, [r6, #8]
0041318c  06 00 53 e3                                      cmp r3, #6
00413190  1f 00 00 1a                                      bne #0x413214
00413194  04 50 a0 e1                                      mov r5, r4
00413198  54 40 84 e2                                      add r4, r4, #0x54
0041319c  0a 00 54 e1                                      cmp r4, sl
004131a0  f3 ff ff 1a                                      bne #0x413174
004131a4  00 00 55 e3                                      cmp r5, #0
004131a8  1b 00 00 0a                                      beq #0x41321c
004131ac  10 40 97 e5                                      ldr r4, [r7, #0x10]
004131b0  14 a0 97 e5                                      ldr sl, [r7, #0x14]
004131b4  0a 00 54 e1                                      cmp r4, sl
004131b8  0d 00 00 0a                                      beq #0x4131f4
004131bc  00 20 97 e5                                      ldr r2, [r7]
004131c0  00 00 52 e3                                      cmp r2, #0
004131c4  02 10 a0 11                                      movne r1, r2
004131c8  05 10 a0 01                                      moveq r1, r5
004131cc  02 00 55 e1                                      cmp r5, r2
004131d0  00 20 a0 03                                      moveq r2, #0
004131d4  01 00 00 0a                                      beq #0x4131e0
004131d8  01 20 72 e2                                      rsbs r2, r2, #1
004131dc  00 20 a0 33                                      movlo r2, #0
004131e0  04 00 a0 e1                                      mov r0, r4
004131e4  20 40 84 e2                                      add r4, r4, #0x20
004131e8  2c fd ff eb                                      bl #0x4126a0
004131ec  0a 00 54 e1                                      cmp r4, sl
004131f0  f1 ff ff 1a                                      bne #0x4131bc
004131f4  08 30 96 e5                                      ldr r3, [r6, #8]
004131f8  06 00 53 e3                                      cmp r3, #6
004131fc  01 00 a0 13                                      movne r0, #1
00413200  bf ff ff 1a                                      bne #0x413104
00413204  05 00 a0 e1                                      mov r0, r5
00413208  dd fd ff eb                                      bl #0x412984
0041320c  01 00 a0 e3                                      mov r0, #1
00413210  bb ff ff ea                                      b #0x413104
00413214  00 40 87 e5                                      str r4, [r7]
00413218  e1 ff ff ea                                      b #0x4131a4
0041321c  00 30 97 e5                                      ldr r3, [r7]
00413220  00 00 53 e3                                      cmp r3, #0
00413224  e0 ff ff 1a                                      bne #0x4131ac
00413228  b4 ff ff ea                                      b #0x413100
0041322c  37 ec fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00413230  b8 19 58 00 ac 40 00 00 84 08 00 00 10 4f 4b 00  .byte 0xb8, 0x19, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x10, 0x4f, 0x4b, 0x00

; FUNCTION 0x00413480, declared_size=308, range_size=308, mode=arm
; class-group: DragAndDrop
; alias: _ZN11DragAndDrop11AddDragableEP6MenuFXPN7gameswf9characterES4_
; demangled: DragAndDrop::AddDragable(MenuFX*, gameswf::character*, gameswf::character*)
; decoder-mode: arm
00413480  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00413484  5c d0 4d e2                                      sub sp, sp, #0x5c
00413488  00 40 a0 e1                                      mov r4, r0
0041348c  0d 00 a0 e1                                      mov r0, sp
00413490  0b fc ff eb                                      bl #0x4124c4
00413494  08 00 94 e5                                      ldr r0, [r4, #8]
00413498  0c 60 94 e5                                      ldr r6, [r4, #0xc]
0041349c  0d 50 a0 e1                                      mov r5, sp
004134a0  06 00 50 e1                                      cmp r0, r6
004134a4  09 00 00 0a                                      beq #0x4134d0
004134a8  0d 10 a0 e1                                      mov r1, sp
004134ac  54 20 a0 e3                                      mov r2, #0x54
004134b0  ec ec fb eb                                      bl #0x30e868
004134b4  08 30 94 e5                                      ldr r3, [r4, #8]
004134b8  54 30 83 e2                                      add r3, r3, #0x54
004134bc  08 30 84 e5                                      str r3, [r4, #8]
004134c0  0d 00 a0 e1                                      mov r0, sp
004134c4  63 fa ff eb                                      bl #0x411e58
004134c8  5c d0 8d e2                                      add sp, sp, #0x5c
004134cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004134d0  04 20 94 e5                                      ldr r2, [r4, #4]
004134d4  3d 3f 0c e3                                      movw r3, #0xcf3d
004134d8  f3 3c 43 e3                                      movt r3, #0x3cf3
004134dc  06 20 62 e0                                      rsb r2, r2, r6
004134e0  42 21 a0 e1                                      asr r2, r2, #2
004134e4  93 02 02 e0                                      mul r2, r3, r2
004134e8  c3 30 03 e3                                      movw r3, #0x30c3
004134ec  01 00 52 e3                                      cmp r2, #1
004134f0  02 10 82 20                                      addhs r1, r2, r2
004134f4  01 10 82 32                                      addlo r1, r2, #1
004134f8  03 36 83 e1                                      orr r3, r3, r3, lsl #12
004134fc  03 00 51 e1                                      cmp r1, r3
00413500  28 00 00 8a                                      bhi #0x4135a8
00413504  01 00 52 e1                                      cmp r2, r1
00413508  26 00 00 8a                                      bhi #0x4135a8
0041350c  58 20 8d e2                                      add r2, sp, #0x58
00413510  04 10 22 e5                                      str r1, [r2, #-4]!
00413514  0c 00 84 e2                                      add r0, r4, #0xc
00413518  b5 ff ff eb                                      bl #0x4133f4
0041351c  04 90 94 e5                                      ldr sb, [r4, #4]
00413520  3d 3f 0c e3                                      movw r3, #0xcf3d
00413524  f3 3c 43 e3                                      movt r3, #0x3cf3
00413528  06 b0 69 e0                                      rsb fp, sb, r6
0041352c  4b b1 a0 e1                                      asr fp, fp, #2
00413530  93 0b 0b e0                                      mul fp, r3, fp
00413534  00 a0 a0 e1                                      mov sl, r0
00413538  00 00 5b e3                                      cmp fp, #0
0041353c  00 80 a0 d1                                      movle r8, r0
00413540  0a 00 00 da                                      ble #0x413570
00413544  0b 70 a0 e1                                      mov r7, fp
00413548  00 60 a0 e3                                      mov r6, #0
0041354c  54 80 a0 e3                                      mov r8, #0x54
00413550  06 00 8a e0                                      add r0, sl, r6
00413554  06 10 89 e0                                      add r1, sb, r6
00413558  08 20 a0 e1                                      mov r2, r8
0041355c  c1 ec fb eb                                      bl #0x30e868
00413560  01 70 57 e2                                      subs r7, r7, #1
00413564  08 60 86 e0                                      add r6, r6, r8
00413568  f7 ff ff 1a                                      bne #0x41354c
0041356c  98 ab 28 e0                                      mla r8, r8, fp, sl
00413570  54 60 a0 e3                                      mov r6, #0x54
00413574  0d 10 a0 e1                                      mov r1, sp
00413578  06 20 a0 e1                                      mov r2, r6
0041357c  08 00 a0 e1                                      mov r0, r8
00413580  b8 ec fb eb                                      bl #0x30e868
00413584  04 00 84 e2                                      add r0, r4, #4
00413588  4d fb ff eb                                      bl #0x4122c4
0041358c  54 30 9d e5                                      ldr r3, [sp, #0x54]
00413590  04 a0 84 e5                                      str sl, [r4, #4]
00413594  06 80 88 e0                                      add r8, r8, r6
00413598  96 a3 2a e0                                      mla sl, r6, r3, sl
0041359c  08 80 84 e5                                      str r8, [r4, #8]
004135a0  0c a0 84 e5                                      str sl, [r4, #0xc]
004135a4  c5 ff ff ea                                      b #0x4134c0
004135a8  c3 10 03 e3                                      movw r1, #0x30c3
004135ac  01 16 81 e1                                      orr r1, r1, r1, lsl #12
004135b0  d5 ff ff ea                                      b #0x41350c

; FUNCTION 0x00413624, declared_size=292, range_size=292, mode=arm
; class-group: DragAndDrop
; alias: _ZN11DragAndDrop11AddDropableEP6MenuFXPN7gameswf9characterE
; demangled: DragAndDrop::AddDropable(MenuFX*, gameswf::character*)
; decoder-mode: arm
00413624  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00413628  28 d0 4d e2                                      sub sp, sp, #0x28
0041362c  04 40 8d e2                                      add r4, sp, #4
00413630  00 50 a0 e1                                      mov r5, r0
00413634  04 00 a0 e1                                      mov r0, r4
00413638  12 fa ff eb                                      bl #0x411e88
0041363c  14 c0 95 e5                                      ldr ip, [r5, #0x14]
00413640  18 90 95 e5                                      ldr sb, [r5, #0x18]
00413644  09 00 5c e1                                      cmp ip, sb
00413648  0c 00 00 0a                                      beq #0x413680
0041364c  04 60 a0 e1                                      mov r6, r4
00413650  0c e0 a0 e1                                      mov lr, ip
00413654  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
00413658  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
0041365c  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
00413660  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00413664  14 30 95 e5                                      ldr r3, [r5, #0x14]
00413668  20 30 83 e2                                      add r3, r3, #0x20
0041366c  14 30 85 e5                                      str r3, [r5, #0x14]
00413670  04 00 a0 e1                                      mov r0, r4
00413674  0f fa ff eb                                      bl #0x411eb8
00413678  28 d0 8d e2                                      add sp, sp, #0x28
0041367c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00413680  10 30 95 e5                                      ldr r3, [r5, #0x10]
00413684  09 30 63 e0                                      rsb r3, r3, sb
00413688  c3 32 a0 e1                                      asr r3, r3, #5
0041368c  01 00 53 e3                                      cmp r3, #1
00413690  03 10 83 20                                      addhs r1, r3, r3
00413694  01 10 83 32                                      addlo r1, r3, #1
00413698  7e 03 71 e3                                      cmn r1, #0xf8000001
0041369c  27 00 00 8a                                      bhi #0x413740
004136a0  01 00 53 e1                                      cmp r3, r1
004136a4  25 00 00 8a                                      bhi #0x413740
004136a8  28 20 8d e2                                      add r2, sp, #0x28
004136ac  04 10 22 e5                                      str r1, [r2, #-4]!
004136b0  18 00 85 e2                                      add r0, r5, #0x18
004136b4  be ff ff eb                                      bl #0x4135b4
004136b8  10 a0 95 e5                                      ldr sl, [r5, #0x10]
004136bc  00 80 a0 e1                                      mov r8, r0
004136c0  09 90 6a e0                                      rsb sb, sl, sb
004136c4  c9 92 a0 e1                                      asr sb, sb, #5
004136c8  00 00 59 e3                                      cmp sb, #0
004136cc  00 90 a0 d1                                      movle sb, r0
004136d0  0b 00 00 da                                      ble #0x413704
004136d4  09 70 a0 e1                                      mov r7, sb
004136d8  00 60 a0 e3                                      mov r6, #0
004136dc  06 c0 88 e0                                      add ip, r8, r6
004136e0  06 e0 8a e0                                      add lr, sl, r6
004136e4  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
004136e8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
004136ec  01 70 57 e2                                      subs r7, r7, #1
004136f0  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
004136f4  20 60 86 e2                                      add r6, r6, #0x20
004136f8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004136fc  f6 ff ff 1a                                      bne #0x4136dc
00413700  89 92 88 e0                                      add sb, r8, sb, lsl #5
00413704  09 c0 a0 e1                                      mov ip, sb
00413708  04 e0 a0 e1                                      mov lr, r4
0041370c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00413710  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00413714  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
00413718  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0041371c  10 00 85 e2                                      add r0, r5, #0x10
00413720  06 fb ff eb                                      bl #0x412340
00413724  24 30 9d e5                                      ldr r3, [sp, #0x24]
00413728  20 90 89 e2                                      add sb, sb, #0x20
0041372c  10 80 85 e5                                      str r8, [r5, #0x10]
00413730  83 82 88 e0                                      add r8, r8, r3, lsl #5
00413734  18 80 85 e5                                      str r8, [r5, #0x18]
00413738  14 90 85 e5                                      str sb, [r5, #0x14]
0041373c  cb ff ff ea                                      b #0x413670
00413740  3e 13 e0 e3                                      mvn r1, #0xf8000000
00413744  d7 ff ff ea                                      b #0x4136a8
