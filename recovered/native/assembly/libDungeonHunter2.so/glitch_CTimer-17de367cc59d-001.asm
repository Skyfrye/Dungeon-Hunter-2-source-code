; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006714a4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CTimer
; alias: _ZN6glitch6CTimerD1Ev
; demangled: glitch::CTimer::~CTimer()
; decoder-mode: arm
006714a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006715fc, declared_size=20, range_size=20, mode=arm
; class-group: glitch::CTimer
; alias: _ZN6glitch6CTimerD0Ev
; demangled: glitch::CTimer::~CTimer()
; decoder-mode: arm
006715fc  10 40 2d e9                                      push {r4, lr}
00671600  00 40 a0 e1                                      mov r4, r0
00671604  29 73 f2 eb                                      bl #0x30e2b0
00671608  04 00 a0 e1                                      mov r0, r4
0067160c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00671868, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CTimer
; alias: _ZN6glitch6CTimer4tickEv
; demangled: glitch::CTimer::tick()
; decoder-mode: arm
00671868  6f 66 fe ea                                      b #0x60b22c

; FUNCTION 0x0067186c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CTimer
; alias: _ZNK6glitch6CTimer9isStoppedEv
; demangled: glitch::CTimer::isStopped() const
; decoder-mode: arm
0067186c  92 65 fe ea                                      b #0x60aebc

; FUNCTION 0x00671870, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CTimer
; alias: _ZNK6glitch6CTimer8getSpeedEv
; demangled: glitch::CTimer::getSpeed() const
; decoder-mode: arm
00671870  89 65 fe ea                                      b #0x60ae9c

; FUNCTION 0x00671874, declared_size=8, range_size=8, mode=arm
; class-group: glitch::CTimer
; alias: _ZN6glitch6CTimer8setSpeedEf
; demangled: glitch::CTimer::setSpeed(float)
; decoder-mode: arm
00671874  01 00 a0 e1                                      mov r0, r1
00671878  45 66 fe ea                                      b #0x60b194

; FUNCTION 0x0067187c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CTimer
; alias: _ZN6glitch6CTimer5startEv
; demangled: glitch::CTimer::start()
; decoder-mode: arm
0067187c  56 66 fe ea                                      b #0x60b1dc

; FUNCTION 0x00671880, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CTimer
; alias: _ZN6glitch6CTimer4stopEv
; demangled: glitch::CTimer::stop()
; decoder-mode: arm
00671880  b8 65 fe ea                                      b #0x60af68

; FUNCTION 0x00671884, declared_size=8, range_size=8, mode=arm
; class-group: glitch::CTimer
; alias: _ZN6glitch6CTimer7setTimeEj
; demangled: glitch::CTimer::setTime(unsigned int)
; decoder-mode: arm
00671884  01 00 a0 e1                                      mov r0, r1
00671888  2e 66 fe ea                                      b #0x60b148

; FUNCTION 0x0067188c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CTimer
; alias: _ZNK6glitch6CTimer7getTimeEv
; demangled: glitch::CTimer::getTime() const
; decoder-mode: arm
0067188c  94 65 fe ea                                      b #0x60aee4

; FUNCTION 0x00671890, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CTimer
; alias: _ZNK6glitch6CTimer11getRealTimeEv
; demangled: glitch::CTimer::getRealTime() const
; decoder-mode: arm
00671890  0d 66 fe ea                                      b #0x60b0cc
