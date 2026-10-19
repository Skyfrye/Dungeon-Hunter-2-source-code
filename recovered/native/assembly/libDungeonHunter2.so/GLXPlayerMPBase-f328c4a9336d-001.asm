; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0083760c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase17mpPrepareGameDataEv
; demangled: GLXPlayerMPBase::mpPrepareGameData()
; decoder-mode: arm
0083760c  00 00 a0 e3                                      mov r0, #0
00837610  1e ff 2f e1                                      bx lr

; FUNCTION 0x00837614, declared_size=4, range_size=4, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase19mpSendKickOutPlayerEPc
; demangled: GLXPlayerMPBase::mpSendKickOutPlayer(char*)
; decoder-mode: arm
00837614  1e ff 2f e1                                      bx lr

; FUNCTION 0x00837618, declared_size=4, range_size=4, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase19mpSendKickOutPlayerEPt
; demangled: GLXPlayerMPBase::mpSendKickOutPlayer(unsigned short*)
; decoder-mode: arm
00837618  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083761c, declared_size=4, range_size=4, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase15mpSendLeaveGameEv
; demangled: GLXPlayerMPBase::mpSendLeaveGame()
; decoder-mode: arm
0083761c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00837620, declared_size=4, range_size=4, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase15mpSendStartGameEv
; demangled: GLXPlayerMPBase::mpSendStartGame()
; decoder-mode: arm
00837620  1e ff 2f e1                                      bx lr

; FUNCTION 0x00837624, declared_size=4, range_size=4, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase16mpSendFinishGameEv
; demangled: GLXPlayerMPBase::mpSendFinishGame()
; decoder-mode: arm
00837624  1e ff 2f e1                                      bx lr

