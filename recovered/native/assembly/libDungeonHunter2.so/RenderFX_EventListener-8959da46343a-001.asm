; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042ca80, declared_size=8, range_size=8, mode=arm
; class-group: RenderFX::EventListener
; alias: _ZN8RenderFX13EventListener14CanHandleEventERNS_5EventE
; demangled: RenderFX::EventListener::CanHandleEvent(RenderFX::Event&)
; decoder-mode: arm
0042ca80  01 00 a0 e3                                      mov r0, #1
0042ca84  1e ff 2f e1                                      bx lr
