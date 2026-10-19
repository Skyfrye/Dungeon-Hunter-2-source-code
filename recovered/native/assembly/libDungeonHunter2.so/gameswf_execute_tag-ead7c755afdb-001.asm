; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00759ac4, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::execute_tag
; alias: _ZN7gameswf11execute_tagD1Ev
; demangled: gameswf::execute_tag::~execute_tag()
; decoder-mode: arm
00759ac4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00759ac8, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::execute_tag
; alias: _ZN7gameswf11execute_tag7executeEPNS_9characterE
; demangled: gameswf::execute_tag::execute(gameswf::character*)
; decoder-mode: arm
00759ac8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00759acc, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::execute_tag
; alias: _ZN7gameswf11execute_tag13execute_stateEPNS_9characterE
; demangled: gameswf::execute_tag::execute_state(gameswf::character*)
; decoder-mode: arm
00759acc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00759ad0, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::execute_tag
; alias: _ZN7gameswf11execute_tag21execute_state_reverseEPNS_9characterEi
; demangled: gameswf::execute_tag::execute_state_reverse(gameswf::character*, int)
; decoder-mode: arm
00759ad0  10 40 2d e9                                      push {r4, lr}
00759ad4  00 30 90 e5                                      ldr r3, [r0]
00759ad8  0f e0 a0 e1                                      mov lr, pc
00759adc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00759ae0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00759ae4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::execute_tag
; alias: _ZNK7gameswf11execute_tag13is_remove_tagEv
; demangled: gameswf::execute_tag::is_remove_tag() const
; decoder-mode: arm
00759ae4  00 00 a0 e3                                      mov r0, #0
00759ae8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00759aec, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::execute_tag
; alias: _ZNK7gameswf11execute_tag13is_action_tagEv
; demangled: gameswf::execute_tag::is_action_tag() const
; decoder-mode: arm
00759aec  00 00 a0 e3                                      mov r0, #0
00759af0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00759af4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::execute_tag
; alias: _ZNK7gameswf11execute_tag34get_depth_id_of_replace_or_add_tagEv
; demangled: gameswf::execute_tag::get_depth_id_of_replace_or_add_tag() const
; decoder-mode: arm
00759af4  00 00 e0 e3                                      mvn r0, #0
00759af8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00759afc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::execute_tag
; alias: _ZNK7gameswf11execute_tag9get_depthEv
; demangled: gameswf::execute_tag::get_depth() const
; decoder-mode: arm
00759afc  00 00 e0 e3                                      mvn r0, #0
00759b00  1e ff 2f e1                                      bx lr

; FUNCTION 0x00759b04, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::execute_tag
; alias: _ZNK7gameswf11execute_tag17get_action_offsetEv
; demangled: gameswf::execute_tag::get_action_offset() const
; decoder-mode: arm
00759b04  00 00 e0 e3                                      mvn r0, #0
00759b08  1e ff 2f e1                                      bx lr

; FUNCTION 0x00759b0c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::execute_tag
; alias: _ZNK7gameswf11execute_tag12is_place_tagEv
; demangled: gameswf::execute_tag::is_place_tag() const
; decoder-mode: arm
00759b0c  00 00 a0 e3                                      mov r0, #0
00759b10  1e ff 2f e1                                      bx lr

; FUNCTION 0x00759ff0, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::execute_tag
; alias: _ZN7gameswf11execute_tagD0Ev
; demangled: gameswf::execute_tag::~execute_tag()
; decoder-mode: arm
00759ff0  10 40 2d e9                                      push {r4, lr}
00759ff4  00 40 a0 e1                                      mov r4, r0
00759ff8  ac d0 ee eb                                      bl #0x30e2b0
00759ffc  04 00 a0 e1                                      mov r0, r4
0075a000  10 80 bd e8                                      pop {r4, pc}
