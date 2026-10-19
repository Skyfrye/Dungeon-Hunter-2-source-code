; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004557cc, declared_size=4, range_size=4, mode=arm
; class-group: Script_AIChangeScript
; alias: _ZN21Script_AIChangeScript7ExecuteEbi
; demangled: Script_AIChangeScript::Execute(bool, int)
; decoder-mode: arm
004557cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x004557d0, declared_size=8, range_size=8, mode=arm
; class-group: Script_AIChangeScript
; alias: _ZNK21Script_AIChangeScript10IsBlockingEv
; demangled: Script_AIChangeScript::IsBlocking() const
; decoder-mode: arm
004557d0  00 00 a0 e3                                      mov r0, #0
004557d4  1e ff 2f e1                                      bx lr