; FUNCTION 0x00837628, declared_size=4, range_size=4, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase21mpSendUPnPPortMappingEv
; demangled: GLXPlayerMPBase::mpSendUPnPPortMapping()
; decoder-mode: arm
00837628  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083762c, declared_size=4, range_size=4, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase21mpProcessPushMessagesEv
; demangled: GLXPlayerMPBase::mpProcessPushMessages()
; decoder-mode: arm
0083762c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084aaf0, declared_size=16, range_size=16, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase10LoadConfigEv
; demangled: GLXPlayerMPBase::LoadConfig()
; decoder-mode: arm
0084aaf0  00 30 a0 e3                                      mov r3, #0
0084aaf4  58 30 80 e5                                      str r3, [r0, #0x58]
0084aaf8  01 00 a0 e3                                      mov r0, #1
0084aafc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084ab00, declared_size=20, range_size=20, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase4InitEv
; demangled: GLXPlayerMPBase::Init()
; decoder-mode: arm
0084ab00  00 20 a0 e3                                      mov r2, #0
0084ab04  70 20 c0 e5                                      strb r2, [r0, #0x70]
0084ab08  68 20 80 e5                                      str r2, [r0, #0x68]
0084ab0c  6c 20 80 e5                                      str r2, [r0, #0x6c]
0084ab10  f6 ff ff ea                                      b #0x84aaf0

; FUNCTION 0x0084ab14, declared_size=64, range_size=64, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBaseC1EP23GLXPlayerMPBaseObserver
; demangled: GLXPlayerMPBase::GLXPlayerMPBase(GLXPlayerMPBaseObserver*)
; decoder-mode: arm
0084ab14  30 30 9f e5                                      ldr r3, [pc, #0x30]
0084ab18  30 20 9f e5                                      ldr r2, [pc, #0x30]
0084ab1c  10 40 2d e9                                      push {r4, lr}
0084ab20  03 30 8f e0                                      add r3, pc, r3
0084ab24  02 20 93 e7                                      ldr r2, [r3, r2]
0084ab28  00 40 a0 e1                                      mov r4, r0
0084ab2c  04 10 80 e5                                      str r1, [r0, #4]
0084ab30  08 20 82 e2                                      add r2, r2, #8
0084ab34  00 20 80 e5                                      str r2, [r0]
0084ab38  00 20 a0 e3                                      mov r2, #0
0084ab3c  71 20 c0 e5                                      strb r2, [r0, #0x71]
0084ab40  ee ff ff eb                                      bl #0x84ab00
0084ab44  04 00 a0 e1                                      mov r0, r4
0084ab48  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0084ab4c  70 9f 14 00 64 34 00 00                          .byte 0x70, 0x9f, 0x14, 0x00, 0x64, 0x34, 0x00, 0x00

; FUNCTION 0x0084ab54, declared_size=64, range_size=64, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBaseC2EP23GLXPlayerMPBaseObserver
; demangled: GLXPlayerMPBase::GLXPlayerMPBase(GLXPlayerMPBaseObserver*)
; decoder-mode: arm
0084ab54  30 30 9f e5                                      ldr r3, [pc, #0x30]
0084ab58  30 20 9f e5                                      ldr r2, [pc, #0x30]
0084ab5c  10 40 2d e9                                      push {r4, lr}
0084ab60  03 30 8f e0                                      add r3, pc, r3
0084ab64  02 20 93 e7                                      ldr r2, [r3, r2]
0084ab68  00 40 a0 e1                                      mov r4, r0
0084ab6c  04 10 80 e5                                      str r1, [r0, #4]
0084ab70  08 20 82 e2                                      add r2, r2, #8
0084ab74  00 20 80 e5                                      str r2, [r0]
0084ab78  00 20 a0 e3                                      mov r2, #0
0084ab7c  71 20 c0 e5                                      strb r2, [r0, #0x71]
0084ab80  de ff ff eb                                      bl #0x84ab00
0084ab84  04 00 a0 e1                                      mov r0, r4
0084ab88  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0084ab8c  30 9f 14 00 64 34 00 00                          .byte 0x30, 0x9f, 0x14, 0x00, 0x64, 0x34, 0x00, 0x00

; FUNCTION 0x0084ab94, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase9getErrMsgEv
; demangled: GLXPlayerMPBase::getErrMsg()
; decoder-mode: arm
0084ab94  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
0084ab98  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084ab9c, declared_size=60, range_size=60, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase9setErrMsgEPc
; demangled: GLXPlayerMPBase::setErrMsg(char*)
; decoder-mode: arm
0084ab9c  70 40 2d e9                                      push {r4, r5, r6, lr}
0084aba0  00 40 a0 e1                                      mov r4, r0
0084aba4  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
0084aba8  01 50 a0 e1                                      mov r5, r1
0084abac  00 00 50 e3                                      cmp r0, #0
0084abb0  02 00 00 0a                                      beq #0x84abc0
0084abb4  3f 0d eb eb                                      bl #0x30e0b8
0084abb8  00 30 a0 e3                                      mov r3, #0
0084abbc  4c 30 84 e5                                      str r3, [r4, #0x4c]
0084abc0  00 00 55 e3                                      cmp r5, #0
0084abc4  02 00 00 0a                                      beq #0x84abd4
0084abc8  05 00 a0 e1                                      mov r0, r5
0084abcc  73 83 ff eb                                      bl #0x82b9a0
0084abd0  4c 00 84 e5                                      str r0, [r4, #0x4c]
0084abd4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0084abd8, declared_size=140, range_size=140, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase9setErrMsgEv
; demangled: GLXPlayerMPBase::setErrMsg()
; decoder-mode: arm
0084abd8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0084abdc  00 40 a0 e1                                      mov r4, r0
0084abe0  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
0084abe4  00 00 50 e3                                      cmp r0, #0
0084abe8  02 00 00 0a                                      beq #0x84abf8
0084abec  31 0d eb eb                                      bl #0x30e0b8
0084abf0  00 30 a0 e3                                      mov r3, #0
0084abf4  4c 30 84 e5                                      str r3, [r4, #0x4c]
0084abf8  68 30 94 e5                                      ldr r3, [r4, #0x68]
0084abfc  00 00 53 e3                                      cmp r3, #0
0084ac00  16 00 00 0a                                      beq #0x84ac60
0084ac04  03 00 a0 e1                                      mov r0, r3
0084ac08  00 30 93 e5                                      ldr r3, [r3]
0084ac0c  0f e0 a0 e1                                      mov lr, pc
0084ac10  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0084ac14  68 30 94 e5                                      ldr r3, [r4, #0x68]
0084ac18  01 70 80 e2                                      add r7, r0, #1
0084ac1c  00 50 a0 e1                                      mov r5, r0
0084ac20  03 00 a0 e1                                      mov r0, r3
0084ac24  00 30 93 e5                                      ldr r3, [r3]
0084ac28  0f e0 a0 e1                                      mov lr, pc
0084ac2c  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0084ac30  00 60 a0 e1                                      mov r6, r0
0084ac34  07 00 a0 e1                                      mov r0, r7
0084ac38  24 0d eb eb                                      bl #0x30e0d0
0084ac3c  07 20 a0 e1                                      mov r2, r7
0084ac40  4c 00 84 e5                                      str r0, [r4, #0x4c]
0084ac44  00 10 a0 e3                                      mov r1, #0
0084ac48  c5 81 ff eb                                      bl #0x82b364
0084ac4c  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0084ac50  06 10 a0 e1                                      mov r1, r6
0084ac54  05 20 a0 e1                                      mov r2, r5
0084ac58  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0084ac5c  bb 81 ff ea                                      b #0x82b350
0084ac60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0084ac64, declared_size=276, range_size=276, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase11mpSendLoginEPc
; demangled: GLXPlayerMPBase::mpSendLogin(char*)
; decoder-mode: arm
0084ac64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0084ac68  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
0084ac6c  f4 50 9f e5                                      ldr r5, [pc, #0xf4]
0084ac70  00 60 a0 e1                                      mov r6, r0
0084ac74  04 40 8f e0                                      add r4, pc, r4
0084ac78  05 30 94 e7                                      ldr r3, [r4, r5]
0084ac7c  01 da 4d e2                                      sub sp, sp, #0x1000
0084ac80  e4 00 9f e5                                      ldr r0, [pc, #0xe4]
0084ac84  00 30 93 e5                                      ldr r3, [r3]
0084ac88  08 d0 4d e2                                      sub sp, sp, #8
0084ac8c  01 70 a0 e1                                      mov r7, r1
0084ac90  01 1a 8d e2                                      add r1, sp, #0x1000
0084ac94  04 30 81 e5                                      str r3, [r1, #4]
0084ac98  00 00 8f e0                                      add r0, pc, r0
0084ac9c  b8 82 ff eb                                      bl #0x82b784
0084aca0  60 30 d6 e5                                      ldrb r3, [r6, #0x60]
0084aca4  00 00 53 e3                                      cmp r3, #0
0084aca8  0f 00 00 1a                                      bne #0x84acec
0084acac  04 30 96 e5                                      ldr r3, [r6, #4]
0084acb0  00 10 a0 e3                                      mov r1, #0
0084acb4  50 10 86 e5                                      str r1, [r6, #0x50]
0084acb8  03 00 a0 e1                                      mov r0, r3
0084acbc  00 30 93 e5                                      ldr r3, [r3]
0084acc0  0f e0 a0 e1                                      mov lr, pc
0084acc4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0084acc8  05 30 94 e7                                      ldr r3, [r4, r5]
0084accc  01 1a 8d e2                                      add r1, sp, #0x1000
0084acd0  04 20 91 e5                                      ldr r2, [r1, #4]
0084acd4  00 30 93 e5                                      ldr r3, [r3]
0084acd8  03 00 52 e1                                      cmp r2, r3
0084acdc  1f 00 00 1a                                      bne #0x84ad60
0084ace0  08 d0 8d e2                                      add sp, sp, #8
0084ace4  01 da 8d e2                                      add sp, sp, #0x1000
0084ace8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0084acec  01 00 53 e3                                      cmp r3, #1
0084acf0  ed ff ff 8a                                      bhi #0x84acac
0084acf4  01 20 01 e3                                      movw r2, #0x1001
0084acf8  0d 00 a0 e1                                      mov r0, sp
0084acfc  00 10 a0 e3                                      mov r1, #0
0084ad00  97 81 ff eb                                      bl #0x82b364
0084ad04  07 10 a0 e1                                      mov r1, r7
0084ad08  0d 00 a0 e1                                      mov r0, sp
0084ad0c  03 0e eb eb                                      bl #0x30e520
0084ad10  58 00 9f e5                                      ldr r0, [pc, #0x58]
0084ad14  0d 10 a0 e1                                      mov r1, sp
0084ad18  08 80 8d e2                                      add r8, sp, #8
0084ad1c  00 00 8f e0                                      add r0, pc, r0
0084ad20  97 82 ff eb                                      bl #0x82b784
0084ad24  00 30 e0 e3                                      mvn r3, #0
0084ad28  50 30 86 e5                                      str r3, [r6, #0x50]
0084ad2c  0d 10 a0 e1                                      mov r1, sp
0084ad30  54 00 96 e5                                      ldr r0, [r6, #0x54]
0084ad34  a5 ed ff eb                                      bl #0x8463d0
0084ad38  01 30 a0 e3                                      mov r3, #1
0084ad3c  71 30 c6 e5                                      strb r3, [r6, #0x71]
0084ad40  54 60 96 e5                                      ldr r6, [r6, #0x54]
0084ad44  fb 80 ff eb                                      bl #0x82b138
0084ad48  08 00 86 e5                                      str r0, [r6, #8]
0084ad4c  20 00 9f e5                                      ldr r0, [pc, #0x20]
0084ad50  08 80 48 e2                                      sub r8, r8, #8
0084ad54  00 00 8f e0                                      add r0, pc, r0
0084ad58  89 82 ff eb                                      bl #0x82b784
0084ad5c  d9 ff ff ea                                      b #0x84acc8
0084ad60  6a 0d eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0084ad64  1c 9e 14 00 ac 40 00 00 c8 48 0c 00 6c 48 0c 00  .byte 0x1c, 0x9e, 0x14, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc8, 0x48, 0x0c, 0x00, 0x6c, 0x48, 0x0c, 0x00
0084ad74  54 29 0c 00                                      .byte 0x54, 0x29, 0x0c, 0x00

; FUNCTION 0x0084ad78, declared_size=176, range_size=176, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase25mpSendEstablishConnectionEv
; demangled: GLXPlayerMPBase::mpSendEstablishConnection()
; decoder-mode: arm
0084ad78  70 40 2d e9                                      push {r4, r5, r6, lr}
0084ad7c  60 30 d0 e5                                      ldrb r3, [r0, #0x60]
0084ad80  00 40 a0 e1                                      mov r4, r0
0084ad84  00 00 53 e3                                      cmp r3, #0
0084ad88  1e 00 00 1a                                      bne #0x84ae08
0084ad8c  54 30 90 e5                                      ldr r3, [r0, #0x54]
0084ad90  00 00 53 e3                                      cmp r3, #0
0084ad94  0b 00 00 0a                                      beq #0x84adc8
0084ad98  00 30 90 e5                                      ldr r3, [r0]
0084ad9c  0f e0 a0 e1                                      mov lr, pc
0084ada0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0084ada4  54 30 94 e5                                      ldr r3, [r4, #0x54]
0084ada8  00 00 53 e3                                      cmp r3, #0
0084adac  03 00 00 0a                                      beq #0x84adc0
0084adb0  03 00 a0 e1                                      mov r0, r3
0084adb4  00 30 93 e5                                      ldr r3, [r3]
0084adb8  0f e0 a0 e1                                      mov lr, pc
0084adbc  04 f0 93 e5                                      ldr pc, [r3, #4]
0084adc0  00 30 a0 e3                                      mov r3, #0
0084adc4  54 30 84 e5                                      str r3, [r4, #0x54]
0084adc8  00 30 e0 e3                                      mvn r3, #0
0084adcc  50 30 84 e5                                      str r3, [r4, #0x50]
0084add0  50 00 02 e3                                      movw r0, #0x2050
0084add4  ac 0e eb eb                                      bl #0x30e88c
0084add8  58 10 94 e5                                      ldr r1, [r4, #0x58]
0084addc  00 50 a0 e1                                      mov r5, r0
0084ade0  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0084ade4  ae ef ff eb                                      bl #0x846ca4
0084ade8  54 50 84 e5                                      str r5, [r4, #0x54]
0084adec  05 00 a0 e1                                      mov r0, r5
0084adf0  08 10 84 e2                                      add r1, r4, #8
0084adf4  9b ef ff eb                                      bl #0x846c68
0084adf8  01 30 a0 e3                                      mov r3, #1
0084adfc  70 30 c4 e5                                      strb r3, [r4, #0x70]
0084ae00  6c 30 84 e5                                      str r3, [r4, #0x6c]
0084ae04  70 80 bd e8                                      pop {r4, r5, r6, pc}
0084ae08  04 30 90 e5                                      ldr r3, [r0, #4]
0084ae0c  00 20 a0 e3                                      mov r2, #0
0084ae10  50 20 80 e5                                      str r2, [r0, #0x50]
0084ae14  03 00 a0 e1                                      mov r0, r3
0084ae18  00 30 93 e5                                      ldr r3, [r3]
0084ae1c  0f e0 a0 e1                                      mov lr, pc
0084ae20  08 f0 93 e5                                      ldr pc, [r3, #8]
0084ae24  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0084ae28, declared_size=128, range_size=128, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBase16mpSendDisconnectEv
; demangled: GLXPlayerMPBase::mpSendDisconnect()
; decoder-mode: arm
0084ae28  70 40 2d e9                                      push {r4, r5, r6, lr}
0084ae2c  00 40 a0 e1                                      mov r4, r0
0084ae30  54 00 90 e5                                      ldr r0, [r0, #0x54]
0084ae34  00 00 50 e3                                      cmp r0, #0
0084ae38  0e 00 00 0a                                      beq #0x84ae78
0084ae3c  44 ea ff eb                                      bl #0x845754
0084ae40  00 50 50 e2                                      subs r5, r0, #0
0084ae44  0c 00 00 0a                                      beq #0x84ae7c
0084ae48  54 30 94 e5                                      ldr r3, [r4, #0x54]
0084ae4c  00 20 e0 e3                                      mvn r2, #0
0084ae50  50 20 84 e5                                      str r2, [r4, #0x50]
0084ae54  03 00 a0 e1                                      mov r0, r3
0084ae58  00 30 93 e5                                      ldr r3, [r3]
0084ae5c  0f e0 a0 e1                                      mov lr, pc
0084ae60  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0084ae64  01 30 a0 e3                                      mov r3, #1
0084ae68  71 30 c4 e5                                      strb r3, [r4, #0x71]
0084ae6c  54 40 94 e5                                      ldr r4, [r4, #0x54]
0084ae70  b0 80 ff eb                                      bl #0x82b138
0084ae74  08 00 84 e5                                      str r0, [r4, #8]
0084ae78  70 80 bd e8                                      pop {r4, r5, r6, pc}
0084ae7c  04 00 a0 e1                                      mov r0, r4
0084ae80  00 30 94 e5                                      ldr r3, [r4]
0084ae84  0f e0 a0 e1                                      mov lr, pc
0084ae88  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0084ae8c  04 30 94 e5                                      ldr r3, [r4, #4]
0084ae90  50 50 84 e5                                      str r5, [r4, #0x50]
0084ae94  03 00 a0 e1                                      mov r0, r3
0084ae98  00 30 93 e5                                      ldr r3, [r3]
0084ae9c  0f e0 a0 e1                                      mov lr, pc
0084aea0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0084aea4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0084aea8, declared_size=108, range_size=108, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBaseD1Ev
; demangled: GLXPlayerMPBase::~GLXPlayerMPBase()
; decoder-mode: arm
0084aea8  10 40 2d e9                                      push {r4, lr}
0084aeac  58 30 9f e5                                      ldr r3, [pc, #0x58]
0084aeb0  58 20 9f e5                                      ldr r2, [pc, #0x58]
0084aeb4  68 10 90 e5                                      ldr r1, [r0, #0x68]
0084aeb8  03 30 8f e0                                      add r3, pc, r3
0084aebc  02 20 93 e7                                      ldr r2, [r3, r2]
0084aec0  00 00 51 e3                                      cmp r1, #0
0084aec4  00 40 a0 e1                                      mov r4, r0
0084aec8  08 20 82 e2                                      add r2, r2, #8
0084aecc  00 20 80 e5                                      str r2, [r0]
0084aed0  05 00 00 0a                                      beq #0x84aeec
0084aed4  00 30 91 e5                                      ldr r3, [r1]
0084aed8  01 00 a0 e1                                      mov r0, r1
0084aedc  0f e0 a0 e1                                      mov lr, pc
0084aee0  04 f0 93 e5                                      ldr pc, [r3, #4]
0084aee4  00 30 a0 e3                                      mov r3, #0
0084aee8  68 30 84 e5                                      str r3, [r4, #0x68]
0084aeec  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0084aef0  00 00 50 e3                                      cmp r0, #0
0084aef4  02 00 00 0a                                      beq #0x84af04
0084aef8  ec 0c eb eb                                      bl #0x30e2b0
0084aefc  00 30 a0 e3                                      mov r3, #0
0084af00  4c 30 84 e5                                      str r3, [r4, #0x4c]
0084af04  04 00 a0 e1                                      mov r0, r4
0084af08  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0084af0c  d8 9b 14 00 64 34 00 00                          .byte 0xd8, 0x9b, 0x14, 0x00, 0x64, 0x34, 0x00, 0x00

; FUNCTION 0x0084af14, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBaseD0Ev
; demangled: GLXPlayerMPBase::~GLXPlayerMPBase()
; decoder-mode: arm
0084af14  10 40 2d e9                                      push {r4, lr}
0084af18  00 40 a0 e1                                      mov r4, r0
0084af1c  e1 ff ff eb                                      bl #0x84aea8
0084af20  04 00 a0 e1                                      mov r0, r4
0084af24  e1 0c eb eb                                      bl #0x30e2b0
0084af28  04 00 a0 e1                                      mov r0, r4
0084af2c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0084af30, declared_size=108, range_size=108, mode=arm
; class-group: GLXPlayerMPBase
; alias: _ZN15GLXPlayerMPBaseD2Ev
; demangled: GLXPlayerMPBase::~GLXPlayerMPBase()
; decoder-mode: arm
0084af30  10 40 2d e9                                      push {r4, lr}
0084af34  58 30 9f e5                                      ldr r3, [pc, #0x58]
0084af38  58 20 9f e5                                      ldr r2, [pc, #0x58]
0084af3c  68 10 90 e5                                      ldr r1, [r0, #0x68]
0084af40  03 30 8f e0                                      add r3, pc, r3
0084af44  02 20 93 e7                                      ldr r2, [r3, r2]
0084af48  00 00 51 e3                                      cmp r1, #0
0084af4c  00 40 a0 e1                                      mov r4, r0
0084af50  08 20 82 e2                                      add r2, r2, #8
0084af54  00 20 80 e5                                      str r2, [r0]
0084af58  05 00 00 0a                                      beq #0x84af74
0084af5c  00 30 91 e5                                      ldr r3, [r1]
0084af60  01 00 a0 e1                                      mov r0, r1
0084af64  0f e0 a0 e1                                      mov lr, pc
0084af68  04 f0 93 e5                                      ldr pc, [r3, #4]
0084af6c  00 30 a0 e3                                      mov r3, #0
0084af70  68 30 84 e5                                      str r3, [r4, #0x68]
0084af74  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0084af78  00 00 50 e3                                      cmp r0, #0
0084af7c  02 00 00 0a                                      beq #0x84af8c
0084af80  ca 0c eb eb                                      bl #0x30e2b0
0084af84  00 30 a0 e3                                      mov r3, #0
0084af88  4c 30 84 e5                                      str r3, [r4, #0x4c]
0084af8c  04 00 a0 e1                                      mov r0, r4
0084af90  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0084af94  50 9b 14 00 64 34 00 00                          .byte 0x50, 0x9b, 0x14, 0x00, 0x64, 0x34, 0x00, 0x00
