; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455678, declared_size=4, range_size=4, mode=arm
; class-group: Script_SetCamera
; alias: _ZN16Script_SetCamera7ExecuteEbi
; demangled: Script_SetCamera::Execute(bool, int)
; decoder-mode: arm
00455678  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045567c, declared_size=8, range_size=8, mode=arm
; class-group: Script_SetCamera
; alias: _ZNK16Script_SetCamera10IsBlockingEv
; demangled: Script_SetCamera::IsBlocking() const
; decoder-mode: arm
0045567c  00 00 a0 e3                                      mov r0, #0
00455680  1e ff 2f e1                                      bx lr
