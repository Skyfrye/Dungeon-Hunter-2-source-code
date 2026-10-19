; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060764c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IImageLoader::IDataInfo
; alias: _ZN6glitch5video12IImageLoader9IDataInfoD2Ev
; demangled: glitch::video::IImageLoader::IDataInfo::~IDataInfo()
; decoder-mode: arm
0060764c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00607650, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IImageLoader::IDataInfo
; alias: _ZN6glitch5video12IImageLoader9IDataInfoD1Ev
; demangled: glitch::video::IImageLoader::IDataInfo::~IDataInfo()
; decoder-mode: arm
00607650  1e ff 2f e1                                      bx lr

; FUNCTION 0x00607a48, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::IImageLoader::IDataInfo
; alias: _ZN6glitch5video12IImageLoader9IDataInfoD0Ev
; demangled: glitch::video::IImageLoader::IDataInfo::~IDataInfo()
; decoder-mode: arm
00607a48  10 40 2d e9                                      push {r4, lr}
00607a4c  00 40 a0 e1                                      mov r4, r0
00607a50  fe fe ff eb                                      bl #0x607650
00607a54  04 00 a0 e1                                      mov r0, r4
00607a58  14 1a f4 eb                                      bl #0x30e2b0
00607a5c  04 00 a0 e1                                      mov r0, r4
00607a60  10 80 bd e8                                      pop {r4, pc}
