; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004557c0, declared_size=4, range_size=4, mode=arm
; class-group: Script_AISetHP
; alias: _ZN14Script_AISetHP7ExecuteEbi
; demangled: Script_AISetHP::Execute(bool, int)
; decoder-mode: arm
004557c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004557c4, declared_size=8, range_size=8, mode=arm
; class-group: Script_AISetHP
; alias: _ZNK14Script_AISetHP10IsBlockingEv
; demangled: Script_AISetHP::IsBlocking() const
; decoder-mode: arm
004557c4  00 00 a0 e3                                      mov r0, #0
004557c8  1e ff 2f e1                                      bx lr
