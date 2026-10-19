; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455940, declared_size=8, range_size=8, mode=arm
; class-group: Script_SkipTutorialMessage
; alias: _ZNK26Script_SkipTutorialMessage10IsBlockingEv
; demangled: Script_SkipTutorialMessage::IsBlocking() const
; decoder-mode: arm
00455940  00 00 a0 e3                                      mov r0, #0
00455944  1e ff 2f e1                                      bx lr

; FUNCTION 0x00460338, declared_size=4, range_size=4, mode=arm
; class-group: Script_SkipTutorialMessage
; alias: _ZN26Script_SkipTutorialMessage7ExecuteEbi
; demangled: Script_SkipTutorialMessage::Execute(bool, int)
; decoder-mode: arm
00460338  cb ff ff ea                                      b #0x46026c
