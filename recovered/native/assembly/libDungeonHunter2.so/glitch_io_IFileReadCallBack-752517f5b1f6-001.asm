; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00572520, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IFileReadCallBack
; alias: _ZN6glitch2io17IFileReadCallBackD1Ev
; demangled: glitch::io::IFileReadCallBack::~IFileReadCallBack()
; decoder-mode: arm
00572520  1e ff 2f e1                                      bx lr

; FUNCTION 0x00572a24, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::IFileReadCallBack
; alias: _ZN6glitch2io17IFileReadCallBackD0Ev
; demangled: glitch::io::IFileReadCallBack::~IFileReadCallBack()
; decoder-mode: arm
00572a24  10 40 2d e9                                      push {r4, lr}
00572a28  00 40 a0 e1                                      mov r4, r0
00572a2c  1f 6e f6 eb                                      bl #0x30e2b0
00572a30  04 00 a0 e1                                      mov r0, r4
00572a34  10 80 bd e8                                      pop {r4, pc}
