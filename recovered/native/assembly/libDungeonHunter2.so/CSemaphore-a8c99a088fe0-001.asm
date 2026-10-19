; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080e2cc, declared_size=8, range_size=8, mode=arm
; class-group: CSemaphore
; alias: _ZN10CSemaphoreC2Ei
; demangled: CSemaphore::CSemaphore(int)
; decoder-mode: arm
0080e2cc  04 10 80 e5                                      str r1, [r0, #4]
0080e2d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080e2d4, declared_size=8, range_size=8, mode=arm
; class-group: CSemaphore
; alias: _ZN10CSemaphoreC1Ei
; demangled: CSemaphore::CSemaphore(int)
; decoder-mode: arm
0080e2d4  04 10 80 e5                                      str r1, [r0, #4]
0080e2d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080e2dc, declared_size=4, range_size=4, mode=arm
; class-group: CSemaphore
; alias: _ZN10CSemaphoreD2Ev
; demangled: CSemaphore::~CSemaphore()
; decoder-mode: arm
0080e2dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080e2e0, declared_size=4, range_size=4, mode=arm
; class-group: CSemaphore
; alias: _ZN10CSemaphoreD1Ev
; demangled: CSemaphore::~CSemaphore()
; decoder-mode: arm
0080e2e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080e2e4, declared_size=4, range_size=4, mode=arm
; class-group: CSemaphore
; alias: _ZN10CSemaphore4WaitEv
; demangled: CSemaphore::Wait()
; decoder-mode: arm
0080e2e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080e2e8, declared_size=4, range_size=4, mode=arm
; class-group: CSemaphore
; alias: _ZN10CSemaphore7ReleaseEi
; demangled: CSemaphore::Release(int)
; decoder-mode: arm
0080e2e8  1e ff 2f e1                                      bx lr
