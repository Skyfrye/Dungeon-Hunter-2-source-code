; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00896038, declared_size=20, range_size=20, mode=arm
; class-group: AdpcmState
; alias: _ZN10AdpcmStateC2Ev
; demangled: AdpcmState::AdpcmState()
; decoder-mode: arm
00896038  00 20 a0 e3                                      mov r2, #0
0089603c  02 20 c0 e5                                      strb r2, [r0, #2]
00896040  00 20 e0 e3                                      mvn r2, #0
00896044  b0 20 c0 e1                                      strh r2, [r0]
00896048  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089604c, declared_size=20, range_size=20, mode=arm
; class-group: AdpcmState
; alias: _ZN10AdpcmStateC1Ev
; demangled: AdpcmState::AdpcmState()
; decoder-mode: arm
0089604c  00 20 a0 e3                                      mov r2, #0
00896050  02 20 c0 e5                                      strb r2, [r0, #2]
00896054  00 20 e0 e3                                      mvn r2, #0
00896058  b0 20 c0 e1                                      strh r2, [r0]
0089605c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00896060, declared_size=4, range_size=4, mode=arm
; class-group: AdpcmState
; alias: _ZN10AdpcmStateD2Ev
; demangled: AdpcmState::~AdpcmState()
; decoder-mode: arm
00896060  1e ff 2f e1                                      bx lr

; FUNCTION 0x00896064, declared_size=4, range_size=4, mode=arm
; class-group: AdpcmState
; alias: _ZN10AdpcmStateD1Ev
; demangled: AdpcmState::~AdpcmState()
; decoder-mode: arm
00896064  1e ff 2f e1                                      bx lr
