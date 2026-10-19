; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004557a8, declared_size=4, range_size=4, mode=arm
; class-group: Script_AIResetTimer
; alias: _ZN19Script_AIResetTimer7ExecuteEbi
; demangled: Script_AIResetTimer::Execute(bool, int)
; decoder-mode: arm
004557a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004557ac, declared_size=8, range_size=8, mode=arm
; class-group: Script_AIResetTimer
; alias: _ZNK19Script_AIResetTimer10IsBlockingEv
; demangled: Script_AIResetTimer::IsBlocking() const
; decoder-mode: arm
004557ac  00 00 a0 e3                                      mov r0, #0
004557b0  1e ff 2f e1                                      bx lr
