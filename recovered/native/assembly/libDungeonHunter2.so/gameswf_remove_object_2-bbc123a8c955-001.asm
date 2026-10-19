; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00759e2c, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::remove_object_2
; alias: _ZN7gameswf15remove_object_27executeEPNS_9characterE
; demangled: gameswf::remove_object_2::execute(gameswf::character*)
; decoder-mode: arm
00759e2c  10 40 2d e9                                      push {r4, lr}
00759e30  00 c0 a0 e1                                      mov ip, r0
00759e34  00 30 91 e5                                      ldr r3, [r1]
00759e38  01 00 a0 e1                                      mov r0, r1
00759e3c  06 00 9c e9                                      ldmib ip, {r1, r2}
00759e40  0f e0 a0 e1                                      mov lr, pc
00759e44  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
00759e48  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00759e4c, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::remove_object_2
; alias: _ZN7gameswf15remove_object_213execute_stateEPNS_9characterE
; demangled: gameswf::remove_object_2::execute_state(gameswf::character*)
; decoder-mode: arm
00759e4c  10 40 2d e9                                      push {r4, lr}
00759e50  00 30 90 e5                                      ldr r3, [r0]
00759e54  0f e0 a0 e1                                      mov lr, pc
00759e58  08 f0 93 e5                                      ldr pc, [r3, #8]
00759e5c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00759e60, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::remove_object_2
; alias: _ZNK7gameswf15remove_object_213is_remove_tagEv
; demangled: gameswf::remove_object_2::is_remove_tag() const
; decoder-mode: arm
00759e60  01 00 a0 e3                                      mov r0, #1
00759e64  1e ff 2f e1                                      bx lr

; FUNCTION 0x00759fe8, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::remove_object_2
; alias: _ZN7gameswf15remove_object_2D1Ev
; demangled: gameswf::remove_object_2::~remove_object_2()
; decoder-mode: arm
00759fe8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0075a004, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::remove_object_2
; alias: _ZN7gameswf15remove_object_2D0Ev
; demangled: gameswf::remove_object_2::~remove_object_2()
; decoder-mode: arm
0075a004  10 40 2d e9                                      push {r4, lr}
0075a008  00 40 a0 e1                                      mov r4, r0
0075a00c  a7 d0 ee eb                                      bl #0x30e2b0
0075a010  04 00 a0 e1                                      mov r0, r4
0075a014  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075a5e4, declared_size=100, range_size=100, mode=arm
; class-group: gameswf::remove_object_2
; alias: _ZN7gameswf15remove_object_221execute_state_reverseEPNS_9characterEi
; demangled: gameswf::remove_object_2::execute_state_reverse(gameswf::character*, int)
; decoder-mode: arm
0075a5e4  70 40 2d e9                                      push {r4, r5, r6, lr}
0075a5e8  00 50 a0 e1                                      mov r5, r0
0075a5ec  00 c0 91 e5                                      ldr ip, [r1]
0075a5f0  01 00 a0 e1                                      mov r0, r1
0075a5f4  08 30 95 e5                                      ldr r3, [r5, #8]
0075a5f8  01 40 a0 e1                                      mov r4, r1
0075a5fc  02 60 a0 e1                                      mov r6, r2
0075a600  02 10 a0 e1                                      mov r1, r2
0075a604  04 20 95 e5                                      ldr r2, [r5, #4]
0075a608  0f e0 a0 e1                                      mov lr, pc
0075a60c  a0 f0 9c e5                                      ldr pc, [ip, #0xa0]
0075a610  00 30 50 e2                                      subs r3, r0, #0
0075a614  04 00 00 0a                                      beq #0x75a62c
0075a618  00 30 93 e5                                      ldr r3, [r3]
0075a61c  04 10 a0 e1                                      mov r1, r4
0075a620  0f e0 a0 e1                                      mov lr, pc
0075a624  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0075a628  70 80 bd e8                                      pop {r4, r5, r6, pc}
0075a62c  10 00 9f e5                                      ldr r0, [pc, #0x10]
0075a630  04 20 95 e5                                      ldr r2, [r5, #4]
0075a634  06 10 a0 e1                                      mov r1, r6
0075a638  00 00 8f e0                                      add r0, pc, r0
0075a63c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0075a640  cf 1a 00 ea                                      b #0x761184
; mapping-symbol data/literal pool
0075a644  a8 e3 1a 00                                      .byte 0xa8, 0xe3, 0x1a, 0x00
