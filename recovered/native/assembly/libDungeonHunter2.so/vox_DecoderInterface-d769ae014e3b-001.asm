; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0086fb2c, declared_size=4, range_size=4, mode=arm
; class-group: vox::DecoderInterface
; alias: _ZN3vox16DecoderInterfaceD1Ev
; demangled: vox::DecoderInterface::~DecoderInterface()
; decoder-mode: arm
0086fb2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fb30, declared_size=4, range_size=4, mode=arm
; class-group: vox::DecoderInterface
; alias: _ZN3vox16DecoderInterface4InitEv
; demangled: vox::DecoderInterface::Init()
; decoder-mode: arm
0086fb30  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fb34, declared_size=4, range_size=4, mode=arm
; class-group: vox::DecoderInterface
; alias: _ZN3vox16DecoderInterface8ShutdownEv
; demangled: vox::DecoderInterface::Shutdown()
; decoder-mode: arm
0086fb34  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fdd8, declared_size=20, range_size=20, mode=arm
; class-group: vox::DecoderInterface
; alias: _ZN3vox16DecoderInterfaceD0Ev
; demangled: vox::DecoderInterface::~DecoderInterface()
; decoder-mode: arm
0086fdd8  10 40 2d e9                                      push {r4, lr}
0086fddc  00 40 a0 e1                                      mov r4, r0
0086fde0  32 79 ea eb                                      bl #0x30e2b0
0086fde4  04 00 a0 e1                                      mov r0, r4
0086fde8  10 80 bd e8                                      pop {r4, pc}
