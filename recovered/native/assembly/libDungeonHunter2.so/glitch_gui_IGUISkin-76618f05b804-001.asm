; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0054a9f8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUISkin
; alias: _ZNK6glitch3gui8IGUISkin7getTypeEv
; demangled: glitch::gui::IGUISkin::getType() const
; decoder-mode: arm
0054a9f8  03 00 a0 e3                                      mov r0, #3
0054a9fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054aa00, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::IGUISkin
; alias: _ZN6glitch3gui8IGUISkinD1Ev
; demangled: glitch::gui::IGUISkin::~IGUISkin()
; decoder-mode: arm
0054aa00  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054aa04, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUISkin
; alias: _ZTv0_n24_N6glitch3gui8IGUISkinD1Ev
; demangled: virtual thunk to glitch::gui::IGUISkin::~IGUISkin()
; decoder-mode: arm
0054aa04  00 30 90 e5                                      ldr r3, [r0]
0054aa08  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0054aa0c  03 00 80 e0                                      add r0, r0, r3
0054aa10  fa ff ff ea                                      b #0x54aa00

; FUNCTION 0x0054aa14, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUISkin
; alias: _ZTv0_n12_N6glitch3gui8IGUISkinD1Ev
; demangled: virtual thunk to glitch::gui::IGUISkin::~IGUISkin()
; decoder-mode: arm
0054aa14  00 30 90 e5                                      ldr r3, [r0]
0054aa18  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054aa1c  03 00 80 e0                                      add r0, r0, r3
0054aa20  f6 ff ff ea                                      b #0x54aa00

; FUNCTION 0x0054ad6c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::gui::IGUISkin
; alias: _ZN6glitch3gui8IGUISkinD0Ev
; demangled: glitch::gui::IGUISkin::~IGUISkin()
; decoder-mode: arm
0054ad6c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0054ad70  24 20 9f e5                                      ldr r2, [pc, #0x24]
0054ad74  10 40 2d e9                                      push {r4, lr}
0054ad78  03 30 8f e0                                      add r3, pc, r3
0054ad7c  02 20 93 e7                                      ldr r2, [r3, r2]
0054ad80  00 40 a0 e1                                      mov r4, r0
0054ad84  1c 20 82 e2                                      add r2, r2, #0x1c
0054ad88  00 20 80 e5                                      str r2, [r0]
0054ad8c  47 0d f7 eb                                      bl #0x30e2b0
0054ad90  04 00 a0 e1                                      mov r0, r4
0054ad94  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0054ad98  18 9d 44 00 18 1d 00 00                          .byte 0x18, 0x9d, 0x44, 0x00, 0x18, 0x1d, 0x00, 0x00

; FUNCTION 0x0054ada0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUISkin
; alias: _ZTv0_n24_N6glitch3gui8IGUISkinD0Ev
; demangled: virtual thunk to glitch::gui::IGUISkin::~IGUISkin()
; decoder-mode: arm
0054ada0  00 30 90 e5                                      ldr r3, [r0]
0054ada4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0054ada8  03 00 80 e0                                      add r0, r0, r3
0054adac  ee ff ff ea                                      b #0x54ad6c

; FUNCTION 0x0054adb0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUISkin
; alias: _ZTv0_n12_N6glitch3gui8IGUISkinD0Ev
; demangled: virtual thunk to glitch::gui::IGUISkin::~IGUISkin()
; decoder-mode: arm
0054adb0  00 30 90 e5                                      ldr r3, [r0]
0054adb4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054adb8  03 00 80 e0                                      add r0, r0, r3
0054adbc  ea ff ff ea                                      b #0x54ad6c
