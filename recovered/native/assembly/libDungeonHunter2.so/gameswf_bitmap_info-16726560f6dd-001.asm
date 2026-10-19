; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007737d0, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZN7gameswf11bitmap_info6layoutEv
; demangled: gameswf::bitmap_info::layout()
; decoder-mode: arm
007737d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007737d4, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZN7gameswf11bitmap_info8unlayoutEv
; demangled: gameswf::bitmap_info::unlayout()
; decoder-mode: arm
007737d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007737d8, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZN7gameswf11bitmap_info8activateEv
; demangled: gameswf::bitmap_info::activate()
; decoder-mode: arm
007737d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007737dc, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZN7gameswf11bitmap_info12set_writableEv
; demangled: gameswf::bitmap_info::set_writable()
; decoder-mode: arm
007737dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007737e0, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZN7gameswf11bitmap_info4lockEv
; demangled: gameswf::bitmap_info::lock()
; decoder-mode: arm
007737e0  00 00 a0 e3                                      mov r0, #0
007737e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007737e8, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZN7gameswf11bitmap_info6unlockEv
; demangled: gameswf::bitmap_info::unlock()
; decoder-mode: arm
007737e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007737ec, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZN7gameswf11bitmap_info11set_textureEPN6glitch5video8ITextureE
; demangled: gameswf::bitmap_info::set_texture(glitch::video::ITexture*)
; decoder-mode: arm
007737ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x007737f0, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZNK7gameswf11bitmap_info9get_widthEv
; demangled: gameswf::bitmap_info::get_width() const
; decoder-mode: arm
007737f0  00 00 a0 e3                                      mov r0, #0
007737f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007737f8, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZNK7gameswf11bitmap_info10get_heightEv
; demangled: gameswf::bitmap_info::get_height() const
; decoder-mode: arm
007737f8  00 00 a0 e3                                      mov r0, #0
007737fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00773800, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZN7gameswf11bitmap_info14set_min_filterENS0_11filter_modeE
; demangled: gameswf::bitmap_info::set_min_filter(gameswf::bitmap_info::filter_mode)
; decoder-mode: arm
00773800  1e ff 2f e1                                      bx lr

; FUNCTION 0x00773804, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZN7gameswf11bitmap_info14set_mag_filterENS0_11filter_modeE
; demangled: gameswf::bitmap_info::set_mag_filter(gameswf::bitmap_info::filter_mode)
; decoder-mode: arm
00773804  1e ff 2f e1                                      bx lr

; FUNCTION 0x00773808, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZNK7gameswf11bitmap_info9is_layoutEv
; demangled: gameswf::bitmap_info::is_layout() const
; decoder-mode: arm
00773808  00 00 a0 e3                                      mov r0, #0
0077380c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00773810, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZNK7gameswf11bitmap_info18get_internal_widthEv
; demangled: gameswf::bitmap_info::get_internal_width() const
; decoder-mode: arm
00773810  10 40 2d e9                                      push {r4, lr}
00773814  00 30 90 e5                                      ldr r3, [r0]
00773818  0f e0 a0 e1                                      mov lr, pc
0077381c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00773820  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00773824, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZNK7gameswf11bitmap_info19get_internal_heightEv
; demangled: gameswf::bitmap_info::get_internal_height() const
; decoder-mode: arm
00773824  10 40 2d e9                                      push {r4, lr}
00773828  00 30 90 e5                                      ldr r3, [r0]
0077382c  0f e0 a0 e1                                      mov lr, pc
00773830  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00773834  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007739a8, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZN7gameswf11bitmap_infoD1Ev
; demangled: gameswf::bitmap_info::~bitmap_info()
; decoder-mode: arm
007739a8  24 30 9f e5                                      ldr r3, [pc, #0x24]
007739ac  24 20 9f e5                                      ldr r2, [pc, #0x24]
007739b0  10 40 2d e9                                      push {r4, lr}
007739b4  03 30 8f e0                                      add r3, pc, r3
007739b8  02 20 93 e7                                      ldr r2, [r3, r2]
007739bc  00 40 a0 e1                                      mov r4, r0
007739c0  08 20 82 e2                                      add r2, r2, #8
007739c4  00 20 80 e5                                      str r2, [r0]
007739c8  b5 a8 ff eb                                      bl #0x75dca4
007739cc  04 00 a0 e1                                      mov r0, r4
007739d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007739d4  dc 10 22 00 88 21 00 00                          .byte 0xdc, 0x10, 0x22, 0x00, 0x88, 0x21, 0x00, 0x00

; FUNCTION 0x00773cbc, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::bitmap_info
; alias: _ZN7gameswf11bitmap_infoD0Ev
; demangled: gameswf::bitmap_info::~bitmap_info()
; decoder-mode: arm
00773cbc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00773cc0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00773cc4  10 40 2d e9                                      push {r4, lr}
00773cc8  03 30 8f e0                                      add r3, pc, r3
00773ccc  02 20 93 e7                                      ldr r2, [r3, r2]
00773cd0  00 40 a0 e1                                      mov r4, r0
00773cd4  08 20 82 e2                                      add r2, r2, #8
00773cd8  00 20 80 e5                                      str r2, [r0]
00773cdc  f0 a7 ff eb                                      bl #0x75dca4
00773ce0  04 00 a0 e1                                      mov r0, r4
00773ce4  71 69 ee eb                                      bl #0x30e2b0
00773ce8  04 00 a0 e1                                      mov r0, r4
00773cec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00773cf0  c8 0d 22 00 88 21 00 00                          .byte 0xc8, 0x0d, 0x22, 0x00, 0x88, 0x21, 0x00, 0x00
