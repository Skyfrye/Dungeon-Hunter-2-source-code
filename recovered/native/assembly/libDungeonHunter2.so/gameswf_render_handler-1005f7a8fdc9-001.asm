; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d3b90, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::render_handler
; alias: _ZN7gameswf14render_handlerD1Ev
; demangled: gameswf::render_handler::~render_handler()
; decoder-mode: arm
007d3b90  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3b94, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::render_handler
; alias: _ZN7gameswf14render_handler5flushEv
; demangled: gameswf::render_handler::flush()
; decoder-mode: arm
007d3b94  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3b98, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::render_handler
; alias: _ZN7gameswf14render_handler10set_cursorENS0_11cursor_typeE
; demangled: gameswf::render_handler::set_cursor(gameswf::render_handler::cursor_type)
; decoder-mode: arm
007d3b98  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3b9c, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::render_handler
; alias: _ZN7gameswf14render_handler5resetEv
; demangled: gameswf::render_handler::reset()
; decoder-mode: arm
007d3b9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3ba0, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::render_handler
; alias: _ZN7gameswf14render_handler15set_orientationENS_16orientation_modeE
; demangled: gameswf::render_handler::set_orientation(gameswf::orientation_mode)
; decoder-mode: arm
007d3ba0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3ba4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::render_handler
; alias: _ZN7gameswf14render_handler15get_orientationEv
; demangled: gameswf::render_handler::get_orientation()
; decoder-mode: arm
007d3ba4  00 00 a0 e3                                      mov r0, #0
007d3ba8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3bac, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::render_handler
; alias: _ZN7gameswf14render_handler22begin_display_callbackEv
; demangled: gameswf::render_handler::begin_display_callback()
; decoder-mode: arm
007d3bac  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3bb0, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::render_handler
; alias: _ZN7gameswf14render_handler20end_display_callbackEv
; demangled: gameswf::render_handler::end_display_callback()
; decoder-mode: arm
007d3bb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d4074, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::render_handler
; alias: _ZN7gameswf14render_handlerD0Ev
; demangled: gameswf::render_handler::~render_handler()
; decoder-mode: arm
007d4074  10 40 2d e9                                      push {r4, lr}
007d4078  00 40 a0 e1                                      mov r4, r0
007d407c  8b e8 ec eb                                      bl #0x30e2b0
007d4080  04 00 a0 e1                                      mov r0, r4
007d4084  10 80 bd e8                                      pop {r4, pc}
