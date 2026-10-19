; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e65bc, declared_size=4, range_size=4, mode=arm
; class-group: b2PairCallback
; alias: _ZN14b2PairCallbackD1Ev
; demangled: b2PairCallback::~b2PairCallback()
; decoder-mode: arm
007e65bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e80a4, declared_size=20, range_size=20, mode=arm
; class-group: b2PairCallback
; alias: _ZN14b2PairCallbackD0Ev
; demangled: b2PairCallback::~b2PairCallback()
; decoder-mode: arm
007e80a4  10 40 2d e9                                      push {r4, lr}
007e80a8  00 40 a0 e1                                      mov r4, r0
007e80ac  7f 98 ec eb                                      bl #0x30e2b0
007e80b0  04 00 a0 e1                                      mov r0, r4
007e80b4  10 80 bd e8                                      pop {r4, pc}
