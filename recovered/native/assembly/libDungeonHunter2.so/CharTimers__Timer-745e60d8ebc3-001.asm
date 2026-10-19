; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003db288, declared_size=8, range_size=8, mode=arm
; class-group: CharTimers::_Timer
; alias: _ZNK10CharTimers6_Timer5GetIDEv
; demangled: CharTimers::_Timer::GetID() const
; decoder-mode: arm
003db288  04 00 90 e5                                      ldr r0, [r0, #4]
003db28c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003db290, declared_size=8, range_size=8, mode=arm
; class-group: CharTimers::_Timer
; alias: _ZNK10CharTimers6_Timer6GetRefEv
; demangled: CharTimers::_Timer::GetRef() const
; decoder-mode: arm
003db290  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
003db294  1e ff 2f e1                                      bx lr
