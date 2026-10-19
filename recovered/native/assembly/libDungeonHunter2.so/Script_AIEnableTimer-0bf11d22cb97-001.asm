; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0045579c, declared_size=4, range_size=4, mode=arm
; class-group: Script_AIEnableTimer
; alias: _ZN20Script_AIEnableTimer7ExecuteEbi
; demangled: Script_AIEnableTimer::Execute(bool, int)
; decoder-mode: arm
0045579c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004557a0, declared_size=8, range_size=8, mode=arm
; class-group: Script_AIEnableTimer
; alias: _ZNK20Script_AIEnableTimer10IsBlockingEv
; demangled: Script_AIEnableTimer::IsBlocking() const
; decoder-mode: arm
004557a0  00 00 a0 e3                                      mov r0, #0
004557a4  1e ff 2f e1                                      bx lr
