; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00588f80, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IEndOfBatchCallback
; alias: _ZN6glitch5scene19IEndOfBatchCallbackD1Ev
; demangled: glitch::scene::IEndOfBatchCallback::~IEndOfBatchCallback()
; decoder-mode: arm
00588f80  1e ff 2f e1                                      bx lr

; FUNCTION 0x005899a0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::IEndOfBatchCallback
; alias: _ZN6glitch5scene19IEndOfBatchCallbackD0Ev
; demangled: glitch::scene::IEndOfBatchCallback::~IEndOfBatchCallback()
; decoder-mode: arm
005899a0  10 40 2d e9                                      push {r4, lr}
005899a4  00 40 a0 e1                                      mov r4, r0
005899a8  40 12 f6 eb                                      bl #0x30e2b0
005899ac  04 00 a0 e1                                      mov r0, r4
005899b0  10 80 bd e8                                      pop {r4, pc}
