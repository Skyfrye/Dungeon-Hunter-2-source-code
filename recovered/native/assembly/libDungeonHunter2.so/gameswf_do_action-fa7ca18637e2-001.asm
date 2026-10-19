; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ba664, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::do_action
; alias: _ZN7gameswf9do_action7executeEPNS_9characterE
; demangled: gameswf::do_action::execute(gameswf::character*)
; decoder-mode: arm
007ba664  10 40 2d e9                                      push {r4, lr}
007ba668  01 30 a0 e1                                      mov r3, r1
007ba66c  04 10 80 e2                                      add r1, r0, #4
007ba670  03 00 a0 e1                                      mov r0, r3
007ba674  00 30 93 e5                                      ldr r3, [r3]
007ba678  0f e0 a0 e1                                      mov lr, pc
007ba67c  cc f0 93 e5                                      ldr pc, [r3, #0xcc]
007ba680  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007ba684, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::do_action
; alias: _ZNK7gameswf9do_action13is_action_tagEv
; demangled: gameswf::do_action::is_action_tag() const
; decoder-mode: arm
007ba684  01 00 a0 e3                                      mov r0, #1
007ba688  1e ff 2f e1                                      bx lr

; FUNCTION 0x007ba68c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::do_action
; alias: _ZNK7gameswf9do_action17get_action_offsetEv
; demangled: gameswf::do_action::get_action_offset() const
; decoder-mode: arm
007ba68c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
007ba690  1e ff 2f e1                                      bx lr

; FUNCTION 0x007bb234, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::do_action
; alias: _ZN7gameswf9do_actionD1Ev
; demangled: gameswf::do_action::~do_action()
; decoder-mode: arm
007bb234  10 40 2d e9                                      push {r4, lr}
007bb238  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007bb23c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007bb240  00 40 a0 e1                                      mov r4, r0
007bb244  03 30 8f e0                                      add r3, pc, r3
007bb248  04 00 90 e5                                      ldr r0, [r0, #4]
007bb24c  02 20 93 e7                                      ldr r2, [r3, r2]
007bb250  00 00 50 e3                                      cmp r0, #0
007bb254  08 20 82 e2                                      add r2, r2, #8
007bb258  00 20 84 e5                                      str r2, [r4]
007bb25c  00 00 00 0a                                      beq #0x7bb264
007bb260  e3 81 fe eb                                      bl #0x75b9f4
007bb264  04 00 a0 e1                                      mov r0, r4
007bb268  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007bb26c  4c 98 1d 00 94 10 00 00                          .byte 0x4c, 0x98, 0x1d, 0x00, 0x94, 0x10, 0x00, 0x00

; FUNCTION 0x007bb274, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::do_action
; alias: _ZN7gameswf9do_actionD0Ev
; demangled: gameswf::do_action::~do_action()
; decoder-mode: arm
007bb274  10 40 2d e9                                      push {r4, lr}
007bb278  34 30 9f e5                                      ldr r3, [pc, #0x34]
007bb27c  34 20 9f e5                                      ldr r2, [pc, #0x34]
007bb280  00 40 a0 e1                                      mov r4, r0
007bb284  03 30 8f e0                                      add r3, pc, r3
007bb288  04 00 90 e5                                      ldr r0, [r0, #4]
007bb28c  02 20 93 e7                                      ldr r2, [r3, r2]
007bb290  00 00 50 e3                                      cmp r0, #0
007bb294  08 20 82 e2                                      add r2, r2, #8
007bb298  00 20 84 e5                                      str r2, [r4]
007bb29c  00 00 00 0a                                      beq #0x7bb2a4
007bb2a0  d3 81 fe eb                                      bl #0x75b9f4
007bb2a4  04 00 a0 e1                                      mov r0, r4
007bb2a8  00 4c ed eb                                      bl #0x30e2b0
007bb2ac  04 00 a0 e1                                      mov r0, r4
007bb2b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007bb2b4  0c 98 1d 00 94 10 00 00                          .byte 0x0c, 0x98, 0x1d, 0x00, 0x94, 0x10, 0x00, 0x00
