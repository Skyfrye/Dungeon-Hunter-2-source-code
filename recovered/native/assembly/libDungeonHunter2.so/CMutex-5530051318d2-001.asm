; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003106e4, declared_size=4, range_size=4, mode=arm
; class-group: CMutex
; alias: _ZN6CMutexC2Ev
; demangled: CMutex::CMutex()
; decoder-mode: arm
003106e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003106e8, declared_size=4, range_size=4, mode=arm
; class-group: CMutex
; alias: _ZN6CMutexC1Ev
; demangled: CMutex::CMutex()
; decoder-mode: arm
003106e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003106ec, declared_size=4, range_size=4, mode=arm
; class-group: CMutex
; alias: _ZN6CMutexD2Ev
; demangled: CMutex::~CMutex()
; decoder-mode: arm
003106ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x003106f0, declared_size=4, range_size=4, mode=arm
; class-group: CMutex
; alias: _ZN6CMutexD1Ev
; demangled: CMutex::~CMutex()
; decoder-mode: arm
003106f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003106f4, declared_size=16, range_size=16, mode=arm
; class-group: CMutex
; alias: _ZN6CMutex4LockEv
; demangled: CMutex::Lock()
; decoder-mode: arm
003106f4  04 30 90 e5                                      ldr r3, [r0, #4]
003106f8  01 30 83 e2                                      add r3, r3, #1
003106fc  04 30 80 e5                                      str r3, [r0, #4]
00310700  1e ff 2f e1                                      bx lr

; FUNCTION 0x00310704, declared_size=28, range_size=28, mode=arm
; class-group: CMutex
; alias: _ZN6CMutex6UnlockEv
; demangled: CMutex::Unlock()
; decoder-mode: arm
00310704  04 30 90 e5                                      ldr r3, [r0, #4]
00310708  01 00 53 e3                                      cmp r3, #1
0031070c  00 30 a0 d3                                      movle r3, #0
00310710  01 20 43 c2                                      subgt r2, r3, #1
00310714  04 20 80 c5                                      strgt r2, [r0, #4]
00310718  04 30 80 e5                                      str r3, [r0, #4]
0031071c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00310720, declared_size=16, range_size=16, mode=arm
; class-group: CMutex
; alias: _ZN6CMutex8IsLockedEv
; demangled: CMutex::IsLocked()
; decoder-mode: arm
00310720  04 00 90 e5                                      ldr r0, [r0, #4]
00310724  01 00 70 e2                                      rsbs r0, r0, #1
00310728  00 00 a0 33                                      movlo r0, #0
0031072c  1e ff 2f e1                                      bx lr
