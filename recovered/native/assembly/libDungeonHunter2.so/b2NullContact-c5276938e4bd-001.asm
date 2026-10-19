; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e65c4, declared_size=4, range_size=4, mode=arm
; class-group: b2NullContact
; alias: _ZN13b2NullContact8EvaluateEP17b2ContactListener
; demangled: b2NullContact::Evaluate(b2ContactListener*)
; decoder-mode: arm
007e65c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e65c8, declared_size=8, range_size=8, mode=arm
; class-group: b2NullContact
; alias: _ZN13b2NullContact12GetManifoldsEv
; demangled: b2NullContact::GetManifolds()
; decoder-mode: arm
007e65c8  00 00 a0 e3                                      mov r0, #0
007e65cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e65d0, declared_size=4, range_size=4, mode=arm
; class-group: b2NullContact
; alias: _ZN13b2NullContactD1Ev
; demangled: b2NullContact::~b2NullContact()
; decoder-mode: arm
007e65d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e807c, declared_size=20, range_size=20, mode=arm
; class-group: b2NullContact
; alias: _ZN13b2NullContactD0Ev
; demangled: b2NullContact::~b2NullContact()
; decoder-mode: arm
007e807c  10 40 2d e9                                      push {r4, lr}
007e8080  00 40 a0 e1                                      mov r4, r0
007e8084  89 98 ec eb                                      bl #0x30e2b0
007e8088  04 00 a0 e1                                      mov r0, r4
007e808c  10 80 bd e8                                      pop {r4, pc}
