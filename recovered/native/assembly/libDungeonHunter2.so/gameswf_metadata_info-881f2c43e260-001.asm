; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b7fb0, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::metadata_info
; alias: _ZN7gameswf13metadata_info4readEPNS_6streamEPNS_7abc_defE
; demangled: gameswf::metadata_info::read(gameswf::stream*, gameswf::abc_def*)
; decoder-mode: arm
007b7fb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b91fc, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::metadata_info
; alias: _ZN7gameswf13metadata_infoD1Ev
; demangled: gameswf::metadata_info::~metadata_info()
; decoder-mode: arm
007b91fc  24 30 9f e5                                      ldr r3, [pc, #0x24]
007b9200  24 20 9f e5                                      ldr r2, [pc, #0x24]
007b9204  10 40 2d e9                                      push {r4, lr}
007b9208  03 30 8f e0                                      add r3, pc, r3
007b920c  02 20 93 e7                                      ldr r2, [r3, r2]
007b9210  00 40 a0 e1                                      mov r4, r0
007b9214  08 20 82 e2                                      add r2, r2, #8
007b9218  00 20 80 e5                                      str r2, [r0]
007b921c  a0 92 fe eb                                      bl #0x75dca4
007b9220  04 00 a0 e1                                      mov r0, r4
007b9224  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007b9228  88 b8 1d 00 54 12 00 00                          .byte 0x88, 0xb8, 0x1d, 0x00, 0x54, 0x12, 0x00, 0x00

; FUNCTION 0x007b9230, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::metadata_info
; alias: _ZN7gameswf13metadata_infoD0Ev
; demangled: gameswf::metadata_info::~metadata_info()
; decoder-mode: arm
007b9230  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007b9234  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007b9238  10 40 2d e9                                      push {r4, lr}
007b923c  03 30 8f e0                                      add r3, pc, r3
007b9240  02 20 93 e7                                      ldr r2, [r3, r2]
007b9244  00 40 a0 e1                                      mov r4, r0
007b9248  08 20 82 e2                                      add r2, r2, #8
007b924c  00 20 80 e5                                      str r2, [r0]
007b9250  93 92 fe eb                                      bl #0x75dca4
007b9254  04 00 a0 e1                                      mov r0, r4
007b9258  14 54 ed eb                                      bl #0x30e2b0
007b925c  04 00 a0 e1                                      mov r0, r4
007b9260  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007b9264  54 b8 1d 00 54 12 00 00                          .byte 0x54, 0xb8, 0x1d, 0x00, 0x54, 0x12, 0x00, 0x00
