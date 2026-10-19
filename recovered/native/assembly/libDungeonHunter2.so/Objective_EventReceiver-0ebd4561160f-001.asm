; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047a328, declared_size=8, range_size=8, mode=arm
; class-group: Objective_EventReceiver
; alias: _ZThn24_N23Objective_EventReceiverD1Ev
; demangled: non-virtual thunk to Objective_EventReceiver::~Objective_EventReceiver()
; decoder-mode: arm
0047a328  18 00 40 e2                                      sub r0, r0, #0x18
0047a32c  ff ff ff ea                                      b #0x47a330

; FUNCTION 0x0047a330, declared_size=72, range_size=72, mode=arm
; class-group: Objective_EventReceiver
; alias: _ZN23Objective_EventReceiverD1Ev
; demangled: Objective_EventReceiver::~Objective_EventReceiver()
; decoder-mode: arm
0047a330  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047a334  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047a338  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047a33c  03 30 8f e0                                      add r3, pc, r3
0047a340  01 10 93 e7                                      ldr r1, [r3, r1]
0047a344  02 20 93 e7                                      ldr r2, [r3, r2]
0047a348  10 40 2d e9                                      push {r4, lr}
0047a34c  08 10 81 e2                                      add r1, r1, #8
0047a350  08 20 82 e2                                      add r2, r2, #8
0047a354  00 40 a0 e1                                      mov r4, r0
0047a358  00 10 80 e5                                      str r1, [r0]
0047a35c  18 20 80 e5                                      str r2, [r0, #0x18]
0047a360  9f ff ff eb                                      bl #0x47a1e4
0047a364  04 00 a0 e1                                      mov r0, r4
0047a368  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047a36c  54 a7 51 00 90 3a 00 00 40 0b 00 00              .byte 0x54, 0xa7, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047aab4, declared_size=136, range_size=136, mode=arm
; class-group: Objective_EventReceiver
; alias: _ZNK23Objective_EventReceiver37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047aab4  70 40 2d e9                                      push {r4, r5, r6, lr}
0047aab8  08 30 d0 e5                                      ldrb r3, [r0, #8]
0047aabc  00 50 a0 e1                                      mov r5, r0
0047aac0  01 40 a0 e1                                      mov r4, r1
0047aac4  00 00 53 e3                                      cmp r3, #0
0047aac8  0f 00 00 1a                                      bne #0x47ab0c
0047aacc  50 20 9f e5                                      ldr r2, [pc, #0x50]
0047aad0  02 20 8f e0                                      add r2, pc, r2
0047aad4  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0047aad8  04 00 a0 e1                                      mov r0, r4
0047aadc  01 10 8f e0                                      add r1, pc, r1
0047aae0  47 4d fa eb                                      bl #0x30e004
0047aae4  1c 30 d5 e5                                      ldrb r3, [r5, #0x1c]
0047aae8  00 00 53 e3                                      cmp r3, #0
0047aaec  09 00 00 1a                                      bne #0x47ab18
0047aaf0  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047aaf4  02 20 8f e0                                      add r2, pc, r2
0047aaf8  30 10 9f e5                                      ldr r1, [pc, #0x30]
0047aafc  04 00 a0 e1                                      mov r0, r4
0047ab00  01 10 8f e0                                      add r1, pc, r1
0047ab04  70 40 bd e8                                      pop {r4, r5, r6, lr}
0047ab08  3d 4d fa ea                                      b #0x30e004
0047ab0c  20 20 9f e5                                      ldr r2, [pc, #0x20]
0047ab10  02 20 8f e0                                      add r2, pc, r2
0047ab14  ee ff ff ea                                      b #0x47aad4
0047ab18  18 20 9f e5                                      ldr r2, [pc, #0x18]
0047ab1c  02 20 8f e0                                      add r2, pc, r2
0047ab20  f4 ff ff ea                                      b #0x47aaf8
; mapping-symbol data/literal pool
0047ab24  98 3a 44 00 84 30 45 00 74 3a 44 00 b8 30 45 00  .byte 0x98, 0x3a, 0x44, 0x00, 0x84, 0x30, 0x45, 0x00, 0x74, 0x3a, 0x44, 0x00, 0xb8, 0x30, 0x45, 0x00
0047ab34  e0 3d 44 00 d4 3d 44 00                          .byte 0xe0, 0x3d, 0x44, 0x00, 0xd4, 0x3d, 0x44, 0x00

; FUNCTION 0x0047ac94, declared_size=84, range_size=84, mode=arm
; class-group: Objective_EventReceiver
; alias: _ZN23Objective_EventReceiver27CheckMustSendThroughNetworkEPK6IEvent
; demangled: Objective_EventReceiver::CheckMustSendThroughNetwork(IEvent const*)
; decoder-mode: arm
0047ac94  70 40 2d e9                                      push {r4, r5, r6, lr}
0047ac98  01 40 a0 e1                                      mov r4, r1
0047ac9c  bc 0a 0e eb                                      bl #0x7fd794
0047aca0  05 30 d0 e5                                      ldrb r3, [r0, #5]
0047aca4  00 00 53 e3                                      cmp r3, #0
0047aca8  0d 00 00 0a                                      beq #0x47ace4
0047acac  11 50 d4 e5                                      ldrb r5, [r4, #0x11]
0047acb0  00 00 55 e3                                      cmp r5, #0
0047acb4  0a 00 00 1a                                      bne #0x47ace4
0047acb8  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
0047acbc  00 00 53 e3                                      cmp r3, #0
0047acc0  07 00 00 0a                                      beq #0x47ace4
0047acc4  3c 41 0e eb                                      bl #0x80b1bc
0047acc8  00 60 a0 e1                                      mov r6, r0
0047accc  04 00 a0 e1                                      mov r0, r4
0047acd0  e0 ff ff eb                                      bl #0x47ac58
0047acd4  00 10 a0 e1                                      mov r1, r0
0047acd8  06 00 a0 e1                                      mov r0, r6
0047acdc  70 4d 0e eb                                      bl #0x80e2a4
0047ace0  10 50 c4 e5                                      strb r5, [r4, #0x10]
0047ace4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0047ace8, declared_size=8, range_size=8, mode=arm
; class-group: Objective_EventReceiver
; alias: _ZThn24_N23Objective_EventReceiver7onEventEPK6IEventPK12EventManager
; demangled: non-virtual thunk to Objective_EventReceiver::onEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0047ace8  18 00 40 e2                                      sub r0, r0, #0x18
0047acec  ff ff ff ea                                      b #0x47acf0

; FUNCTION 0x0047acf0, declared_size=204, range_size=204, mode=arm
; class-group: Objective_EventReceiver
; alias: _ZN23Objective_EventReceiver7onEventEPK6IEventPK12EventManager
; demangled: Objective_EventReceiver::onEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0047acf0  70 40 2d e9                                      push {r4, r5, r6, lr}
0047acf4  08 40 d0 e5                                      ldrb r4, [r0, #8]
0047acf8  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0047acfc  08 d0 4d e2                                      sub sp, sp, #8
0047ad00  00 00 54 e3                                      cmp r4, #0
0047ad04  00 50 a0 e1                                      mov r5, r0
0047ad08  01 60 a0 e1                                      mov r6, r1
0047ad0c  03 30 8f e0                                      add r3, pc, r3
0047ad10  0b 00 00 1a                                      bne #0x47ad44
0047ad14  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0047ad18  02 20 93 e7                                      ldr r2, [r3, r2]
0047ad1c  00 20 92 e5                                      ldr r2, [r2]
0047ad20  02 00 52 e3                                      cmp r2, #2
0047ad24  00 40 84 05                                      streq r4, [r4]
0047ad28  02 00 00 0a                                      beq #0x47ad38
0047ad2c  01 00 52 e3                                      cmp r2, #1
0047ad30  0e 00 00 0a                                      beq #0x47ad70
0047ad34  00 40 a0 e3                                      mov r4, #0
0047ad38  04 00 a0 e1                                      mov r0, r4
0047ad3c  08 d0 8d e2                                      add sp, sp, #8
0047ad40  70 80 bd e8                                      pop {r4, r5, r6, pc}
0047ad44  14 30 d0 e5                                      ldrb r3, [r0, #0x14]
0047ad48  00 00 53 e3                                      cmp r3, #0
0047ad4c  f8 ff ff 1a                                      bne #0x47ad34
0047ad50  00 30 90 e5                                      ldr r3, [r0]
0047ad54  0f e0 a0 e1                                      mov lr, pc
0047ad58  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0047ad5c  06 10 a0 e1                                      mov r1, r6
0047ad60  00 40 a0 e1                                      mov r4, r0
0047ad64  05 00 a0 e1                                      mov r0, r5
0047ad68  c9 ff ff eb                                      bl #0x47ac94
0047ad6c  f1 ff ff ea                                      b #0x47ad38
0047ad70  34 00 9f e5                                      ldr r0, [pc, #0x34]
0047ad74  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047ad78  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047ad7c  00 00 93 e7                                      ldr r0, [r3, r0]
0047ad80  30 30 9f e5                                      ldr r3, [pc, #0x30]
0047ad84  d5 c0 a0 e3                                      mov ip, #0xd5
0047ad88  01 10 8f e0                                      add r1, pc, r1
0047ad8c  02 20 8f e0                                      add r2, pc, r2
0047ad90  03 30 8f e0                                      add r3, pc, r3
0047ad94  a8 00 80 e2                                      add r0, r0, #0xa8
0047ad98  00 c0 8d e5                                      str ip, [sp]
0047ad9c  98 4c fa eb                                      bl #0x30e004
0047ada0  e4 ff ff ea                                      b #0x47ad38
; mapping-symbol data/literal pool
0047ada4  84 9d 51 00 c0 39 00 00 c0 19 00 00 50 36 44 00  .byte 0x84, 0x9d, 0x51, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x50, 0x36, 0x44, 0x00
0047adb4  dc 37 44 00 58 2e 45 00                          .byte 0xdc, 0x37, 0x44, 0x00, 0x58, 0x2e, 0x45, 0x00

; FUNCTION 0x0047adbc, declared_size=180, range_size=180, mode=arm
; class-group: Objective_EventReceiver
; alias: _ZN23Objective_EventReceiver10UnregisterEv
; demangled: Objective_EventReceiver::Unregister()
; decoder-mode: arm
0047adbc  30 40 2d e9                                      push {r4, r5, lr}
0047adc0  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
0047adc4  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0047adc8  0c d0 4d e2                                      sub sp, sp, #0xc
0047adcc  05 50 8f e0                                      add r5, pc, r5
0047add0  00 40 a0 e1                                      mov r4, r0
0047add4  03 00 95 e7                                      ldr r0, [r5, r3]
0047add8  ed 91 fa eb                                      bl #0x31f594
0047addc  00 30 50 e2                                      subs r3, r0, #0
0047ade0  06 00 00 0a                                      beq #0x47ae00
0047ade4  04 10 94 e5                                      ldr r1, [r4, #4]
0047ade8  18 20 84 e2                                      add r2, r4, #0x18
0047adec  2c f5 fa eb                                      bl #0x3382a4
0047adf0  00 30 a0 e3                                      mov r3, #0
0047adf4  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
0047adf8  0c d0 8d e2                                      add sp, sp, #0xc
0047adfc  30 80 bd e8                                      pop {r4, r5, pc}
0047ae00  54 20 9f e5                                      ldr r2, [pc, #0x54]
0047ae04  02 20 95 e7                                      ldr r2, [r5, r2]
0047ae08  00 20 92 e5                                      ldr r2, [r2]
0047ae0c  02 00 52 e3                                      cmp r2, #2
0047ae10  00 30 83 05                                      streq r3, [r3]
0047ae14  f7 ff ff 0a                                      beq #0x47adf8
0047ae18  01 00 52 e3                                      cmp r2, #1
0047ae1c  f5 ff ff 1a                                      bne #0x47adf8
0047ae20  38 00 9f e5                                      ldr r0, [pc, #0x38]
0047ae24  38 10 9f e5                                      ldr r1, [pc, #0x38]
0047ae28  38 20 9f e5                                      ldr r2, [pc, #0x38]
0047ae2c  00 00 95 e7                                      ldr r0, [r5, r0]
0047ae30  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047ae34  6e c1 00 e3                                      movw ip, #0x16e
0047ae38  01 10 8f e0                                      add r1, pc, r1
0047ae3c  02 20 8f e0                                      add r2, pc, r2
0047ae40  03 30 8f e0                                      add r3, pc, r3
0047ae44  a8 00 80 e2                                      add r0, r0, #0xa8
0047ae48  00 c0 8d e5                                      str ip, [sp]
0047ae4c  6c 4c fa eb                                      bl #0x30e004
0047ae50  e8 ff ff ea                                      b #0x47adf8
; mapping-symbol data/literal pool
0047ae54  c4 9c 51 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0xc4, 0x9c, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0047ae64  a0 35 44 00 1c 4b 49 00 a8 2d 45 00              .byte 0xa0, 0x35, 0x44, 0x00, 0x1c, 0x4b, 0x49, 0x00, 0xa8, 0x2d, 0x45, 0x00

; FUNCTION 0x0047ae70, declared_size=200, range_size=200, mode=arm
; class-group: Objective_EventReceiver
; alias: _ZN23Objective_EventReceiver8RegisterEv
; demangled: Objective_EventReceiver::Register()
; decoder-mode: arm
0047ae70  30 40 2d e9                                      push {r4, r5, lr}
0047ae74  08 30 d0 e5                                      ldrb r3, [r0, #8]
0047ae78  9c 50 9f e5                                      ldr r5, [pc, #0x9c]
0047ae7c  0c d0 4d e2                                      sub sp, sp, #0xc
0047ae80  00 00 53 e3                                      cmp r3, #0
0047ae84  00 40 a0 e1                                      mov r4, r0
0047ae88  05 50 8f e0                                      add r5, pc, r5
0047ae8c  01 00 00 1a                                      bne #0x47ae98
0047ae90  0c d0 8d e2                                      add sp, sp, #0xc
0047ae94  30 80 bd e8                                      pop {r4, r5, pc}
0047ae98  80 30 9f e5                                      ldr r3, [pc, #0x80]
0047ae9c  03 00 95 e7                                      ldr r0, [r5, r3]
0047aea0  bb 91 fa eb                                      bl #0x31f594
0047aea4  00 30 50 e2                                      subs r3, r0, #0
0047aea8  06 00 00 0a                                      beq #0x47aec8
0047aeac  00 30 a0 e3                                      mov r3, #0
0047aeb0  04 10 94 e5                                      ldr r1, [r4, #4]
0047aeb4  18 20 84 e2                                      add r2, r4, #0x18
0047aeb8  b8 f7 fa eb                                      bl #0x338da0
0047aebc  01 30 a0 e3                                      mov r3, #1
0047aec0  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
0047aec4  f1 ff ff ea                                      b #0x47ae90
0047aec8  54 20 9f e5                                      ldr r2, [pc, #0x54]
0047aecc  02 20 95 e7                                      ldr r2, [r5, r2]
0047aed0  00 20 92 e5                                      ldr r2, [r2]
0047aed4  02 00 52 e3                                      cmp r2, #2
0047aed8  00 30 83 05                                      streq r3, [r3]
0047aedc  eb ff ff 0a                                      beq #0x47ae90
0047aee0  01 00 52 e3                                      cmp r2, #1
0047aee4  e9 ff ff 1a                                      bne #0x47ae90
0047aee8  38 00 9f e5                                      ldr r0, [pc, #0x38]
0047aeec  38 10 9f e5                                      ldr r1, [pc, #0x38]
0047aef0  38 20 9f e5                                      ldr r2, [pc, #0x38]
0047aef4  00 00 95 e7                                      ldr r0, [r5, r0]
0047aef8  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047aefc  62 c1 00 e3                                      movw ip, #0x162
0047af00  01 10 8f e0                                      add r1, pc, r1
0047af04  02 20 8f e0                                      add r2, pc, r2
0047af08  03 30 8f e0                                      add r3, pc, r3
0047af0c  a8 00 80 e2                                      add r0, r0, #0xa8
0047af10  00 c0 8d e5                                      str ip, [sp]
0047af14  3a 4c fa eb                                      bl #0x30e004
0047af18  dc ff ff ea                                      b #0x47ae90
; mapping-symbol data/literal pool
0047af1c  08 9c 51 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0x08, 0x9c, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0047af2c  d8 34 44 00 54 4a 49 00 e0 2c 45 00              .byte 0xd8, 0x34, 0x44, 0x00, 0x54, 0x4a, 0x49, 0x00, 0xe0, 0x2c, 0x45, 0x00

; FUNCTION 0x0047ccb4, declared_size=8, range_size=8, mode=arm
; class-group: Objective_EventReceiver
; alias: _ZThn24_N23Objective_EventReceiverD0Ev
; demangled: non-virtual thunk to Objective_EventReceiver::~Objective_EventReceiver()
; decoder-mode: arm
0047ccb4  18 00 40 e2                                      sub r0, r0, #0x18
0047ccb8  ff ff ff ea                                      b #0x47ccbc

; FUNCTION 0x0047ccbc, declared_size=80, range_size=80, mode=arm
; class-group: Objective_EventReceiver
; alias: _ZN23Objective_EventReceiverD0Ev
; demangled: Objective_EventReceiver::~Objective_EventReceiver()
; decoder-mode: arm
0047ccbc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047ccc0  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047ccc4  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047ccc8  03 30 8f e0                                      add r3, pc, r3
0047cccc  01 10 93 e7                                      ldr r1, [r3, r1]
0047ccd0  02 20 93 e7                                      ldr r2, [r3, r2]
0047ccd4  10 40 2d e9                                      push {r4, lr}
0047ccd8  08 10 81 e2                                      add r1, r1, #8
0047ccdc  08 20 82 e2                                      add r2, r2, #8
0047cce0  00 40 a0 e1                                      mov r4, r0
0047cce4  00 10 80 e5                                      str r1, [r0]
0047cce8  18 20 80 e5                                      str r2, [r0, #0x18]
0047ccec  3c f5 ff eb                                      bl #0x47a1e4
0047ccf0  04 00 a0 e1                                      mov r0, r4
0047ccf4  d1 4d fa eb                                      bl #0x310440
0047ccf8  04 00 a0 e1                                      mov r0, r4
0047ccfc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047cd00  c8 7d 51 00 90 3a 00 00 40 0b 00 00              .byte 0xc8, 0x7d, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00
