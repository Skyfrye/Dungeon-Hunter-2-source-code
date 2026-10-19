; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00666bfc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ITimelineController
; alias: _ZN6glitch5scene19ITimelineController6jumpToEi
; demangled: glitch::scene::ITimelineController::jumpTo(int)
; decoder-mode: arm
00666bfc  04 10 80 e5                                      str r1, [r0, #4]
00666c00  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666c04, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ITimelineController
; alias: _ZNK6glitch5scene19ITimelineController7getLoopEv
; demangled: glitch::scene::ITimelineController::getLoop() const
; decoder-mode: arm
00666c04  00 00 a0 e3                                      mov r0, #0
00666c08  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666c0c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ITimelineController
; alias: _ZN6glitch5scene19ITimelineController8setScaleEf
; demangled: glitch::scene::ITimelineController::setScale(float)
; decoder-mode: arm
00666c0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666c10, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ITimelineController
; alias: _ZNK6glitch5scene19ITimelineController8getScaleEv
; demangled: glitch::scene::ITimelineController::getScale() const
; decoder-mode: arm
00666c10  fe 05 a0 e3                                      mov r0, #0x3f800000
00666c14  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666da4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ITimelineController
; alias: _ZN6glitch5scene19ITimelineControllerD1Ev
; demangled: glitch::scene::ITimelineController::~ITimelineController()
; decoder-mode: arm
00666da4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666da8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ITimelineController
; alias: _ZTv0_n12_N6glitch5scene19ITimelineControllerD1Ev
; demangled: virtual thunk to glitch::scene::ITimelineController::~ITimelineController()
; decoder-mode: arm
00666da8  00 30 90 e5                                      ldr r3, [r0]
00666dac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00666db0  03 00 80 e0                                      add r0, r0, r3
00666db4  fa ff ff ea                                      b #0x666da4

; FUNCTION 0x00667044, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::ITimelineController
; alias: _ZN6glitch5scene19ITimelineControllerD0Ev
; demangled: glitch::scene::ITimelineController::~ITimelineController()
; decoder-mode: arm
00667044  24 30 9f e5                                      ldr r3, [pc, #0x24]
00667048  24 20 9f e5                                      ldr r2, [pc, #0x24]
0066704c  10 40 2d e9                                      push {r4, lr}
00667050  03 30 8f e0                                      add r3, pc, r3
00667054  02 20 93 e7                                      ldr r2, [r3, r2]
00667058  00 40 a0 e1                                      mov r4, r0
0066705c  0c 20 82 e2                                      add r2, r2, #0xc
00667060  00 20 80 e5                                      str r2, [r0]
00667064  91 9c f2 eb                                      bl #0x30e2b0
00667068  04 00 a0 e1                                      mov r0, r4
0066706c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00667070  40 da 32 00 08 3e 00 00                          .byte 0x40, 0xda, 0x32, 0x00, 0x08, 0x3e, 0x00, 0x00

; FUNCTION 0x00667078, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ITimelineController
; alias: _ZTv0_n12_N6glitch5scene19ITimelineControllerD0Ev
; demangled: virtual thunk to glitch::scene::ITimelineController::~ITimelineController()
; decoder-mode: arm
00667078  00 30 90 e5                                      ldr r3, [r0]
0066707c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00667080  03 00 80 e0                                      add r0, r0, r3
00667084  ee ff ff ea                                      b #0x667044
