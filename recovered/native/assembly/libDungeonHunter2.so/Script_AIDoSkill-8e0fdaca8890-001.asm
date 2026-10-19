; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004557b4, declared_size=4, range_size=4, mode=arm
; class-group: Script_AIDoSkill
; alias: _ZN16Script_AIDoSkill7ExecuteEbi
; demangled: Script_AIDoSkill::Execute(bool, int)
; decoder-mode: arm
004557b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004557b8, declared_size=8, range_size=8, mode=arm
; class-group: Script_AIDoSkill
; alias: _ZNK16Script_AIDoSkill10IsBlockingEv
; demangled: Script_AIDoSkill::IsBlocking() const
; decoder-mode: arm
004557b8  00 00 a0 e3                                      mov r0, #0
004557bc  1e ff 2f e1                                      bx lr
