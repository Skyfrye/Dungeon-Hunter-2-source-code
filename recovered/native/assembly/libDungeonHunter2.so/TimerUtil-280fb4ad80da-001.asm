; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00317a8c, declared_size=20, range_size=20, mode=arm
; class-group: TimerUtil
; alias: _ZN9TimerUtilC2Ev
; demangled: TimerUtil::TimerUtil()
; decoder-mode: arm
00317a8c  01 20 a0 e3                                      mov r2, #1
00317a90  04 20 c0 e5                                      strb r2, [r0, #4]
00317a94  00 20 a0 e3                                      mov r2, #0
00317a98  00 20 80 e5                                      str r2, [r0]
00317a9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00317aa0, declared_size=20, range_size=20, mode=arm
; class-group: TimerUtil
; alias: _ZN9TimerUtilC1Ev
; demangled: TimerUtil::TimerUtil()
; decoder-mode: arm
00317aa0  01 20 a0 e3                                      mov r2, #1
00317aa4  04 20 c0 e5                                      strb r2, [r0, #4]
00317aa8  00 20 a0 e3                                      mov r2, #0
00317aac  00 20 80 e5                                      str r2, [r0]
00317ab0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00317ab4, declared_size=16, range_size=16, mode=arm
; class-group: TimerUtil
; alias: _ZN9TimerUtil5StartEj
; demangled: TimerUtil::Start(unsigned int)
; decoder-mode: arm
00317ab4  00 30 a0 e3                                      mov r3, #0
00317ab8  04 30 c0 e5                                      strb r3, [r0, #4]
00317abc  00 10 80 e5                                      str r1, [r0]
00317ac0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00317ac4, declared_size=12, range_size=12, mode=arm
; class-group: TimerUtil
; alias: _ZN9TimerUtil5PauseEv
; demangled: TimerUtil::Pause()
; decoder-mode: arm
00317ac4  01 30 a0 e3                                      mov r3, #1
00317ac8  04 30 c0 e5                                      strb r3, [r0, #4]
00317acc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00317ad0, declared_size=12, range_size=12, mode=arm
; class-group: TimerUtil
; alias: _ZN9TimerUtil7UnpauseEv
; demangled: TimerUtil::Unpause()
; decoder-mode: arm
00317ad0  00 30 a0 e3                                      mov r3, #0
00317ad4  04 30 c0 e5                                      strb r3, [r0, #4]
00317ad8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00317adc, declared_size=8, range_size=8, mode=arm
; class-group: TimerUtil
; alias: _ZNK9TimerUtil16GetRemainingTimeEv
; demangled: TimerUtil::GetRemainingTime() const
; decoder-mode: arm
00317adc  00 00 90 e5                                      ldr r0, [r0]
00317ae0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00317ae4, declared_size=68, range_size=68, mode=arm
; class-group: TimerUtil
; alias: _ZN9TimerUtil6UpdateEv
; demangled: TimerUtil::Update()
; decoder-mode: arm
00317ae4  70 40 2d e9                                      push {r4, r5, r6, lr}
00317ae8  04 20 d0 e5                                      ldrb r2, [r0, #4]
00317aec  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00317af0  00 40 a0 e1                                      mov r4, r0
00317af4  00 00 52 e3                                      cmp r2, #0
00317af8  03 30 8f e0                                      add r3, pc, r3
00317afc  06 00 00 1a                                      bne #0x317b1c
00317b00  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00317b04  00 50 90 e5                                      ldr r5, [r0]
00317b08  02 00 93 e7                                      ldr r0, [r3, r2]
00317b0c  d6 1e 00 eb                                      bl #0x31f66c
00317b10  05 50 60 e0                                      rsb r5, r0, r5
00317b14  c5 5f c5 e1                                      bic r5, r5, r5, asr #31
00317b18  00 50 84 e5                                      str r5, [r4]
00317b1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00317b20  98 cf 67 00 f4 37 00 00                          .byte 0x98, 0xcf, 0x67, 0x00, 0xf4, 0x37, 0x00, 0x00
