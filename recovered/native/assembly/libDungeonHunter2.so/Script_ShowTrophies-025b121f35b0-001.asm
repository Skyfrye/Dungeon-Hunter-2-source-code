; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455904, declared_size=4, range_size=4, mode=arm
; class-group: Script_ShowTrophies
; alias: _ZN19Script_ShowTrophies7ExecuteEbi
; demangled: Script_ShowTrophies::Execute(bool, int)
; decoder-mode: arm
00455904  1e ff 2f e1                                      bx lr

; FUNCTION 0x00455908, declared_size=8, range_size=8, mode=arm
; class-group: Script_ShowTrophies
; alias: _ZNK19Script_ShowTrophies10IsBlockingEv
; demangled: Script_ShowTrophies::IsBlocking() const
; decoder-mode: arm
00455908  01 00 a0 e3                                      mov r0, #1
0045590c  1e ff 2f e1                                      bx lr
