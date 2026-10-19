; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00474678, declared_size=12, range_size=12, mode=arm
; class-group: AnimController
; alias: _ZN14AnimController15GetAnimationSetEv
; demangled: AnimController::GetAnimationSet()
; decoder-mode: arm
00474678  00 20 a0 e3                                      mov r2, #0
0047467c  00 20 80 e5                                      str r2, [r0]
00474680  1e ff 2f e1                                      bx lr

; FUNCTION 0x00474684, declared_size=68, range_size=68, mode=arm
; class-group: AnimController
; alias: _ZN14AnimControllerD2Ev
; demangled: AnimController::~AnimController()
; decoder-mode: arm
00474684  34 30 9f e5                                      ldr r3, [pc, #0x34]
00474688  10 40 2d e9                                      push {r4, lr}
0047468c  30 20 9f e5                                      ldr r2, [pc, #0x30]
00474690  03 30 8f e0                                      add r3, pc, r3
00474694  04 10 90 e5                                      ldr r1, [r0, #4]
00474698  02 20 93 e7                                      ldr r2, [r3, r2]
0047469c  00 40 a0 e1                                      mov r4, r0
004746a0  08 20 82 e2                                      add r2, r2, #8
004746a4  00 20 80 e5                                      str r2, [r0]
004746a8  00 30 91 e5                                      ldr r3, [r1]
004746ac  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
004746b0  00 00 81 e0                                      add r0, r1, r0
004746b4  b2 a3 fa eb                                      bl #0x31d584
004746b8  04 00 a0 e1                                      mov r0, r4
004746bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004746c0  00 04 52 00 10 48 00 00                          .byte 0x00, 0x04, 0x52, 0x00, 0x10, 0x48, 0x00, 0x00

; FUNCTION 0x004746c8, declared_size=68, range_size=68, mode=arm
; class-group: AnimController
; alias: _ZN14AnimControllerD1Ev
; demangled: AnimController::~AnimController()
; decoder-mode: arm
004746c8  34 30 9f e5                                      ldr r3, [pc, #0x34]
004746cc  10 40 2d e9                                      push {r4, lr}
004746d0  30 20 9f e5                                      ldr r2, [pc, #0x30]
004746d4  03 30 8f e0                                      add r3, pc, r3
004746d8  04 10 90 e5                                      ldr r1, [r0, #4]
004746dc  02 20 93 e7                                      ldr r2, [r3, r2]
004746e0  00 40 a0 e1                                      mov r4, r0
004746e4  08 20 82 e2                                      add r2, r2, #8
004746e8  00 20 80 e5                                      str r2, [r0]
004746ec  00 30 91 e5                                      ldr r3, [r1]
004746f0  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
004746f4  00 00 81 e0                                      add r0, r1, r0
004746f8  a1 a3 fa eb                                      bl #0x31d584
004746fc  04 00 a0 e1                                      mov r0, r4
00474700  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00474704  bc 03 52 00 10 48 00 00                          .byte 0xbc, 0x03, 0x52, 0x00, 0x10, 0x48, 0x00, 0x00

; FUNCTION 0x0047470c, declared_size=4, range_size=4, mode=arm
; class-group: AnimController
; alias: _ZN14AnimController17_CBAnim_DoNothingEPN6glitch5scene19ITimelineControllerEPv
; demangled: AnimController::_CBAnim_DoNothing(glitch::scene::ITimelineController*, void*)
; decoder-mode: arm
0047470c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00474710, declared_size=4, range_size=4, mode=arm
; class-group: AnimController
; alias: _ZN14AnimController18_CBEvent_DoNothingERKN6glitch7collada15STriggeredEventEPv
; demangled: AnimController::_CBEvent_DoNothing(glitch::collada::STriggeredEvent const&, void*)
; decoder-mode: arm
00474710  1e ff 2f e1                                      bx lr

; FUNCTION 0x00474734, declared_size=60, range_size=60, mode=arm
; class-group: AnimController
; alias: _ZNK14AnimController10GetNumAnimEv
; demangled: AnimController::GetNumAnim() const
; decoder-mode: arm
00474734  10 40 2d e9                                      push {r4, lr}
00474738  04 00 90 e5                                      ldr r0, [r0, #4]
0047473c  54 8a 04 eb                                      bl #0x597094
00474740  00 30 90 e5                                      ldr r3, [r0]
00474744  00 00 53 e1                                      cmp r3, r0
00474748  00 20 a0 13                                      movne r2, #0
0047474c  05 00 00 0a                                      beq #0x474768
00474750  00 30 93 e5                                      ldr r3, [r3]
00474754  01 20 82 e2                                      add r2, r2, #1
00474758  03 00 50 e1                                      cmp r0, r3
0047475c  fb ff ff 1a                                      bne #0x474750
00474760  02 00 a0 e1                                      mov r0, r2
00474764  10 80 bd e8                                      pop {r4, pc}
00474768  00 00 a0 e3                                      mov r0, #0
0047476c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00474770, declared_size=104, range_size=104, mode=arm
; class-group: AnimController
; alias: _ZNK14AnimController7GetAnimEj
; demangled: AnimController::GetAnim(unsigned int) const
; decoder-mode: arm
00474770  70 40 2d e9                                      push {r4, r5, r6, lr}
00474774  00 30 90 e5                                      ldr r3, [r0]
00474778  01 50 a0 e1                                      mov r5, r1
0047477c  00 40 a0 e1                                      mov r4, r0
00474780  0f e0 a0 e1                                      mov lr, pc
00474784  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00474788  05 00 50 e1                                      cmp r0, r5
0047478c  01 00 00 8a                                      bhi #0x474798
00474790  00 00 a0 e3                                      mov r0, #0
00474794  70 80 bd e8                                      pop {r4, r5, r6, pc}
00474798  04 00 94 e5                                      ldr r0, [r4, #4]
0047479c  3c 8a 04 eb                                      bl #0x597094
004747a0  00 30 90 e5                                      ldr r3, [r0]
004747a4  00 00 53 e1                                      cmp r3, r0
004747a8  f8 ff ff 0a                                      beq #0x474790
004747ac  00 00 55 e3                                      cmp r5, #0
004747b0  00 20 a0 13                                      movne r2, #0
004747b4  05 00 00 0a                                      beq #0x4747d0
004747b8  00 30 93 e5                                      ldr r3, [r3]
004747bc  01 20 82 e2                                      add r2, r2, #1
004747c0  03 00 50 e1                                      cmp r0, r3
004747c4  f1 ff ff 0a                                      beq #0x474790
004747c8  02 00 55 e1                                      cmp r5, r2
004747cc  f9 ff ff 1a                                      bne #0x4747b8
004747d0  08 00 93 e5                                      ldr r0, [r3, #8]
004747d4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004747d8, declared_size=60, range_size=60, mode=arm
; class-group: AnimController
; alias: _ZNK14AnimController15GetClipDurationEj
; demangled: AnimController::GetClipDuration(unsigned int) const
; decoder-mode: arm
004747d8  10 40 2d e9                                      push {r4, lr}
004747dc  e3 ff ff eb                                      bl #0x474770
004747e0  00 30 50 e2                                      subs r3, r0, #0
004747e4  08 00 00 0a                                      beq #0x47480c
004747e8  00 30 93 e5                                      ldr r3, [r3]
004747ec  0f e0 a0 e1                                      mov lr, pc
004747f0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
004747f4  00 30 50 e2                                      subs r3, r0, #0
004747f8  03 00 00 0a                                      beq #0x47480c
004747fc  00 30 93 e5                                      ldr r3, [r3]
00474800  0f e0 a0 e1                                      mov lr, pc
00474804  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00474808  10 80 bd e8                                      pop {r4, pc}
0047480c  00 00 e0 e3                                      mvn r0, #0
00474810  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00474814, declared_size=104, range_size=104, mode=arm
; class-group: AnimController
; alias: _ZNK14AnimController7HasClipEPKcj
; demangled: AnimController::HasClip(char const*, unsigned int) const
; decoder-mode: arm
00474814  70 40 2d e9                                      push {r4, r5, r6, lr}
00474818  01 40 a0 e1                                      mov r4, r1
0047481c  02 10 a0 e1                                      mov r1, r2
00474820  d2 ff ff eb                                      bl #0x474770
00474824  00 30 50 e2                                      subs r3, r0, #0
00474828  11 00 00 0a                                      beq #0x474874
0047482c  00 30 93 e5                                      ldr r3, [r3]
00474830  0f e0 a0 e1                                      mov lr, pc
00474834  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00474838  00 50 50 e2                                      subs r5, r0, #0
0047483c  0c 00 00 0a                                      beq #0x474874
00474840  00 30 95 e5                                      ldr r3, [r5]
00474844  0f e0 a0 e1                                      mov lr, pc
00474848  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047484c  00 00 50 e3                                      cmp r0, #0
00474850  07 00 00 da                                      ble #0x474874
00474854  05 00 a0 e1                                      mov r0, r5
00474858  04 10 a0 e1                                      mov r1, r4
0047485c  00 30 95 e5                                      ldr r3, [r5]
00474860  0f e0 a0 e1                                      mov lr, pc
00474864  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00474868  01 00 90 e2                                      adds r0, r0, #1
0047486c  01 00 a0 13                                      movne r0, #1
00474870  70 80 bd e8                                      pop {r4, r5, r6, pc}
00474874  00 00 a0 e3                                      mov r0, #0
00474878  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0047487c, declared_size=60, range_size=60, mode=arm
; class-group: AnimController
; alias: _ZNK14AnimController10GetNumClipEj
; demangled: AnimController::GetNumClip(unsigned int) const
; decoder-mode: arm
0047487c  10 40 2d e9                                      push {r4, lr}
00474880  ba ff ff eb                                      bl #0x474770
00474884  00 30 50 e2                                      subs r3, r0, #0
00474888  08 00 00 0a                                      beq #0x4748b0
0047488c  00 30 93 e5                                      ldr r3, [r3]
00474890  0f e0 a0 e1                                      mov lr, pc
00474894  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00474898  00 30 50 e2                                      subs r3, r0, #0
0047489c  03 00 00 0a                                      beq #0x4748b0
004748a0  00 30 93 e5                                      ldr r3, [r3]
004748a4  0f e0 a0 e1                                      mov lr, pc
004748a8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
004748ac  10 80 bd e8                                      pop {r4, pc}
004748b0  00 00 a0 e3                                      mov r0, #0
004748b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004748b8, declared_size=104, range_size=104, mode=arm
; class-group: AnimController
; alias: _ZN14AnimController7GetAnimEj
; demangled: AnimController::GetAnim(unsigned int)
; decoder-mode: arm
004748b8  70 40 2d e9                                      push {r4, r5, r6, lr}
004748bc  00 30 90 e5                                      ldr r3, [r0]
004748c0  01 50 a0 e1                                      mov r5, r1
004748c4  00 40 a0 e1                                      mov r4, r0
004748c8  0f e0 a0 e1                                      mov lr, pc
004748cc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004748d0  05 00 50 e1                                      cmp r0, r5
004748d4  01 00 00 8a                                      bhi #0x4748e0
004748d8  00 00 a0 e3                                      mov r0, #0
004748dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
004748e0  04 00 94 e5                                      ldr r0, [r4, #4]
004748e4  ea 89 04 eb                                      bl #0x597094
004748e8  00 30 90 e5                                      ldr r3, [r0]
004748ec  00 00 53 e1                                      cmp r3, r0
004748f0  f8 ff ff 0a                                      beq #0x4748d8
004748f4  00 00 55 e3                                      cmp r5, #0
004748f8  00 20 a0 13                                      movne r2, #0
004748fc  05 00 00 0a                                      beq #0x474918
00474900  00 30 93 e5                                      ldr r3, [r3]
00474904  01 20 82 e2                                      add r2, r2, #1
00474908  03 00 50 e1                                      cmp r0, r3
0047490c  f1 ff ff 0a                                      beq #0x4748d8
00474910  02 00 55 e1                                      cmp r5, r2
00474914  f9 ff ff 1a                                      bne #0x474900
00474918  08 00 93 e5                                      ldr r0, [r3, #8]
0047491c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00474920, declared_size=104, range_size=104, mode=arm
; class-group: AnimController
; alias: _ZN14AnimController8SetScaleEfj
; demangled: AnimController::SetScale(float, unsigned int)
; decoder-mode: arm
00474920  58 30 9f e5                                      ldr r3, [pc, #0x58]
00474924  10 40 2d e9                                      push {r4, lr}
00474928  01 40 a0 e1                                      mov r4, r1
0047492c  50 10 9f e5                                      ldr r1, [pc, #0x50]
00474930  03 30 8f e0                                      add r3, pc, r3
00474934  01 c0 93 e7                                      ldr ip, [r3, r1]
00474938  00 30 dc e5                                      ldrb r3, [ip]
0047493c  00 00 53 e3                                      cmp r3, #0
00474940  00 00 00 1a                                      bne #0x474948
00474944  10 80 bd e8                                      pop {r4, pc}
00474948  02 10 a0 e1                                      mov r1, r2
0047494c  d9 ff ff eb                                      bl #0x4748b8
00474950  00 30 50 e2                                      subs r3, r0, #0
00474954  fa ff ff 0a                                      beq #0x474944
00474958  00 30 93 e5                                      ldr r3, [r3]
0047495c  0f e0 a0 e1                                      mov lr, pc
00474960  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00474964  00 30 50 e2                                      subs r3, r0, #0
00474968  f5 ff ff 0a                                      beq #0x474944
0047496c  00 30 93 e5                                      ldr r3, [r3]
00474970  04 10 a0 e1                                      mov r1, r4
00474974  0f e0 a0 e1                                      mov lr, pc
00474978  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0047497c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00474980  60 01 52 00 ec 3d 00 00                          .byte 0x60, 0x01, 0x52, 0x00, 0xec, 0x3d, 0x00, 0x00

; FUNCTION 0x00474988, declared_size=108, range_size=108, mode=arm
; class-group: AnimController
; alias: _ZN14AnimController8StopClipEbj
; demangled: AnimController::StopClip(bool, unsigned int)
; decoder-mode: arm
00474988  70 40 2d e9                                      push {r4, r5, r6, lr}
0047498c  01 40 a0 e1                                      mov r4, r1
00474990  02 10 a0 e1                                      mov r1, r2
00474994  c7 ff ff eb                                      bl #0x4748b8
00474998  00 30 50 e2                                      subs r3, r0, #0
0047499c  0a 00 00 0a                                      beq #0x4749cc
004749a0  00 30 93 e5                                      ldr r3, [r3]
004749a4  0f e0 a0 e1                                      mov lr, pc
004749a8  44 f0 93 e5                                      ldr pc, [r3, #0x44]
004749ac  00 50 50 e2                                      subs r5, r0, #0
004749b0  05 00 00 0a                                      beq #0x4749cc
004749b4  00 30 95 e5                                      ldr r3, [r5]
004749b8  00 10 a0 e3                                      mov r1, #0
004749bc  0f e0 a0 e1                                      mov lr, pc
004749c0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
004749c4  00 00 54 e3                                      cmp r4, #0
004749c8  00 00 00 1a                                      bne #0x4749d0
004749cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
004749d0  00 30 95 e5                                      ldr r3, [r5]
004749d4  05 00 a0 e1                                      mov r0, r5
004749d8  0c 40 93 e5                                      ldr r4, [r3, #0xc]
004749dc  0f e0 a0 e1                                      mov lr, pc
004749e0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
004749e4  00 10 a0 e1                                      mov r1, r0
004749e8  05 00 a0 e1                                      mov r0, r5
004749ec  34 ff 2f e1                                      blx r4
004749f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004749f4, declared_size=348, range_size=348, mode=arm
; class-group: AnimController
; alias: _ZN14AnimController8PlayClipEPKcbij
; demangled: AnimController::PlayClip(char const*, bool, int, unsigned int)
; decoder-mode: arm
004749f4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004749f8  01 40 a0 e1                                      mov r4, r1
004749fc  20 10 9d e5                                      ldr r1, [sp, #0x20]
00474a00  02 a0 a0 e1                                      mov sl, r2
00474a04  00 80 a0 e1                                      mov r8, r0
00474a08  aa ff ff eb                                      bl #0x4748b8
00474a0c  00 60 50 e2                                      subs r6, r0, #0
00474a10  3a 00 00 0a                                      beq #0x474b00
00474a14  00 30 96 e5                                      ldr r3, [r6]
00474a18  0f e0 a0 e1                                      mov lr, pc
00474a1c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00474a20  00 50 a0 e1                                      mov r5, r0
00474a24  06 00 a0 e1                                      mov r0, r6
00474a28  cc d1 fb eb                                      bl #0x369160
00474a2c  00 00 55 e3                                      cmp r5, #0
00474a30  00 90 a0 e1                                      mov sb, r0
00474a34  0c 00 00 0a                                      beq #0x474a6c
00474a38  00 30 95 e5                                      ldr r3, [r5]
00474a3c  05 00 a0 e1                                      mov r0, r5
00474a40  0f e0 a0 e1                                      mov lr, pc
00474a44  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00474a48  00 00 50 e3                                      cmp r0, #0
00474a4c  06 00 00 da                                      ble #0x474a6c
00474a50  00 30 95 e5                                      ldr r3, [r5]
00474a54  05 00 a0 e1                                      mov r0, r5
00474a58  04 10 a0 e1                                      mov r1, r4
00474a5c  0f e0 a0 e1                                      mov lr, pc
00474a60  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00474a64  01 00 70 e3                                      cmn r0, #1
00474a68  27 00 00 0a                                      beq #0x474b0c
00474a6c  00 30 95 e5                                      ldr r3, [r5]
00474a70  05 00 a0 e1                                      mov r0, r5
00474a74  0f e0 a0 e1                                      mov lr, pc
00474a78  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00474a7c  04 10 a0 e1                                      mov r1, r4
00474a80  00 70 a0 e1                                      mov r7, r0
00474a84  00 30 96 e5                                      ldr r3, [r6]
00474a88  06 00 a0 e1                                      mov r0, r6
00474a8c  0f e0 a0 e1                                      mov lr, pc
00474a90  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00474a94  00 40 a0 e1                                      mov r4, r0
00474a98  00 30 96 e5                                      ldr r3, [r6]
00474a9c  06 00 a0 e1                                      mov r0, r6
00474aa0  04 10 a0 e1                                      mov r1, r4
00474aa4  0f e0 a0 e1                                      mov lr, pc
00474aa8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00474aac  04 00 57 e1                                      cmp r7, r4
00474ab0  17 00 00 0a                                      beq #0x474b14
00474ab4  0a 10 a0 e1                                      mov r1, sl
00474ab8  05 00 a0 e1                                      mov r0, r5
00474abc  00 30 95 e5                                      ldr r3, [r5]
00474ac0  0f e0 a0 e1                                      mov lr, pc
00474ac4  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00474ac8  00 30 95 e5                                      ldr r3, [r5]
00474acc  05 00 a0 e1                                      mov r0, r5
00474ad0  fe 15 a0 e3                                      mov r1, #0x3f800000
00474ad4  0f e0 a0 e1                                      mov lr, pc
00474ad8  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00474adc  04 00 98 e5                                      ldr r0, [r8, #4]
00474ae0  00 10 a0 e3                                      mov r1, #0
00474ae4  ce a2 fb eb                                      bl #0x35d624
00474ae8  04 30 98 e5                                      ldr r3, [r8, #4]
00474aec  01 00 a0 e3                                      mov r0, #1
00474af0  1c 21 93 e5                                      ldr r2, [r3, #0x11c]
00474af4  02 2c 82 e3                                      orr r2, r2, #0x200
00474af8  1c 21 83 e5                                      str r2, [r3, #0x11c]
00474afc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00474b00  96 d1 fb eb                                      bl #0x369160
00474b04  06 00 a0 e1                                      mov r0, r6
00474b08  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00474b0c  00 00 a0 e3                                      mov r0, #0
00474b10  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00474b14  00 30 95 e5                                      ldr r3, [r5]
00474b18  05 00 a0 e1                                      mov r0, r5
00474b1c  0f e0 a0 e1                                      mov lr, pc
00474b20  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00474b24  00 00 50 e3                                      cmp r0, #0
00474b28  e1 ff ff 1a                                      bne #0x474ab4
00474b2c  00 00 59 e3                                      cmp sb, #0
00474b30  00 30 95 e5                                      ldr r3, [r5]
00474b34  10 10 95 e5                                      ldr r1, [r5, #0x10]
00474b38  10 90 99 15                                      ldrne sb, [sb, #0x10]
00474b3c  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00474b40  05 00 a0 e1                                      mov r0, r5
00474b44  01 10 89 e0                                      add r1, sb, r1
00474b48  33 ff 2f e1                                      blx r3
00474b4c  d8 ff ff ea                                      b #0x474ab4

; FUNCTION 0x00474b50, declared_size=296, range_size=296, mode=arm
; class-group: AnimController
; alias: _ZN14AnimController8PlayClipEjbij
; demangled: AnimController::PlayClip(unsigned int, bool, int, unsigned int)
; decoder-mode: arm
00474b50  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00474b54  01 40 a0 e1                                      mov r4, r1
00474b58  20 10 9d e5                                      ldr r1, [sp, #0x20]
00474b5c  02 70 a0 e1                                      mov r7, r2
00474b60  00 60 a0 e1                                      mov r6, r0
00474b64  53 ff ff eb                                      bl #0x4748b8
00474b68  00 90 50 e2                                      subs sb, r0, #0
00474b6c  2f 00 00 0a                                      beq #0x474c30
00474b70  00 30 99 e5                                      ldr r3, [sb]
00474b74  0f e0 a0 e1                                      mov lr, pc
00474b78  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00474b7c  00 50 a0 e1                                      mov r5, r0
00474b80  09 00 a0 e1                                      mov r0, sb
00474b84  75 d1 fb eb                                      bl #0x369160
00474b88  00 00 55 e3                                      cmp r5, #0
00474b8c  00 a0 a0 e1                                      mov sl, r0
00474b90  05 00 00 0a                                      beq #0x474bac
00474b94  00 30 95 e5                                      ldr r3, [r5]
00474b98  05 00 a0 e1                                      mov r0, r5
00474b9c  0f e0 a0 e1                                      mov lr, pc
00474ba0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00474ba4  04 00 50 e1                                      cmp r0, r4
00474ba8  1e 00 00 9a                                      bls #0x474c28
00474bac  00 30 95 e5                                      ldr r3, [r5]
00474bb0  05 00 a0 e1                                      mov r0, r5
00474bb4  0f e0 a0 e1                                      mov lr, pc
00474bb8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00474bbc  00 30 99 e5                                      ldr r3, [sb]
00474bc0  00 80 a0 e1                                      mov r8, r0
00474bc4  04 10 a0 e1                                      mov r1, r4
00474bc8  09 00 a0 e1                                      mov r0, sb
00474bcc  0f e0 a0 e1                                      mov lr, pc
00474bd0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00474bd4  04 00 58 e1                                      cmp r8, r4
00474bd8  17 00 00 0a                                      beq #0x474c3c
00474bdc  07 10 a0 e1                                      mov r1, r7
00474be0  05 00 a0 e1                                      mov r0, r5
00474be4  00 30 95 e5                                      ldr r3, [r5]
00474be8  0f e0 a0 e1                                      mov lr, pc
00474bec  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00474bf0  00 30 95 e5                                      ldr r3, [r5]
00474bf4  05 00 a0 e1                                      mov r0, r5
00474bf8  fe 15 a0 e3                                      mov r1, #0x3f800000
00474bfc  0f e0 a0 e1                                      mov lr, pc
00474c00  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00474c04  04 00 96 e5                                      ldr r0, [r6, #4]
00474c08  00 10 a0 e3                                      mov r1, #0
00474c0c  84 a2 fb eb                                      bl #0x35d624
00474c10  04 30 96 e5                                      ldr r3, [r6, #4]
00474c14  01 00 a0 e3                                      mov r0, #1
00474c18  1c 21 93 e5                                      ldr r2, [r3, #0x11c]
00474c1c  02 2c 82 e3                                      orr r2, r2, #0x200
00474c20  1c 21 83 e5                                      str r2, [r3, #0x11c]
00474c24  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00474c28  00 00 a0 e3                                      mov r0, #0
00474c2c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00474c30  4a d1 fb eb                                      bl #0x369160
00474c34  09 00 a0 e1                                      mov r0, sb
00474c38  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00474c3c  00 30 95 e5                                      ldr r3, [r5]
00474c40  05 00 a0 e1                                      mov r0, r5
00474c44  0f e0 a0 e1                                      mov lr, pc
00474c48  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00474c4c  00 00 50 e3                                      cmp r0, #0
00474c50  e1 ff ff 1a                                      bne #0x474bdc
00474c54  00 00 5a e3                                      cmp sl, #0
00474c58  00 30 95 e5                                      ldr r3, [r5]
00474c5c  10 10 95 e5                                      ldr r1, [r5, #0x10]
00474c60  10 a0 9a 15                                      ldrne sl, [sl, #0x10]
00474c64  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00474c68  05 00 a0 e1                                      mov r0, r5
00474c6c  01 10 8a e0                                      add r1, sl, r1
00474c70  33 ff 2f e1                                      blx r3
00474c74  d8 ff ff ea                                      b #0x474bdc

; FUNCTION 0x00474c78, declared_size=52, range_size=52, mode=arm
; class-group: AnimController
; alias: _ZN14AnimController12SetCallbacksEPN6glitch7collada18ISceneNodeAnimatorEPFvPNS0_5scene19ITimelineControllerEPvES7_PFvRKNS1_15STriggeredEventES7_ES7_
; demangled: AnimController::SetCallbacks(glitch::collada::ISceneNodeAnimator*, void (*)(glitch::scene::ITimelineController*, void*), void*, void (*)(glitch::collada::STriggeredEvent const&, void*), void*)
; decoder-mode: arm
00474c78  04 40 2d e5                                      str r4, [sp, #-4]!
00474c7c  00 00 51 e3                                      cmp r1, #0
00474c80  10 10 9d e9                                      ldmib sp, {r4, ip}
00474c84  01 00 00 1a                                      bne #0x474c90
00474c88  10 00 bd e8                                      ldm sp!, {r4}
00474c8c  1e ff 2f e1                                      bx lr
00474c90  01 00 a0 e1                                      mov r0, r1
00474c94  02 10 a0 e1                                      mov r1, r2
00474c98  03 20 a0 e1                                      mov r2, r3
00474c9c  04 30 a0 e1                                      mov r3, r4
00474ca0  04 c0 8d e5                                      str ip, [sp, #4]
00474ca4  10 00 bd e8                                      ldm sp!, {r4}
00474ca8  a0 c5 fb ea                                      b #0x366330

; FUNCTION 0x00474cac, declared_size=100, range_size=100, mode=arm
; class-group: AnimController
; alias: _ZN14AnimController17SetCallbacksOnAllEPFvPN6glitch5scene19ITimelineControllerEPvES4_PFvRKNS0_7collada15STriggeredEventES4_ES4_
; demangled: AnimController::SetCallbacksOnAll(void (*)(glitch::scene::ITimelineController*, void*), void*, void (*)(glitch::collada::STriggeredEvent const&, void*), void*)
; decoder-mode: arm
00474cac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00474cb0  00 60 a0 e1                                      mov r6, r0
00474cb4  08 d0 4d e2                                      sub sp, sp, #8
00474cb8  04 00 90 e5                                      ldr r0, [r0, #4]
00474cbc  01 70 a0 e1                                      mov r7, r1
00474cc0  02 80 a0 e1                                      mov r8, r2
00474cc4  03 a0 a0 e1                                      mov sl, r3
00474cc8  28 90 9d e5                                      ldr sb, [sp, #0x28]
00474ccc  f0 88 04 eb                                      bl #0x597094
00474cd0  00 40 90 e5                                      ldr r4, [r0]
00474cd4  00 50 a0 e1                                      mov r5, r0
00474cd8  00 00 54 e1                                      cmp r4, r0
00474cdc  09 00 00 0a                                      beq #0x474d08
00474ce0  08 10 94 e5                                      ldr r1, [r4, #8]
00474ce4  06 00 a0 e1                                      mov r0, r6
00474ce8  07 20 a0 e1                                      mov r2, r7
00474cec  08 30 a0 e1                                      mov r3, r8
00474cf0  00 a0 8d e5                                      str sl, [sp]
00474cf4  04 90 8d e5                                      str sb, [sp, #4]
00474cf8  de ff ff eb                                      bl #0x474c78
00474cfc  00 40 94 e5                                      ldr r4, [r4]
00474d00  04 00 55 e1                                      cmp r5, r4
00474d04  f5 ff ff 1a                                      bne #0x474ce0
00474d08  08 d0 8d e2                                      add sp, sp, #8
00474d0c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00474d10, declared_size=4, range_size=4, mode=arm
; class-group: AnimController
; alias: _ZN14AnimController12SetCallbacksEPFvPN6glitch5scene19ITimelineControllerEPvES4_PFvRKNS0_7collada15STriggeredEventES4_ES4_
; demangled: AnimController::SetCallbacks(void (*)(glitch::scene::ITimelineController*, void*), void*, void (*)(glitch::collada::STriggeredEvent const&, void*), void*)
; decoder-mode: arm
00474d10  e5 ff ff ea                                      b #0x474cac

; FUNCTION 0x00474d14, declared_size=28, range_size=28, mode=arm
; class-group: AnimController
; alias: _ZN14AnimControllerD0Ev
; demangled: AnimController::~AnimController()
; decoder-mode: arm
00474d14  10 40 2d e9                                      push {r4, lr}
00474d18  00 40 a0 e1                                      mov r4, r0
00474d1c  69 fe ff eb                                      bl #0x4746c8
00474d20  04 00 a0 e1                                      mov r0, r4
00474d24  c5 6d fa eb                                      bl #0x310440
00474d28  04 00 a0 e1                                      mov r0, r4
00474d2c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00474d30, declared_size=276, range_size=276, mode=arm
; class-group: AnimController
; alias: _ZN14AnimControllerC1EP13RootSceneNodeb
; demangled: AnimController::AnimController(RootSceneNode*, bool)
; decoder-mode: arm
00474d30  70 40 2d e9                                      push {r4, r5, r6, lr}
00474d34  e4 40 9f e5                                      ldr r4, [pc, #0xe4]
00474d38  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
00474d3c  00 00 51 e3                                      cmp r1, #0
00474d40  04 40 8f e0                                      add r4, pc, r4
00474d44  03 30 94 e7                                      ldr r3, [r4, r3]
00474d48  08 d0 4d e2                                      sub sp, sp, #8
00474d4c  00 50 a0 e1                                      mov r5, r0
00474d50  08 30 83 e2                                      add r3, r3, #8
00474d54  00 30 80 e5                                      str r3, [r0]
00474d58  02 60 a0 e1                                      mov r6, r2
00474d5c  04 10 80 e5                                      str r1, [r0, #4]
00474d60  18 00 00 0a                                      beq #0x474dc8
00474d64  00 30 91 e5                                      ldr r3, [r1]
00474d68  00 00 56 e3                                      cmp r6, #0
00474d6c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00474d70  03 10 81 e0                                      add r1, r1, r3
00474d74  04 30 91 e5                                      ldr r3, [r1, #4]
00474d78  01 30 83 e2                                      add r3, r3, #1
00474d7c  04 30 81 e5                                      str r3, [r1, #4]
00474d80  0a 00 00 1a                                      bne #0x474db0
00474d84  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00474d88  05 00 a0 e1                                      mov r0, r5
00474d8c  05 20 a0 e1                                      mov r2, r5
00474d90  03 10 94 e7                                      ldr r1, [r4, r3]
00474d94  90 30 9f e5                                      ldr r3, [pc, #0x90]
00474d98  00 50 8d e5                                      str r5, [sp]
00474d9c  03 30 94 e7                                      ldr r3, [r4, r3]
00474da0  c1 ff ff eb                                      bl #0x474cac
00474da4  05 00 a0 e1                                      mov r0, r5
00474da8  08 d0 8d e2                                      add sp, sp, #8
00474dac  70 80 bd e8                                      pop {r4, r5, r6, pc}
00474db0  04 30 95 e5                                      ldr r3, [r5, #4]
00474db4  03 00 a0 e1                                      mov r0, r3
00474db8  00 30 93 e5                                      ldr r3, [r3]
00474dbc  0f e0 a0 e1                                      mov lr, pc
00474dc0  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00474dc4  f6 ff ff ea                                      b #0x474da4
00474dc8  60 30 9f e5                                      ldr r3, [pc, #0x60]
00474dcc  03 30 94 e7                                      ldr r3, [r4, r3]
00474dd0  00 30 93 e5                                      ldr r3, [r3]
00474dd4  02 00 53 e3                                      cmp r3, #2
00474dd8  00 10 81 05                                      streq r1, [r1]
00474ddc  e0 ff ff 0a                                      beq #0x474d64
00474de0  01 00 53 e3                                      cmp r3, #1
00474de4  de ff ff 1a                                      bne #0x474d64
00474de8  44 00 9f e5                                      ldr r0, [pc, #0x44]
00474dec  44 10 9f e5                                      ldr r1, [pc, #0x44]
00474df0  44 20 9f e5                                      ldr r2, [pc, #0x44]
00474df4  00 00 94 e7                                      ldr r0, [r4, r0]
00474df8  40 30 9f e5                                      ldr r3, [pc, #0x40]
00474dfc  01 10 8f e0                                      add r1, pc, r1
00474e00  1c c0 a0 e3                                      mov ip, #0x1c
00474e04  a8 00 80 e2                                      add r0, r0, #0xa8
00474e08  02 20 8f e0                                      add r2, pc, r2
00474e0c  03 30 8f e0                                      add r3, pc, r3
00474e10  00 c0 8d e5                                      str ip, [sp]
00474e14  7a 64 fa eb                                      bl #0x30e004
00474e18  04 10 95 e5                                      ldr r1, [r5, #4]
00474e1c  d0 ff ff ea                                      b #0x474d64
; mapping-symbol data/literal pool
00474e20  50 fd 51 00 10 48 00 00 70 37 00 00 00 29 00 00  .byte 0x50, 0xfd, 0x51, 0x00, 0x10, 0x48, 0x00, 0x00, 0x70, 0x37, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00
00474e30  c0 39 00 00 c0 19 00 00 dc 95 44 00 38 88 45 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xdc, 0x95, 0x44, 0x00, 0x38, 0x88, 0x45, 0x00
00474e40  5c 89 45 00                                      .byte 0x5c, 0x89, 0x45, 0x00

; FUNCTION 0x00474e44, declared_size=276, range_size=276, mode=arm
; class-group: AnimController
; alias: _ZN14AnimControllerC2EP13RootSceneNodeb
; demangled: AnimController::AnimController(RootSceneNode*, bool)
; decoder-mode: arm
00474e44  70 40 2d e9                                      push {r4, r5, r6, lr}
00474e48  e4 40 9f e5                                      ldr r4, [pc, #0xe4]
00474e4c  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
00474e50  00 00 51 e3                                      cmp r1, #0
00474e54  04 40 8f e0                                      add r4, pc, r4
00474e58  03 30 94 e7                                      ldr r3, [r4, r3]
00474e5c  08 d0 4d e2                                      sub sp, sp, #8
00474e60  00 50 a0 e1                                      mov r5, r0
00474e64  08 30 83 e2                                      add r3, r3, #8
00474e68  00 30 80 e5                                      str r3, [r0]
00474e6c  02 60 a0 e1                                      mov r6, r2
00474e70  04 10 80 e5                                      str r1, [r0, #4]
00474e74  18 00 00 0a                                      beq #0x474edc
00474e78  00 30 91 e5                                      ldr r3, [r1]
00474e7c  00 00 56 e3                                      cmp r6, #0
00474e80  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00474e84  03 10 81 e0                                      add r1, r1, r3
00474e88  04 30 91 e5                                      ldr r3, [r1, #4]
00474e8c  01 30 83 e2                                      add r3, r3, #1
00474e90  04 30 81 e5                                      str r3, [r1, #4]
00474e94  0a 00 00 1a                                      bne #0x474ec4
00474e98  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00474e9c  05 00 a0 e1                                      mov r0, r5
00474ea0  05 20 a0 e1                                      mov r2, r5
00474ea4  03 10 94 e7                                      ldr r1, [r4, r3]
00474ea8  90 30 9f e5                                      ldr r3, [pc, #0x90]
00474eac  00 50 8d e5                                      str r5, [sp]
00474eb0  03 30 94 e7                                      ldr r3, [r4, r3]
00474eb4  7c ff ff eb                                      bl #0x474cac
00474eb8  05 00 a0 e1                                      mov r0, r5
00474ebc  08 d0 8d e2                                      add sp, sp, #8
00474ec0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00474ec4  04 30 95 e5                                      ldr r3, [r5, #4]
00474ec8  03 00 a0 e1                                      mov r0, r3
00474ecc  00 30 93 e5                                      ldr r3, [r3]
00474ed0  0f e0 a0 e1                                      mov lr, pc
00474ed4  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00474ed8  f6 ff ff ea                                      b #0x474eb8
00474edc  60 30 9f e5                                      ldr r3, [pc, #0x60]
00474ee0  03 30 94 e7                                      ldr r3, [r4, r3]
00474ee4  00 30 93 e5                                      ldr r3, [r3]
00474ee8  02 00 53 e3                                      cmp r3, #2
00474eec  00 10 81 05                                      streq r1, [r1]
00474ef0  e0 ff ff 0a                                      beq #0x474e78
00474ef4  01 00 53 e3                                      cmp r3, #1
00474ef8  de ff ff 1a                                      bne #0x474e78
00474efc  44 00 9f e5                                      ldr r0, [pc, #0x44]
00474f00  44 10 9f e5                                      ldr r1, [pc, #0x44]
00474f04  44 20 9f e5                                      ldr r2, [pc, #0x44]
00474f08  00 00 94 e7                                      ldr r0, [r4, r0]
00474f0c  40 30 9f e5                                      ldr r3, [pc, #0x40]
00474f10  01 10 8f e0                                      add r1, pc, r1
00474f14  1c c0 a0 e3                                      mov ip, #0x1c
00474f18  a8 00 80 e2                                      add r0, r0, #0xa8
00474f1c  02 20 8f e0                                      add r2, pc, r2
00474f20  03 30 8f e0                                      add r3, pc, r3
00474f24  00 c0 8d e5                                      str ip, [sp]
00474f28  35 64 fa eb                                      bl #0x30e004
00474f2c  04 10 95 e5                                      ldr r1, [r5, #4]
00474f30  d0 ff ff ea                                      b #0x474e78
; mapping-symbol data/literal pool
00474f34  3c fc 51 00 10 48 00 00 70 37 00 00 00 29 00 00  .byte 0x3c, 0xfc, 0x51, 0x00, 0x10, 0x48, 0x00, 0x00, 0x70, 0x37, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00
00474f44  c0 39 00 00 c0 19 00 00 c8 94 44 00 24 87 45 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc8, 0x94, 0x44, 0x00, 0x24, 0x87, 0x45, 0x00
00474f54  48 88 45 00                                      .byte 0x48, 0x88, 0x45, 0x00
