; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008818d4, declared_size=100, range_size=100, mode=arm
; class-group: vox::SegmentGroup
; alias: _ZN3vox12SegmentGroupC2EPNS_10GroupInfosEi
; demangled: vox::SegmentGroup::SegmentGroup(vox::GroupInfos*, int)
; decoder-mode: arm
008818d4  54 30 9f e5                                      ldr r3, [pc, #0x54]
008818d8  54 c0 9f e5                                      ldr ip, [pc, #0x54]
008818dc  04 40 2d e5                                      str r4, [sp, #-4]!
008818e0  03 30 8f e0                                      add r3, pc, r3
008818e4  0c c0 93 e7                                      ldr ip, [r3, ip]
008818e8  01 40 a0 e3                                      mov r4, #1
008818ec  04 40 c0 e5                                      strb r4, [r0, #4]
008818f0  08 c0 8c e2                                      add ip, ip, #8
008818f4  00 c0 80 e5                                      str ip, [r0]
008818f8  08 c0 91 e5                                      ldr ip, [r1, #8]
008818fc  00 00 52 e3                                      cmp r2, #0
00881900  08 c0 80 e5                                      str ip, [r0, #8]
00881904  14 30 91 e5                                      ldr r3, [r1, #0x14]
00881908  10 30 80 e5                                      str r3, [r0, #0x10]
0088190c  10 40 91 05                                      ldreq r4, [r1, #0x10]
00881910  10 30 90 e5                                      ldr r3, [r0, #0x10]
00881914  0c 40 80 e5                                      str r4, [r0, #0xc]
00881918  1c 40 80 e5                                      str r4, [r0, #0x1c]
0088191c  14 40 80 e5                                      str r4, [r0, #0x14]
00881920  20 30 80 e5                                      str r3, [r0, #0x20]
00881924  18 30 80 e5                                      str r3, [r0, #0x18]
00881928  10 00 bd e8                                      ldm sp!, {r4}
0088192c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00881930  b0 31 11 00 cc 0b 00 00                          .byte 0xb0, 0x31, 0x11, 0x00, 0xcc, 0x0b, 0x00, 0x00

; FUNCTION 0x00881938, declared_size=100, range_size=100, mode=arm
; class-group: vox::SegmentGroup
; alias: _ZN3vox12SegmentGroupC1EPNS_10GroupInfosEi
; demangled: vox::SegmentGroup::SegmentGroup(vox::GroupInfos*, int)
; decoder-mode: arm
00881938  54 30 9f e5                                      ldr r3, [pc, #0x54]
0088193c  54 c0 9f e5                                      ldr ip, [pc, #0x54]
00881940  04 40 2d e5                                      str r4, [sp, #-4]!
00881944  03 30 8f e0                                      add r3, pc, r3
00881948  0c c0 93 e7                                      ldr ip, [r3, ip]
0088194c  01 40 a0 e3                                      mov r4, #1
00881950  04 40 c0 e5                                      strb r4, [r0, #4]
00881954  08 c0 8c e2                                      add ip, ip, #8
00881958  00 c0 80 e5                                      str ip, [r0]
0088195c  08 c0 91 e5                                      ldr ip, [r1, #8]
00881960  00 00 52 e3                                      cmp r2, #0
00881964  08 c0 80 e5                                      str ip, [r0, #8]
00881968  14 30 91 e5                                      ldr r3, [r1, #0x14]
0088196c  10 30 80 e5                                      str r3, [r0, #0x10]
00881970  10 40 91 05                                      ldreq r4, [r1, #0x10]
00881974  10 30 90 e5                                      ldr r3, [r0, #0x10]
00881978  0c 40 80 e5                                      str r4, [r0, #0xc]
0088197c  1c 40 80 e5                                      str r4, [r0, #0x1c]
00881980  14 40 80 e5                                      str r4, [r0, #0x14]
00881984  20 30 80 e5                                      str r3, [r0, #0x20]
00881988  18 30 80 e5                                      str r3, [r0, #0x18]
0088198c  10 00 bd e8                                      ldm sp!, {r4}
00881990  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00881994  4c 31 11 00 cc 0b 00 00                          .byte 0x4c, 0x31, 0x11, 0x00, 0xcc, 0x0b, 0x00, 0x00

; FUNCTION 0x0088199c, declared_size=108, range_size=108, mode=arm
; class-group: vox::SegmentGroup
; alias: _ZN3vox12SegmentGroupC2ERS0_
; demangled: vox::SegmentGroup::SegmentGroup(vox::SegmentGroup&)
; decoder-mode: arm
0088199c  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
008819a0  5c c0 9f e5                                      ldr ip, [pc, #0x5c]
008819a4  04 40 2d e5                                      str r4, [sp, #-4]!
008819a8  02 20 8f e0                                      add r2, pc, r2
008819ac  0c c0 92 e7                                      ldr ip, [r2, ip]
008819b0  01 40 a0 e3                                      mov r4, #1
008819b4  04 40 c0 e5                                      strb r4, [r0, #4]
008819b8  08 c0 8c e2                                      add ip, ip, #8
008819bc  00 c0 80 e5                                      str ip, [r0]
008819c0  0c c0 91 e5                                      ldr ip, [r1, #0xc]
008819c4  0c c0 80 e5                                      str ip, [r0, #0xc]
008819c8  10 20 91 e5                                      ldr r2, [r1, #0x10]
008819cc  10 20 80 e5                                      str r2, [r0, #0x10]
008819d0  14 20 91 e5                                      ldr r2, [r1, #0x14]
008819d4  14 20 80 e5                                      str r2, [r0, #0x14]
008819d8  18 20 91 e5                                      ldr r2, [r1, #0x18]
008819dc  18 20 80 e5                                      str r2, [r0, #0x18]
008819e0  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
008819e4  1c 20 80 e5                                      str r2, [r0, #0x1c]
008819e8  20 20 91 e5                                      ldr r2, [r1, #0x20]
008819ec  20 20 80 e5                                      str r2, [r0, #0x20]
008819f0  08 20 91 e5                                      ldr r2, [r1, #8]
008819f4  08 20 80 e5                                      str r2, [r0, #8]
008819f8  10 00 bd e8                                      ldm sp!, {r4}
008819fc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00881a00  e8 30 11 00 cc 0b 00 00                          .byte 0xe8, 0x30, 0x11, 0x00, 0xcc, 0x0b, 0x00, 0x00

; FUNCTION 0x00881a08, declared_size=108, range_size=108, mode=arm
; class-group: vox::SegmentGroup
; alias: _ZN3vox12SegmentGroupC1ERS0_
; demangled: vox::SegmentGroup::SegmentGroup(vox::SegmentGroup&)
; decoder-mode: arm
00881a08  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00881a0c  5c c0 9f e5                                      ldr ip, [pc, #0x5c]
00881a10  04 40 2d e5                                      str r4, [sp, #-4]!
00881a14  02 20 8f e0                                      add r2, pc, r2
00881a18  0c c0 92 e7                                      ldr ip, [r2, ip]
00881a1c  01 40 a0 e3                                      mov r4, #1
00881a20  04 40 c0 e5                                      strb r4, [r0, #4]
00881a24  08 c0 8c e2                                      add ip, ip, #8
00881a28  00 c0 80 e5                                      str ip, [r0]
00881a2c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00881a30  0c c0 80 e5                                      str ip, [r0, #0xc]
00881a34  10 20 91 e5                                      ldr r2, [r1, #0x10]
00881a38  10 20 80 e5                                      str r2, [r0, #0x10]
00881a3c  14 20 91 e5                                      ldr r2, [r1, #0x14]
00881a40  14 20 80 e5                                      str r2, [r0, #0x14]
00881a44  18 20 91 e5                                      ldr r2, [r1, #0x18]
00881a48  18 20 80 e5                                      str r2, [r0, #0x18]
00881a4c  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
00881a50  1c 20 80 e5                                      str r2, [r0, #0x1c]
00881a54  20 20 91 e5                                      ldr r2, [r1, #0x20]
00881a58  20 20 80 e5                                      str r2, [r0, #0x20]
00881a5c  08 20 91 e5                                      ldr r2, [r1, #8]
00881a60  08 20 80 e5                                      str r2, [r0, #8]
00881a64  10 00 bd e8                                      ldm sp!, {r4}
00881a68  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00881a6c  7c 30 11 00 cc 0b 00 00                          .byte 0x7c, 0x30, 0x11, 0x00, 0xcc, 0x0b, 0x00, 0x00

; FUNCTION 0x00881a74, declared_size=4, range_size=4, mode=arm
; class-group: vox::SegmentGroup
; alias: _ZN3vox12SegmentGroupD2Ev
; demangled: vox::SegmentGroup::~SegmentGroup()
; decoder-mode: arm
00881a74  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881a78, declared_size=4, range_size=4, mode=arm
; class-group: vox::SegmentGroup
; alias: _ZN3vox12SegmentGroupD1Ev
; demangled: vox::SegmentGroup::~SegmentGroup()
; decoder-mode: arm
00881a78  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881a7c, declared_size=8, range_size=8, mode=arm
; class-group: vox::SegmentGroup
; alias: _ZN3vox12SegmentGroup13GetSelectModeEv
; demangled: vox::SegmentGroup::GetSelectMode()
; decoder-mode: arm
00881a7c  08 00 90 e5                                      ldr r0, [r0, #8]
00881a80  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881a84, declared_size=8, range_size=8, mode=arm
; class-group: vox::SegmentGroup
; alias: _ZN3vox12SegmentGroup7IsValidEv
; demangled: vox::SegmentGroup::IsValid()
; decoder-mode: arm
00881a84  04 00 d0 e5                                      ldrb r0, [r0, #4]
00881a88  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881a8c, declared_size=68, range_size=68, mode=arm
; class-group: vox::SegmentGroup
; alias: _ZN3vox12SegmentGroup8SetStateERS0_
; demangled: vox::SegmentGroup::SetState(vox::SegmentGroup&)
; decoder-mode: arm
00881a8c  04 30 d1 e5                                      ldrb r3, [r1, #4]
00881a90  04 30 c0 e5                                      strb r3, [r0, #4]
00881a94  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00881a98  0c 30 80 e5                                      str r3, [r0, #0xc]
00881a9c  10 30 91 e5                                      ldr r3, [r1, #0x10]
00881aa0  10 30 80 e5                                      str r3, [r0, #0x10]
00881aa4  14 30 91 e5                                      ldr r3, [r1, #0x14]
00881aa8  14 30 80 e5                                      str r3, [r0, #0x14]
00881aac  18 30 91 e5                                      ldr r3, [r1, #0x18]
00881ab0  18 30 80 e5                                      str r3, [r0, #0x18]
00881ab4  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
00881ab8  1c 30 80 e5                                      str r3, [r0, #0x1c]
00881abc  20 30 91 e5                                      ldr r3, [r1, #0x20]
00881ac0  20 30 80 e5                                      str r3, [r0, #0x20]
00881ac4  08 30 91 e5                                      ldr r3, [r1, #8]
00881ac8  08 30 80 e5                                      str r3, [r0, #8]
00881acc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00882c4c, declared_size=28, range_size=28, mode=arm
; class-group: vox::SegmentGroup
; alias: _ZN3vox12SegmentGroupD0Ev
; demangled: vox::SegmentGroup::~SegmentGroup()
; decoder-mode: arm
00882c4c  10 40 2d e9                                      push {r4, lr}
00882c50  00 40 a0 e1                                      mov r4, r0
00882c54  87 fb ff eb                                      bl #0x881a78
00882c58  04 00 a0 e1                                      mov r0, r4
00882c5c  93 2d ea eb                                      bl #0x30e2b0
00882c60  04 00 a0 e1                                      mov r0, r4
00882c64  10 80 bd e8                                      pop {r4, pc}
