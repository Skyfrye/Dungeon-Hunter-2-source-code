; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0067142c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDevice15isExitRequestedEv
; demangled: glitch::IDevice::isExitRequested()
; decoder-mode: arm
0067142c  00 00 a0 e3                                      mov r0, #0
00671430  1e ff 2f e1                                      bx lr

; FUNCTION 0x00671438, declared_size=4, range_size=4, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDevice16setScreenCaptureEb
; demangled: glitch::IDevice::setScreenCapture(bool)
; decoder-mode: arm
00671438  1e ff 2f e1                                      bx lr

; FUNCTION 0x0067143c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDevice16getVideoModeListEv
; demangled: glitch::IDevice::getVideoModeList()
; decoder-mode: arm
0067143c  3c 00 80 e2                                      add r0, r0, #0x3c
00671440  1e ff 2f e1                                      bx lr

; FUNCTION 0x00671444, declared_size=80, range_size=80, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDevice29setInputReceivingSceneManagerEPNS_5scene13CSceneManagerE
; demangled: glitch::IDevice::setInputReceivingSceneManager(glitch::scene::CSceneManager*)
; decoder-mode: arm
00671444  70 40 2d e9                                      push {r4, r5, r6, lr}
00671448  38 30 90 e5                                      ldr r3, [r0, #0x38]
0067144c  00 40 a0 e1                                      mov r4, r0
00671450  01 50 a0 e1                                      mov r5, r1
00671454  00 00 53 e3                                      cmp r3, #0
00671458  03 00 00 0a                                      beq #0x67146c
0067145c  00 20 93 e5                                      ldr r2, [r3]
00671460  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00671464  00 00 83 e0                                      add r0, r3, r0
00671468  45 b0 f2 eb                                      bl #0x31d584
0067146c  00 00 55 e3                                      cmp r5, #0
00671470  38 50 84 e5                                      str r5, [r4, #0x38]
00671474  05 00 00 0a                                      beq #0x671490
00671478  00 30 95 e5                                      ldr r3, [r5]
0067147c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00671480  03 50 85 e0                                      add r5, r5, r3
00671484  04 30 95 e5                                      ldr r3, [r5, #4]
00671488  01 30 83 e2                                      add r3, r3, #1
0067148c  04 30 85 e5                                      str r3, [r5, #4]
00671490  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00671494, declared_size=8, range_size=8, mode=arm
; class-group: glitch::IDevice
; alias: _ZNK6glitch7IDevice12isFullscreenEv
; demangled: glitch::IDevice::isFullscreen() const
; decoder-mode: arm
00671494  6a 00 d0 e5                                      ldrb r0, [r0, #0x6a]
00671498  1e ff 2f e1                                      bx lr

; FUNCTION 0x0067149c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::IDevice
; alias: _ZNK6glitch7IDevice14getColorFormatEv
; demangled: glitch::IDevice::getColorFormat() const
; decoder-mode: arm
0067149c  05 00 a0 e3                                      mov r0, #5
006714a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006714c8, declared_size=68, range_size=68, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDevice16setEventReceiverEPNS_14IEventReceiverE
; demangled: glitch::IDevice::setEventReceiver(glitch::IEventReceiver*)
; decoder-mode: arm
006714c8  70 40 2d e9                                      push {r4, r5, r6, lr}
006714cc  00 40 a0 e1                                      mov r4, r0
006714d0  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
006714d4  01 50 a0 e1                                      mov r5, r1
006714d8  28 10 84 e5                                      str r1, [r4, #0x28]
006714dc  00 00 50 e3                                      cmp r0, #0
006714e0  00 00 00 0a                                      beq #0x6714e8
006714e4  14 bd 00 eb                                      bl #0x6a093c
006714e8  18 30 94 e5                                      ldr r3, [r4, #0x18]
006714ec  00 00 53 e3                                      cmp r3, #0
006714f0  04 00 00 0a                                      beq #0x671508
006714f4  03 00 a0 e1                                      mov r0, r3
006714f8  05 10 a0 e1                                      mov r1, r5
006714fc  00 30 93 e5                                      ldr r3, [r3]
00671500  0f e0 a0 e1                                      mov lr, pc
00671504  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00671508  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00671554, declared_size=148, range_size=148, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDevice17createGUIAndSceneEv
; demangled: glitch::IDevice::createGUIAndScene()
; decoder-mode: arm
00671554  30 40 2d e9                                      push {r4, r5, lr}
00671558  10 30 90 e5                                      ldr r3, [r0, #0x10]
0067155c  0c d0 4d e2                                      sub sp, sp, #0xc
00671560  00 40 a0 e1                                      mov r4, r0
00671564  00 00 53 e3                                      cmp r3, #0
00671568  06 00 00 0a                                      beq #0x671588
0067156c  00 10 a0 e3                                      mov r1, #0
00671570  20 00 a0 e3                                      mov r0, #0x20
00671574  0c 0b fb eb                                      bl #0x5341ac
00671578  10 10 94 e5                                      ldr r1, [r4, #0x10]
0067157c  00 50 a0 e1                                      mov r5, r0
00671580  a0 b6 fc eb                                      bl #0x59f008
00671584  14 50 84 e5                                      str r5, [r4, #0x14]
00671588  96 0a fb eb                                      bl #0x533fe8
0067158c  34 50 84 e2                                      add r5, r4, #0x34
00671590  05 10 a0 e1                                      mov r1, r5
00671594  10 20 94 e5                                      ldr r2, [r4, #0x10]
00671598  30 30 94 e5                                      ldr r3, [r4, #0x30]
0067159c  00 c0 90 e5                                      ldr ip, [r0]
006715a0  0f e0 a0 e1                                      mov lr, pc
006715a4  10 f0 9c e5                                      ldr pc, [ip, #0x10]
006715a8  18 00 84 e5                                      str r0, [r4, #0x18]
006715ac  8d 0a fb eb                                      bl #0x533fe8
006715b0  18 e0 94 e5                                      ldr lr, [r4, #0x18]
006715b4  10 10 94 e5                                      ldr r1, [r4, #0x10]
006715b8  24 30 94 e5                                      ldr r3, [r4, #0x24]
006715bc  00 c0 90 e5                                      ldr ip, [r0]
006715c0  05 20 a0 e1                                      mov r2, r5
006715c4  00 e0 8d e5                                      str lr, [sp]
006715c8  0f e0 a0 e1                                      mov lr, pc
006715cc  0c f0 9c e5                                      ldr pc, [ip, #0xc]
006715d0  28 10 94 e5                                      ldr r1, [r4, #0x28]
006715d4  1c 00 84 e5                                      str r0, [r4, #0x1c]
006715d8  04 00 a0 e1                                      mov r0, r4
006715dc  0c d0 8d e2                                      add sp, sp, #0xc
006715e0  30 40 bd e8                                      pop {r4, r5, lr}
006715e4  b7 ff ff ea                                      b #0x6714c8

; FUNCTION 0x0067169c, declared_size=460, range_size=460, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDeviceD2Ev
; demangled: glitch::IDevice::~IDevice()
; decoder-mode: arm
0067169c  70 40 2d e9                                      push {r4, r5, r6, lr}
006716a0  ac 51 9f e5                                      ldr r5, [pc, #0x1ac]
006716a4  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
006716a8  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
006716ac  05 50 8f e0                                      add r5, pc, r5
006716b0  03 30 95 e7                                      ldr r3, [r5, r3]
006716b4  00 00 52 e3                                      cmp r2, #0
006716b8  00 40 a0 e1                                      mov r4, r0
006716bc  08 30 83 e2                                      add r3, r3, #8
006716c0  00 30 80 e5                                      str r3, [r0]
006716c4  03 00 00 0a                                      beq #0x6716d8
006716c8  00 30 92 e5                                      ldr r3, [r2]
006716cc  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
006716d0  00 00 82 e0                                      add r0, r2, r0
006716d4  aa af f2 eb                                      bl #0x31d584
006716d8  08 00 94 e5                                      ldr r0, [r4, #8]
006716dc  00 00 50 e3                                      cmp r0, #0
006716e0  00 00 00 0a                                      beq #0x6716e8
006716e4  a6 af f2 eb                                      bl #0x31d584
006716e8  0c 60 94 e5                                      ldr r6, [r4, #0xc]
006716ec  00 00 56 e3                                      cmp r6, #0
006716f0  07 00 00 0a                                      beq #0x671714
006716f4  0c 00 86 e2                                      add r0, r6, #0xc
006716f8  c9 ff ff eb                                      bl #0x671624
006716fc  00 00 96 e5                                      ldr r0, [r6]
00671700  00 00 50 e3                                      cmp r0, #0
00671704  00 00 00 0a                                      beq #0x67170c
00671708  50 7b f2 eb                                      bl #0x310450
0067170c  06 00 a0 e1                                      mov r0, r6
00671710  e6 72 f2 eb                                      bl #0x30e2b0
00671714  18 00 94 e5                                      ldr r0, [r4, #0x18]
00671718  00 00 50 e3                                      cmp r0, #0
0067171c  00 00 00 0a                                      beq #0x671724
00671720  97 af f2 eb                                      bl #0x31d584
00671724  14 00 94 e5                                      ldr r0, [r4, #0x14]
00671728  00 00 50 e3                                      cmp r0, #0
0067172c  00 00 00 0a                                      beq #0x671734
00671730  93 af f2 eb                                      bl #0x31d584
00671734  10 00 94 e5                                      ldr r0, [r4, #0x10]
00671738  00 00 50 e3                                      cmp r0, #0
0067173c  00 00 00 0a                                      beq #0x671744
00671740  8f af f2 eb                                      bl #0x31d584
00671744  38 30 94 e5                                      ldr r3, [r4, #0x38]
00671748  00 00 53 e3                                      cmp r3, #0
0067174c  03 00 00 0a                                      beq #0x671760
00671750  00 20 93 e5                                      ldr r2, [r3]
00671754  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00671758  00 00 83 e0                                      add r0, r3, r0
0067175c  88 af f2 eb                                      bl #0x31d584
00671760  24 00 94 e5                                      ldr r0, [r4, #0x24]
00671764  00 00 50 e3                                      cmp r0, #0
00671768  00 00 00 0a                                      beq #0x671770
0067176c  84 af f2 eb                                      bl #0x31d584
00671770  30 00 94 e5                                      ldr r0, [r4, #0x30]
00671774  00 00 50 e3                                      cmp r0, #0
00671778  00 00 00 0a                                      beq #0x671780
0067177c  80 af f2 eb                                      bl #0x31d584
00671780  00 60 a0 e3                                      mov r6, #0
00671784  24 60 84 e5                                      str r6, [r4, #0x24]
00671788  20 00 94 e5                                      ldr r0, [r4, #0x20]
0067178c  7c af f2 eb                                      bl #0x31d584
00671790  fe bd 00 eb                                      bl #0x6a0f90
00671794  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00671798  06 00 50 e1                                      cmp r0, r6
0067179c  02 00 00 0a                                      beq #0x6717ac
006717a0  77 af f2 eb                                      bl #0x31d584
006717a4  06 00 50 e1                                      cmp r0, r6
006717a8  25 00 00 1a                                      bne #0x671844
006717ac  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
006717b0  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
006717b4  b4 00 84 e2                                      add r0, r4, #0xb4
006717b8  bc 20 94 e5                                      ldr r2, [r4, #0xbc]
006717bc  03 00 51 e1                                      cmp r1, r3
006717c0  c0 c0 94 e5                                      ldr ip, [r4, #0xc0]
006717c4  0b 00 00 0a                                      beq #0x6717f8
006717c8  18 30 83 e2                                      add r3, r3, #0x18
006717cc  02 00 53 e1                                      cmp r3, r2
006717d0  04 00 00 0a                                      beq #0x6717e8
006717d4  03 00 51 e1                                      cmp r1, r3
006717d8  18 30 83 e2                                      add r3, r3, #0x18
006717dc  05 00 00 0a                                      beq #0x6717f8
006717e0  03 00 52 e1                                      cmp r2, r3
006717e4  fa ff ff 1a                                      bne #0x6717d4
006717e8  04 30 bc e5                                      ldr r3, [ip, #4]!
006717ec  03 00 51 e1                                      cmp r1, r3
006717f0  78 20 83 e2                                      add r2, r3, #0x78
006717f4  f3 ff ff 1a                                      bne #0x6717c8
006717f8  43 ff ff eb                                      bl #0x67150c
006717fc  58 30 9f e5                                      ldr r3, [pc, #0x58]
00671800  44 00 94 e5                                      ldr r0, [r4, #0x44]
00671804  03 30 95 e7                                      ldr r3, [r5, r3]
00671808  00 00 50 e3                                      cmp r0, #0
0067180c  08 30 83 e2                                      add r3, r3, #8
00671810  3c 30 84 e5                                      str r3, [r4, #0x3c]
00671814  00 00 00 0a                                      beq #0x67181c
00671818  0c 7b f2 eb                                      bl #0x310450
0067181c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00671820  34 00 94 e5                                      ldr r0, [r4, #0x34]
00671824  03 30 95 e7                                      ldr r3, [r5, r3]
00671828  00 00 50 e3                                      cmp r0, #0
0067182c  08 30 83 e2                                      add r3, r3, #8
00671830  3c 30 84 e5                                      str r3, [r4, #0x3c]
00671834  00 00 00 0a                                      beq #0x67183c
00671838  51 af f2 eb                                      bl #0x31d584
0067183c  04 00 a0 e1                                      mov r0, r4
00671840  70 80 bd e8                                      pop {r4, r5, r6, pc}
00671844  18 30 9f e5                                      ldr r3, [pc, #0x18]
00671848  03 30 95 e7                                      ldr r3, [r5, r3]
0067184c  00 60 83 e5                                      str r6, [r3]
00671850  d5 ff ff ea                                      b #0x6717ac
; mapping-symbol data/literal pool
00671854  e4 33 32 00 d8 17 00 00 4c 49 00 00 44 2b 00 00  .byte 0xe4, 0x33, 0x32, 0x00, 0xd8, 0x17, 0x00, 0x00, 0x4c, 0x49, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00
00671864  3c 1c 00 00                                      .byte 0x3c, 0x1c, 0x00, 0x00

; FUNCTION 0x00671a00, declared_size=236, range_size=236, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDevice17postEventFromUserERKNS_6SEventEb
; demangled: glitch::IDevice::postEventFromUser(glitch::SEvent const&, bool)
; decoder-mode: arm
00671a00  00 00 52 e3                                      cmp r2, #0
00671a04  70 40 2d e9                                      push {r4, r5, r6, lr}
00671a08  00 40 a0 e1                                      mov r4, r0
00671a0c  01 50 a0 e1                                      mov r5, r1
00671a10  0f 00 00 0a                                      beq #0x671a54
00671a14  cc 30 90 e5                                      ldr r3, [r0, #0xcc]
00671a18  c4 c0 90 e5                                      ldr ip, [r0, #0xc4]
00671a1c  18 30 43 e2                                      sub r3, r3, #0x18
00671a20  03 00 5c e1                                      cmp ip, r3
00671a24  2c 00 00 0a                                      beq #0x671adc
00671a28  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
00671a2c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00671a30  03 00 95 e8                                      ldm r5, {r0, r1}
00671a34  0c 30 a0 e1                                      mov r3, ip
00671a38  03 00 83 e8                                      stm r3, {r0, r1}
00671a3c  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
00671a40  01 c0 a0 e3                                      mov ip, #1
00671a44  18 30 83 e2                                      add r3, r3, #0x18
00671a48  c4 30 84 e5                                      str r3, [r4, #0xc4]
00671a4c  0c 00 a0 e1                                      mov r0, ip
00671a50  70 80 bd e8                                      pop {r4, r5, r6, pc}
00671a54  28 30 90 e5                                      ldr r3, [r0, #0x28]
00671a58  00 00 53 e3                                      cmp r3, #0
00671a5c  14 00 00 0a                                      beq #0x671ab4
00671a60  03 00 a0 e1                                      mov r0, r3
00671a64  00 30 93 e5                                      ldr r3, [r3]
00671a68  0f e0 a0 e1                                      mov lr, pc
00671a6c  08 f0 93 e5                                      ldr pc, [r3, #8]
00671a70  00 c0 50 e2                                      subs ip, r0, #0
00671a74  0e 00 00 0a                                      beq #0x671ab4
00671a78  38 30 94 e5                                      ldr r3, [r4, #0x38]
00671a7c  00 00 53 e3                                      cmp r3, #0
00671a80  1c 30 94 05                                      ldreq r3, [r4, #0x1c]
00671a84  00 00 5c e3                                      cmp ip, #0
00671a88  ef ff ff 1a                                      bne #0x671a4c
00671a8c  00 00 53 e3                                      cmp r3, #0
00671a90  ed ff ff 0a                                      beq #0x671a4c
00671a94  03 00 a0 e1                                      mov r0, r3
00671a98  05 10 a0 e1                                      mov r1, r5
00671a9c  00 30 93 e5                                      ldr r3, [r3]
00671aa0  0f e0 a0 e1                                      mov lr, pc
00671aa4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00671aa8  00 c0 a0 e1                                      mov ip, r0
00671aac  0c 00 a0 e1                                      mov r0, ip
00671ab0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00671ab4  18 c0 94 e5                                      ldr ip, [r4, #0x18]
00671ab8  00 00 5c e3                                      cmp ip, #0
00671abc  ed ff ff 0a                                      beq #0x671a78
00671ac0  0c 00 a0 e1                                      mov r0, ip
00671ac4  00 30 9c e5                                      ldr r3, [ip]
00671ac8  05 10 a0 e1                                      mov r1, r5
00671acc  0f e0 a0 e1                                      mov lr, pc
00671ad0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00671ad4  00 c0 a0 e1                                      mov ip, r0
00671ad8  e6 ff ff ea                                      b #0x671a78
00671adc  b4 00 80 e2                                      add r0, r0, #0xb4
00671ae0  6b ff ff eb                                      bl #0x671894
00671ae4  01 c0 a0 e3                                      mov ip, #1
00671ae8  d7 ff ff ea                                      b #0x671a4c

; FUNCTION 0x00671aec, declared_size=56, range_size=56, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDevice22postMouseEventFromUserERNS_6SEventEb
; demangled: glitch::IDevice::postMouseEventFromUser(glitch::SEvent&, bool)
; decoder-mode: arm
00671aec  70 00 2d e9                                      push {r4, r5, r6}
00671af0  10 c0 90 e5                                      ldr ip, [r0, #0x10]
00671af4  08 50 91 e5                                      ldr r5, [r1, #8]
00671af8  0c 60 91 e5                                      ldr r6, [r1, #0xc]
00671afc  c8 c0 9c e5                                      ldr ip, [ip, #0xc8]
00671b00  00 c0 9c e5                                      ldr ip, [ip]
00671b04  28 40 9c e5                                      ldr r4, [ip, #0x28]
00671b08  24 c0 9c e5                                      ldr ip, [ip, #0x24]
00671b0c  06 40 64 e0                                      rsb r4, r4, r6
00671b10  05 c0 6c e0                                      rsb ip, ip, r5
00671b14  0c 40 81 e5                                      str r4, [r1, #0xc]
00671b18  08 c0 81 e5                                      str ip, [r1, #8]
00671b1c  70 00 bd e8                                      pop {r4, r5, r6}
00671b20  b6 ff ff ea                                      b #0x671a00

; FUNCTION 0x00671b24, declared_size=180, range_size=180, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDevice3runEv
; demangled: glitch::IDevice::run()
; decoder-mode: arm
00671b24  70 40 2d e9                                      push {r4, r5, r6, lr}
00671b28  b4 c0 90 e5                                      ldr ip, [r0, #0xb4]
00671b2c  c4 30 90 e5                                      ldr r3, [r0, #0xc4]
00671b30  18 d0 4d e2                                      sub sp, sp, #0x18
00671b34  00 50 a0 e1                                      mov r5, r0
00671b38  0c 00 53 e1                                      cmp r3, ip
00671b3c  14 00 00 0a                                      beq #0x671b94
00671b40  0d 40 a0 e1                                      mov r4, sp
00671b44  0c e0 a0 e1                                      mov lr, ip
00671b48  04 60 a0 e1                                      mov r6, r4
00671b4c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00671b50  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
00671b54  bc 20 95 e5                                      ldr r2, [r5, #0xbc]
00671b58  03 00 9e e8                                      ldm lr, {r0, r1}
00671b5c  18 20 42 e2                                      sub r2, r2, #0x18
00671b60  02 00 5c e1                                      cmp ip, r2
00671b64  18 c0 8c 12                                      addne ip, ip, #0x18
00671b68  03 00 86 e8                                      stm r6, {r0, r1}
00671b6c  b4 c0 85 15                                      strne ip, [r5, #0xb4]
00671b70  0d 00 00 0a                                      beq #0x671bac
00671b74  05 00 a0 e1                                      mov r0, r5
00671b78  0d 10 a0 e1                                      mov r1, sp
00671b7c  00 20 a0 e3                                      mov r2, #0
00671b80  9e ff ff eb                                      bl #0x671a00
00671b84  b4 c0 95 e5                                      ldr ip, [r5, #0xb4]
00671b88  c4 30 95 e5                                      ldr r3, [r5, #0xc4]
00671b8c  0c 00 53 e1                                      cmp r3, ip
00671b90  eb ff ff 1a                                      bne #0x671b44
00671b94  05 00 a0 e1                                      mov r0, r5
00671b98  00 30 95 e5                                      ldr r3, [r5]
00671b9c  0f e0 a0 e1                                      mov lr, pc
00671ba0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00671ba4  18 d0 8d e2                                      add sp, sp, #0x18
00671ba8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00671bac  b8 00 95 e5                                      ldr r0, [r5, #0xb8]
00671bb0  26 7a f2 eb                                      bl #0x310450
00671bb4  c0 30 95 e5                                      ldr r3, [r5, #0xc0]
00671bb8  04 20 83 e2                                      add r2, r3, #4
00671bbc  c0 20 85 e5                                      str r2, [r5, #0xc0]
00671bc0  04 30 93 e5                                      ldr r3, [r3, #4]
00671bc4  78 20 83 e2                                      add r2, r3, #0x78
00671bc8  bc 20 85 e5                                      str r2, [r5, #0xbc]
00671bcc  b4 30 85 e5                                      str r3, [r5, #0xb4]
00671bd0  b8 30 85 e5                                      str r3, [r5, #0xb8]
00671bd4  e6 ff ff ea                                      b #0x671b74

; FUNCTION 0x00671c9c, declared_size=460, range_size=460, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDeviceD1Ev
; demangled: glitch::IDevice::~IDevice()
; decoder-mode: arm
00671c9c  70 40 2d e9                                      push {r4, r5, r6, lr}
00671ca0  ac 51 9f e5                                      ldr r5, [pc, #0x1ac]
00671ca4  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
00671ca8  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
00671cac  05 50 8f e0                                      add r5, pc, r5
00671cb0  03 30 95 e7                                      ldr r3, [r5, r3]
00671cb4  00 00 52 e3                                      cmp r2, #0
00671cb8  00 40 a0 e1                                      mov r4, r0
00671cbc  08 30 83 e2                                      add r3, r3, #8
00671cc0  00 30 80 e5                                      str r3, [r0]
00671cc4  03 00 00 0a                                      beq #0x671cd8
00671cc8  00 30 92 e5                                      ldr r3, [r2]
00671ccc  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00671cd0  00 00 82 e0                                      add r0, r2, r0
00671cd4  2a ae f2 eb                                      bl #0x31d584
00671cd8  08 00 94 e5                                      ldr r0, [r4, #8]
00671cdc  00 00 50 e3                                      cmp r0, #0
00671ce0  00 00 00 0a                                      beq #0x671ce8
00671ce4  26 ae f2 eb                                      bl #0x31d584
00671ce8  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00671cec  00 00 56 e3                                      cmp r6, #0
00671cf0  07 00 00 0a                                      beq #0x671d14
00671cf4  0c 00 86 e2                                      add r0, r6, #0xc
00671cf8  49 fe ff eb                                      bl #0x671624
00671cfc  00 00 96 e5                                      ldr r0, [r6]
00671d00  00 00 50 e3                                      cmp r0, #0
00671d04  00 00 00 0a                                      beq #0x671d0c
00671d08  d0 79 f2 eb                                      bl #0x310450
00671d0c  06 00 a0 e1                                      mov r0, r6
00671d10  66 71 f2 eb                                      bl #0x30e2b0
00671d14  18 00 94 e5                                      ldr r0, [r4, #0x18]
00671d18  00 00 50 e3                                      cmp r0, #0
00671d1c  00 00 00 0a                                      beq #0x671d24
00671d20  17 ae f2 eb                                      bl #0x31d584
00671d24  14 00 94 e5                                      ldr r0, [r4, #0x14]
00671d28  00 00 50 e3                                      cmp r0, #0
00671d2c  00 00 00 0a                                      beq #0x671d34
00671d30  13 ae f2 eb                                      bl #0x31d584
00671d34  10 00 94 e5                                      ldr r0, [r4, #0x10]
00671d38  00 00 50 e3                                      cmp r0, #0
00671d3c  00 00 00 0a                                      beq #0x671d44
00671d40  0f ae f2 eb                                      bl #0x31d584
00671d44  38 30 94 e5                                      ldr r3, [r4, #0x38]
00671d48  00 00 53 e3                                      cmp r3, #0
00671d4c  03 00 00 0a                                      beq #0x671d60
00671d50  00 20 93 e5                                      ldr r2, [r3]
00671d54  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00671d58  00 00 83 e0                                      add r0, r3, r0
00671d5c  08 ae f2 eb                                      bl #0x31d584
00671d60  24 00 94 e5                                      ldr r0, [r4, #0x24]
00671d64  00 00 50 e3                                      cmp r0, #0
00671d68  00 00 00 0a                                      beq #0x671d70
00671d6c  04 ae f2 eb                                      bl #0x31d584
00671d70  30 00 94 e5                                      ldr r0, [r4, #0x30]
00671d74  00 00 50 e3                                      cmp r0, #0
00671d78  00 00 00 0a                                      beq #0x671d80
00671d7c  00 ae f2 eb                                      bl #0x31d584
00671d80  00 60 a0 e3                                      mov r6, #0
00671d84  24 60 84 e5                                      str r6, [r4, #0x24]
00671d88  20 00 94 e5                                      ldr r0, [r4, #0x20]
00671d8c  fc ad f2 eb                                      bl #0x31d584
00671d90  7e bc 00 eb                                      bl #0x6a0f90
00671d94  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00671d98  06 00 50 e1                                      cmp r0, r6
00671d9c  02 00 00 0a                                      beq #0x671dac
00671da0  f7 ad f2 eb                                      bl #0x31d584
00671da4  06 00 50 e1                                      cmp r0, r6
00671da8  25 00 00 1a                                      bne #0x671e44
00671dac  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
00671db0  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
00671db4  b4 00 84 e2                                      add r0, r4, #0xb4
00671db8  bc 20 94 e5                                      ldr r2, [r4, #0xbc]
00671dbc  03 00 51 e1                                      cmp r1, r3
00671dc0  c0 c0 94 e5                                      ldr ip, [r4, #0xc0]
00671dc4  0b 00 00 0a                                      beq #0x671df8
00671dc8  18 30 83 e2                                      add r3, r3, #0x18
00671dcc  02 00 53 e1                                      cmp r3, r2
00671dd0  04 00 00 0a                                      beq #0x671de8
00671dd4  03 00 51 e1                                      cmp r1, r3
00671dd8  18 30 83 e2                                      add r3, r3, #0x18
00671ddc  05 00 00 0a                                      beq #0x671df8
00671de0  03 00 52 e1                                      cmp r2, r3
00671de4  fa ff ff 1a                                      bne #0x671dd4
00671de8  04 30 bc e5                                      ldr r3, [ip, #4]!
00671dec  03 00 51 e1                                      cmp r1, r3
00671df0  78 20 83 e2                                      add r2, r3, #0x78
00671df4  f3 ff ff 1a                                      bne #0x671dc8
00671df8  c3 fd ff eb                                      bl #0x67150c
00671dfc  58 30 9f e5                                      ldr r3, [pc, #0x58]
00671e00  44 00 94 e5                                      ldr r0, [r4, #0x44]
00671e04  03 30 95 e7                                      ldr r3, [r5, r3]
00671e08  00 00 50 e3                                      cmp r0, #0
00671e0c  08 30 83 e2                                      add r3, r3, #8
00671e10  3c 30 84 e5                                      str r3, [r4, #0x3c]
00671e14  00 00 00 0a                                      beq #0x671e1c
00671e18  8c 79 f2 eb                                      bl #0x310450
00671e1c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00671e20  34 00 94 e5                                      ldr r0, [r4, #0x34]
00671e24  03 30 95 e7                                      ldr r3, [r5, r3]
00671e28  00 00 50 e3                                      cmp r0, #0
00671e2c  08 30 83 e2                                      add r3, r3, #8
00671e30  3c 30 84 e5                                      str r3, [r4, #0x3c]
00671e34  00 00 00 0a                                      beq #0x671e3c
00671e38  d1 ad f2 eb                                      bl #0x31d584
00671e3c  04 00 a0 e1                                      mov r0, r4
00671e40  70 80 bd e8                                      pop {r4, r5, r6, pc}
00671e44  18 30 9f e5                                      ldr r3, [pc, #0x18]
00671e48  03 30 95 e7                                      ldr r3, [r5, r3]
00671e4c  00 60 83 e5                                      str r6, [r3]
00671e50  d5 ff ff ea                                      b #0x671dac
; mapping-symbol data/literal pool
00671e54  e4 2d 32 00 d8 17 00 00 4c 49 00 00 44 2b 00 00  .byte 0xe4, 0x2d, 0x32, 0x00, 0xd8, 0x17, 0x00, 0x00, 0x4c, 0x49, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00
00671e64  3c 1c 00 00                                      .byte 0x3c, 0x1c, 0x00, 0x00

; FUNCTION 0x00671e68, declared_size=28, range_size=28, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDeviceD0Ev
; demangled: glitch::IDevice::~IDevice()
; decoder-mode: arm
00671e68  10 40 2d e9                                      push {r4, lr}
00671e6c  00 40 a0 e1                                      mov r4, r0
00671e70  89 ff ff eb                                      bl #0x671c9c
00671e74  04 00 a0 e1                                      mov r0, r4
00671e78  0c 71 f2 eb                                      bl #0x30e2b0
00671e7c  04 00 a0 e1                                      mov r0, r4
00671e80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00671e84, declared_size=444, range_size=444, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDevice12checkVersionEPKc
; demangled: glitch::IDevice::checkVersion(char const*)
; decoder-mode: arm
00671e84  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00671e88  8c 41 9f e5                                      ldr r4, [pc, #0x18c]
00671e8c  8c 61 9f e5                                      ldr r6, [pc, #0x18c]
00671e90  8c 01 9f e5                                      ldr r0, [pc, #0x18c]
00671e94  04 40 8f e0                                      add r4, pc, r4
00671e98  06 30 94 e7                                      ldr r3, [r4, r6]
00671e9c  24 d0 4d e2                                      sub sp, sp, #0x24
00671ea0  00 00 8f e0                                      add r0, pc, r0
00671ea4  00 30 93 e5                                      ldr r3, [r3]
00671ea8  01 70 a0 e1                                      mov r7, r1
00671eac  1c 30 8d e5                                      str r3, [sp, #0x1c]
00671eb0  19 71 f2 eb                                      bl #0x30e31c
00671eb4  00 00 50 e3                                      cmp r0, #0
00671eb8  01 00 a0 03                                      moveq r0, #1
00671ebc  35 00 00 0a                                      beq #0x671f98
00671ec0  04 50 8d e2                                      add r5, sp, #4
00671ec4  05 00 a0 e1                                      mov r0, r5
00671ec8  10 10 a0 e3                                      mov r1, #0x10
00671ecc  14 50 8d e5                                      str r5, [sp, #0x14]
00671ed0  18 50 8d e5                                      str r5, [sp, #0x18]
00671ed4  b3 ba f2 eb                                      bl #0x3209a8
00671ed8  14 30 9d e5                                      ldr r3, [sp, #0x14]
00671edc  00 20 a0 e3                                      mov r2, #0
00671ee0  00 20 c3 e5                                      strb r2, [r3]
00671ee4  18 00 9d e5                                      ldr r0, [sp, #0x18]
00671ee8  14 20 9d e5                                      ldr r2, [sp, #0x14]
00671eec  02 20 60 e0                                      rsb r2, r0, r2
00671ef0  32 00 52 e3                                      cmp r2, #0x32
00671ef4  2e 00 00 8a                                      bhi #0x671fb4
00671ef8  00 00 52 e3                                      cmp r2, #0
00671efc  02 10 a0 01                                      moveq r1, r2
00671f00  3d 00 00 1a                                      bne #0x671ffc
00671f04  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
00671f08  05 00 a0 e1                                      mov r0, r5
00671f0c  02 20 8f e0                                      add r2, pc, r2
00671f10  02 10 81 e0                                      add r1, r1, r2
00671f14  33 20 82 e2                                      add r2, r2, #0x33
00671f18  cb ba f2 eb                                      bl #0x320a4c
00671f1c  08 11 9f e5                                      ldr r1, [pc, #0x108]
00671f20  05 00 a0 e1                                      mov r0, r5
00671f24  01 10 8f e0                                      add r1, pc, r1
00671f28  07 20 81 e2                                      add r2, r1, #7
00671f2c  c6 ba f2 eb                                      bl #0x320a4c
00671f30  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
00671f34  05 00 a0 e1                                      mov r0, r5
00671f38  01 10 8f e0                                      add r1, pc, r1
00671f3c  40 20 81 e2                                      add r2, r1, #0x40
00671f40  c1 ba f2 eb                                      bl #0x320a4c
00671f44  07 00 a0 e1                                      mov r0, r7
00671f48  c1 6f f2 eb                                      bl #0x30de54
00671f4c  07 10 a0 e1                                      mov r1, r7
00671f50  00 20 87 e0                                      add r2, r7, r0
00671f54  05 00 a0 e1                                      mov r0, r5
00671f58  bb ba f2 eb                                      bl #0x320a4c
00671f5c  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
00671f60  05 00 a0 e1                                      mov r0, r5
00671f64  01 10 8f e0                                      add r1, pc, r1
00671f68  1b 20 81 e2                                      add r2, r1, #0x1b
00671f6c  b6 ba f2 eb                                      bl #0x320a4c
00671f70  18 00 9d e5                                      ldr r0, [sp, #0x18]
00671f74  02 10 a0 e3                                      mov r1, #2
00671f78  48 63 fe eb                                      bl #0x60aca0
00671f7c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00671f80  05 00 50 e1                                      cmp r0, r5
00671f84  1a 00 00 0a                                      beq #0x671ff4
00671f88  00 00 50 e3                                      cmp r0, #0
00671f8c  18 00 00 0a                                      beq #0x671ff4
00671f90  2e 79 f2 eb                                      bl #0x310450
00671f94  00 00 a0 e3                                      mov r0, #0
00671f98  06 30 94 e7                                      ldr r3, [r4, r6]
00671f9c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00671fa0  00 30 93 e5                                      ldr r3, [r3]
00671fa4  03 00 52 e1                                      cmp r2, r3
00671fa8  1a 00 00 1a                                      bne #0x672018
00671fac  24 d0 8d e2                                      add sp, sp, #0x24
00671fb0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00671fb4  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00671fb8  33 20 a0 e3                                      mov r2, #0x33
00671fbc  01 10 8f e0                                      add r1, pc, r1
00671fc0  28 72 f2 eb                                      bl #0x30e868
00671fc4  18 20 9d e5                                      ldr r2, [sp, #0x18]
00671fc8  14 30 9d e5                                      ldr r3, [sp, #0x14]
00671fcc  33 10 82 e2                                      add r1, r2, #0x33
00671fd0  03 00 51 e1                                      cmp r1, r3
00671fd4  d0 ff ff 0a                                      beq #0x671f1c
00671fd8  00 00 d3 e5                                      ldrb r0, [r3]
00671fdc  01 30 63 e0                                      rsb r3, r3, r1
00671fe0  33 00 c2 e5                                      strb r0, [r2, #0x33]
00671fe4  14 10 9d e5                                      ldr r1, [sp, #0x14]
00671fe8  03 30 81 e0                                      add r3, r1, r3
00671fec  14 30 8d e5                                      str r3, [sp, #0x14]
00671ff0  c9 ff ff ea                                      b #0x671f1c
00671ff4  00 00 a0 e3                                      mov r0, #0
00671ff8  e6 ff ff ea                                      b #0x671f98
00671ffc  38 10 9f e5                                      ldr r1, [pc, #0x38]
00672000  01 10 8f e0                                      add r1, pc, r1
00672004  17 72 f2 eb                                      bl #0x30e868
00672008  14 10 9d e5                                      ldr r1, [sp, #0x14]
0067200c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00672010  01 10 63 e0                                      rsb r1, r3, r1
00672014  ba ff ff ea                                      b #0x671f04
00672018  bc 70 f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0067201c  fc 2b 32 00 ac 40 00 00 a0 bd 26 00 bc 39 27 00  .byte 0xfc, 0x2b, 0x32, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa0, 0xbd, 0x26, 0x00, 0xbc, 0x39, 0x27, 0x00
0067202c  1c bd 26 00 c8 39 27 00 e4 39 27 00 0c 39 27 00  .byte 0x1c, 0xbd, 0x26, 0x00, 0xc8, 0x39, 0x27, 0x00, 0xe4, 0x39, 0x27, 0x00, 0x0c, 0x39, 0x27, 0x00
0067203c  c8 38 27 00                                      .byte 0xc8, 0x38, 0x27, 0x00

; FUNCTION 0x00672040, declared_size=588, range_size=588, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDeviceC1ERKNS_19SCreationParametersE
; demangled: glitch::IDevice::IDevice(glitch::SCreationParameters const&)
; decoder-mode: arm
00672040  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00672044  24 62 9f e5                                      ldr r6, [pc, #0x224]
00672048  24 32 9f e5                                      ldr r3, [pc, #0x224]
0067204c  24 82 9f e5                                      ldr r8, [pc, #0x224]
00672050  06 60 8f e0                                      add r6, pc, r6
00672054  03 30 96 e7                                      ldr r3, [r6, r3]
00672058  08 20 96 e7                                      ldr r2, [r6, r8]
0067205c  00 50 a0 e3                                      mov r5, #0
00672060  08 30 83 e2                                      add r3, r3, #8
00672064  01 a0 a0 e3                                      mov sl, #1
00672068  00 20 92 e5                                      ldr r2, [r2]
0067206c  10 50 80 e5                                      str r5, [r0, #0x10]
00672070  14 50 80 e5                                      str r5, [r0, #0x14]
00672074  18 50 80 e5                                      str r5, [r0, #0x18]
00672078  1c 50 80 e5                                      str r5, [r0, #0x1c]
0067207c  20 50 80 e5                                      str r5, [r0, #0x20]
00672080  24 50 80 e5                                      str r5, [r0, #0x24]
00672084  08 04 80 e8                                      stm r0, {r3, sl}
00672088  28 30 91 e5                                      ldr r3, [r1, #0x28]
0067208c  00 40 a0 e1                                      mov r4, r0
00672090  20 d0 4d e2                                      sub sp, sp, #0x20
00672094  28 30 80 e5                                      str r3, [r0, #0x28]
00672098  2c 50 80 e5                                      str r5, [r0, #0x2c]
0067209c  30 50 80 e5                                      str r5, [r0, #0x30]
006720a0  34 50 80 e5                                      str r5, [r0, #0x34]
006720a4  38 50 80 e5                                      str r5, [r0, #0x38]
006720a8  01 70 a0 e1                                      mov r7, r1
006720ac  3c 00 80 e2                                      add r0, r0, #0x3c
006720b0  1c 20 8d e5                                      str r2, [sp, #0x1c]
006720b4  94 a2 01 eb                                      bl #0x6dab0c
006720b8  58 20 a0 e3                                      mov r2, #0x58
006720bc  07 10 a0 e1                                      mov r1, r7
006720c0  5c 00 84 e2                                      add r0, r4, #0x5c
006720c4  e7 71 f2 eb                                      bl #0x30e868
006720c8  b4 50 84 e5                                      str r5, [r4, #0xb4]
006720cc  b8 50 84 e5                                      str r5, [r4, #0xb8]
006720d0  bc 50 84 e5                                      str r5, [r4, #0xbc]
006720d4  c0 50 84 e5                                      str r5, [r4, #0xc0]
006720d8  c4 50 84 e5                                      str r5, [r4, #0xc4]
006720dc  c8 50 84 e5                                      str r5, [r4, #0xc8]
006720e0  cc 50 84 e5                                      str r5, [r4, #0xcc]
006720e4  d0 50 84 e5                                      str r5, [r4, #0xd0]
006720e8  d4 50 84 e5                                      str r5, [r4, #0xd4]
006720ec  d8 50 84 e5                                      str r5, [r4, #0xd8]
006720f0  b4 00 84 e2                                      add r0, r4, #0xb4
006720f4  b7 fe ff eb                                      bl #0x671bd8
006720f8  c9 bb 00 eb                                      bl #0x6a1024
006720fc  05 10 a0 e1                                      mov r1, r5
00672100  2c 00 a0 e3                                      mov r0, #0x2c
00672104  28 08 fb eb                                      bl #0x5341ac
00672108  04 10 a0 e1                                      mov r1, r4
0067210c  00 90 a0 e1                                      mov sb, r0
00672110  ff 95 ff eb                                      bl #0x657914
00672114  05 10 a0 e1                                      mov r1, r5
00672118  08 90 84 e5                                      str sb, [r4, #8]
0067211c  20 00 a0 e3                                      mov r0, #0x20
00672120  21 08 fb eb                                      bl #0x5341ac
00672124  00 90 a0 e1                                      mov sb, r0
00672128  b8 64 fe eb                                      bl #0x60b410
0067212c  05 10 a0 e1                                      mov r1, r5
00672130  0c 90 84 e5                                      str sb, [r4, #0xc]
00672134  08 00 a0 e3                                      mov r0, #8
00672138  1b 08 fb eb                                      bl #0x5341ac
0067213c  38 31 9f e5                                      ldr r3, [pc, #0x138]
00672140  38 51 9f e5                                      ldr r5, [pc, #0x138]
00672144  04 a0 80 e5                                      str sl, [r0, #4]
00672148  03 30 96 e7                                      ldr r3, [r6, r3]
0067214c  00 90 a0 e1                                      mov sb, r0
00672150  08 30 83 e2                                      add r3, r3, #8
00672154  00 30 80 e5                                      str r3, [r0]
00672158  f9 63 fe eb                                      bl #0x60b144
0067215c  05 20 96 e7                                      ldr r2, [r6, r5]
00672160  20 90 84 e5                                      str sb, [r4, #0x20]
00672164  00 30 92 e5                                      ldr r3, [r2]
00672168  00 00 53 e3                                      cmp r3, #0
0067216c  06 00 00 0a                                      beq #0x67218c
00672170  04 10 93 e5                                      ldr r1, [r3, #4]
00672174  0a 10 81 e0                                      add r1, r1, sl
00672178  04 10 83 e5                                      str r1, [r3, #4]
0067217c  00 00 92 e5                                      ldr r0, [r2]
00672180  28 10 94 e5                                      ldr r1, [r4, #0x28]
00672184  2c 00 84 e5                                      str r0, [r4, #0x2c]
00672188  eb b9 00 eb                                      bl #0x6a093c
0067218c  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00672190  05 30 96 e7                                      ldr r3, [r6, r5]
00672194  00 20 83 e5                                      str r2, [r3]
00672198  92 07 fb eb                                      bl #0x533fe8
0067219c  00 30 90 e5                                      ldr r3, [r0]
006721a0  00 10 a0 e1                                      mov r1, r0
006721a4  0d 00 a0 e1                                      mov r0, sp
006721a8  0f e0 a0 e1                                      mov lr, pc
006721ac  08 f0 93 e5                                      ldr pc, [r3, #8]
006721b0  00 30 9d e5                                      ldr r3, [sp]
006721b4  00 00 53 e3                                      cmp r3, #0
006721b8  04 20 93 15                                      ldrne r2, [r3, #4]
006721bc  01 20 82 12                                      addne r2, r2, #1
006721c0  04 20 83 15                                      strne r2, [r3, #4]
006721c4  34 00 94 e5                                      ldr r0, [r4, #0x34]
006721c8  34 30 84 e5                                      str r3, [r4, #0x34]
006721cc  00 00 50 e3                                      cmp r0, #0
006721d0  00 00 00 0a                                      beq #0x6721d8
006721d4  ea ac f2 eb                                      bl #0x31d584
006721d8  00 00 9d e5                                      ldr r0, [sp]
006721dc  00 00 50 e3                                      cmp r0, #0
006721e0  00 00 00 0a                                      beq #0x6721e8
006721e4  e6 ac f2 eb                                      bl #0x31d584
006721e8  94 10 9f e5                                      ldr r1, [pc, #0x94]
006721ec  04 50 8d e2                                      add r5, sp, #4
006721f0  05 00 a0 e1                                      mov r0, r5
006721f4  01 10 8f e0                                      add r1, pc, r1
006721f8  16 10 81 e2                                      add r1, r1, #0x16
006721fc  14 50 8d e5                                      str r5, [sp, #0x14]
00672200  18 50 8d e5                                      str r5, [sp, #0x18]
00672204  90 fe ff eb                                      bl #0x671c4c
00672208  78 10 9f e5                                      ldr r1, [pc, #0x78]
0067220c  05 00 a0 e1                                      mov r0, r5
00672210  01 10 8f e0                                      add r1, pc, r1
00672214  07 20 81 e2                                      add r2, r1, #7
00672218  0b ba f2 eb                                      bl #0x320a4c
0067221c  01 10 a0 e3                                      mov r1, #1
00672220  18 00 9d e5                                      ldr r0, [sp, #0x18]
00672224  9d 62 fe eb                                      bl #0x60aca0
00672228  04 00 a0 e1                                      mov r0, r4
0067222c  3c 10 97 e5                                      ldr r1, [r7, #0x3c]
00672230  13 ff ff eb                                      bl #0x671e84
00672234  18 00 9d e5                                      ldr r0, [sp, #0x18]
00672238  05 00 50 e1                                      cmp r0, r5
0067223c  02 00 00 0a                                      beq #0x67224c
00672240  00 00 50 e3                                      cmp r0, #0
00672244  00 00 00 0a                                      beq #0x67224c
00672248  80 78 f2 eb                                      bl #0x310450
0067224c  08 30 96 e7                                      ldr r3, [r6, r8]
00672250  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00672254  04 00 a0 e1                                      mov r0, r4
00672258  00 30 93 e5                                      ldr r3, [r3]
0067225c  03 00 52 e1                                      cmp r2, r3
00672260  01 00 00 1a                                      bne #0x67226c
00672264  20 d0 8d e2                                      add sp, sp, #0x20
00672268  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0067226c  27 70 f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00672270  40 2a 32 00 d8 17 00 00 ac 40 00 00 2c 1a 00 00  .byte 0x40, 0x2a, 0x32, 0x00, 0xd8, 0x17, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x2c, 0x1a, 0x00, 0x00
00672280  3c 1c 00 00 bc 36 27 00 30 ba 26 00              .byte 0x3c, 0x1c, 0x00, 0x00, 0xbc, 0x36, 0x27, 0x00, 0x30, 0xba, 0x26, 0x00

; FUNCTION 0x0067228c, declared_size=588, range_size=588, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDeviceC2ERKNS_19SCreationParametersE
; demangled: glitch::IDevice::IDevice(glitch::SCreationParameters const&)
; decoder-mode: arm
0067228c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00672290  24 62 9f e5                                      ldr r6, [pc, #0x224]
00672294  24 32 9f e5                                      ldr r3, [pc, #0x224]
00672298  24 82 9f e5                                      ldr r8, [pc, #0x224]
0067229c  06 60 8f e0                                      add r6, pc, r6
006722a0  03 30 96 e7                                      ldr r3, [r6, r3]
006722a4  08 20 96 e7                                      ldr r2, [r6, r8]
006722a8  00 50 a0 e3                                      mov r5, #0
006722ac  08 30 83 e2                                      add r3, r3, #8
006722b0  01 a0 a0 e3                                      mov sl, #1
006722b4  00 20 92 e5                                      ldr r2, [r2]
006722b8  10 50 80 e5                                      str r5, [r0, #0x10]
006722bc  14 50 80 e5                                      str r5, [r0, #0x14]
006722c0  18 50 80 e5                                      str r5, [r0, #0x18]
006722c4  1c 50 80 e5                                      str r5, [r0, #0x1c]
006722c8  20 50 80 e5                                      str r5, [r0, #0x20]
006722cc  24 50 80 e5                                      str r5, [r0, #0x24]
006722d0  08 04 80 e8                                      stm r0, {r3, sl}
006722d4  28 30 91 e5                                      ldr r3, [r1, #0x28]
006722d8  00 40 a0 e1                                      mov r4, r0
006722dc  20 d0 4d e2                                      sub sp, sp, #0x20
006722e0  28 30 80 e5                                      str r3, [r0, #0x28]
006722e4  2c 50 80 e5                                      str r5, [r0, #0x2c]
006722e8  30 50 80 e5                                      str r5, [r0, #0x30]
006722ec  34 50 80 e5                                      str r5, [r0, #0x34]
006722f0  38 50 80 e5                                      str r5, [r0, #0x38]
006722f4  01 70 a0 e1                                      mov r7, r1
006722f8  3c 00 80 e2                                      add r0, r0, #0x3c
006722fc  1c 20 8d e5                                      str r2, [sp, #0x1c]
00672300  01 a2 01 eb                                      bl #0x6dab0c
00672304  58 20 a0 e3                                      mov r2, #0x58
00672308  07 10 a0 e1                                      mov r1, r7
0067230c  5c 00 84 e2                                      add r0, r4, #0x5c
00672310  54 71 f2 eb                                      bl #0x30e868
00672314  b4 50 84 e5                                      str r5, [r4, #0xb4]
00672318  b8 50 84 e5                                      str r5, [r4, #0xb8]
0067231c  bc 50 84 e5                                      str r5, [r4, #0xbc]
00672320  c0 50 84 e5                                      str r5, [r4, #0xc0]
00672324  c4 50 84 e5                                      str r5, [r4, #0xc4]
00672328  c8 50 84 e5                                      str r5, [r4, #0xc8]
0067232c  cc 50 84 e5                                      str r5, [r4, #0xcc]
00672330  d0 50 84 e5                                      str r5, [r4, #0xd0]
00672334  d4 50 84 e5                                      str r5, [r4, #0xd4]
00672338  d8 50 84 e5                                      str r5, [r4, #0xd8]
0067233c  b4 00 84 e2                                      add r0, r4, #0xb4
00672340  24 fe ff eb                                      bl #0x671bd8
00672344  36 bb 00 eb                                      bl #0x6a1024
00672348  05 10 a0 e1                                      mov r1, r5
0067234c  2c 00 a0 e3                                      mov r0, #0x2c
00672350  95 07 fb eb                                      bl #0x5341ac
00672354  04 10 a0 e1                                      mov r1, r4
00672358  00 90 a0 e1                                      mov sb, r0
0067235c  6c 95 ff eb                                      bl #0x657914
00672360  05 10 a0 e1                                      mov r1, r5
00672364  08 90 84 e5                                      str sb, [r4, #8]
00672368  20 00 a0 e3                                      mov r0, #0x20
0067236c  8e 07 fb eb                                      bl #0x5341ac
00672370  00 90 a0 e1                                      mov sb, r0
00672374  25 64 fe eb                                      bl #0x60b410
00672378  05 10 a0 e1                                      mov r1, r5
0067237c  0c 90 84 e5                                      str sb, [r4, #0xc]
00672380  08 00 a0 e3                                      mov r0, #8
00672384  88 07 fb eb                                      bl #0x5341ac
00672388  38 31 9f e5                                      ldr r3, [pc, #0x138]
0067238c  38 51 9f e5                                      ldr r5, [pc, #0x138]
00672390  04 a0 80 e5                                      str sl, [r0, #4]
00672394  03 30 96 e7                                      ldr r3, [r6, r3]
00672398  00 90 a0 e1                                      mov sb, r0
0067239c  08 30 83 e2                                      add r3, r3, #8
006723a0  00 30 80 e5                                      str r3, [r0]
006723a4  66 63 fe eb                                      bl #0x60b144
006723a8  05 20 96 e7                                      ldr r2, [r6, r5]
006723ac  20 90 84 e5                                      str sb, [r4, #0x20]
006723b0  00 30 92 e5                                      ldr r3, [r2]
006723b4  00 00 53 e3                                      cmp r3, #0
006723b8  06 00 00 0a                                      beq #0x6723d8
006723bc  04 10 93 e5                                      ldr r1, [r3, #4]
006723c0  0a 10 81 e0                                      add r1, r1, sl
006723c4  04 10 83 e5                                      str r1, [r3, #4]
006723c8  00 00 92 e5                                      ldr r0, [r2]
006723cc  28 10 94 e5                                      ldr r1, [r4, #0x28]
006723d0  2c 00 84 e5                                      str r0, [r4, #0x2c]
006723d4  58 b9 00 eb                                      bl #0x6a093c
006723d8  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
006723dc  05 30 96 e7                                      ldr r3, [r6, r5]
006723e0  00 20 83 e5                                      str r2, [r3]
006723e4  ff 06 fb eb                                      bl #0x533fe8
006723e8  00 30 90 e5                                      ldr r3, [r0]
006723ec  00 10 a0 e1                                      mov r1, r0
006723f0  0d 00 a0 e1                                      mov r0, sp
006723f4  0f e0 a0 e1                                      mov lr, pc
006723f8  08 f0 93 e5                                      ldr pc, [r3, #8]
006723fc  00 30 9d e5                                      ldr r3, [sp]
00672400  00 00 53 e3                                      cmp r3, #0
00672404  04 20 93 15                                      ldrne r2, [r3, #4]
00672408  01 20 82 12                                      addne r2, r2, #1
0067240c  04 20 83 15                                      strne r2, [r3, #4]
00672410  34 00 94 e5                                      ldr r0, [r4, #0x34]
00672414  34 30 84 e5                                      str r3, [r4, #0x34]
00672418  00 00 50 e3                                      cmp r0, #0
0067241c  00 00 00 0a                                      beq #0x672424
00672420  57 ac f2 eb                                      bl #0x31d584
00672424  00 00 9d e5                                      ldr r0, [sp]
00672428  00 00 50 e3                                      cmp r0, #0
0067242c  00 00 00 0a                                      beq #0x672434
00672430  53 ac f2 eb                                      bl #0x31d584
00672434  94 10 9f e5                                      ldr r1, [pc, #0x94]
00672438  04 50 8d e2                                      add r5, sp, #4
0067243c  05 00 a0 e1                                      mov r0, r5
00672440  01 10 8f e0                                      add r1, pc, r1
00672444  16 10 81 e2                                      add r1, r1, #0x16
00672448  14 50 8d e5                                      str r5, [sp, #0x14]
0067244c  18 50 8d e5                                      str r5, [sp, #0x18]
00672450  fd fd ff eb                                      bl #0x671c4c
00672454  78 10 9f e5                                      ldr r1, [pc, #0x78]
00672458  05 00 a0 e1                                      mov r0, r5
0067245c  01 10 8f e0                                      add r1, pc, r1
00672460  07 20 81 e2                                      add r2, r1, #7
00672464  78 b9 f2 eb                                      bl #0x320a4c
00672468  01 10 a0 e3                                      mov r1, #1
0067246c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00672470  0a 62 fe eb                                      bl #0x60aca0
00672474  04 00 a0 e1                                      mov r0, r4
00672478  3c 10 97 e5                                      ldr r1, [r7, #0x3c]
0067247c  80 fe ff eb                                      bl #0x671e84
00672480  18 00 9d e5                                      ldr r0, [sp, #0x18]
00672484  05 00 50 e1                                      cmp r0, r5
00672488  02 00 00 0a                                      beq #0x672498
0067248c  00 00 50 e3                                      cmp r0, #0
00672490  00 00 00 0a                                      beq #0x672498
00672494  ed 77 f2 eb                                      bl #0x310450
00672498  08 30 96 e7                                      ldr r3, [r6, r8]
0067249c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006724a0  04 00 a0 e1                                      mov r0, r4
006724a4  00 30 93 e5                                      ldr r3, [r3]
006724a8  03 00 52 e1                                      cmp r2, r3
006724ac  01 00 00 1a                                      bne #0x6724b8
006724b0  20 d0 8d e2                                      add sp, sp, #0x20
006724b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006724b8  94 6f f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006724bc  f4 27 32 00 d8 17 00 00 ac 40 00 00 2c 1a 00 00  .byte 0xf4, 0x27, 0x32, 0x00, 0xd8, 0x17, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x2c, 0x1a, 0x00, 0x00
006724cc  3c 1c 00 00 70 34 27 00 e4 b7 26 00              .byte 0x3c, 0x1c, 0x00, 0x00, 0x70, 0x34, 0x27, 0x00, 0xe4, 0xb7, 0x26, 0x00
