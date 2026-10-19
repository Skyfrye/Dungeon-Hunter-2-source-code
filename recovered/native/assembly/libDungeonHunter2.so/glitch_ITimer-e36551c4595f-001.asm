; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00671428, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ITimer
; alias: _ZN6glitch6ITimerD1Ev
; demangled: glitch::ITimer::~ITimer()
; decoder-mode: arm
00671428  1e ff 2f e1                                      bx lr

; FUNCTION 0x00671610, declared_size=20, range_size=20, mode=arm
; class-group: glitch::ITimer
; alias: _ZN6glitch6ITimerD0Ev
; demangled: glitch::ITimer::~ITimer()
; decoder-mode: arm
00671610  10 40 2d e9                                      push {r4, lr}
00671614  00 40 a0 e1                                      mov r4, r0
00671618  24 73 f2 eb                                      bl #0x30e2b0
0067161c  04 00 a0 e1                                      mov r0, r4
00671620  10 80 bd e8                                      pop {r4, pc}
