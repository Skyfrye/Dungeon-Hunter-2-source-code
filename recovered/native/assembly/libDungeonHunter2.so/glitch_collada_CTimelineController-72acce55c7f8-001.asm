; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00666c18, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZNK6glitch7collada19CTimelineController8getScaleEv
; demangled: glitch::collada::CTimelineController::getScale() const
; decoder-mode: arm
00666c18  30 00 90 e5                                      ldr r0, [r0, #0x30]
00666c1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666c20, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZN6glitch7collada19CTimelineController8setScaleEf
; demangled: glitch::collada::CTimelineController::setScale(float)
; decoder-mode: arm
00666c20  30 10 80 e5                                      str r1, [r0, #0x30]
00666c24  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666c28, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZN6glitch7collada19CTimelineController7setLoopEb
; demangled: glitch::collada::CTimelineController::setLoop(bool)
; decoder-mode: arm
00666c28  18 10 c0 e5                                      strb r1, [r0, #0x18]
00666c2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666c30, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZNK6glitch7collada19CTimelineController7getLoopEv
; demangled: glitch::collada::CTimelineController::getLoop() const
; decoder-mode: arm
00666c30  18 00 d0 e5                                      ldrb r0, [r0, #0x18]
00666c34  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666c38, declared_size=140, range_size=140, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZN6glitch7collada19CTimelineController8setRangeEiib
; demangled: glitch::collada::CTimelineController::setRange(int, int, bool)
; decoder-mode: arm
00666c38  30 40 2d e9                                      push {r4, r5, lr}
00666c3c  34 c0 90 e5                                      ldr ip, [r0, #0x34]
00666c40  0c d0 4d e2                                      sub sp, sp, #0xc
00666c44  00 40 a0 e1                                      mov r4, r0
00666c48  00 00 5c e3                                      cmp ip, #0
00666c4c  01 50 a0 e1                                      mov r5, r1
00666c50  08 00 00 0a                                      beq #0x666c78
00666c54  00 00 53 e3                                      cmp r3, #0
00666c58  04 00 00 0a                                      beq #0x666c70
00666c5c  04 00 a0 e1                                      mov r0, r4
00666c60  00 30 94 e5                                      ldr r3, [r4]
00666c64  10 10 94 e5                                      ldr r1, [r4, #0x10]
00666c68  0f e0 a0 e1                                      mov lr, pc
00666c6c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00666c70  0c d0 8d e2                                      add sp, sp, #0xc
00666c74  30 80 bd e8                                      pop {r4, r5, pc}
00666c78  10 10 84 e5                                      str r1, [r4, #0x10]
00666c7c  14 20 80 e5                                      str r2, [r0, #0x14]
00666c80  01 00 a0 e1                                      mov r0, r1
00666c84  00 30 8d e5                                      str r3, [sp]
00666c88  04 20 8d e5                                      str r2, [sp, #4]
00666c8c  34 9f f2 eb                                      bl #0x30e964
00666c90  11 13 a0 e3                                      mov r1, #0x44000000
00666c94  7a 18 81 e2                                      add r1, r1, #0x7a0000
00666c98  fd 9f f2 eb                                      bl #0x30ec94
00666c9c  20 00 84 e5                                      str r0, [r4, #0x20]
00666ca0  04 20 9d e5                                      ldr r2, [sp, #4]
00666ca4  02 00 65 e0                                      rsb r0, r5, r2
00666ca8  2d 9f f2 eb                                      bl #0x30e964
00666cac  11 13 a0 e3                                      mov r1, #0x44000000
00666cb0  7a 18 81 e2                                      add r1, r1, #0x7a0000
00666cb4  f6 9f f2 eb                                      bl #0x30ec94
00666cb8  24 00 84 e5                                      str r0, [r4, #0x24]
00666cbc  00 30 9d e5                                      ldr r3, [sp]
00666cc0  e3 ff ff ea                                      b #0x666c54

; FUNCTION 0x00666cc4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZNK6glitch7collada19CTimelineController12getClipCountEv
; demangled: glitch::collada::CTimelineController::getClipCount() const
; decoder-mode: arm
00666cc4  34 00 90 e5                                      ldr r0, [r0, #0x34]
00666cc8  00 00 50 e3                                      cmp r0, #0
00666ccc  00 00 90 15                                      ldrne r0, [r0]
00666cd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666cd4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZNK6glitch7collada19CTimelineController12getClipStartEi
; demangled: glitch::collada::CTimelineController::getClipStart(int) const
; decoder-mode: arm
00666cd4  34 30 90 e5                                      ldr r3, [r0, #0x34]
00666cd8  0c 20 a0 e3                                      mov r2, #0xc
00666cdc  04 30 93 e5                                      ldr r3, [r3, #4]
00666ce0  92 31 23 e0                                      mla r3, r2, r1, r3
00666ce4  04 00 93 e5                                      ldr r0, [r3, #4]
00666ce8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666cec, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZNK6glitch7collada19CTimelineController10getClipEndEi
; demangled: glitch::collada::CTimelineController::getClipEnd(int) const
; decoder-mode: arm
00666cec  34 30 90 e5                                      ldr r3, [r0, #0x34]
00666cf0  0c 20 a0 e3                                      mov r2, #0xc
00666cf4  04 30 93 e5                                      ldr r3, [r3, #4]
00666cf8  92 31 23 e0                                      mla r3, r2, r1, r3
00666cfc  08 00 93 e5                                      ldr r0, [r3, #8]
00666d00  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666d04, declared_size=56, range_size=56, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZNK6glitch7collada19CTimelineController13getClipLengthEi
; demangled: glitch::collada::CTimelineController::getClipLength(int) const
; decoder-mode: arm
00666d04  70 40 2d e9                                      push {r4, r5, r6, lr}
00666d08  00 30 90 e5                                      ldr r3, [r0]
00666d0c  00 40 a0 e1                                      mov r4, r0
00666d10  01 60 a0 e1                                      mov r6, r1
00666d14  0f e0 a0 e1                                      mov lr, pc
00666d18  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00666d1c  06 10 a0 e1                                      mov r1, r6
00666d20  00 50 a0 e1                                      mov r5, r0
00666d24  00 30 94 e5                                      ldr r3, [r4]
00666d28  04 00 a0 e1                                      mov r0, r4
00666d2c  0f e0 a0 e1                                      mov lr, pc
00666d30  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00666d34  05 00 60 e0                                      rsb r0, r0, r5
00666d38  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00666d3c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZNK6glitch7collada19CTimelineController19getCurrentClipStartEv
; demangled: glitch::collada::CTimelineController::getCurrentClipStart() const
; decoder-mode: arm
00666d3c  10 40 2d e9                                      push {r4, lr}
00666d40  38 10 90 e5                                      ldr r1, [r0, #0x38]
00666d44  00 30 90 e5                                      ldr r3, [r0]
00666d48  0f e0 a0 e1                                      mov lr, pc
00666d4c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00666d50  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00666d54, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZNK6glitch7collada19CTimelineController17getCurrentClipEndEv
; demangled: glitch::collada::CTimelineController::getCurrentClipEnd() const
; decoder-mode: arm
00666d54  10 40 2d e9                                      push {r4, lr}
00666d58  38 10 90 e5                                      ldr r1, [r0, #0x38]
00666d5c  00 30 90 e5                                      ldr r3, [r0]
00666d60  0f e0 a0 e1                                      mov lr, pc
00666d64  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00666d68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00666d6c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZNK6glitch7collada19CTimelineController20getCurrentClipLengthEv
; demangled: glitch::collada::CTimelineController::getCurrentClipLength() const
; decoder-mode: arm
00666d6c  10 40 2d e9                                      push {r4, lr}
00666d70  38 10 90 e5                                      ldr r1, [r0, #0x38]
00666d74  00 30 90 e5                                      ldr r3, [r0]
00666d78  0f e0 a0 e1                                      mov lr, pc
00666d7c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00666d80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00666d84, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZNK6glitch7collada19CTimelineController11getClipNameEi
; demangled: glitch::collada::CTimelineController::getClipName(int) const
; decoder-mode: arm
00666d84  34 30 90 e5                                      ldr r3, [r0, #0x34]
00666d88  0c 20 a0 e3                                      mov r2, #0xc
00666d8c  92 01 02 e0                                      mul r2, r2, r1
00666d90  04 30 93 e5                                      ldr r3, [r3, #4]
00666d94  02 00 93 e7                                      ldr r0, [r3, r2]
00666d98  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666d9c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZNK6glitch7collada19CTimelineController19getCurrentClipIndexEv
; demangled: glitch::collada::CTimelineController::getCurrentClipIndex() const
; decoder-mode: arm
00666d9c  38 00 90 e5                                      ldr r0, [r0, #0x38]
00666da0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666db8, declared_size=136, range_size=136, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZN6glitch7collada19CTimelineControllerC2Ev
; demangled: glitch::collada::CTimelineController::CTimelineController()
; decoder-mode: arm
00666db8  70 00 2d e9                                      push {r4, r5, r6}
00666dbc  04 40 81 e2                                      add r4, r1, #4
00666dc0  04 c0 94 e5                                      ldr ip, [r4, #4]
00666dc4  00 20 a0 e3                                      mov r2, #0
00666dc8  00 c0 80 e5                                      str ip, [r0]
00666dcc  0c 50 1c e5                                      ldr r5, [ip, #-0xc]
00666dd0  08 60 94 e5                                      ldr r6, [r4, #8]
00666dd4  00 c0 a0 e3                                      mov ip, #0
00666dd8  05 60 80 e7                                      str r6, [r0, r5]
00666ddc  04 20 80 e5                                      str r2, [r0, #4]
00666de0  04 50 91 e5                                      ldr r5, [r1, #4]
00666de4  00 50 80 e5                                      str r5, [r0]
00666de8  0c 40 94 e5                                      ldr r4, [r4, #0xc]
00666dec  0c 50 15 e5                                      ldr r5, [r5, #-0xc]
00666df0  05 40 80 e7                                      str r4, [r0, r5]
00666df4  08 20 80 e5                                      str r2, [r0, #8]
00666df8  00 40 91 e5                                      ldr r4, [r1]
00666dfc  00 40 80 e5                                      str r4, [r0]
00666e00  14 10 91 e5                                      ldr r1, [r1, #0x14]
00666e04  0c 40 14 e5                                      ldr r4, [r4, #-0xc]
00666e08  04 10 80 e7                                      str r1, [r0, r4]
00666e0c  01 10 a0 e3                                      mov r1, #1
00666e10  18 10 c0 e5                                      strb r1, [r0, #0x18]
00666e14  fe 15 a0 e3                                      mov r1, #0x3f800000
00666e18  3d 20 c0 e5                                      strb r2, [r0, #0x3d]
00666e1c  2c c0 80 e5                                      str ip, [r0, #0x2c]
00666e20  30 10 80 e5                                      str r1, [r0, #0x30]
00666e24  20 c0 80 e5                                      str ip, [r0, #0x20]
00666e28  24 c0 80 e5                                      str ip, [r0, #0x24]
00666e2c  34 20 80 e5                                      str r2, [r0, #0x34]
00666e30  38 20 80 e5                                      str r2, [r0, #0x38]
00666e34  3c 20 c0 e5                                      strb r2, [r0, #0x3c]
00666e38  70 00 bd e8                                      pop {r4, r5, r6}
00666e3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666e40, declared_size=188, range_size=188, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZN6glitch7collada19CTimelineControllerC1Ev
; demangled: glitch::collada::CTimelineController::CTimelineController()
; decoder-mode: arm
00666e40  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
00666e44  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00666e48  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
00666e4c  01 10 8f e0                                      add r1, pc, r1
00666e50  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
00666e54  03 40 91 e7                                      ldr r4, [r1, r3]
00666e58  02 20 91 e7                                      ldr r2, [r1, r2]
00666e5c  01 50 a0 e3                                      mov r5, #1
00666e60  08 c0 94 e5                                      ldr ip, [r4, #8]
00666e64  08 20 82 e2                                      add r2, r2, #8
00666e68  40 20 80 e5                                      str r2, [r0, #0x40]
00666e6c  00 c0 80 e5                                      str ip, [r0]
00666e70  44 50 80 e5                                      str r5, [r0, #0x44]
00666e74  0c 70 1c e5                                      ldr r7, [ip, #-0xc]
00666e78  04 60 94 e5                                      ldr r6, [r4, #4]
00666e7c  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00666e80  70 c0 9f e5                                      ldr ip, [pc, #0x70]
00666e84  00 20 a0 e3                                      mov r2, #0
00666e88  07 80 80 e7                                      str r8, [r0, r7]
00666e8c  0c c0 91 e7                                      ldr ip, [r1, ip]
00666e90  00 60 80 e5                                      str r6, [r0]
00666e94  04 20 80 e5                                      str r2, [r0, #4]
00666e98  0c 70 16 e5                                      ldr r7, [r6, #-0xc]
00666e9c  10 80 94 e5                                      ldr r8, [r4, #0x10]
00666ea0  70 60 8c e2                                      add r6, ip, #0x70
00666ea4  0c c0 8c e2                                      add ip, ip, #0xc
00666ea8  07 80 80 e7                                      str r8, [r0, r7]
00666eac  00 40 a0 e3                                      mov r4, #0
00666eb0  00 c0 80 e5                                      str ip, [r0]
00666eb4  fe c5 a0 e3                                      mov ip, #0x3f800000
00666eb8  3d 20 c0 e5                                      strb r2, [r0, #0x3d]
00666ebc  40 60 80 e5                                      str r6, [r0, #0x40]
00666ec0  18 50 c0 e5                                      strb r5, [r0, #0x18]
00666ec4  2c 40 80 e5                                      str r4, [r0, #0x2c]
00666ec8  30 c0 80 e5                                      str ip, [r0, #0x30]
00666ecc  08 20 80 e5                                      str r2, [r0, #8]
00666ed0  20 40 80 e5                                      str r4, [r0, #0x20]
00666ed4  24 40 80 e5                                      str r4, [r0, #0x24]
00666ed8  34 20 80 e5                                      str r2, [r0, #0x34]
00666edc  38 20 80 e5                                      str r2, [r0, #0x38]
00666ee0  3c 20 c0 e5                                      strb r2, [r0, #0x3c]
00666ee4  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
00666ee8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00666eec  44 dc 32 00 60 2e 00 00 44 2b 00 00 14 2f 00 00  .byte 0x44, 0xdc, 0x32, 0x00, 0x60, 0x2e, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x14, 0x2f, 0x00, 0x00

; FUNCTION 0x00666efc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZN6glitch7collada19CTimelineControllerD2Ev
; demangled: glitch::collada::CTimelineController::~CTimelineController()
; decoder-mode: arm
00666efc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666f00, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZN6glitch7collada19CTimelineControllerD1Ev
; demangled: glitch::collada::CTimelineController::~CTimelineController()
; decoder-mode: arm
00666f00  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666f04, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZN6glitch7collada19CTimelineController4initEii
; demangled: glitch::collada::CTimelineController::init(int, int)
; decoder-mode: arm
00666f04  14 20 80 e5                                      str r2, [r0, #0x14]
00666f08  10 10 80 e5                                      str r1, [r0, #0x10]
00666f0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666f10, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZN6glitch7collada19CTimelineController6jumpToEi
; demangled: glitch::collada::CTimelineController::jumpTo(int)
; decoder-mode: arm
00666f10  10 40 2d e9                                      push {r4, lr}
00666f14  00 40 a0 e1                                      mov r4, r0
00666f18  04 10 80 e5                                      str r1, [r0, #4]
00666f1c  01 00 a0 e1                                      mov r0, r1
00666f20  8f 9e f2 eb                                      bl #0x30e964
00666f24  11 13 a0 e3                                      mov r1, #0x44000000
00666f28  7a 18 81 e2                                      add r1, r1, #0x7a0000
00666f2c  58 9f f2 eb                                      bl #0x30ec94
00666f30  00 30 a0 e3                                      mov r3, #0
00666f34  3d 30 c4 e5                                      strb r3, [r4, #0x3d]
00666f38  2c 00 84 e5                                      str r0, [r4, #0x2c]
00666f3c  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
00666f40  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00666f44, declared_size=56, range_size=56, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZN6glitch7collada19CTimelineController7setClipEPKc
; demangled: glitch::collada::CTimelineController::setClip(char const*)
; decoder-mode: arm
00666f44  70 40 2d e9                                      push {r4, r5, r6, lr}
00666f48  00 30 90 e5                                      ldr r3, [r0]
00666f4c  00 40 a0 e1                                      mov r4, r0
00666f50  0f e0 a0 e1                                      mov lr, pc
00666f54  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00666f58  00 50 50 e2                                      subs r5, r0, #0
00666f5c  04 00 00 ba                                      blt #0x666f74
00666f60  04 00 a0 e1                                      mov r0, r4
00666f64  00 30 94 e5                                      ldr r3, [r4]
00666f68  05 10 a0 e1                                      mov r1, r5
00666f6c  0f e0 a0 e1                                      mov lr, pc
00666f70  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00666f74  05 00 a0 e1                                      mov r0, r5
00666f78  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00666f7c, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZN6glitch7collada19CTimelineController7setClipEi
; demangled: glitch::collada::CTimelineController::setClip(int)
; decoder-mode: arm
00666f7c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00666f80  00 30 a0 e3                                      mov r3, #0
00666f84  38 10 80 e5                                      str r1, [r0, #0x38]
00666f88  3d 30 c0 e5                                      strb r3, [r0, #0x3d]
00666f8c  3c 30 c0 e5                                      strb r3, [r0, #0x3c]
00666f90  00 30 90 e5                                      ldr r3, [r0]
00666f94  00 40 a0 e1                                      mov r4, r0
00666f98  0f e0 a0 e1                                      mov lr, pc
00666f9c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00666fa0  00 30 94 e5                                      ldr r3, [r4]
00666fa4  10 00 84 e5                                      str r0, [r4, #0x10]
00666fa8  04 00 a0 e1                                      mov r0, r4
00666fac  0f e0 a0 e1                                      mov lr, pc
00666fb0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00666fb4  00 70 a0 e1                                      mov r7, r0
00666fb8  14 00 84 e5                                      str r0, [r4, #0x14]
00666fbc  10 00 94 e5                                      ldr r0, [r4, #0x10]
00666fc0  67 9e f2 eb                                      bl #0x30e964
00666fc4  11 13 a0 e3                                      mov r1, #0x44000000
00666fc8  7a 18 81 e2                                      add r1, r1, #0x7a0000
00666fcc  30 9f f2 eb                                      bl #0x30ec94
00666fd0  10 60 94 e5                                      ldr r6, [r4, #0x10]
00666fd4  00 50 a0 e1                                      mov r5, r0
00666fd8  20 00 84 e5                                      str r0, [r4, #0x20]
00666fdc  07 00 66 e0                                      rsb r0, r6, r7
00666fe0  5f 9e f2 eb                                      bl #0x30e964
00666fe4  11 13 a0 e3                                      mov r1, #0x44000000
00666fe8  7a 18 81 e2                                      add r1, r1, #0x7a0000
00666fec  28 9f f2 eb                                      bl #0x30ec94
00666ff0  04 60 84 e5                                      str r6, [r4, #4]
00666ff4  24 00 84 e5                                      str r0, [r4, #0x24]
00666ff8  2c 50 84 e5                                      str r5, [r4, #0x2c]
00666ffc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00667088, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZN6glitch7collada19CTimelineControllerD0Ev
; demangled: glitch::collada::CTimelineController::~CTimelineController()
; decoder-mode: arm
00667088  10 40 2d e9                                      push {r4, lr}
0066708c  00 40 a0 e1                                      mov r4, r0
00667090  9a ff ff eb                                      bl #0x666f00
00667094  04 00 a0 e1                                      mov r0, r4
00667098  84 9c f2 eb                                      bl #0x30e2b0
0066709c  04 00 a0 e1                                      mov r0, r4
006670a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006670a4, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZNK6glitch7collada19CTimelineController12getClipIndexEPKc
; demangled: glitch::collada::CTimelineController::getClipIndex(char const*) const
; decoder-mode: arm
006670a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006670a8  34 30 90 e5                                      ldr r3, [r0, #0x34]
006670ac  01 70 a0 e1                                      mov r7, r1
006670b0  00 60 93 e5                                      ldr r6, [r3]
006670b4  00 00 56 e3                                      cmp r6, #0
006670b8  0e 00 00 da                                      ble #0x6670f8
006670bc  00 50 a0 e3                                      mov r5, #0
006670c0  04 80 93 e5                                      ldr r8, [r3, #4]
006670c4  05 40 a0 e1                                      mov r4, r5
006670c8  03 00 00 ea                                      b #0x6670dc
006670cc  01 40 84 e2                                      add r4, r4, #1
006670d0  06 00 54 e1                                      cmp r4, r6
006670d4  0c 50 85 e2                                      add r5, r5, #0xc
006670d8  06 00 00 0a                                      beq #0x6670f8
006670dc  05 00 98 e7                                      ldr r0, [r8, r5]
006670e0  07 10 a0 e1                                      mov r1, r7
006670e4  7f 9d f2 eb                                      bl #0x30e6e8
006670e8  00 00 50 e3                                      cmp r0, #0
006670ec  f6 ff ff 1a                                      bne #0x6670cc
006670f0  04 00 a0 e1                                      mov r0, r4
006670f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006670f8  00 40 e0 e3                                      mvn r4, #0
006670fc  04 00 a0 e1                                      mov r0, r4
00667100  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00667104, declared_size=508, range_size=508, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZN6glitch7collada19CTimelineController6updateEi
; demangled: glitch::collada::CTimelineController::update(int)
; decoder-mode: arm
00667104  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00667108  00 40 a0 e1                                      mov r4, r0
0066710c  01 00 a0 e1                                      mov r0, r1
00667110  13 9e f2 eb                                      bl #0x30e964
00667114  11 13 a0 e3                                      mov r1, #0x44000000
00667118  7a 18 81 e2                                      add r1, r1, #0x7a0000
0066711c  dc 9e f2 eb                                      bl #0x30ec94
00667120  3d 30 d4 e5                                      ldrb r3, [r4, #0x3d]
00667124  00 50 a0 e1                                      mov r5, r0
00667128  28 10 94 e5                                      ldr r1, [r4, #0x28]
0066712c  00 00 53 e3                                      cmp r3, #0
00667130  30 60 94 e5                                      ldr r6, [r4, #0x30]
00667134  2f 00 00 1a                                      bne #0x6671f8
00667138  01 30 a0 e3                                      mov r3, #1
0066713c  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00667140  3d 30 c4 e5                                      strb r3, [r4, #0x3d]
00667144  00 10 a0 e3                                      mov r1, #0
00667148  95 9e f2 eb                                      bl #0x30eba4
0066714c  00 a0 a0 e3                                      mov sl, #0
00667150  00 60 a0 e1                                      mov r6, r0
00667154  28 50 84 e5                                      str r5, [r4, #0x28]
00667158  2c 00 84 e5                                      str r0, [r4, #0x2c]
0066715c  14 00 94 e5                                      ldr r0, [r4, #0x14]
00667160  ff 9d f2 eb                                      bl #0x30e964
00667164  11 13 a0 e3                                      mov r1, #0x44000000
00667168  7a 18 81 e2                                      add r1, r1, #0x7a0000
0066716c  c8 9e f2 eb                                      bl #0x30ec94
00667170  00 50 a0 e1                                      mov r5, r0
00667174  1c a0 84 e5                                      str sl, [r4, #0x1c]
00667178  06 00 a0 e1                                      mov r0, r6
0066717c  05 10 a0 e1                                      mov r1, r5
00667180  5c 9c f2 eb                                      bl #0x30e2f8
00667184  00 00 50 e3                                      cmp r0, #0
00667188  20 60 94 e5                                      ldr r6, [r4, #0x20]
0066718c  00 30 a0 e3                                      mov r3, #0
00667190  3a 00 00 1a                                      bne #0x667280
00667194  73 30 ef e6                                      uxtb r3, r3
00667198  00 00 53 e3                                      cmp r3, #0
0066719c  3b 00 00 0a                                      beq #0x667290
006671a0  18 30 d4 e5                                      ldrb r3, [r4, #0x18]
006671a4  00 00 53 e3                                      cmp r3, #0
006671a8  40 00 00 0a                                      beq #0x6672b0
006671ac  24 70 94 e5                                      ldr r7, [r4, #0x24]
006671b0  00 10 a0 e3                                      mov r1, #0
006671b4  07 00 a0 e1                                      mov r0, r7
006671b8  73 9b f2 eb                                      bl #0x30df8c
006671bc  00 00 50 e3                                      cmp r0, #0
006671c0  00 10 a0 13                                      movne r1, #0
006671c4  46 00 00 0a                                      beq #0x6672e4
006671c8  06 00 a0 e1                                      mov r0, r6
006671cc  74 9e f2 eb                                      bl #0x30eba4
006671d0  08 30 94 e5                                      ldr r3, [r4, #8]
006671d4  00 50 a0 e1                                      mov r5, r0
006671d8  2c 00 84 e5                                      str r0, [r4, #0x2c]
006671dc  00 00 53 e3                                      cmp r3, #0
006671e0  2b 00 00 0a                                      beq #0x667294
006671e4  04 00 a0 e1                                      mov r0, r4
006671e8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006671ec  33 ff 2f e1                                      blx r3
006671f0  2c 50 94 e5                                      ldr r5, [r4, #0x2c]
006671f4  26 00 00 ea                                      b #0x667294
006671f8  6b 9c f2 eb                                      bl #0x30e3ac
006671fc  06 10 a0 e1                                      mov r1, r6
00667200  d9 9e f2 eb                                      bl #0x30ed6c
00667204  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00667208  00 80 a0 e1                                      mov r8, r0
0066720c  64 9e f2 eb                                      bl #0x30eba4
00667210  28 50 84 e5                                      str r5, [r4, #0x28]
00667214  00 70 a0 e1                                      mov r7, r0
00667218  2c 00 84 e5                                      str r0, [r4, #0x2c]
0066721c  00 10 a0 e3                                      mov r1, #0
00667220  08 00 a0 e1                                      mov r0, r8
00667224  38 9d f2 eb                                      bl #0x30e70c
00667228  00 00 50 e3                                      cmp r0, #0
0066722c  08 a0 a0 e1                                      mov sl, r8
00667230  07 60 a0 e1                                      mov r6, r7
00667234  c8 ff ff 0a                                      beq #0x66715c
00667238  10 00 94 e5                                      ldr r0, [r4, #0x10]
0066723c  c8 9d f2 eb                                      bl #0x30e964
00667240  11 13 a0 e3                                      mov r1, #0x44000000
00667244  7a 18 81 e2                                      add r1, r1, #0x7a0000
00667248  91 9e f2 eb                                      bl #0x30ec94
0066724c  24 10 94 e5                                      ldr r1, [r4, #0x24]
00667250  00 50 a0 e1                                      mov r5, r0
00667254  20 00 94 e5                                      ldr r0, [r4, #0x20]
00667258  51 9e f2 eb                                      bl #0x30eba4
0066725c  02 81 88 e2                                      add r8, r8, #0x80000000
00667260  00 60 a0 e1                                      mov r6, r0
00667264  1c 80 84 e5                                      str r8, [r4, #0x1c]
00667268  07 00 a0 e1                                      mov r0, r7
0066726c  05 10 a0 e1                                      mov r1, r5
00667270  25 9d f2 eb                                      bl #0x30e70c
00667274  00 00 50 e3                                      cmp r0, #0
00667278  00 30 a0 e3                                      mov r3, #0
0066727c  c4 ff ff 0a                                      beq #0x667194
00667280  01 30 a0 e3                                      mov r3, #1
00667284  73 30 ef e6                                      uxtb r3, r3
00667288  00 00 53 e3                                      cmp r3, #0
0066728c  c3 ff ff 1a                                      bne #0x6671a0
00667290  2c 50 94 e5                                      ldr r5, [r4, #0x2c]
00667294  11 13 a0 e3                                      mov r1, #0x44000000
00667298  7a 18 81 e2                                      add r1, r1, #0x7a0000
0066729c  05 00 a0 e1                                      mov r0, r5
006672a0  b1 9e f2 eb                                      bl #0x30ed6c
006672a4  88 9c f2 eb                                      bl #0x30e4cc
006672a8  04 00 84 e5                                      str r0, [r4, #4]
006672ac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006672b0  3c 30 d4 e5                                      ldrb r3, [r4, #0x3c]
006672b4  2c 50 84 e5                                      str r5, [r4, #0x2c]
006672b8  00 00 53 e3                                      cmp r3, #0
006672bc  f4 ff ff 1a                                      bne #0x667294
006672c0  08 30 94 e5                                      ldr r3, [r4, #8]
006672c4  01 20 a0 e3                                      mov r2, #1
006672c8  3c 20 c4 e5                                      strb r2, [r4, #0x3c]
006672cc  00 00 53 e3                                      cmp r3, #0
006672d0  ef ff ff 0a                                      beq #0x667294
006672d4  04 00 a0 e1                                      mov r0, r4
006672d8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006672dc  33 ff 2f e1                                      blx r3
006672e0  ea ff ff ea                                      b #0x667290
006672e4  05 10 a0 e1                                      mov r1, r5
006672e8  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
006672ec  2e 9c f2 eb                                      bl #0x30e3ac
006672f0  07 10 a0 e1                                      mov r1, r7
006672f4  3d 9d f2 eb                                      bl #0x30e7f0
006672f8  00 10 a0 e1                                      mov r1, r0
006672fc  b1 ff ff ea                                      b #0x6671c8

; FUNCTION 0x00667300, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZTv0_n12_N6glitch7collada19CTimelineControllerD0Ev
; demangled: virtual thunk to glitch::collada::CTimelineController::~CTimelineController()
; decoder-mode: arm
00667300  00 30 90 e5                                      ldr r3, [r0]
00667304  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00667308  03 00 80 e0                                      add r0, r0, r3
0066730c  5d ff ff ea                                      b #0x667088

; FUNCTION 0x00667310, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CTimelineController
; alias: _ZTv0_n12_N6glitch7collada19CTimelineControllerD1Ev
; demangled: virtual thunk to glitch::collada::CTimelineController::~CTimelineController()
; decoder-mode: arm
00667310  00 30 90 e5                                      ldr r3, [r0]
00667314  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00667318  03 00 80 e0                                      add r0, r0, r3
0066731c  f7 fe ff ea                                      b #0x666f00
