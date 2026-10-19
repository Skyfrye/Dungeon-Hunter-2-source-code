; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004115d8, declared_size=68, range_size=68, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTarget14HandleGhostCamER7Point3DIfE
; demangled: CameraTarget::HandleGhostCam(Point3D<float>&)
; decoder-mode: arm
004115d8  70 40 2d e9                                      push {r4, r5, r6, lr}
004115dc  01 40 a0 e1                                      mov r4, r1
004115e0  00 50 a0 e1                                      mov r5, r0
004115e4  38 10 90 e5                                      ldr r1, [r0, #0x38]
004115e8  00 00 94 e5                                      ldr r0, [r4]
004115ec  6c f5 fb eb                                      bl #0x30eba4
004115f0  00 00 84 e5                                      str r0, [r4]
004115f4  3c 10 95 e5                                      ldr r1, [r5, #0x3c]
004115f8  04 00 94 e5                                      ldr r0, [r4, #4]
004115fc  68 f5 fb eb                                      bl #0x30eba4
00411600  04 00 84 e5                                      str r0, [r4, #4]
00411604  40 10 95 e5                                      ldr r1, [r5, #0x40]
00411608  08 00 94 e5                                      ldr r0, [r4, #8]
0041160c  64 f5 fb eb                                      bl #0x30eba4
00411610  08 00 84 e5                                      str r0, [r4, #8]
00411614  01 00 a0 e3                                      mov r0, #1
00411618  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0041161c, declared_size=56, range_size=56, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTarget13EnableDampingEb
; demangled: CameraTarget::EnableDamping(bool)
; decoder-mode: arm
0041161c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00411620  28 20 9f e5                                      ldr r2, [pc, #0x28]
00411624  25 10 c0 e5                                      strb r1, [r0, #0x25]
00411628  03 30 8f e0                                      add r3, pc, r3
0041162c  02 20 93 e7                                      ldr r2, [r3, r2]
00411630  00 30 92 e5                                      ldr r3, [r2]
00411634  2c 30 80 e5                                      str r3, [r0, #0x2c]
00411638  04 30 92 e5                                      ldr r3, [r2, #4]
0041163c  30 30 80 e5                                      str r3, [r0, #0x30]
00411640  08 30 92 e5                                      ldr r3, [r2, #8]
00411644  34 30 80 e5                                      str r3, [r0, #0x34]
00411648  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0041164c  68 34 58 00 2c 3f 00 00                          .byte 0x68, 0x34, 0x58, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x00411654, declared_size=8, range_size=8, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTarget15SetDampingRatioEf
; demangled: CameraTarget::SetDampingRatio(float)
; decoder-mode: arm
00411654  28 10 80 e5                                      str r1, [r0, #0x28]
00411658  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041165c, declared_size=352, range_size=352, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTarget13HandleDampingER7Point3DIfE
; demangled: CameraTarget::HandleDamping(Point3D<float>&)
; decoder-mode: arm
0041165c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00411660  25 30 d0 e5                                      ldrb r3, [r0, #0x25]
00411664  48 51 9f e5                                      ldr r5, [pc, #0x148]
00411668  00 40 a0 e1                                      mov r4, r0
0041166c  00 00 53 e3                                      cmp r3, #0
00411670  01 60 a0 e1                                      mov r6, r1
00411674  05 50 8f e0                                      add r5, pc, r5
00411678  4b 00 00 0a                                      beq #0x4117ac
0041167c  04 70 90 e5                                      ldr r7, [r0, #4]
00411680  00 00 57 e3                                      cmp r7, #0
00411684  48 00 00 0a                                      beq #0x4117ac
00411688  00 10 91 e5                                      ldr r1, [r1]
0041168c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00411690  43 f5 fb eb                                      bl #0x30eba4
00411694  04 10 96 e5                                      ldr r1, [r6, #4]
00411698  00 a0 a0 e1                                      mov sl, r0
0041169c  30 00 94 e5                                      ldr r0, [r4, #0x30]
004116a0  3f f5 fb eb                                      bl #0x30eba4
004116a4  08 10 96 e5                                      ldr r1, [r6, #8]
004116a8  00 90 a0 e1                                      mov sb, r0
004116ac  34 00 94 e5                                      ldr r0, [r4, #0x34]
004116b0  3b f5 fb eb                                      bl #0x30eba4
004116b4  00 30 97 e5                                      ldr r3, [r7]
004116b8  00 80 a0 e1                                      mov r8, r0
004116bc  07 00 a0 e1                                      mov r0, r7
004116c0  0f e0 a0 e1                                      mov lr, pc
004116c4  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
004116c8  28 70 94 e5                                      ldr r7, [r4, #0x28]
004116cc  00 30 a0 e1                                      mov r3, r0
004116d0  00 10 90 e5                                      ldr r1, [r0]
004116d4  0a 00 a0 e1                                      mov r0, sl
004116d8  04 b0 93 e5                                      ldr fp, [r3, #4]
004116dc  08 a0 93 e5                                      ldr sl, [r3, #8]
004116e0  31 f3 fb eb                                      bl #0x30e3ac
004116e4  07 10 a0 e1                                      mov r1, r7
004116e8  9f f5 fb eb                                      bl #0x30ed6c
004116ec  0b 10 a0 e1                                      mov r1, fp
004116f0  2c 00 84 e5                                      str r0, [r4, #0x2c]
004116f4  09 00 a0 e1                                      mov r0, sb
004116f8  2b f3 fb eb                                      bl #0x30e3ac
004116fc  07 10 a0 e1                                      mov r1, r7
00411700  99 f5 fb eb                                      bl #0x30ed6c
00411704  0a 10 a0 e1                                      mov r1, sl
00411708  30 00 84 e5                                      str r0, [r4, #0x30]
0041170c  08 00 a0 e1                                      mov r0, r8
00411710  25 f3 fb eb                                      bl #0x30e3ac
00411714  07 10 a0 e1                                      mov r1, r7
00411718  93 f5 fb eb                                      bl #0x30ed6c
0041171c  04 30 94 e5                                      ldr r3, [r4, #4]
00411720  34 00 84 e5                                      str r0, [r4, #0x34]
00411724  03 00 a0 e1                                      mov r0, r3
00411728  00 30 93 e5                                      ldr r3, [r3]
0041172c  0f e0 a0 e1                                      mov lr, pc
00411730  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00411734  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00411738  00 70 a0 e1                                      mov r7, r0
0041173c  03 00 95 e7                                      ldr r0, [r5, r3]
00411740  c9 37 fc eb                                      bl #0x31f66c
00411744  e5 f2 fb eb                                      bl #0x30e2e0
00411748  6f 12 01 e3                                      movw r1, #0x126f
0041174c  83 1a 43 e3                                      movt r1, #0x3a83
00411750  85 f5 fb eb                                      bl #0x30ed6c
00411754  30 10 94 e5                                      ldr r1, [r4, #0x30]
00411758  00 50 a0 e1                                      mov r5, r0
0041175c  82 f5 fb eb                                      bl #0x30ed6c
00411760  04 10 97 e5                                      ldr r1, [r7, #4]
00411764  0e f5 fb eb                                      bl #0x30eba4
00411768  34 10 94 e5                                      ldr r1, [r4, #0x34]
0041176c  00 80 a0 e1                                      mov r8, r0
00411770  05 00 a0 e1                                      mov r0, r5
00411774  7c f5 fb eb                                      bl #0x30ed6c
00411778  08 10 97 e5                                      ldr r1, [r7, #8]
0041177c  08 f5 fb eb                                      bl #0x30eba4
00411780  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00411784  00 a0 a0 e1                                      mov sl, r0
00411788  05 00 a0 e1                                      mov r0, r5
0041178c  76 f5 fb eb                                      bl #0x30ed6c
00411790  00 10 97 e5                                      ldr r1, [r7]
00411794  02 f5 fb eb                                      bl #0x30eba4
00411798  08 a0 86 e5                                      str sl, [r6, #8]
0041179c  00 00 86 e5                                      str r0, [r6]
004117a0  04 80 86 e5                                      str r8, [r6, #4]
004117a4  01 00 a0 e3                                      mov r0, #1
004117a8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
004117ac  00 00 a0 e3                                      mov r0, #0
004117b0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
004117b4  1c 34 58 00 f4 37 00 00                          .byte 0x1c, 0x34, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004117bc, declared_size=116, range_size=116, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTarget12HandleOffsetER7Point3DIfE
; demangled: CameraTarget::HandleOffset(Point3D<float>&)
; decoder-mode: arm
004117bc  10 40 2d e9                                      push {r4, lr}
004117c0  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
004117c4  10 d0 4d e2                                      sub sp, sp, #0x10
004117c8  01 40 a0 e1                                      mov r4, r1
004117cc  00 00 53 e3                                      cmp r3, #0
004117d0  03 00 a0 01                                      moveq r0, r3
004117d4  13 00 00 0a                                      beq #0x411828
004117d8  08 20 91 e5                                      ldr r2, [r1, #8]
004117dc  00 30 a0 e3                                      mov r3, #0
004117e0  04 10 8d e2                                      add r1, sp, #4
004117e4  0c 30 8d e5                                      str r3, [sp, #0xc]
004117e8  04 30 8d e5                                      str r3, [sp, #4]
004117ec  08 30 8d e5                                      str r3, [sp, #8]
004117f0  39 f7 ff eb                                      bl #0x40f4dc
004117f4  04 10 9d e5                                      ldr r1, [sp, #4]
004117f8  00 00 94 e5                                      ldr r0, [r4]
004117fc  e8 f4 fb eb                                      bl #0x30eba4
00411800  00 00 84 e5                                      str r0, [r4]
00411804  08 10 9d e5                                      ldr r1, [sp, #8]
00411808  04 00 94 e5                                      ldr r0, [r4, #4]
0041180c  e4 f4 fb eb                                      bl #0x30eba4
00411810  04 00 84 e5                                      str r0, [r4, #4]
00411814  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00411818  08 00 94 e5                                      ldr r0, [r4, #8]
0041181c  e0 f4 fb eb                                      bl #0x30eba4
00411820  08 00 84 e5                                      str r0, [r4, #8]
00411824  01 00 a0 e3                                      mov r0, #1
00411828  10 d0 8d e2                                      add sp, sp, #0x10
0041182c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00411830, declared_size=404, range_size=404, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTarget16HandleTransitionEv
; demangled: CameraTarget::HandleTransition()
; decoder-mode: arm
00411830  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00411834  20 20 90 e5                                      ldr r2, [r0, #0x20]
00411838  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
0041183c  1c d0 4d e2                                      sub sp, sp, #0x1c
00411840  00 00 52 e3                                      cmp r2, #0
00411844  00 40 a0 e1                                      mov r4, r0
00411848  03 30 8f e0                                      add r3, pc, r3
0041184c  58 00 00 ba                                      blt #0x4119b4
00411850  04 20 90 e5                                      ldr r2, [r0, #4]
00411854  00 00 52 e3                                      cmp r2, #0
00411858  55 00 00 0a                                      beq #0x4119b4
0041185c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00411860  00 00 52 e3                                      cmp r2, #0
00411864  52 00 00 0a                                      beq #0x4119b4
00411868  50 21 9f e5                                      ldr r2, [pc, #0x150]
0041186c  02 00 93 e7                                      ldr r0, [r3, r2]
00411870  7d 37 fc eb                                      bl #0x31f66c
00411874  20 30 94 e5                                      ldr r3, [r4, #0x20]
00411878  03 30 60 e0                                      rsb r3, r0, r3
0041187c  00 00 53 e3                                      cmp r3, #0
00411880  20 30 84 e5                                      str r3, [r4, #0x20]
00411884  3a 00 00 da                                      ble #0x411974
00411888  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0041188c  c9 0a fe eb                                      bl #0x3943b8
00411890  00 60 a0 e1                                      mov r6, r0
00411894  20 00 94 e5                                      ldr r0, [r4, #0x20]
00411898  31 f4 fb eb                                      bl #0x30e964
0041189c  00 50 a0 e1                                      mov r5, r0
004118a0  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004118a4  2e f4 fb eb                                      bl #0x30e964
004118a8  00 10 a0 e1                                      mov r1, r0
004118ac  05 00 a0 e1                                      mov r0, r5
004118b0  f7 f4 fb eb                                      bl #0x30ec94
004118b4  00 10 a0 e1                                      mov r1, r0
004118b8  fe 05 a0 e3                                      mov r0, #0x3f800000
004118bc  ba f2 fb eb                                      bl #0x30e3ac
004118c0  14 80 94 e5                                      ldr r8, [r4, #0x14]
004118c4  00 50 a0 e1                                      mov r5, r0
004118c8  04 00 96 e5                                      ldr r0, [r6, #4]
004118cc  08 10 a0 e1                                      mov r1, r8
004118d0  b5 f2 fb eb                                      bl #0x30e3ac
004118d4  00 10 a0 e1                                      mov r1, r0
004118d8  05 00 a0 e1                                      mov r0, r5
004118dc  22 f5 fb eb                                      bl #0x30ed6c
004118e0  00 10 a0 e1                                      mov r1, r0
004118e4  08 00 a0 e1                                      mov r0, r8
004118e8  ad f4 fb eb                                      bl #0x30eba4
004118ec  18 70 94 e5                                      ldr r7, [r4, #0x18]
004118f0  00 80 a0 e1                                      mov r8, r0
004118f4  08 00 96 e5                                      ldr r0, [r6, #8]
004118f8  07 10 a0 e1                                      mov r1, r7
004118fc  aa f2 fb eb                                      bl #0x30e3ac
00411900  00 10 a0 e1                                      mov r1, r0
00411904  05 00 a0 e1                                      mov r0, r5
00411908  17 f5 fb eb                                      bl #0x30ed6c
0041190c  00 10 a0 e1                                      mov r1, r0
00411910  07 00 a0 e1                                      mov r0, r7
00411914  a2 f4 fb eb                                      bl #0x30eba4
00411918  04 70 94 e5                                      ldr r7, [r4, #4]
0041191c  10 40 94 e5                                      ldr r4, [r4, #0x10]
00411920  00 a0 a0 e1                                      mov sl, r0
00411924  00 30 97 e5                                      ldr r3, [r7]
00411928  00 00 96 e5                                      ldr r0, [r6]
0041192c  04 10 a0 e1                                      mov r1, r4
00411930  a4 60 93 e5                                      ldr r6, [r3, #0xa4]
00411934  9c f2 fb eb                                      bl #0x30e3ac
00411938  00 10 a0 e1                                      mov r1, r0
0041193c  05 00 a0 e1                                      mov r0, r5
00411940  09 f5 fb eb                                      bl #0x30ed6c
00411944  00 10 a0 e1                                      mov r1, r0
00411948  04 00 a0 e1                                      mov r0, r4
0041194c  94 f4 fb eb                                      bl #0x30eba4
00411950  10 80 8d e5                                      str r8, [sp, #0x10]
00411954  0c 00 8d e5                                      str r0, [sp, #0xc]
00411958  14 a0 8d e5                                      str sl, [sp, #0x14]
0041195c  07 00 a0 e1                                      mov r0, r7
00411960  0c 10 8d e2                                      add r1, sp, #0xc
00411964  36 ff 2f e1                                      blx r6
00411968  01 00 a0 e3                                      mov r0, #1
0041196c  1c d0 8d e2                                      add sp, sp, #0x1c
00411970  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00411974  04 50 94 e5                                      ldr r5, [r4, #4]
00411978  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0041197c  00 30 95 e5                                      ldr r3, [r5]
00411980  a4 40 93 e5                                      ldr r4, [r3, #0xa4]
00411984  8b 0a fe eb                                      bl #0x3943b8
00411988  00 10 90 e5                                      ldr r1, [r0]
0041198c  04 20 90 e5                                      ldr r2, [r0, #4]
00411990  08 30 90 e5                                      ldr r3, [r0, #8]
00411994  00 10 8d e5                                      str r1, [sp]
00411998  05 00 a0 e1                                      mov r0, r5
0041199c  04 20 8d e5                                      str r2, [sp, #4]
004119a0  08 30 8d e5                                      str r3, [sp, #8]
004119a4  0d 10 a0 e1                                      mov r1, sp
004119a8  34 ff 2f e1                                      blx r4
004119ac  01 00 a0 e3                                      mov r0, #1
004119b0  ed ff ff ea                                      b #0x41196c
004119b4  00 00 a0 e3                                      mov r0, #0
004119b8  eb ff ff ea                                      b #0x41196c
; mapping-symbol data/literal pool
004119bc  48 32 58 00 f4 37 00 00                          .byte 0x48, 0x32, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004119c4, declared_size=176, range_size=176, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTarget9SetTargetEP10GameObjecti
; demangled: CameraTarget::SetTarget(GameObject*, int)
; decoder-mode: arm
004119c4  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
004119c8  70 40 2d e9                                      push {r4, r5, r6, lr}
004119cc  00 50 51 e2                                      subs r5, r1, #0
004119d0  00 40 a0 e1                                      mov r4, r0
004119d4  03 30 8f e0                                      add r3, pc, r3
004119d8  02 60 a0 e1                                      mov r6, r2
004119dc  12 00 00 0a                                      beq #0x411a2c
004119e0  00 00 52 e3                                      cmp r2, #0
004119e4  11 00 00 da                                      ble #0x411a30
004119e8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004119ec  00 00 50 e3                                      cmp r0, #0
004119f0  1a 00 00 0a                                      beq #0x411a60
004119f4  6f 0a fe eb                                      bl #0x3943b8
004119f8  00 30 90 e5                                      ldr r3, [r0]
004119fc  10 30 84 e5                                      str r3, [r4, #0x10]
00411a00  04 30 90 e5                                      ldr r3, [r0, #4]
00411a04  14 30 84 e5                                      str r3, [r4, #0x14]
00411a08  08 30 90 e5                                      ldr r3, [r0, #8]
00411a0c  20 60 84 e5                                      str r6, [r4, #0x20]
00411a10  1c 60 84 e5                                      str r6, [r4, #0x1c]
00411a14  18 30 84 e5                                      str r3, [r4, #0x18]
00411a18  00 30 a0 e3                                      mov r3, #0
00411a1c  0c 50 84 e5                                      str r5, [r4, #0xc]
00411a20  40 30 84 e5                                      str r3, [r4, #0x40]
00411a24  38 30 84 e5                                      str r3, [r4, #0x38]
00411a28  3c 30 84 e5                                      str r3, [r4, #0x3c]
00411a2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00411a30  38 10 9f e5                                      ldr r1, [pc, #0x38]
00411a34  00 20 a0 e3                                      mov r2, #0
00411a38  01 30 93 e7                                      ldr r3, [r3, r1]
00411a3c  00 10 93 e5                                      ldr r1, [r3]
00411a40  10 10 80 e5                                      str r1, [r0, #0x10]
00411a44  04 10 93 e5                                      ldr r1, [r3, #4]
00411a48  14 10 80 e5                                      str r1, [r0, #0x14]
00411a4c  08 30 93 e5                                      ldr r3, [r3, #8]
00411a50  20 20 80 e5                                      str r2, [r0, #0x20]
00411a54  1c 20 80 e5                                      str r2, [r0, #0x1c]
00411a58  18 30 80 e5                                      str r3, [r0, #0x18]
00411a5c  ed ff ff ea                                      b #0x411a18
00411a60  08 20 9f e5                                      ldr r2, [pc, #8]
00411a64  02 00 93 e7                                      ldr r0, [r3, r2]
00411a68  e2 ff ff ea                                      b #0x4119f8
; mapping-symbol data/literal pool
00411a6c  bc 30 58 00 2c 3f 00 00                          .byte 0xbc, 0x30, 0x58, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x00411a74, declared_size=8, range_size=8, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTarget17GetTargetPositionEv
; demangled: CameraTarget::GetTargetPosition()
; decoder-mode: arm
00411a74  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00411a78  4e 0a fe ea                                      b #0x3943b8

; FUNCTION 0x00411a7c, declared_size=188, range_size=188, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTarget6UpdateEv
; demangled: CameraTarget::Update()
; decoder-mode: arm
00411a7c  30 40 2d e9                                      push {r4, r5, lr}
00411a80  04 30 90 e5                                      ldr r3, [r0, #4]
00411a84  1c d0 4d e2                                      sub sp, sp, #0x1c
00411a88  00 40 a0 e1                                      mov r4, r0
00411a8c  00 00 53 e3                                      cmp r3, #0
00411a90  25 00 00 0a                                      beq #0x411b2c
00411a94  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00411a98  00 00 53 e3                                      cmp r3, #0
00411a9c  22 00 00 0a                                      beq #0x411b2c
00411aa0  62 ff ff eb                                      bl #0x411830
00411aa4  00 00 50 e3                                      cmp r0, #0
00411aa8  01 00 00 0a                                      beq #0x411ab4
00411aac  1c d0 8d e2                                      add sp, sp, #0x1c
00411ab0  30 80 bd e8                                      pop {r4, r5, pc}
00411ab4  04 00 a0 e1                                      mov r0, r4
00411ab8  ed ff ff eb                                      bl #0x411a74
00411abc  00 20 90 e5                                      ldr r2, [r0]
00411ac0  00 30 a0 e1                                      mov r3, r0
00411ac4  0c 50 8d e2                                      add r5, sp, #0xc
00411ac8  0c 20 8d e5                                      str r2, [sp, #0xc]
00411acc  04 20 93 e5                                      ldr r2, [r3, #4]
00411ad0  05 10 a0 e1                                      mov r1, r5
00411ad4  04 00 a0 e1                                      mov r0, r4
00411ad8  10 20 8d e5                                      str r2, [sp, #0x10]
00411adc  08 30 93 e5                                      ldr r3, [r3, #8]
00411ae0  14 30 8d e5                                      str r3, [sp, #0x14]
00411ae4  34 ff ff eb                                      bl #0x4117bc
00411ae8  05 10 a0 e1                                      mov r1, r5
00411aec  04 00 a0 e1                                      mov r0, r4
00411af0  b8 fe ff eb                                      bl #0x4115d8
00411af4  05 10 a0 e1                                      mov r1, r5
00411af8  04 00 a0 e1                                      mov r0, r4
00411afc  d6 fe ff eb                                      bl #0x41165c
00411b00  04 00 94 e5                                      ldr r0, [r4, #4]
00411b04  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00411b08  0d 10 a0 e1                                      mov r1, sp
00411b0c  00 30 90 e5                                      ldr r3, [r0]
00411b10  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
00411b14  00 20 8d e5                                      str r2, [sp]
00411b18  10 20 9d e5                                      ldr r2, [sp, #0x10]
00411b1c  04 20 8d e5                                      str r2, [sp, #4]
00411b20  14 20 9d e5                                      ldr r2, [sp, #0x14]
00411b24  08 20 8d e5                                      str r2, [sp, #8]
00411b28  33 ff 2f e1                                      blx r3
00411b2c  04 00 a0 e1                                      mov r0, r4
00411b30  c6 f3 ff eb                                      bl #0x40ea50
00411b34  dc ff ff ea                                      b #0x411aac

; FUNCTION 0x00411b38, declared_size=132, range_size=132, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTarget9SetTargetEPKci
; demangled: CameraTarget::SetTarget(char const*, int)
; decoder-mode: arm
00411b38  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00411b3c  70 c0 9f e5                                      ldr ip, [pc, #0x70]
00411b40  01 30 a0 e1                                      mov r3, r1
00411b44  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00411b48  0c c0 8f e0                                      add ip, pc, ip
00411b4c  1c d0 4d e2                                      sub sp, sp, #0x1c
00411b50  01 10 9c e7                                      ldr r1, [ip, r1]
00411b54  0c 50 8d e2                                      add r5, sp, #0xc
00411b58  00 40 a0 e3                                      mov r4, #0
00411b5c  38 10 91 e5                                      ldr r1, [r1, #0x38]
00411b60  00 70 a0 e1                                      mov r7, r0
00411b64  02 60 a0 e1                                      mov r6, r2
00411b68  05 00 a0 e1                                      mov r0, r5
00411b6c  03 20 a0 e1                                      mov r2, r3
00411b70  00 30 e0 e3                                      mvn r3, #0
00411b74  00 40 8d e5                                      str r4, [sp]
00411b78  04 40 8d e5                                      str r4, [sp, #4]
00411b7c  47 e4 fc eb                                      bl #0x34aca0
00411b80  05 00 a0 e1                                      mov r0, r5
00411b84  04 10 a0 e1                                      mov r1, r4
00411b88  8c b8 fc eb                                      bl #0x33fdc0
00411b8c  04 00 50 e1                                      cmp r0, r4
00411b90  05 00 00 0a                                      beq #0x411bac
00411b94  05 00 a0 e1                                      mov r0, r5
00411b98  d1 b8 fc eb                                      bl #0x33fee4
00411b9c  06 20 a0 e1                                      mov r2, r6
00411ba0  00 10 a0 e1                                      mov r1, r0
00411ba4  07 00 a0 e1                                      mov r0, r7
00411ba8  85 ff ff eb                                      bl #0x4119c4
00411bac  1c d0 8d e2                                      add sp, sp, #0x1c
00411bb0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00411bb4  48 2f 58 00 f4 37 00 00                          .byte 0x48, 0x2f, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00411bbc, declared_size=52, range_size=52, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTargetD1Ev
; demangled: CameraTarget::~CameraTarget()
; decoder-mode: arm
00411bbc  24 30 9f e5                                      ldr r3, [pc, #0x24]
00411bc0  24 20 9f e5                                      ldr r2, [pc, #0x24]
00411bc4  10 40 2d e9                                      push {r4, lr}
00411bc8  03 30 8f e0                                      add r3, pc, r3
00411bcc  02 20 93 e7                                      ldr r2, [r3, r2]
00411bd0  00 40 a0 e1                                      mov r4, r0
00411bd4  08 20 82 e2                                      add r2, r2, #8
00411bd8  00 20 80 e5                                      str r2, [r0]
00411bdc  e7 f2 ff eb                                      bl #0x40e780
00411be0  04 00 a0 e1                                      mov r0, r4
00411be4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00411be8  c8 2e 58 00 d4 0e 00 00                          .byte 0xc8, 0x2e, 0x58, 0x00, 0xd4, 0x0e, 0x00, 0x00

; FUNCTION 0x00411bf0, declared_size=28, range_size=28, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTargetD0Ev
; demangled: CameraTarget::~CameraTarget()
; decoder-mode: arm
00411bf0  10 40 2d e9                                      push {r4, lr}
00411bf4  00 40 a0 e1                                      mov r4, r0
00411bf8  ef ff ff eb                                      bl #0x411bbc
00411bfc  04 00 a0 e1                                      mov r0, r4
00411c00  0e fa fb eb                                      bl #0x310440
00411c04  04 00 a0 e1                                      mov r0, r4
00411c08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00411c0c, declared_size=52, range_size=52, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTargetD2Ev
; demangled: CameraTarget::~CameraTarget()
; decoder-mode: arm
00411c0c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00411c10  24 20 9f e5                                      ldr r2, [pc, #0x24]
00411c14  10 40 2d e9                                      push {r4, lr}
00411c18  03 30 8f e0                                      add r3, pc, r3
00411c1c  02 20 93 e7                                      ldr r2, [r3, r2]
00411c20  00 40 a0 e1                                      mov r4, r0
00411c24  08 20 82 e2                                      add r2, r2, #8
00411c28  00 20 80 e5                                      str r2, [r0]
00411c2c  d3 f2 ff eb                                      bl #0x40e780
00411c30  04 00 a0 e1                                      mov r0, r4
00411c34  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00411c38  78 2e 58 00 d4 0e 00 00                          .byte 0x78, 0x2e, 0x58, 0x00, 0xd4, 0x0e, 0x00, 0x00

; FUNCTION 0x00411c40, declared_size=156, range_size=156, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTargetC1Ev
; demangled: CameraTarget::CameraTarget()
; decoder-mode: arm
00411c40  70 40 2d e9                                      push {r4, r5, r6, lr}
00411c44  84 50 9f e5                                      ldr r5, [pc, #0x84]
00411c48  00 40 a0 e1                                      mov r4, r0
00411c4c  b3 f2 ff eb                                      bl #0x40e720
00411c50  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00411c54  05 50 8f e0                                      add r5, pc, r5
00411c58  78 20 9f e5                                      ldr r2, [pc, #0x78]
00411c5c  01 10 95 e7                                      ldr r1, [r5, r1]
00411c60  00 30 a0 e3                                      mov r3, #0
00411c64  02 20 95 e7                                      ldr r2, [r5, r2]
00411c68  08 00 81 e2                                      add r0, r1, #8
00411c6c  00 00 84 e5                                      str r0, [r4]
00411c70  01 00 a0 e3                                      mov r0, #1
00411c74  25 00 c4 e5                                      strb r0, [r4, #0x25]
00411c78  33 03 03 e3                                      movw r0, #0x3333
00411c7c  00 10 a0 e3                                      mov r1, #0
00411c80  33 0f 43 e3                                      movt r0, #0x3f33
00411c84  28 00 84 e5                                      str r0, [r4, #0x28]
00411c88  24 10 c4 e5                                      strb r1, [r4, #0x24]
00411c8c  0c 10 84 e5                                      str r1, [r4, #0xc]
00411c90  10 30 84 e5                                      str r3, [r4, #0x10]
00411c94  14 30 84 e5                                      str r3, [r4, #0x14]
00411c98  18 30 84 e5                                      str r3, [r4, #0x18]
00411c9c  1c 10 84 e5                                      str r1, [r4, #0x1c]
00411ca0  20 10 84 e5                                      str r1, [r4, #0x20]
00411ca4  00 10 92 e5                                      ldr r1, [r2]
00411ca8  04 00 a0 e1                                      mov r0, r4
00411cac  2c 10 84 e5                                      str r1, [r4, #0x2c]
00411cb0  04 10 92 e5                                      ldr r1, [r2, #4]
00411cb4  30 10 84 e5                                      str r1, [r4, #0x30]
00411cb8  08 20 92 e5                                      ldr r2, [r2, #8]
00411cbc  40 30 84 e5                                      str r3, [r4, #0x40]
00411cc0  38 30 84 e5                                      str r3, [r4, #0x38]
00411cc4  34 20 84 e5                                      str r2, [r4, #0x34]
00411cc8  3c 30 84 e5                                      str r3, [r4, #0x3c]
00411ccc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00411cd0  3c 2e 58 00 d4 0e 00 00 2c 3f 00 00              .byte 0x3c, 0x2e, 0x58, 0x00, 0xd4, 0x0e, 0x00, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x00411cdc, declared_size=156, range_size=156, mode=arm
; class-group: CameraTarget
; alias: _ZN12CameraTargetC2Ev
; demangled: CameraTarget::CameraTarget()
; decoder-mode: arm
00411cdc  70 40 2d e9                                      push {r4, r5, r6, lr}
00411ce0  84 50 9f e5                                      ldr r5, [pc, #0x84]
00411ce4  00 40 a0 e1                                      mov r4, r0
00411ce8  8c f2 ff eb                                      bl #0x40e720
00411cec  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00411cf0  05 50 8f e0                                      add r5, pc, r5
00411cf4  78 20 9f e5                                      ldr r2, [pc, #0x78]
00411cf8  01 10 95 e7                                      ldr r1, [r5, r1]
00411cfc  00 30 a0 e3                                      mov r3, #0
00411d00  02 20 95 e7                                      ldr r2, [r5, r2]
00411d04  08 00 81 e2                                      add r0, r1, #8
00411d08  00 00 84 e5                                      str r0, [r4]
00411d0c  01 00 a0 e3                                      mov r0, #1
00411d10  25 00 c4 e5                                      strb r0, [r4, #0x25]
00411d14  33 03 03 e3                                      movw r0, #0x3333
00411d18  00 10 a0 e3                                      mov r1, #0
00411d1c  33 0f 43 e3                                      movt r0, #0x3f33
00411d20  28 00 84 e5                                      str r0, [r4, #0x28]
00411d24  24 10 c4 e5                                      strb r1, [r4, #0x24]
00411d28  0c 10 84 e5                                      str r1, [r4, #0xc]
00411d2c  10 30 84 e5                                      str r3, [r4, #0x10]
00411d30  14 30 84 e5                                      str r3, [r4, #0x14]
00411d34  18 30 84 e5                                      str r3, [r4, #0x18]
00411d38  1c 10 84 e5                                      str r1, [r4, #0x1c]
00411d3c  20 10 84 e5                                      str r1, [r4, #0x20]
00411d40  00 10 92 e5                                      ldr r1, [r2]
00411d44  04 00 a0 e1                                      mov r0, r4
00411d48  2c 10 84 e5                                      str r1, [r4, #0x2c]
00411d4c  04 10 92 e5                                      ldr r1, [r2, #4]
00411d50  30 10 84 e5                                      str r1, [r4, #0x30]
00411d54  08 20 92 e5                                      ldr r2, [r2, #8]
00411d58  40 30 84 e5                                      str r3, [r4, #0x40]
00411d5c  38 30 84 e5                                      str r3, [r4, #0x38]
00411d60  34 20 84 e5                                      str r2, [r4, #0x34]
00411d64  3c 30 84 e5                                      str r3, [r4, #0x3c]
00411d68  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00411d6c  a0 2d 58 00 d4 0e 00 00 2c 3f 00 00              .byte 0xa0, 0x2d, 0x58, 0x00, 0xd4, 0x0e, 0x00, 0x00, 0x2c, 0x3f, 0x00, 0x00
