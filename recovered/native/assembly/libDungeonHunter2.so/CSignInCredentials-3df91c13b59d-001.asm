; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081a9c4, declared_size=8, range_size=8, mode=arm
; class-group: CSignInCredentials
; alias: _ZN18CSignInCredentialsC2EPcS0_Pv
; demangled: CSignInCredentials::CSignInCredentials(char*, char*, void*)
; decoder-mode: arm
0081a9c4  0e 00 80 e8                                      stm r0, {r1, r2, r3}
0081a9c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081a9cc, declared_size=8, range_size=8, mode=arm
; class-group: CSignInCredentials
; alias: _ZN18CSignInCredentialsC1EPcS0_Pv
; demangled: CSignInCredentials::CSignInCredentials(char*, char*, void*)
; decoder-mode: arm
0081a9cc  0e 00 80 e8                                      stm r0, {r1, r2, r3}
0081a9d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081a9d4, declared_size=4, range_size=4, mode=arm
; class-group: CSignInCredentials
; alias: _ZN18CSignInCredentialsD2Ev
; demangled: CSignInCredentials::~CSignInCredentials()
; decoder-mode: arm
0081a9d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081a9d8, declared_size=4, range_size=4, mode=arm
; class-group: CSignInCredentials
; alias: _ZN18CSignInCredentialsD1Ev
; demangled: CSignInCredentials::~CSignInCredentials()
; decoder-mode: arm
0081a9d8  1e ff 2f e1                                      bx lr
