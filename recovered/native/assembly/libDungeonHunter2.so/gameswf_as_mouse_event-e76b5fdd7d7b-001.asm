; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007dadf0, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_mouse_event
; alias: _ZNK7gameswf14as_mouse_event2isEi
; demangled: gameswf::as_mouse_event::is(int) const
; decoder-mode: arm
007dadf0  28 00 51 e3                                      cmp r1, #0x28
007dadf4  01 00 a0 03                                      moveq r0, #1
007dadf8  1e ff 2f 01                                      bxeq lr
007dadfc  01 00 71 e2                                      rsbs r0, r1, #1
007dae00  00 00 a0 33                                      movlo r0, #0
007dae04  1e ff 2f e1                                      bx lr

; FUNCTION 0x007dae08, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_mouse_event
; alias: _ZN7gameswf14as_mouse_eventC1EPNS_6playerE
; demangled: gameswf::as_mouse_event::as_mouse_event(gameswf::player*)
; decoder-mode: arm
007dae08  70 40 2d e9                                      push {r4, r5, r6, lr}
007dae0c  20 40 9f e5                                      ldr r4, [pc, #0x20]
007dae10  00 50 a0 e1                                      mov r5, r0
007dae14  68 ff ff eb                                      bl #0x7dabbc
007dae18  18 30 9f e5                                      ldr r3, [pc, #0x18]
007dae1c  04 40 8f e0                                      add r4, pc, r4
007dae20  05 00 a0 e1                                      mov r0, r5
007dae24  03 30 94 e7                                      ldr r3, [r4, r3]
007dae28  08 30 83 e2                                      add r3, r3, #8
007dae2c  00 30 85 e5                                      str r3, [r5]
007dae30  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007dae34  74 9c 1b 00 78 33 00 00                          .byte 0x74, 0x9c, 0x1b, 0x00, 0x78, 0x33, 0x00, 0x00

; FUNCTION 0x007dae3c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_mouse_event
; alias: _ZN7gameswf14as_mouse_eventC2EPNS_6playerE
; demangled: gameswf::as_mouse_event::as_mouse_event(gameswf::player*)
; decoder-mode: arm
007dae3c  70 40 2d e9                                      push {r4, r5, r6, lr}
007dae40  20 40 9f e5                                      ldr r4, [pc, #0x20]
007dae44  00 50 a0 e1                                      mov r5, r0
007dae48  5b ff ff eb                                      bl #0x7dabbc
007dae4c  18 30 9f e5                                      ldr r3, [pc, #0x18]
007dae50  04 40 8f e0                                      add r4, pc, r4
007dae54  05 00 a0 e1                                      mov r0, r5
007dae58  03 30 94 e7                                      ldr r3, [r4, r3]
007dae5c  08 30 83 e2                                      add r3, r3, #8
007dae60  00 30 85 e5                                      str r3, [r5]
007dae64  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007dae68  40 9c 1b 00 78 33 00 00                          .byte 0x40, 0x9c, 0x1b, 0x00, 0x78, 0x33, 0x00, 0x00

; FUNCTION 0x007dae70, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_mouse_event
; alias: _ZN7gameswf14as_mouse_eventD1Ev
; demangled: gameswf::as_mouse_event::~as_mouse_event()
; decoder-mode: arm
007dae70  24 30 9f e5                                      ldr r3, [pc, #0x24]
007dae74  24 20 9f e5                                      ldr r2, [pc, #0x24]
007dae78  10 40 2d e9                                      push {r4, lr}
007dae7c  03 30 8f e0                                      add r3, pc, r3
007dae80  02 20 93 e7                                      ldr r2, [r3, r2]
007dae84  00 40 a0 e1                                      mov r4, r0
007dae88  08 20 82 e2                                      add r2, r2, #8
007dae8c  00 20 80 e5                                      str r2, [r0]
007dae90  01 3b fe eb                                      bl #0x769a9c
007dae94  04 00 a0 e1                                      mov r0, r4
007dae98  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007dae9c  14 9c 1b 00 08 4b 00 00                          .byte 0x14, 0x9c, 0x1b, 0x00, 0x08, 0x4b, 0x00, 0x00

; FUNCTION 0x007dafb8, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_mouse_event
; alias: _ZN7gameswf14as_mouse_eventD0Ev
; demangled: gameswf::as_mouse_event::~as_mouse_event()
; decoder-mode: arm
007dafb8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007dafbc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007dafc0  10 40 2d e9                                      push {r4, lr}
007dafc4  03 30 8f e0                                      add r3, pc, r3
007dafc8  02 20 93 e7                                      ldr r2, [r3, r2]
007dafcc  00 40 a0 e1                                      mov r4, r0
007dafd0  08 20 82 e2                                      add r2, r2, #8
007dafd4  00 20 80 e5                                      str r2, [r0]
007dafd8  af 3a fe eb                                      bl #0x769a9c
007dafdc  04 00 a0 e1                                      mov r0, r4
007dafe0  b2 cc ec eb                                      bl #0x30e2b0
007dafe4  04 00 a0 e1                                      mov r0, r4
007dafe8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007dafec  cc 9a 1b 00 08 4b 00 00                          .byte 0xcc, 0x9a, 0x1b, 0x00, 0x08, 0x4b, 0x00, 0x00
