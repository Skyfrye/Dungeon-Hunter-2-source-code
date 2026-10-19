; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00666be4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ITimeController
; alias: _ZN6glitch5scene15ITimeController6updateEi
; demangled: glitch::scene::ITimeController::update(int)
; decoder-mode: arm
00666be4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666be8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ITimeController
; alias: _ZN6glitch5scene15ITimeControllerD1Ev
; demangled: glitch::scene::ITimeController::~ITimeController()
; decoder-mode: arm
00666be8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666bec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ITimeController
; alias: _ZTv0_n12_N6glitch5scene15ITimeControllerD1Ev
; demangled: virtual thunk to glitch::scene::ITimeController::~ITimeController()
; decoder-mode: arm
00666bec  00 30 90 e5                                      ldr r3, [r0]
00666bf0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00666bf4  03 00 80 e0                                      add r0, r0, r3
00666bf8  fa ff ff ea                                      b #0x666be8

; FUNCTION 0x00667020, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::ITimeController
; alias: _ZN6glitch5scene15ITimeControllerD0Ev
; demangled: glitch::scene::ITimeController::~ITimeController()
; decoder-mode: arm
00667020  10 40 2d e9                                      push {r4, lr}
00667024  00 40 a0 e1                                      mov r4, r0
00667028  a0 9c f2 eb                                      bl #0x30e2b0
0066702c  04 00 a0 e1                                      mov r0, r4
00667030  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00667034, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ITimeController
; alias: _ZTv0_n12_N6glitch5scene15ITimeControllerD0Ev
; demangled: virtual thunk to glitch::scene::ITimeController::~ITimeController()
; decoder-mode: arm
00667034  00 30 90 e5                                      ldr r3, [r0]
00667038  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0066703c  03 00 80 e0                                      add r0, r0, r3
00667040  f6 ff ff ea                                      b #0x667020
