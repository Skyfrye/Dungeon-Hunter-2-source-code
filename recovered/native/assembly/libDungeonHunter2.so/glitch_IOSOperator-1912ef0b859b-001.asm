; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a0c7c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::IOSOperator
; alias: _ZN6glitch11IOSOperatorD1Ev
; demangled: glitch::IOSOperator::~IOSOperator()
; decoder-mode: arm
006a0c7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0cc4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::IOSOperator
; alias: _ZN6glitch11IOSOperatorD0Ev
; demangled: glitch::IOSOperator::~IOSOperator()
; decoder-mode: arm
006a0cc4  10 40 2d e9                                      push {r4, lr}
006a0cc8  00 40 a0 e1                                      mov r4, r0
006a0ccc  77 b5 f1 eb                                      bl #0x30e2b0
006a0cd0  04 00 a0 e1                                      mov r0, r4
006a0cd4  10 80 bd e8                                      pop {r4, pc}
