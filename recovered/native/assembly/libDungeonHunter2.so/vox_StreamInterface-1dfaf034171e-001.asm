; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008886d8, declared_size=4, range_size=4, mode=arm
; class-group: vox::StreamInterface
; alias: _ZN3vox15StreamInterfaceD1Ev
; demangled: vox::StreamInterface::~StreamInterface()
; decoder-mode: arm
008886d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008886dc, declared_size=4, range_size=4, mode=arm
; class-group: vox::StreamInterface
; alias: _ZN3vox15StreamInterface4InitEv
; demangled: vox::StreamInterface::Init()
; decoder-mode: arm
008886dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x008886e0, declared_size=4, range_size=4, mode=arm
; class-group: vox::StreamInterface
; alias: _ZN3vox15StreamInterface8ShutdownEv
; demangled: vox::StreamInterface::Shutdown()
; decoder-mode: arm
008886e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008886e4, declared_size=8, range_size=8, mode=arm
; class-group: vox::StreamInterface
; alias: _ZN3vox15StreamInterface4SizeEv
; demangled: vox::StreamInterface::Size()
; decoder-mode: arm
008886e4  04 00 90 e5                                      ldr r0, [r0, #4]
008886e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008887bc, declared_size=20, range_size=20, mode=arm
; class-group: vox::StreamInterface
; alias: _ZN3vox15StreamInterfaceD0Ev
; demangled: vox::StreamInterface::~StreamInterface()
; decoder-mode: arm
008887bc  10 40 2d e9                                      push {r4, lr}
008887c0  00 40 a0 e1                                      mov r4, r0
008887c4  b9 16 ea eb                                      bl #0x30e2b0
008887c8  04 00 a0 e1                                      mov r0, r4
008887cc  10 80 bd e8                                      pop {r4, pc}
